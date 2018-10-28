$(document).ready(function() {

    /* For custom file inputs
            Based on code
            by Osvaldas Valutis, www.osvaldas.info (Available for use under the MIT License)
            and adapted for our project usage
    */
    $( '.file' ).each( function() {
        var $input   = $( this ).find('.file__input'),
            $caption = $( this ).find( '.file__inner-caption' ),
            captionVal = $caption.html();

        $input.on( 'change', function( e ) {
            var fileName = '';

            if( this.files && this.files.length > 1 )
                fileName = ( this.getAttribute( 'data-multiple-caption' ) || '' ).replace( '{count}', this.files.length );
            else if( e.target.value )
                fileName = e.target.value.split( '\\' ).pop();

            if( fileName )
                $caption.html( fileName );
            else
                $caption.html( captionVal );
        });

    });

    setTimeout(function() {

       $("[data-notify-hide]").fadeOut(400); 
        
    }, 1500);

    $("[data-notify-hide]").dblclick(function() {
        $(this).fadeOut(400);
    });

    // Delete img
    $('#button--remove').on('click', function() {

        $('.delete-description').toggleClass('hidden');
    });

    // Плавная прокрутка
    $("a[href='#comments']").click(function() {
          $("html, body").animate({
             scrollTop: $($(this).attr("href")).offset().top + "px"
          }, {
             duration: 400,
             easing: "swing"
          });
          return false;
       })


});