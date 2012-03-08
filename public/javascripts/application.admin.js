$.tablesorter.addParser({
    id: 'priority',
    is: function(s) {
        return false;
    },
    format: function(s) {
        return s.toLowerCase().
        replace("high",3).
        replace("medium",2).
        replace("low",1)
    },
    type: 'numeric'
})

$.tablesorter.addParser({
    id: 'patch_status',
    is: function(s) {
        return false;
    },
    format: function(s) {
        return s.toLowerCase().
        replace(/started/,1).
        replace(/alpha/,2).
        replace(/beta/,3).
        replace(/qa/,4).
        replace(/release candidate/,5).
        replace(/official/,6).
        replace(/custom/,7).
        replace(/cancelled/,8)
    },
    type: 'numeric'
})
