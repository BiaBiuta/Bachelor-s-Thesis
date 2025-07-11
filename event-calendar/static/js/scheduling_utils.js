// Lista completă de slot-uri necesare pentru a crea o cerere
// de tip `ShiftRequest`. Toate trebuie colectate înainte de
// a trimite datele către backend.
export const requiredFields = ["day", "shiftType", "reqType", "weight"];

export function extractSchedulingInfo(message) {
  const info = {};


  if (/\b(monday|tuesday|wednesday|thursday|friday|saturday|sunday)\b/i.test(message) ||
      /\b\d{4}[/-]\d{2}[/-]\d{2}\b/.test(message)) {
    info.day = "provided";
  }


  const stMatch = message.match(/\b(morning|afternoon|evening|night|day shift|night shift)\b/i);
  if (stMatch) {
    const st = stMatch[1].toLowerCase();

    info.shiftType = st.replace(" shift", "");
    info.shiftType = info.shiftType.charAt(0).toUpperCase() + info.shiftType.slice(1);
  }


  if (/\b(shift on|request on)\b/i.test(message) ||
      /\b(shift off|request off)\b/i.test(message)) {

    if (/\b(shift on|request on)\b/i.test(message)) {
      info.reqType = "ON";
    } else {
      info.reqType = "OFF";
    }
  }


  const weightMatch = message.match(/\bweight\s*[:=]\s*(\d+(\.\d+)?)\b/i);
  if (weightMatch) {
    info.weight = parseFloat(weightMatch[1]);
  } else {
    const genericNumber = message.match(/\b(\d+(\.\d+)?)\s*(puncte|pct)\b/i);
    if (genericNumber) {
      info.weight = parseFloat(genericNumber[1]);
    }
  }

  return info;
}


export function getMissingFieldsText(missing) {
  return `Pentru a procesa cererea ta, am nevoie de următoarele informații:\n` +
    (missing.includes("day")
      ? "1. **Ziua (day)**: Pe ce dată dorești să faci cererea? (ex: „this Tuesday” sau „2025-06-15”)\n"
      : "") +
    (missing.includes("shiftType")
      ? "2. **Tipul turei (shiftType)**: Preferi Morning, Afternoon sau Night?\n"
      : "") +
    (missing.includes("reqType")
      ? "3. **Tipul cererii (reqType)**: Este ON (Shift On) sau OFF (Shift Off)?\n"
      : "") +
    (missing.includes("weight")
      ? "4. **Ponderea cererii (weight)**: Câtă prioritate are cererea ta? (ex: 1.0 = maximă)\n"
      : "") +
    "Te rog să furnizezi aceste detalii și voi continua procesarea.";
}
