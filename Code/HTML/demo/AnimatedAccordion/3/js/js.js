/**
 * Created by USER on 10/5/2016.
 */

var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
    acc[i].onclick = function(){
        this.classList.toggle("active");
        this.nextElementSibling.classList.toggle("show");
    }
}

$(document).ready(function() {
    /**** link to  page top **********/
    $("a").click(function(){
        $('html, body').animate({ scrollTop: 0 }, 'slow');
        return false;
    });
});