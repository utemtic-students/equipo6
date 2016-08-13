jQuery(document).ready(function() {
    $('.btn-radio').removeClass('active').siblings('input:checkbox').prop('checked',false).siblings('.img-radio').css('opacity','1');
        
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
        
    jQuery('.carousel[data-type="multi"] .item').each(function(){
        var next = jQuery(this).next();
        if (!next.length) {
            next = jQuery(this).siblings(':first');
        }
        next.children(':first-child').clone().appendTo(jQuery(this));
      
        for (var i=0;i<2;i++) {
            next=next.next();
            if (!next.length) {
                next = jQuery(this).siblings(':first');
            }
            next.children(':first-child').clone().appendTo($(this));
        }
    });
        
});