$(document).ready(function(){

	$("body").on("click", '.nav-item', function(e) {
		$('.nav-item').toggleClass("open");
		$('.rmm').toggleClass("open");
		if($(".rmm").hasClass("open")){
			$(".tap-mobile").addClass("open");
			$('section').css('z-index', '-1');
			$('section>div').css('z-index', '-1');
		} else {
			$(".tap-mobile").removeClass("open");
		}
	});

	$("body").on("click", ".rmm .menu li a", function(e){
		$('.nav-item, .rmm, .tap-mobile').removeClass("open");
	});

	$("body").on("click", ".tap-mobile", function(){
		$(".rmm, .nav-item, .tap-mobile").removeClass("open");
	});

});