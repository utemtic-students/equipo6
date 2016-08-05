$(document).ready(function(){
	$('.parallax').parallax();
 	
	setTimeout(function() {
        $(".contentImg").fadeOut(1500);
        hide();
    },3000);
    function hide(){
	$('.parallax-container').fadeIn(2000);
	}
    
});