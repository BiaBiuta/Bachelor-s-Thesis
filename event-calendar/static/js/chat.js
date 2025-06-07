/* eslint-env browser */
import {resolveRelativeWeekday,parseAbsDate,resolveRelativeWeek,parseExplicitRange}
  from "./date_utils.js";
import { initialGreeting } from "./utils/greeting.js";
import {extractSchedulingInfo, getMissingFieldsText, requiredFields} from "./scheduling_utils.js";

const pane    = document.getElementById("chat-pane");
const input   = document.getElementById("chat-input");
const sendBtn = document.getElementById("send-btn");
const debugBtn= document.getElementById("debug-btn");

const USER = JSON.parse(document.getElementById("django-context").textContent);  // vezi §7.4

// Stocăm progresiv datele extrase din conversație pentru a putea
// finaliza cererea chiar și dacă utilizatorul oferă informațiile
// în mai multe mesaje succesive.
const slotStore = {
  day: null,
  shiftType: null,
  reqType: null,
  weight: null,
};

/* ───── mici utilitare HTMX ───────────────────────────────────────── */
function addBubble(message, who="ai", quick=[]){
  htmx.ajax("POST", "/bubble/", {
    values:{message, who, quick:JSON.stringify(quick)},
    target:"#chat-pane",
    swap:"beforeend"
  });
  pane.scrollTop = pane.scrollHeight;
}


/* ───── greeting iniţial ─────────────────────────────────────────── */
document.addEventListener("DOMContentLoaded", ()=>{
  console.log("ar trebui sa intru aici ")
  addBubble(initialGreeting());     // << înlocuiește textul fix
});


/* ───── handler send ─────────────────────────────────────────────── */
sendBtn.addEventListener("click", async () => {
  const text = input.value.trim();
  if (!text) return;

  /* 1️⃣  afişăm imediat bula utilizatorului */
  addBubble(text, "user");
  input.value = "";

  /* 2️⃣  verificăm ce informaţii lipsesc */
  const partial = extractSchedulingInfo(text);
  // const missing = requiredFields.filter(f => !partial[f]);
  console.log(partial)
  // console.log(missing)
  // if (missing.length) {
  //   /* nu trimitem nimic la backend – cerem detaliile lipsă */
  //   addBubble(getMissingFieldsText(missing));
  //   return;                // ieşim din handler
  // }

  /* 3️⃣  indicator “typing…” (opţional) ----------------------------- */
   const ws = new WebSocket('ws://localhost:5000/ws/typing/');
  addBubble("Typing...", 'bot',[true]);
    ws.onopen = () => ws.send(JSON.stringify({ typing: true }));

  /* 4️⃣  parsăm rapid date absolut / relativ ------------------------ */
  const iso =
    parseAbsDate(text) ||
    resolveRelativeWeekday(text) ||
    (parseExplicitRange(text) || [])[0] ||
    (resolveRelativeWeek(text)    || [])[0];

  // Actualizăm slotStore cu informațiile detectate local
  if (iso) slotStore.day = iso;

const body = {
  message: text,
  currentUserEmail: USER.email || "",    // <- adaugă acest câmp!
  currentUserName:  USER.name,
  UserId:           USER.id
};

  let data;
try {
  const response = await fetch("http://localhost:8001/predict", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(body)
  });

  /* (a) ­verificăm codul HTTP --------------------------- */
  if (!response.ok) {                     // 4xx / 5xx / 422 …
    throw new Error(`server returned ${response.status}`);
  }

  /* (b) ­parsăm JSON-ul -------------------------------- */
  data = await response.json();           // (!) nu .then în lanţ

} catch (err) {
  console.error("fetch /predict failed:", err);
  addBubble("⚠️ Assistant unavailable. Please try again later.");
  return;
}

/* 2️⃣  aici AI deja răspunsul în `data`  ------------------ */
console.log("FastAPI →", data);           // vezi tot JSON-ul

/* De exemplu… */
if (data.intent) {
  addBubble(`🤖 intent: <b>${data.intent}</b>`);
} else if (data.detail) {                 // eroare de validare 422
  addBubble(`❌ ${data.detail}`);
} else {
  addBubble("🤔 I didn't understand that.");
}
if (data.intent !== "schedule_shift") {
    addBubble("Momentan pot să te ajut doar cu programări de ture.", "bot");
    return;
  }

  const serverSlots = {
    day:       data.day ? "provided" : null,
    shiftType: data.shiftType ? "provided" : null,
    reqType:   data.reqType ? "provided" : null,
    weight:    data.weight ? "provided" : null,
  };

  const localSlots = {
    day:       partial.day ? "provided" : null,
    shiftType: partial.shiftType ? "provided" : null,
    reqType:   partial.reqType ? "provided" : null,
    weight:    partial.weight ? "provided" : null,
  };

  // combinare cu prioritate pentru valorile din server
  const combinedSlots = {
    day:       serverSlots.day || localSlots.day || (slotStore.day ? "provided" : null),
    shiftType: serverSlots.shiftType || localSlots.shiftType || (slotStore.shiftType ? "provided" : null),
    reqType:   serverSlots.reqType || localSlots.reqType || (slotStore.reqType ? "provided" : null),
    weight:    serverSlots.weight || localSlots.weight || (slotStore.weight ? "provided" : null)
  };

  // Actualizăm valorile stocate pe baza informațiilor noi
  if (data.day) slotStore.day = data.day;
  else if (iso && !slotStore.day) slotStore.day = iso;

  if (data.shiftType) slotStore.shiftType = data.shiftType;
  else if (partial.shiftType) slotStore.shiftType = partial.shiftType;

  if (data.reqType) slotStore.reqType = data.reqType;
  else if (partial.reqType) slotStore.reqType = partial.reqType;

  if (data.weight) slotStore.weight = data.weight;
  else if (partial.weight) slotStore.weight = partial.weight;

  console.log("Combined slots:", combinedSlots);

  /* ─── 7️⃣ Determinăm care slot-uri lipsesc ───────────────────────────── */
  const missing = requiredFields.filter((f) => !slotStore[f]);
  console.log("Missing slots:", missing);

  /* ─── 8️⃣ Dacă există slot-uri lipsă, întrebăm utilizatorul și oprim fluxul aici ───── */
  if (missing.length > 0) {
    // Generăm mesajul de tip follow-up
    const followUpText = getMissingFieldsText(missing);
    addBubble(followUpText, "bot");
    return;
  }

  /* ─── 9️⃣ Dacă am ajuns aici, înseamnă că am toate datele necesare (day, shiftType, reqType, weight) ───────── */
  addBubble("Am toate informațiile necesare. Trimit cererea către server...", "bot");

  /* ─── 1️⃣0️⃣ Construim payload-ul final pentru /api/schedule/ ─────────────────── */
  const isoDate = slotStore.day;

  // Construim payload definitiv
  const finalPayload = {
    // Câmpuri obligatorii conform modelului Django:
    day:        isoDate,                      // ex: "2025-06-10T00:00:00Z"
    shift_type: slotStore.shiftType,
    req_type:   slotStore.reqType,
    weight:     slotStore.weight,

    // Câmpuri redundante (pentru audit/istoric)
    nurse:      USER.id,     // prespunem că USER.id e același ca Nurse.pk
    department: 0, // dacă ai department în context; altfel, adaugi un pas să-l ceri
  };
const csrftoken = document.querySelector('[name=csrf-token]').content;
  /* ─── 1️⃣1️⃣ Apelăm endpoint-ul real de creare `ShiftRequest` în Django ───────── */
  try {
    const res = await fetch("/api/schedule/", {
      method:  "POST",
      headers: { "Content-Type": "application/json","X-CSRFToken": csrftoken },
      body:    JSON.stringify(finalPayload)
    });
    if (!res.ok) {
      throw new Error(`Server returned ${res.status}`);
    }
    const result = await res.json();
    if (result.success) {
      addBubble(result.message || "Cererea a fost înregistrată cu succes!", "bot");
      // Resetează informațiile colectate pentru o nouă conversație
      slotStore.day = null;
      slotStore.shiftType = null;
      slotStore.reqType = null;
      slotStore.weight = null;
    } else {
      addBubble(result.message || "A intervenit o eroare la înregistrare.", "bot");
    }
  } catch (err) {
    console.error("Error sending final request:", err);
    addBubble("⚠️ Nu am putut înregistra cererea. Încearcă mai târziu.", "bot");
  }
});




/* Enter = click Send */
input.addEventListener("keydown", e=>{
  if(e.key==="Enter") sendBtn.click();
});
