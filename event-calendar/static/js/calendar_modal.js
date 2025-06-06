// /* static/js/calendar_modal.js – fișier nou sau adaugi la finalul chat.js */
// const modal   = document.getElementById("calendar-modal");
// const picker  = document.getElementById("date-picker");
// const selTxt  = document.getElementById("selected-date");
// const okBtn   = document.getElementById("select-date-btn");
// const closeBtn= document.getElementById("close-cal-btn");
//
// /* === deschidere din alte fișiere =================================== */
// export function openCalendar() {            // (poți apela din alt script)
//   modal.hidden = false;
// }
//
// // /* === închidere când apeși pe butonul Close ========================= */
// // closeBtn.addEventListener("click", () => {
// //   modal.hidden = true;
// // });
//
// /* === închidere clic oriunde pe fundal gri ========================= */
// modal.addEventListener("click", (e) => {
//   if (e.target === modal) {                 // click exact pe overlay
//     modal.hidden = true;
//   }
// });
//
// /* === logica picker/select ========================================= */
// picker.addEventListener("change", () => {
//   if (!picker.value) { okBtn.disabled = true; return; }
//
//   const iso = new Date(picker.value).toISOString();
//   selTxt.textContent = "Selected: " + iso.slice(0, 10);
//   okBtn.disabled = false;
//
//   okBtn.onclick = () => {
//     modal.hidden = true;
//     /* trimite data în input-ul chat-ului + click Send */
//     document.getElementById("chat-input").value =
//       `Schedule me on ${iso.slice(0, 10)}`;
//     document.getElementById("send-btn").click();
//   };
// });
