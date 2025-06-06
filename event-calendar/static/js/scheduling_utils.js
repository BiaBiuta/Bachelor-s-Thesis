export const requiredFields = ["days","shiftType","hours"];

export function extractSchedulingInfo(message) {
  const info = {};

  // 1) day (ne păstrăm funcționalitatea existentă de recunoaștere),
  //    dar pentru dialog putem detecta simplu un pattern de zi (“monday”, “2025-06-10” etc.)
  if (/\b(monday|tuesday|wednesday|thursday|friday|saturday|sunday)\b/i.test(message) ||
      /\b\d{4}[/-]\d{2}[/-]\d{2}\b/.test(message)) {
    info.day = "provided";
  }

  // 2) shiftType: exact la fel ca înainte
  if (/\b(morning|afternoon|evening|night|day shift|night shift)\b/i.test(message)) {
    info.shiftType = "provided";
  }

  // 3) reqType: detectăm “on” sau “off” când e clar
  //    Atenție: să nu prindă “on” din propoziții obișnuite; mai precis:
  //    căutăm expresii “shift on” și “shift off” sau “cerere on” / “cerere off”.
  if (/\b(shift on|request on)\b/i.test(message) ||
      /\b(shift off|request off)\b/i.test(message)) {
    // dacă există “shift on” în text => reqType = “ON”, altfel “OFF”
    if (/\b(shift on|request on)\b/i.test(message)) {
      info.reqType = "ON";
    } else {
      info.reqType = "OFF";
    }
  }

  // 4) weight: detectăm un număr zecimal singular sau întreagă („5”, „2.5” etc.)
  //    Căutăm pattern care nu face parte din „date” (evităm să considerăm “2025” ca weight).
  //    De exemplu un pattern simplu: un număr între paranteze după cuvântul “weight:”
  const weightMatch = message.match(/\bweight\s*[:=]\s*(\d+(\.\d+)?)\b/i);
  if (weightMatch) {
    info.weight = parseFloat(weightMatch[1]);
  } else {
    // alt fallback: un număr zecimal urmat de “puncte” (punct -> poate fi “puncte” sau “pct”)
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
