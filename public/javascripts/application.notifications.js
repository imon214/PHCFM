function createNotification(notification, opts ){
    return $notifier.notify("create", notification.layout, notification, opts);
}

function deleteNotification(notification) {
    $.rails.ajax({
        url: '/notifications/' + notification.id, 
        type: 'delete'
    });
}

$(function() {

    $notifier = $("#notifications").notify();
    var shownNotifications = new Array();
    
    $periodicalUpdater = $.PeriodicalUpdater('/notifications.json', {
        method: 'get',          // method; get or post
        data: '',               // array of values to be passed to the page - e.g. {name: "John", greeting: "hello"}
        minTimeout: 1000,       // starting value for the timeout in milliseconds
        maxTimeout: 8000,       // maximum length of time between requests
        multiplier: 2,          // the amount to expand the timeout by if the response hasn't changed (up to maxTimeout)
        type: 'json',           // response type - text, xml, json, etc.  See $.ajax config options
        maxCalls: 0,            // maximum number of calls. 0 = no limit.
        autoStop: 5             // automatically stop requests after this many returns of the same data. 0 = disabled.
    }, function(remoteData, success, xhr, handle) {
        // Process the new data (only called when there was a change)
        $.each(remoteData, function(index, notification) {
            console.log(notification.id);
            if($.inArray(notification.id, shownNotifications) === -1) {
                var expires = notification.is_sticky == true ? false : 4000;
                var widget = createNotification(notification, {
                    expires: expires,
                    custom: (notification.is_custom == true),
                    close: function() {
                      deleteNotification(notification);
                    }
                });
                
                // delete the notification if anyone clicks on a specific link
                widget.widget().delegate("a.notification-close", "click", function(){
                  deleteNotification(notification);
		});
                
                shownNotifications.push(notification.id);                
            }
        });
    });
    $periodicalUpdater.start();
})