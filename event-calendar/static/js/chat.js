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


function addBubble(message, who="ai", quick=[]) {
  htmx.ajax("POST", "/bubble/", {
    values: { message, who, quick: JSON.stringify(quick) },
    target: "#chat-pane",
    swap: "beforeend",
  });
}


document.body.addEventListener("htmx:afterSwap", (evt) => {
  if (evt.detail.target.id === "chat-pane") {
    pane.scrollTop = pane.scrollHeight;
  }
});


/*greeitng initial*/
document.addEventListener("DOMContentLoaded", ()=>{
  console.log("ar trebui sa intru aici ")
  addBubble(initialGreeting());
});


/*  handler send */
sendBtn.addEventListener("click", async () => {
  const text = input.value.trim();
  if (!text) return;

  /*bula utilizator */
  addBubble(text, "user");
  input.value = "";

  /* informatii care lipsesc */
  const partial = extractSchedulingInfo(text);
  // const missing = requiredFields.filter(f => !partial[f]);
  console.log(partial)
  // console.log(missing)
  // if (missing.length) {
  //   /* nu trimitem nimic la backend – cerem detaliile lipsă */
  //   addBubble(getMissingFieldsText(missing));
  //   return;                // ieşim din handler
  // }

  /*   indicator “typing…” /
   const ws = new WebSocket('ws://localhost:5000/ws/typing/');
  addBubble("Typing...", 'bot',[true]);
    ws.onopen = () => ws.send(JSON.stringify({ typing: true }));

  /* parsare*/
  const iso =
    parseAbsDate(text) ||
    resolveRelativeWeekday(text) ||
    (parseExplicitRange(text) || [])[0] ||
    (resolveRelativeWeek(text)    || [])[0];

  if (iso) slotStore.day = iso;

const body = {
  message: text,
  currentUserEmail: USER.email || "",
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


  if (!response.ok) {
    throw new Error(`server returned ${response.status}`);
  }


  data = await response.json();

} catch (err) {
  console.error("fetch /predict failed:", err);
  addBubble("⚠️ Assistant unavailable. Please try again later.");
  return;
}


console.log("FastAPI →", data);


if (data.intent) {
  addBubble(`🤖 intent: <b>${data.intent}</b>`);
} else if (data.detail) {
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

  // Actuactualizam  valorile stocate pe baza informainformatii  noi
  if (data.day) slotStore.day = data.day;
  else if (iso && !slotStore.day) slotStore.day = iso;

  if (data.shiftType) slotStore.shiftType = data.shiftType;
  else if (partial.shiftType) slotStore.shiftType = partial.shiftType;

  if (data.reqType) slotStore.reqType = data.reqType;
  else if (partial.reqType) slotStore.reqType = partial.reqType;

  if (data.weight) slotStore.weight = data.weight;
  else if (partial.weight) slotStore.weight = partial.weight;

  console.log("Combined slots:", combinedSlots);

  /*sloturi care lipsesc*/
  const missing = requiredFields.filter((f) => !slotStore[f]);
  console.log("Missing slots:", missing);

  /* intrebam utilizator despre sloruti lipsa */
  if (missing.length > 0) {
    const followUpText = getMissingFieldsText(missing);
    addBubble(followUpText, "bot");
    return;
  }
  addBubble("Am toate informațiile necesare. Trimit cererea către server...", "bot");


  //const isoDate = slotStore.day;

  const finalPayload = {
    day:        slotStore.day,
    shift_type: slotStore.shiftType,
    req_type:   slotStore.reqType,
    weight:     slotStore.weight,
    nurse:      USER.id,
    department: 0,
  };
    console.log("Final payload:", finalPayload);
function getCookie(name) {
  return document.cookie
    .split('; ')
    .find(row => row.startsWith(name + '='))
    ?.split('=')[1];
}

const csrftoken = getCookie('csrftoken');
  print("Final payload:", finalPayload);
  try {
    const headers = { "Content-Type": "application/json" };
    if (csrftoken) headers["X-CSRFToken"] = csrftoken;

    const res = await fetch("/api/schedule/", {
      method: "POST",
      headers,
      body: JSON.stringify(finalPayload)
    });
    if (!res.ok) {
      throw new Error(`Server returned ${res.status}`);
    }
    const result = await res.json();
    if (result.success) {
      addBubble(result.message || "Cererea a fost înregistrată cu succes!", "bot");
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
input.addEventListener("keydown", e=>{
  if(e.key==="Enter") sendBtn.click();
});
