
jQuery.noConflict();
var $ac = jQuery;

$ac(function(){
    var dd = $ac('dd','.accordion_box');
    $ac("dd",'.accordion_box').hide();
    $ac("dd.open2",'.accordion_box').show();

	$ac(location.hash).next().show();
	$ac(location.hash).removeClass("close");
	$ac(location.hash).addClass("open");

    $ac('dt','.accordion_box').click(function(){
        var next = $ac(this).next();
        dd.not(next).slideUp();
        if(next.is(':visible')){
			$ac('dt','.accordion_box').removeClass("open");
			$ac('dt','.accordion_box').removeClass("close");
			$ac(this).addClass("close");
            next.slideUp();
        }else{
			$ac('dt','.accordion_box').removeClass("open");
			$ac('dt','.accordion_box').removeClass("close");
			$ac(this).addClass("open");
            next.slideDown();
        }
    });
});


jQuery.noConflict();
var $ac2 = jQuery;

$ac2(function(){
    var dd = $ac2('dd','.accordion_box2');
    $ac2("dd",'.accordion_box2').hide();/* 最初から閉じているパターン */
    $ac2("dd.open2",'.accordion_box2').show();/* 最初から開いているパターン */

	$ac2(location.hash).next().show();/* アンカーリンク先を開く */
	$ac2(location.hash).removeClass("close");
	$ac2(location.hash).addClass("open");

    $ac2('dt','.accordion_box2').click(function(){
        var next = $ac2(this).next();
        if(next.is(':visible')){
			$ac(this).removeClass("open");
			$ac(this).addClass("close");
            next.slideUp();
        }else{
			$ac(this).removeClass("close");
			$ac(this).addClass("open");
            next.slideDown();
        }
    });
});





jQuery.noConflict();
var $ac3 = jQuery;

$ac3(function(){
    $ac3(".accordion_box3 dd").hide();
    $ac3(".accordion_box3 dt").click(function(){
        $ac3(this).next().slideToggle();
    });
    $ac3(".accordion_box3 dd .closebtn").click(function(){
        $ac3(this).parent().slideToggle();
    });
});
