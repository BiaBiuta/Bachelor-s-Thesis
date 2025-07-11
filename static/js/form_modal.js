/* eslint-env browser */
export function openModal(mode, USER){
  const overlay = document.getElementById("modal-overlay");
  const form    = document.getElementById("modal-form");
  const titleEl = document.getElementById("modal-title");

  const shiftTypeRow = form.querySelector("[data-shift-type]");
  const hoursRow     = form.querySelector("[data-work-hours]");

  // adaptăm UI la intent
  const titles = {schedule:"📅 Schedule Shift",check:"👀 Check Availability",
                  swap:"🔄 Swap Shift",cancel:"❌ Cancel Shift"};
  titleEl.textContent = titles[mode]||"";

  shiftTypeRow.hidden = !["schedule","swap"].includes(mode);
  hoursRow.hidden     = mode!=="schedule";

  /* resetare formular */
  form.reset();

  overlay.hidden=false;
  overlay.classList.add("fadeIn");
  overlay.classList.remove("fadeOut");

  // close on backdrop / cancel
  const close = ()=>{
    overlay.classList.remove("fadeIn");
    overlay.classList.add("fadeOut");
    setTimeout(()=>overlay.hidden=true,300);
  };
  document.getElementById("modal-cancel").onclick = close;
  overlay.onclick = e=> e.target===overlay && close();

  /* submit */
  form.onsubmit = async e=>{
    e.preventDefault();
    const fd = Object.fromEntries(new FormData(form).entries());
    fd.intent = mode;
    fd.text   = `${mode} - ${fd.shiftType||""} on ${fd.shiftDate}`;

    // endpoint spre backend Node/Express sau FastAPI, după cum ai deja
    const ok = await fetch("/api/schedule/",{
      method:"POST",headers:{"Content-Type":"application/json"},
      body:JSON.stringify({
        ...fd,
        currentUserEmail: USER.email,
        currentUserName : USER.name,
        userId          : USER.id
      })
    }).then(r=>r.ok);

    if(!ok) alert("Server error");
    close();
  };
}
