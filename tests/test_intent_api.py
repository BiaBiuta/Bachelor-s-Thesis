import importlib
import sys
import types
from datetime import datetime
from unittest import mock

class DummyModel:
    def predict(self, X):
        return ['schedule_shift']

class DummyNLP:
    def __call__(self, text):
        class Tok:
            def __init__(self, t):
                self.text = t
        return [Tok(t) for t in text.split()]

def load_intent_module():
    if 'intent_api.main' in sys.modules:
        del sys.modules['intent_api.main']

    spacy_mock = types.SimpleNamespace(load=lambda name: DummyNLP())
    joblib_mock = types.SimpleNamespace(load=lambda path: DummyModel())

    fastapi_module = types.ModuleType("fastapi")

    class FakeFastAPI:
        def add_middleware(self, *a, **k):
            pass

        def post(self, *a, **k):
            def decorator(fn):
                return fn
            return decorator

    fastapi_module.FastAPI = FakeFastAPI
    cors_module = types.ModuleType("fastapi.middleware.cors")
    cors_module.CORSMiddleware = object
    fastapi_middleware_module = types.ModuleType("fastapi.middleware")
    fastapi_middleware_module.cors = cors_module
    pydantic_module = types.ModuleType("pydantic")

    class BaseModel:
        def __init__(self, **data):
            for k, v in data.items():
                setattr(self, k, v)

    pydantic_module.BaseModel = BaseModel

    dateparser_module = types.ModuleType("dateparser")
    search_module = types.ModuleType("dateparser.search")

    def fake_search_dates(text, settings=None):
        return [(text, datetime.now())]

    search_module.search_dates = fake_search_dates
    dateparser_module.search = search_module

    modules = {
        'spacy': spacy_mock,
        'joblib': joblib_mock,
        'fastapi': fastapi_module,
        'fastapi.middleware': fastapi_middleware_module,
        'fastapi.middleware.cors': cors_module,
        'pydantic': pydantic_module,
        'dateparser': dateparser_module,
        'dateparser.search': search_module,
    }

    with mock.patch.dict(sys.modules, modules):
        return importlib.import_module('intent_api.main')


def test_get_weekday_date_this_week():
    mod = load_intent_module()
    base = datetime(2024, 5, 5)  # Sunday
    result = mod.get_weekday_date(base, 'monday', 'this')
    assert result.date() == datetime(2024, 5, 6).date()


def test_get_weekday_date_next_week():
    mod = load_intent_module()
    base = datetime(2024, 5, 5)  # Sunday
    result = mod.get_weekday_date(base, 'monday', 'next')
    assert result.date() == datetime(2024, 5, 6).date()


def test_contains_explicit_date_word():
    mod = load_intent_module()
    assert mod.contains_explicit_date_word('see you tomorrow')
    assert not mod.contains_explicit_date_word('no date here')


def test_extract_scheduling_info():
    mod = load_intent_module()
    msg = 'request on Monday morning weight=2'
    info = mod.extract_scheduling_info(msg)
    assert info['day'] == 'provided'
    assert info['shiftType'] == 'provided'
    assert info['reqType'] == 'ON'
    assert info['weight'] == 2.0


def test_predict_basic():
    mod = load_intent_module()
    req = types.SimpleNamespace(
        message='shift on Monday morning weight=2',
        currentUserEmail='u@example.com',
        currentUserName='User',
        UserId=1,
    )
    resp = mod.predict(req)
    assert resp.intent == 'schedule_shift'
    assert resp.Weight == 2.0
    assert resp.ShiftType == 'Morning'


def load_intent_module_with_search(return_dt):
    """Load the intent module with a custom search_dates result."""
    if 'intent_api.main' in sys.modules:
        del sys.modules['intent_api.main']
    import importlib, types
    spacy_mock = types.SimpleNamespace(load=lambda name: DummyNLP())
    joblib_mock = types.SimpleNamespace(load=lambda path: DummyModel())
    fastapi_module = types.ModuleType("fastapi")
    class FakeFastAPI:
        def add_middleware(self, *a, **k):
            pass
        def post(self, *a, **k):
            def decorator(fn):
                return fn
            return decorator
    fastapi_module.FastAPI = FakeFastAPI
    cors_module = types.ModuleType("fastapi.middleware.cors")
    cors_module.CORSMiddleware = object
    fastapi_middleware_module = types.ModuleType("fastapi.middleware")
    fastapi_middleware_module.cors = cors_module
    pydantic_module = types.ModuleType("pydantic")
    class BaseModel:
        def __init__(self, **data):
            for k, v in data.items():
                setattr(self, k, v)
    pydantic_module.BaseModel = BaseModel
    dateparser_module = types.ModuleType("dateparser")
    search_module = types.ModuleType("dateparser.search")
    def fake_search_dates(text, settings=None):
        return [("Tuesday", return_dt)]
    search_module.search_dates = fake_search_dates
    dateparser_module.search = search_module
    modules = {
        'spacy': spacy_mock,
        'joblib': joblib_mock,
        'fastapi': fastapi_module,
        'fastapi.middleware': fastapi_middleware_module,
        'fastapi.middleware.cors': cors_module,
        'pydantic': pydantic_module,
        'dateparser': dateparser_module,
        'dateparser.search': search_module,
    }
    with mock.patch.dict(sys.modules, modules):
        return importlib.import_module('intent_api.main')


def test_predict_with_date_and_suggestions():
    dt = datetime(2024, 5, 7)
    mod = load_intent_module_with_search(dt)
    req = types.SimpleNamespace(
        message='request on Tuesday night weight=3',
        currentUserEmail='e',
        currentUserName='U',
        UserId=2,
    )
    resp = mod.predict(req)
    assert resp.intent == 'schedule_shift'
    assert resp.ShiftType == 'Night'
    assert resp.ReqType == 'ON'
    assert resp.Weight == 3.0
    assert resp.ShiftStartDate is None
    assert resp.raw_date_phrase == 'tuesday'
    assert resp.suggestions is None


def test_predict_missing_info_suggestions():
    mod = load_intent_module()
    req = types.SimpleNamespace(
        message='hello there',
        currentUserEmail='a',
        currentUserName='b',
        UserId=5,
    )
    resp = mod.predict(req)
    assert resp.intent == 'schedule_shift'
    assert resp.suggestions is not None
    assert 'day' in resp.suggestions
    assert 'shift type' in resp.suggestions
