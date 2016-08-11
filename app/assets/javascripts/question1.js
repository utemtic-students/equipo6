$(document).ready(function(){
    $('.btn-radio').removeClass('active').siblings('input:checkbox').prop('checked',false).siblings('.img-radio').css('opacity','1');
		
	$('.carousel').carousel();
    $('.btn-radio').click(function(e) {
        if( $(this).siblings('input:checkbox').prop("checked") != true)
        {
            $(this).addClass('active').siblings('input').prop('checked',true).siblings('.img-radio').css('opacity','0.5');
        }
        else
        {
			$(this).removeClass('active').siblings('input:checkbox').prop('checked',false).siblings('.img-radio').css('opacity','1');
        }
       
    });
});