// /* eslint-env browser */
// import {resolveRelativeWeekday,parseAbsDate,resolveRelativeWeek,parseExplicitRange}
//   from "./date_utils.js";
// import { initialGreeting } from "./utils/greeting.js";
// import {extractSchedulingInfo, getMissingFieldsText, requiredFields} from "./scheduling_utils.js";
//
// const pane    = document.getElementById("chat-pane");
// const input   = document.getElementById("chat-input");
// const sendBtn = document.getElementById("send-btn");
// const debugBtn= document.getElementById("debug-btn");
//
// const USER = JSON.parse(document.getElementById("django-context").textContent);  // vezi §7.4
//
// /* ───── mici utilitare HTMX ───────────────────────────────────────── */
// function addBubble(message, who="ai", quick=[]){
//   htmx.ajax("POST", "/bubble/", {
//     values:{message, who, quick:JSON.stringify(quick)},
//     target:"#chat-pane",
//     swap:"beforeend"
//   });
//   pane.scrollTop = pane.scrollHeight;
// }
//
// /* ───── greeting iniţial ─────────────────────────────────────────── */
// document.addEventListener("DOMContentLoaded", ()=>{
//   console.log("ar trebui sa intru aici ")
//   addBubble(initialGreeting());     // << înlocuiește textul fix
// });
//
//
// /* ───── handler send ─────────────────────────────────────────────── */
// sendBtn.addEventListener("click", async () => {
//   const text = input.value.trim();
//   if (!text) return;
//
//   /* 1️⃣  afişăm imediat bula utilizatorului */
//   addBubble(text, "user");
//   input.value = "";
//
//   /* 2️⃣  verificăm ce informaţii lipsesc */
//   const partial = extractSchedulingInfo(text);
//   const missing = requiredFields.filter(f => !partial[f]);
//   console.log(partial)
//   console.log(missing)
//   if (missing.length) {
//     /* nu trimitem nimic la backend – cerem detaliile lipsă */
//     addBubble(getMissingFieldsText(missing));
//     return;                // ieşim din handler
//   }
//
//   /* 3️⃣  indicator “typing…” (opţional) ----------------------------- */
//   const ws = new WebSocket(`ws://${location.host}/ws/typing/`);
//   ws.onopen = () => ws.send(JSON.stringify({ typing: true }));
//
//   /* 4️⃣  parsăm rapid date absolut / relativ ------------------------ */
//   const iso =
//     parseAbsDate(text) ||
//     resolveRelativeWeekday(text) ||
//     (parseExplicitRange(text) || [])[0] ||
//     (resolveRelativeWeek(text)    || [])[0];
//
//   /* 5️⃣  chemăm FastAPI -------------------------------------------- */
//   /* 5️⃣  chemăm FastAPI -------------------------------------------- */
// const body = {
//   message: text,
//   currentUserEmail: USER.email || "",    // <- adaugă acest câmp!
//   currentUserName:  USER.name,
//   UserId:           USER.id
// };
//
//   let data;
// try {
//   const response = await fetch("http://localhost:8001/predict", {
//     method: "POST",
//     headers: { "Content-Type": "application/json" },
//     body: JSON.stringify(body)
//   });
//
//   /* (a) ­verificăm codul HTTP --------------------------- */
//   if (!response.ok) {                     // 4xx / 5xx / 422 …
//     throw new Error(`server returned ${response.status}`);
//   }
//
//   /* (b) ­parsăm JSON-ul -------------------------------- */
//   data = await response.json();           // (!) nu .then în lanţ
//
// } catch (err) {
//   console.error("fetch /predict failed:", err);
//   addBubble("⚠️ Assistant unavailable. Please try again later.");
//   return;
// }
//
// /* 2️⃣  aici AI deja răspunsul în `data`  ------------------ */
// console.log("FastAPI →", data);           // vezi tot JSON-ul
//
// /* De exemplu… */
// if (data.intent) {
//   addBubble(`🤖 intent: <b>${data.intent}</b>`);
// } else if (data.detail) {                 // eroare de validare 422
//   addBubble(`❌ ${data.detail}`);
// } else {
//   addBubble("🤔 I didn't understand that.");
// }
//
// });
//
//
// /* Enter = click Send */
// input.addEventListener("keydown", e=>{
//   if(e.key==="Enter") sendBtn.click();
// });
