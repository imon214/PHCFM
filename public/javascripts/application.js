
// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(function() {

    $('#splash div')
        .effect('highlight')
        .animate({opacity: 1.0}, 5000);

    $('#ajax_spinner')
        .ajaxStart(function() {
            $(this).show();
        })
        .ajaxStop(function() {
            $(this).hide();
    });
    
})