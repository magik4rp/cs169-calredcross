$(document).ready(function() {

    // page is now ready, initialize the calendar...

    $('#calendar').fullCalendar({
    	fixedWeekCount: false,
		googleCalendarApiKey: 'AIzaSyAN3MLI-jD6mS6425sjj9QcBPWykxvsxZY',
	    events: {
	        googleCalendarId: 'americanredcrossatcal@gmail.com'
	    },
	    eventClick: function(event, jsEvent, view ) { 
	    	console.log(event);
	    	jsEvent.preventDefault();
	    },
	    height: 550,
	    aspectRatio: 1.35,
	});

});