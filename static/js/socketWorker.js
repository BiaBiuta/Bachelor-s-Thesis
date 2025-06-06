// static/js/socket.js
;(function() {
  "use strict";
    console.log("socketWorker.js loaded");
  // Wait until the page is parsed
  document.addEventListener("DOMContentLoaded", function() {
    // build the correct ws:// or wss:// URL
   const wsScheme = window.location.protocol === "https:" ? "wss" : "ws";
         window.socket = new WebSocket(  "ws://" + window.location.hostname + ":5000/ws/notifications/");

    window.socket.onopen = () => {
      console.log("[WS] connected");
             // îl activezi aici
    };

    window.socket.onmessage = function(e) {
            const data = JSON.parse(e.data);
            console.log("Mesaj primit:", data);
            adaugaNotificareInDropdown(data);
            // Dacă expeditorul este altul decât utilizatorul curent, afișăm notificarea
            if (data.sender !== currentUser) {
                //document.getElementById("notifications").innerText = data.message;

            console.log(window.location.pathname)
             if (data["type"] === "addEvent") {
                 console.log(data.url)
                 // 3️⃣ Dacă vrei să te asiguri că suntem pe pagina aia:
                 if (window.location.pathname === data.url || data.url == "/calendar/") {
                     console.log("dau reload");
                     // 4️⃣ Dă un reload
                     window.location.href="/calender/" ;
                 }
             }
             alert(data.message);
    }
        };
    function adaugaNotificareInDropdown(data) {
      var contentContainer = document.querySelector('.app-notification__content');
      if (!contentContainer) {
        console.warn("Container '.app-notification__content' nu a fost găsit pe pagină.");
        return;
      }

      // Creăm elementele HTML
      var li = document.createElement('li');
      var a = document.createElement('a');
      a.classList.add('app-notification__item');
      a.href = 'javascript:;';

      // Icon (folosind FontAwesome stacked icons)
      var spanIcon = document.createElement('span');
      spanIcon.classList.add('app-notification__icon');
      var iconClass = data.iconClass || 'fa fa-bell';
      spanIcon.innerHTML =
        '<span class="fa-stack fa-lg">' +
          '<i class="fa fa-circle fa-stack-2x text-primary"></i>' +
          '<i class="' + iconClass + ' fa-stack-1x fa-inverse"></i>' +
        '</span>';

      // Mesaj + metadate
      var wrapperDiv = document.createElement('div');
      var pMessage = document.createElement('p');
      pMessage.classList.add('app-notification__message');
      pMessage.textContent = data.message || 'Notificare nouă';
      var pMeta = document.createElement('p');
      pMeta.classList.add('app-notification__meta');
      pMeta.textContent = data.timestamp || new Date().toLocaleString();

      wrapperDiv.appendChild(pMessage);
      wrapperDiv.appendChild(pMeta);

      // Asamblăm structura
      a.appendChild(spanIcon);
      a.appendChild(wrapperDiv);
      li.appendChild(a);

      // Adăugăm la container
      contentContainer.appendChild(li);

      // Actualizăm contorul numeric
      actualizeazaNumarNotificari(1);
    }

    /**
     * Crește contorul de notificări cu un anumit increment (de obicei +1).
     */
    function actualizeazaNumarNotificari(increment) {
      var countSpan = document.getElementById('notification-count');
      if (!countSpan) return;
      var current = parseInt(countSpan.textContent, 10);
      if (isNaN(current)) current = 0;
      countSpan.textContent = (current + increment).toString();
    }

        window.socket.onerror = function(error) {
            console.error("WebSocket error:", error);
        };
        window.socket.onclose = function(e) {
        console.error('WebSocket closed unexpectedly');
    };
  });
})();
// // static/js/socket.js
// ;(function() {
//   "use strict";
//
//   // Wait until the page is parsed
//   document.addEventListener("DOMContentLoaded", function() {
//     // build the correct ws:// or wss:// URL
//    const wsScheme = window.location.protocol === "https:" ? "wss" : "ws";
//          window.socket = new WebSocket(  "ws://" + window.location.hostname + ":5000/ws/notifications/");
//
//     window.socket.onopen = () => {
//       console.log("[WS] connected");
//              // îl activezi aici
//     };
//
//         window.socket.onmessage = function(e) {
//             const data = JSON.parse(e.data);
//             console.log("Mesaj primit:", data);
//             // Dacă expeditorul este altul decât utilizatorul curent, afișăm notificarea
//             // if (data.sender !== currentUser) {
//                 //document.getElementById("notifications").innerText = data.message;
//              alert(data.message);
//             //}
//         };
//
//         window.socket.onerror = function(error) {
//             console.error("WebSocket error:", error);
//         };
//         window.socket.onclose = function(e) {
//         console.error('WebSocket closed unexpectedly');
//     };
//   });
// })();
