    $(document).on('turbolinks:load', function() {
        if ($('#img-prev').length) {
            $('#img-prev').hover(function() {
                $(this).stop(true,false).fadeTo(300, 0.3);
                $('#prev-icon').css({
                    transform: 'rotate(-0deg)',
                    transition: 'all ease-in-out .3s'
                });
            }, function() {
                $(this).stop(true,false).fadeTo(300, 0);
                $('#prev-icon').css({
                    transform: 'rotate(135deg)',
                    transition: 'all ease-in-out .3s'
                });
            });
        }

        if ($('#img-next').length) {
            $('#img-next').hover(function() {
                $(this).stop(true,false).fadeTo(300, 0.3);
                $('#next-icon').css({
                    transform: 'rotate(0deg)',
                    transition: 'all ease-in-out .3s'
                });
            }, function() {
                $(this).stop(true,false).fadeTo(300, 0);
                $('#next-icon').css({
                    transform: 'rotate(-135deg)',
                    transition: 'all ease-in-out .3s'
                });
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