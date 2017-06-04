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
		$(this).appendTo( $(this).closest(".post").find(".post-images .bxslider") );
	});
	
	$('.bxslider').bxSlider({
		slideWidth: "800px",
	  minSlidex:2,
	  maxSlides:3,
	  moveSlides:1,
	  pager:false,
	  mode:'fade'
	});
});
