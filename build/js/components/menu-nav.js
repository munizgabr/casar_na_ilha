$(document).ready(function(){

	$("body").on("click", '.nav-item', function(e) {
		$('.nav-item').toggleClass("open");
		$('.rmm').toggleClass("open");
		if($(".rmm").hasClass("open")){
			$(".tap-mobile").addClass("open");
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