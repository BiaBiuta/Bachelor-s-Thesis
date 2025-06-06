# intent_api/main.py

from datetime import datetime, timedelta
from typing import Optional, Dict, Any
import re
import joblib
import spacy
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
    "january", "february", "march", "april", "may", "june",
    "july", "august", "september", "october", "november", "december",
}


class PredictRequest(BaseModel):
    message: str
    currentUserEmail: str
    currentUserName: str
    UserId: int


class PredictResponse(BaseModel):
    intent: str
    Day: Optional[str] = None         # cod D1, D2 sau data ISO
    ShiftType: Optional[str] = None   # Morning/Afternoon/Evening/Night
    ReqType: Optional[str] = None     # ON sau OFF
    Weight: Optional[float] = None    # 1.0, 0.5 etc.
    Role: Optional[str] = None
    raw_date_phrase: Optional[str] = None

    currentUserEmail: str
    currentUserName: str
    UserId: int


def get_weekday_date(base: datetime, weekday_name: str, which: str) -> datetime:
    """
    Return the date of 'this' or 'next' weekday_name.
    De exemplu, get_weekday_date(now, "monday", "next") => următoarea zi de luni.
    """
    target_idx = WEEKDAY_WORDS[weekday_name]
    today_idx = base.weekday()
    if which == "this":
        days_ahead = (target_idx - today_idx) % 7
    else:  # "next"
        days_ahead = ((target_idx - today_idx) % 7) or 7
    return base + timedelta(days=days_ahead)


def contains_explicit_date_word(text: str) -> bool:
    """
    Verifică dacă textul conține cuvântul 'today', 'tomorrow',
    sau numele vreunei luni / zile a săptămânii.
    """
    t = text.lower()
    return (
        "today" in t
        or "tomorrow" in t
        or any(m in t for m in MONTH_WORDS)
        or any(d in t for d in WEEKDAY_WORDS)
    )


def extract_scheduling_info(message: str) -> Dict[str, Any]:
    """
    Port of the JavaScript extractSchedulingInfo function into Python.
    Returns a dictionary with any of the following keys set to "provided" or a value:
      - "day"      : "provided" if a weekday or ISO‐date pattern is found
      - "shiftType": "provided" if morning/afternoon/evening/night (or "day shift"/"night shift") is found
      - "reqType"  : "ON" or "OFF" if "shift on"/"request on" or "shift off"/"request off" is found
      - "weight"   : a float value if a "weight: X" or "X puncte"/"X pct" pattern is found
    """
    info: Dict[str, Any] = {}
    text = message or ""
    lower = text.lower()

    # 1) day: detectăm un pattern de zi ("monday" … "sunday") sau o dată ISO "YYYY-MM-DD"
    if re.search(r"\b(monday|tuesday|wednesday|thursday|friday|saturday|sunday)\b", lower) \
       or re.search(r"\b\d{4}[/-]\d{2}[/-]\d{2}\b", text):
        info["day"] = "provided"

    # 2) shiftType: "morning", "afternoon", "evening", "night", "day shift" sau "night shift"
    if re.search(r"\b(morning|afternoon|evening|night|day shift|night shift)\b", lower):
        info["shiftType"] = "provided"

    # 3) reqType: "shift on"/"request on" => "ON", "shift off"/"request off" => "OFF"
    if re.search(r"\b(shift on|request on)\b", lower) or re.search(r"\b(shift off|request off)\b", lower):
        if re.search(r"\b(shift on|request on)\b", lower):
            info["reqType"] = "ON"
        else:
            info["reqType"] = "OFF"

    # 4) weight: căutăm fie "weight: X" / "weight=X", fie "X puncte" / "X pct"
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

    # 1) Clasificare inițială de intenție
    intent = intent_model.predict([m_lower])[0]

    # 2) Dacă user nu a scris "schedule" dar textul conține un day‐slot valid, forțăm intent = "schedule_shift".
    if re.search(r"\b[dD](\d+)\b", message):
        intent = "schedule_shift"
    elif re.search(r"\b(this|next)\s+(" + "|".join(WEEKDAY_WORDS.keys()) + r")\b", m_lower):
        intent = "schedule_shift"
    elif re.search(r"\b(" + "|".join(WEEKDAY_WORDS.keys()) + r")\b", m_lower):
        intent = "schedule_shift"
    elif "today" in m_lower or "tomorrow" in m_lower:
        intent = "schedule_shift"
    elif re.search(r"\b\d{1,4}[\/\.\-]\d{1,2}[\/\.\-]\d{1,4}\b", m_lower):
        intent = "schedule_shift"

    # 3) Slot-urile
    shift_type: Optional[str] = None
    role: Optional[str] = None
    parsed_date: Optional[datetime] = None
    raw_date_phrase: Optional[str] = None
    req_type: Optional[str] = None
    weight: Optional[float] = None

    # 4) Dacă intenția e "schedule_shift", apelăm extract_scheduling_info pentru validarea preliminară
    if intent == "schedule_shift":
        info = extract_scheduling_info(message)

        # 5) Preluăm shiftType, reqType, weight din info, dacă există
        if "shiftType" in info:
            shift_type = info["shiftType"]
        if "reqType" in info:
            req_type = info["reqType"]
        if "weight" in info:
            weight = info["weight"]

        # 6) Detectăm codul "D<nr>" mai întâi, exact așa cum JS-ul ar face
        m_daycode = re.search(r"\b[dD](\d+)\b", message)
        if m_daycode:
            raw_date_phrase = "D" + m_daycode.group(1)
            # parsed_date rămâne None, pentru că frontend-ul va folosi raw_date_phrase ca Day
        else:
            # 7) "this <weekday>" sau "next <weekday>"
            m_lower=info["day"]
            m = re.search(r"\b(this|next)\s+(" + "|".join(WEEKDAY_WORDS.keys()) + r")\b", m_lower)
            if m:
                which, day_name = m.group(1), m.group(2)
                parsed_date = get_weekday_date(datetime.now(), day_name, which)
            # 8) "today" / "tomorrow"
            elif "today" in m_lower:
                parsed_date = datetime.now()
            elif "tomorrow" in m_lower:
                parsed_date = datetime.now() + timedelta(days=1)
            # 9) fallback search_dates: dacă găsim un weekday simplu, îl considerăm data viitoare
            elif contains_explicit_date_word(m_lower):
                result = search_dates(message, settings={"PREFER_DATES_FROM": "future"})
                if result:
                    keyword, dt = result[0]
                    kw = keyword.lower()
                    has_digit = any(c.isdigit() for c in kw)
                    has_month_or_week = (
                        any(m in kw for m in MONTH_WORDS) or any(d in kw for d in WEEKDAY_WORDS)
                    )
                    if not has_digit and not has_month_or_week:
                        kw = ""
                        dt = None

                    if kw in WEEKDAY_WORDS and dt:
                        parsed_date = dt
                    elif dt:
                        parsed_date = dt
            # 10) pattern-uri fixe ("May 2", "2nd May", "May 2nd, 2025")
            if not parsed_date:
                date_patterns = [
                    r"\b(\d{1,2})(?:st|nd|rd|th)?\s+(may)\b",
                    r"\b(may)\s+(\d{1,2})(?:st|nd|rd|th)?\b",
                    r"\b(may)\s+(\d{1,2})(?:st|nd|rd|th)?,\s+(\d{4})\b"
                ]
                for pattern in date_patterns:
                    match = re.search(pattern, m_lower)
                    if match:
                        day_str = match.group(1) if match.group(1).isdigit() else match.group(2)
                        year = match.group(3) if len(match.groups()) == 3 else datetime.now().year
                        parsed_date = datetime(year=int(year), month=5, day=int(day_str))
                        break

    # 11) Construim Day în format ISO (sau None)
    iso_date = parsed_date.isoformat() if parsed_date else None

    # 12) Returnăm răspunsul complet
    return PredictResponse(
        intent=intent,
        Day=iso_date,
        ShiftType=shift_type,
        ReqType=req_type,
        Weight=weight,
        Role=role,
        raw_date_phrase=raw_date_phrase,
        currentUserEmail=req.currentUserEmail,
        currentUserName=req.currentUserName,
        UserId=req.UserId,
    )
