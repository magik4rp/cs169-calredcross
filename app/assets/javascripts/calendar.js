$(document).ready(function() {

    // page is now ready, initialize the calendar...

    $('#calendar').fullCalendar({
    	fixedWeekCount: false,
		googleCalendarApiKey: 'AIzaSyAN3MLI-jD6mS6425sjj9QcBPWykxvsxZY',
	    events: {
	        googleCalendarId: 'americanredcrossatcal@gmail.com'
	    },
	    eventClick: function(event, jsEvent, view ) { 
	    	console.log(event.start);
	    	$("#event-lightbox-container").show();
	    	jsEvent.preventDefault();
	    	$("#event-start").text(event.start.format("dddd, MMMM Do YYYY, h:mm a"));
	    	$("#event-title").text(event.title);
	    	$("#event-end").text(event.end.format("dddd, MMMM Do YYYY, h:mm a"));
	    	$("#add-event").click(function() {
	    		window.open(event.url);
	    		return false;
	    	});
	    	
	    },
	    height: 550,
	    aspectRatio: 1.35,
	    timeFormat: 'h:mm',
	    timezone: 'local'
	});

	$("#close-event-lightbox").click(function() {
		$("#event-lightbox-container").hide();
	});
});