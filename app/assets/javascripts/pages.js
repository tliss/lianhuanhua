    $(document).on('turbolinks:load', function() {
        if ($('#img-prev').length) {
            $('#img-prev').hover(function() {
                $(this).stop(true,false).fadeTo(300, 0.3);
                $('#prev-icon').removeClass("zoomOut faster");
                $('#prev-icon').addClass("zoomIn faster");
            }, function() {
                $(this).stop(true,false).fadeTo(300, 0);
                $('#prev-icon').removeClass("zoomIn faster");
                $('#prev-icon').addClass("zoomOut faster");

            });
        }

        if ($('#img-next').length) {
            $('#img-next').hover(function() {
                $(this).stop(true,false).fadeTo(300, 0.3);
                $('#next-icon').removeClass("zoomOut faster");
                $('#next-icon').addClass("zoomIn faster");
            }, function() {
                $(this).stop(true,false).fadeTo(300, 0);
                $('#next-icon').removeClass("zoomIn faster");
                $('#next-icon').addClass("zoomOut faster");
            });
        }

        $('#img-next-link').click(function(){
            $('#img-next-link').css('opacity', 0);
            $('#img-prev-link').css('opacity', 0);
        });

        $('#img-prev-link').click(function(){
            $('#img-next-link').css('opacity', 0);
            $('#img-prev-link').css('opacity', 0);
        });
    });