$(document).ready(function() {

    if ($(window).width() > 1185) {

        $(".menu li .sub-menu li .icon-submenu").on("click", function(e) {
            e.preventDefault();
            $(this).siblings().next(".sub-menu").toggleClass("sub-menu-show");
            $(this).toggleClass("active");
        });



        $(".menu-item-has-children").prepend("<span class='icon-submenu'></span>");
        $(".menu-item-type-custom > .icon-submenu").click(false);

    };

    $('.nav-item').append("<div class='tap-mobile'></div>");

    if ($(window).width() < 1185) {

        var a = !1;
        $("body").on("click", '.nav-item', function(e) {
            $('.nav-item').toggleClass("open");
			$('.tap-mobile').toggleClass("open");
            0 == a ? ($("header .rmm").css({
                left: "0",
                opacity: "1"
            }), a = !0) : ($("header .rmm").css({
                opacity: "2px",
                left: "-100%"
            }), a = !1), e.preventDefault()
        });

        $(".menu-item-has-children").prepend("<span class='icon-submenu'></span>");
        $(".menu-item-type-custom > .icon-submenu").click();
        $(".icon-submenu").on("click", function(e) {
            e.preventDefault();
            $(this).siblings().next(".sub-menu").toggleClass("sub-menu-show-mobile");
            $(this).toggleClass("active");
        });
    }

});