// static/js/socket.js
;(function() {
  "use strict";
  const STORAGE_KEY = "last_notifications";
  const COUNT_KEY = "notification_count";
  function actualizeazaNumarNotificari(increment) {
      var current = loadNotificationCount();
      if (isNaN(current)) current = 0;
      current += increment;
      setNotificationCount(current);
    }
function adaugaNotificareInDropdown(data, store) {
      if (store === undefined) store = true;
      var contentContainer = document.querySelector('.app-notification__content');
      if (!contentContainer) {
        console.warn("Container '.app-notification__content' nu a fost găsit pe pagină.");
        return;
      }
      var li = document.createElement('li');
      var a = document.createElement('a');
      a.classList.add('app-notification__item');
      a.href = 'javascript:;';

      var spanIcon = document.createElement('span');
      spanIcon.classList.add('app-notification__icon');
      var iconClass = data.iconClass || 'fa fa-bell';
      spanIcon.innerHTML =
        '<span class="fa-stack fa-lg">' +
          '<i class="fa fa-circle fa-stack-2x text-primary"></i>' +
          '<i class="' + iconClass + ' fa-stack-1x fa-inverse"></i>' +
        '</span>';


      var wrapperDiv = document.createElement('div');
      var pMessage = document.createElement('p');
      pMessage.classList.add('app-notification__message');
      pMessage.textContent = data.message || 'Notificare nouă';
      var pMeta = document.createElement('p');
      pMeta.classList.add('app-notification__meta');
      pMeta.textContent = data.timestamp || new Date().toLocaleString();

      wrapperDiv.appendChild(pMessage);
      wrapperDiv.appendChild(pMeta);


      a.appendChild(spanIcon);
      a.appendChild(wrapperDiv);
      li.appendChild(a);


      contentContainer.appendChild(li);

      if (store) {
        actualizeazaNumarNotificari(1);
        storeNotification(data);
      }
    }
  function loadStoredNotifications() {
    try {
      const parsed = JSON.parse(localStorage.getItem(STORAGE_KEY)) || [];
      parsed.sort(function(a, b) {
        if (!a.timestamp) return 1;
        if (!b.timestamp) return -1;
        return new Date(b.timestamp) - new Date(a.timestamp);
      });
      return parsed;
    } catch (err) {
      console.warn("Failed to parse stored notifications", err);
      return [];
    }
  }

  function storeNotification(data) {
    const list = loadStoredNotifications();

    if (!data.timestamp) {
      data.timestamp = new Date().toISOString();
    }

    list.push(data);


    list.sort(function(a, b) {
      return new Date(b.timestamp) - new Date(a.timestamp);
    });

    const unique = [];
    const seen = new Set();
    list.forEach(function(n) {
      if (!seen.has(n.timestamp)) {
        unique.push(n);
        seen.add(n.timestamp);
      }
    });
    console.log(unique);
    while (unique.length > 10) unique.pop();

    localStorage.setItem(STORAGE_KEY, JSON.stringify(unique));
    localStorage.setItem(COUNT_KEY, unique.length.toString());
  }

  function loadNotificationCount() {
    return parseInt(localStorage.getItem(COUNT_KEY) || "0", 10);
  }

  function setNotificationCount(count) {
    var countSpan = document.getElementById('notification-count');
    if (countSpan) {
      countSpan.textContent = count.toString();
    }
    localStorage.setItem(COUNT_KEY, count.toString());
  }
    console.log("socketWorker.js loaded");

  function renderStoredNotifications() {
    const stored = loadStoredNotifications();
    var contentContainer = document.querySelector('.app-notification__content');
    if (contentContainer) {
      contentContainer.innerHTML = '';
      stored.forEach(function(n){ adaugaNotificareInDropdown(n, false); });
    }
    setNotificationCount(stored.length);
  }

  document.addEventListener("DOMContentLoaded", function() {
    renderStoredNotifications();

    window.addEventListener('storage', function(e) {
      if (e.key === STORAGE_KEY || e.key === COUNT_KEY) {
        renderStoredNotifications();
      }
    });

   const wsScheme = window.location.protocol === "https:" ? "wss" : "ws";
         window.socket = new WebSocket( "ws://" + window.location.hostname + ":5000/ws/notifications/");

    window.socket.onopen = () => {
      console.log("[WS] connected");
    };

    window.socket.onmessage = function(e) {
            const data = JSON.parse(e.data);
            console.log("Mesaj primit:", data);
            adaugaNotificareInDropdown(data, true);

            if (data.sender !== currentUser) {
                //document.getElementById("notifications").innerText = data.message;

            console.log(window.location.pathname)
             if (data["type"] === "addEvent") {
                 console.log(data.url)

                 if (window.location.pathname === data.url || data.url == "/calendar/") {
                     console.log("dau reload");

                     window.location.href="/calender/" ;
                 }
             }
             alert(data.message);
    }
        };


    /**
     * Crește contorul de notificări cu un anumit increment ( +1).
     */


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
