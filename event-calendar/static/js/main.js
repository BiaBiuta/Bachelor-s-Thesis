(function () {
	"use strict";
	console.log("main.js loaded");
	var treeviewMenu = $('.app-menu');

	// Toggle Sidebar
    //:))
	$('[data-toggle="sidebar"]').click(function(event) {
		event.preventDefault();
		$('.app').toggleClass('sidenav-toggled');
	});

	// Activate sidebar treeview toggle
	$("[data-toggle='treeview']").click(function(event) {
		event.preventDefault();
		if(!$(this).parent().hasClass('is-expanded')) {
			treeviewMenu.find("[data-toggle='treeview']").parent().removeClass('is-expanded');
		}
		$(this).parent().toggleClass('is-expanded');
	});

	// Set initial active toggle
	$("[data-toggle='treeview.'].is-expanded").parent().toggleClass('is-expanded');

	//Activate bootstrip tooltips
	$("[data-toggle='tooltip']").tooltip();
    // let socket;


    // if (!socket || socket.readyState === WebSocket.CLOSED) {
    //     socket = new WebSocket('ws://' + window.location.hostname + ':5000/ws/notifications/');
    //
    //     socket.onopen = function() {
    //         console.log('WebSocket connection established');
    //     };
    //
    //     socket.onmessage = function(e) {
    //         console.log('Message received:', e.data);
    //         const data = JSON.parse(e.data);
    //         alert(data.message);
    //     };
    //
    //     socket.onclose = function(e) {
    //         console.error('WebSocket closed unexpectedly');
    //     };
    //
    //     socket.onerror = function(error) {
    //         console.error('WebSocket error:', error);
    //     };
    // }

})();
// static/js/main.js
