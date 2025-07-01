# intent_api/main.py
from datetime import datetime, timedelta
from typing import Optional, Dict, Any, List
import re, joblib, spacy
from dateparser.search import search_dates
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel

app = FastAPI()
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# load once
nlp = spacy.load("en_core_web_sm")
intent_model = joblib.load("intent_model.pkl")

WEEKDAY_WORDS = {
    "monday": 0,
    "tuesday": 1,
    "wednesday": 2,
    "thursday": 3,
    "friday": 4,
    "saturday": 5,
    "sunday": 6,
}

MONTH_WORDS = {
    "january","february","march","april","may","june",
    "july","august","september","october","november","december",
}


MONTH_NAME_TO_NUM = {
    "january": 1,
    "february": 2,
    "march": 3,
    "april": 4,
    "may": 5,
    "june": 6,
    "july": 7,
    "august": 8,
    "september": 9,
    "october": 10,
    "november": 11,
    "december": 12,
}

class PredictRequest(BaseModel):
    message: str
    currentUserEmail: str
    currentUserName: str
    UserId: int

class PredictResponse(BaseModel):
    intent: str
    ShiftStartDate: Optional[str] = None
    ShiftType: Optional[str] = None
    ReqType: Optional[str] = None
    Weight: Optional[float] = None
    Role: Optional[str] = None
    raw_date_phrase: Optional[str] = None
    suggestions: Optional[str] = None
    currentUserEmail: str
    currentUserName: str
    UserId: int

def get_weekday_date(base: datetime, weekday_name: str, which: str) -> datetime:
    """Return the date of 'this' or 'next' weekday_name."""
    target_idx = WEEKDAY_WORDS[weekday_name]
    today_idx = base.weekday()
    if which == "this":
        days_ahead = (target_idx - today_idx) % 7
    else:
        days_ahead = ((target_idx - today_idx) % 7) or 7
    return base + timedelta(days=days_ahead)

def contains_explicit_date_word(text: str) -> bool:
    t = text.lower()
    return (
        "today" in t
        or "tomorrow" in t
        or any(m in t for m in MONTH_WORDS)
        or any(d in t for d in WEEKDAY_WORDS)
    )


def extract_scheduling_info(message: str) -> Dict[str, Any]:
    """Parse a free text scheduling request and return the pieces that look like
    a day, shift type, request type or weight."""
    info: Dict[str, Any] = {}
    text = message or ""
    lower = text.lower()

    if re.search(r"\b(monday|tuesday|wednesday|thursday|friday|saturday|sunday)\b", lower) or \
       re.search(r"\b\d{4}[/-]\d{2}[/-]\d{2}\b", text):
        info["day"] = "provided"

    if re.search(r"\b(morning|afternoon|evening|night|day shift|night shift)\b", lower):
        info["shiftType"] = "provided"

    if re.search(r"\b(shift on|request on)\b", lower):
        info["reqType"] = "ON"
    elif re.search(r"\b(shift off|request off)\b", lower):
        info["reqType"] = "OFF"

    m_weight = re.search(r"\bweight\s*[:=]\s*(\d+(\.\d+)?)\b", lower)
    if m_weight:
        try:
            info["weight"] = float(m_weight.group(1))
        except ValueError:
            pass
    else:
        m_generic = re.search(r"\b(\d+(\.\d+)?)\s*(puncte|pct)\b", lower)
        if m_generic:
            try:
                info["weight"] = float(m_generic.group(1))
            except ValueError:
                pass

    return info

@app.post("/predict", response_model=PredictResponse)
def predict(req: PredictRequest):
    message = req.message.strip()
    m_lower = message.lower()
    # intent clasification
    intent = intent_model.predict([m_lower])[0]
    shift_type: Optional[str] = None
    role: Optional[str] = None
    parsed_date: Optional[datetime] = None
    raw_date_phrase: Optional[str] = None
    req_type: Optional[str] = None
    weight: Optional[float] = None
    for tok in nlp(message):
        t = tok.text.lower()
        if t in {"morning", "afternoon", "evening", "night"}:
            shift_type = t.capitalize()
        if t in {"nurse", "supervisor", "rn"}:
            role = t.upper()

    info = extract_scheduling_info(message)
    if "shiftType" in info and not shift_type:
        shift_type = info["shiftType"].capitalize() if isinstance(info["shiftType"], str) else info["shiftType"]
    if "reqType" in info:
        req_type = info["reqType"]
    if "weight" in info:
        weight = info["weight"]

    # corect intent daca userul scrie un promt care nu poate fi clasificat
    if intent == "unknown" and (
        "today" in m_lower or "tomorrow" in m_lower or "day" in info or "shiftType" in info
    ):
        intent = "schedule_shift"

    m_daycode = re.search(r"\b[dD](\d+)\b", message)
    if m_daycode:
        raw_date_phrase = "D" + m_daycode.group(1)
    else:
        m = re.search(r"\b(this|next)\s+(" + "|".join(WEEKDAY_WORDS.keys()) + r")\b", m_lower)
        if m:
            which, day = m.group(1), m.group(2)
            parsed_date = get_weekday_date(datetime.now(), day, which)
        elif "today" in m_lower:
            parsed_date = datetime.now()
        elif "tomorrow" in m_lower:
            parsed_date = datetime.now() + timedelta(days=1)
        elif contains_explicit_date_word(m_lower):
            result = search_dates(message, settings={"PREFER_DATES_FROM": "future"})
            if result:
                keyword, dt = result[0]
                kw = keyword.lower()
                has_digit = any(c.isdigit() for c in kw)
                has_month_or_week = (
                    any(mo in kw for mo in MONTH_WORDS) or any(dy in kw for dy in WEEKDAY_WORDS)
                )
                if not has_digit and not has_month_or_week:
                    kw = ""
                    dt = None

                if kw in WEEKDAY_WORDS and dt:
                    if f"this {kw}" in m_lower or f"next {kw}" in m_lower:
                        parsed_date = dt
                    else:
                        raw_date_phrase = kw
                elif dt:
                    parsed_date = dt
        if not parsed_date:
            month_regex = "|".join(MONTH_NAME_TO_NUM.keys())
            date_patterns = [
                rf"\b(\d{{1,2}})(?:st|nd|rd|th)?\s+({month_regex})\b",
                rf"\b({month_regex})\s+(\d{{1,2}})(?:st|nd|rd|th)?\b",
                rf"\b({month_regex})\s+(\d{{1,2}})(?:st|nd|rd|th)?,\s+(\d{{4}})\b",
            ]
            for pattern in date_patterns:
                match = re.search(pattern, m_lower)
                if match:
                    if match.group(1).isdigit():
                        day_str = match.group(1)
                        month_word = match.group(2)
                    else:
                        month_word = match.group(1)
                        day_str = match.group(2)
                    year = match.group(3) if len(match.groups()) == 3 else datetime.now().year
                    month_num = MONTH_NAME_TO_NUM.get(month_word, datetime.now().month)
                    parsed_date = datetime(year=int(year), month=month_num, day=int(day_str))
                    break

    iso_date = parsed_date.isoformat() if parsed_date else None

    suggestions: Optional[str] = None
    if intent == "schedule_shift":
        missing: List[str] = []
        if not parsed_date and not raw_date_phrase:
            missing.append("day")
        if not shift_type:
            missing.append("shift type")
        if not req_type:
            missing.append("request type")
        if weight is None:
            missing.append("weight")
        if missing:
            suggestions = "Please specify: " + ", ".join(missing)

    return PredictResponse(
        intent=intent,
        ShiftStartDate=iso_date,
        ShiftType=shift_type,
        ReqType=req_type,
        Weight=weight,
        Role=role,
        raw_date_phrase=raw_date_phrase,
        suggestions=suggestions,
        currentUserEmail=req.currentUserEmail,
        currentUserName=req.currentUserName,
        UserId=req.UserId,
    )
