// window.onload = function () {
//     document.getElementById("download")
//         .addEventListener("click", () => {
//             const invoice = this.document.getElementById("timetable");
//             console.log(invoice);
//             console.log(window);
//             var opt = {
//                 margin: 1,
//                 orientation:
//                 filename: 'myfile.pdf',
//                 image: { type: 'jpeg', quality: 0.98 },
//                 html2canvas: { scale: 2 },
//                 jsPDF: { unit: 'in', format: 'letter', orientation: 'landscape' }
//             };
//             html2pdf().from(invoice).set(opt).save();
//         })
// }