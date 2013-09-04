(function($) {
    // Back-to-Top button
    $('#back-to-top a').click(function(){
        $('html, body').animate( { scrollTop: 0 } );
        return false;
    });
}(jQuery));