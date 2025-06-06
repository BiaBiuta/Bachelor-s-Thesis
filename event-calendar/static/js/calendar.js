const modal  = document.getElementById("calendar-modal");
const picker = document.getElementById("date-picker");
const selTxt = document.getElementById("selected-date");
const okBtn  = document.getElementById("select-date-btn");

export function openCalendar(){ modal.hidden=false; }
document.getElementById("close-cal-btn").onclick = ()=> modal.hidden=true;

picker.onchange = ()=>{
  if(!picker.value){ okBtn.disabled=true; return; }
  const iso=new Date(picker.value).toISOString();
  selTxt.textContent = "Selected: "+iso.slice(0,10);
  okBtn.disabled=false;
  okBtn.onclick = ()=>{
    modal.hidden=true;
    document.getElementById("chat-input").value = `Schedule me on ${iso.slice(0,10)}`;
    document.getElementById("send-btn").click();
  };
};
