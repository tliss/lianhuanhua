$(document).on('turbolinks:load', function() {
    if ($('#img-prev').length) {
        $('#img-prev').hover(function() {
            $(this).fadeTo(300, 0.3);
        }, function() {
            $(this).fadeTo(300, 0);
        });
    }

    if ($('#img-next').length) {
        $('#img-next').hover(function() {
            $(this).fadeTo(300, 0.3);
        }, function() {
            $(this).fadeTo(300, 0);
        });
    }
});