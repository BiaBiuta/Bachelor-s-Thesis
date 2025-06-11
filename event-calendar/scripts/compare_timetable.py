import os
import sys
import time
from contextlib import contextmanager
from unittest.mock import patch

# Use the test settings from ``ec_tests`` by default.  This can be overridden
# by setting the ``DJANGO_SETTINGS_MODULE`` environment variable before running
# this script.
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'ec_tests.test_settings')
import django
from django.conf import settings
from django.test import RequestFactory
from django.contrib.auth import get_user_model
from django.db import transaction

django.setup()

# Directory with instance files
BASE_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', '..', 'database', 'instances1_24'))
settings.INSTANCE_DIR = BASE_DIR

from calendarapp.views.views import timetable, timetable_without_algorithm, read_instance_file

User = get_user_model()
rf = RequestFactory()

PREFIX1 = "C:\\Users\\bianc\\PycharmProjects\\licenta_sheet\\GA_yt\\data\\instances1_24\\"
PREFIX2 = "..\\database\\instances1_24\\"

@contextmanager
def patched_open():
    original_open = open
    def _open(path, *args, **kwargs):
        if path.startswith(PREFIX1) or path.startswith(PREFIX2) or path.startswith('.\\..\\database\\instances1_24\\'):
            path = os.path.join(BASE_DIR, os.path.basename(path))
        return original_open(path, *args, **kwargs)
    with patch('builtins.open', _open):
        yield

def run_for_instance(filename):
    file_path = os.path.join(BASE_DIR, filename)
    with transaction.atomic():
        request = rf.get('/timetable-test')
        request.session = {}
        go = read_instance_file(file_path)
        email = 'tmp@example.com'
        username = email.split('@')[0]
        request.user = User.objects.create_user(
            email=email,
            username=username,
            unitate_medicala=go.id,
            password='pass'
        )
        request.session['global_object_id'] = go.id
        request.session['global_object_ids'] = [go.id]
        timings = {}
        with patched_open():
            start = time.perf_counter()
            timetable(request)
            timings['with_algo_time'] = time.perf_counter() - start
            timings['with_algo_kpi'] = request.session.get('kpi_results')
            request.session.pop('kpi_results', None)
            start = time.perf_counter()
            timetable_without_algorithm(request)
            timings['without_algo_time'] = time.perf_counter() - start
            timings['without_algo_kpi'] = request.session.get('kpi_results')
        transaction.set_rollback(True)
    return timings

if __name__ == '__main__':
    results = []
    for name in sorted(f for f in os.listdir(BASE_DIR) if f.endswith('.txt')):
        try:
            timings = run_for_instance(name)
            results.append((name, timings))
            print(f"{name}: with_algo={timings['with_algo_time']:.2f}s, without_algo={timings['without_algo_time']:.2f}s")
        except Exception as exc:
            print(f"{name}: failed - {exc}")
    print("\nSummary:")
    for name, timings in results:
        print(f"{name}\t{timings['with_algo_time']:.2f}\t{timings['without_algo_time']:.2f}")
