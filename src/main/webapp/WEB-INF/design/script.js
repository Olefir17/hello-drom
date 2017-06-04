$(function(){
	$(".post-more").click(function(){
		$(this)
			.hide()
		.siblings(".post-text")
			.hide()
		.siblings(".post-text-hidden")
			.show();
	});
	
	
	$(".post img").each(function(){
		$(this).appendTo( $(this).parent().siblings(".post-images") );
	});
	
	$('.bxslider').bxSlider({
	  mode: 'fade',
	  captions: true
	});
});
