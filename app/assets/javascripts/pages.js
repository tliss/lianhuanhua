$(document).on('ready turbolinks:load', function() {
    $('#img-prev').hover(function() {
        $(this).fadeTo(300, 0.3);
    }, function() {
        $(this).fadeTo(300, 0);
    });

    $('#img-next').hover(function() {
        $(this).fadeTo(300, 0.3);
    }, function() {
        $(this).fadeTo(300, 0);
    });
});