/**
 * Created by USER on 9/1/2016.
 */
var $img = $('.img');

$img.waypoint(function (a) {
    if(a == 'down'){
        $img.addClass('js-img-animate');
    }else {
        $img.removeClass('js-img-animate');
    }
}, {offset: '50%'});