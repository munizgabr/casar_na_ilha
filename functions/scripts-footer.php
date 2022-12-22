<?php

function soma_enqueue_scripts_input(){
  $postfix = ( defined( 'SCRIPT_DEBUG' ) && true === SCRIPT_DEBUG ) ? '' : '.min';
  ?>

  <?php

  $js = array(
    'js_global' => [
      'jquery-3.2.1.min',
      'components/script',
      'components/menu-nav',
      'components/mask',
      'jquery.mask',
    ],
  );

  // JS
  foreach ($js['js_global'] as $item) {
    wp_enqueue_script( $item, get_template_directory_uri() . "/build/js/" . "$item.js", array(), somadev_VERSION );
    wp_enqueue_script('wow', get_template_directory_uri().'/build/js/wow.min.js', array(), somadev_VERSION);
  }

  // CSS
  wp_enqueue_style( 'global', get_template_directory_uri() . "/build/css/global.css", array(), somadev_VERSION );

  // SWIPER JS
  wp_enqueue_script('jsswiper', 'https://unpkg.com/swiper@8/swiper-bundle.min.js', array(), somadev_VERSION);

  // SWIPPER CSS
  wp_enqueue_style('swiper', 'https://unpkg.com/swiper@8/swiper-bundle.min.css', array(), somadev_VERSION);
  

  $translation_array = array(
    'siteURL' => get_site_url(),
    'siteUrlTemplate' => get_bloginfo('template_url'),
  );
  wp_localize_script( 'jquery-3.2.1.min', 'somaData', $translation_array );

}

function soma_activate_scripts(){ 

  
    wp_enqueue_script( 'modal', get_template_directory_uri() . "/build/js/" . "components/modal.js", array(), '' );
  

  ?><script>

    var wow = new WOW({
        boxClass:     'wow',      // animated element css class (default is wow)
        animateClass: 'animated', // animation css class (default is animated)
        offset:       0,          // distance to the element when triggering the animation (default is 0)
        mobile:       true,       // trigger animations on mobile devices (true is default)
        live:         true        // default
    });
    wow.init();

    if($(window).width() > 1024) {
		$(window).on('scroll',function() {
	        if ($(document).scrollTop() > 60) {
	            $('.header').addClass('box-shadow-header');
	        } else {
	            $('.header').removeClass('box-shadow-header');
	   		}
		});
	}

    let animationArea = document.querySelector('.anime');
        let animationObject = bodymovin.loadAnimation({
            container: animationArea,
            renderer: 'svg',
            loop: true,
            autoplay: true,
            autoloadSegments: false,
            path: '<?php echo get_template_directory_uri(); ?>/src/js/Anima_Banner Iot_menor.json'
    });

    $('body').on('click','#first',function(e){
        e.preventDefault()
        var top1 = $("#imageRender_0")[0].getBoundingClientRect().top
        const y = top1 + window.scrollY - 200;
        window.scroll({
            top: y,
            behavior: 'smooth'
        });
    });

    // SWIPER SCROLL
    const swiper_scroll = new Swiper('.scroll', {
        // slidesPerView: 3,
      loop: true,
      autoplay: {
          delay: 500000,
          disableOnInteraction: false,
      },
      paginationClickable: false,
      // spaceBetween: 20,
      pagination: {
          el: '.swiper-pagination',
          clickable: true,
      },
      breakpoints: {
          1101: {
              slidesPerView: 3,
              spaceBetween: 100
          },
          600: {
              slidesPerView: 2,
              spaceBetween: 100
          },
          300: {
              slidesPerView: 1,
              spaceBetween: 90
          }
      },
      navigation: {
          nextEl: '.swiper-button-next-scroll',
          prevEl: '.swiper-button-prev-scroll',
      },
    });

    // SWIPER TESTIMONIAL
    const swiper_testimonial = new Swiper('.testimonial-swiper', {
      loop: true,
      autoplay: {
          delay: 20000,
          disableOnInteraction: false,
      },
      paginationClickable: false,
      pagination: {
          el: '.swiper-pagination',
          clickable: true,
      },
      breakpoints: {
          1101: {
              slidesPerView: 3,
              spaceBetween: 100
          },
          600: {
              slidesPerView: 2,
              spaceBetween: 20
          },
          300: {
              slidesPerView: 1,
              spaceBetween: 90
          }
      },
      navigation: {
          nextEl: '.swiper-button-next-testimonial',
          prevEl: '.swiper-button-prev-testimonial',
      },
    });

    // SWIPER INDUSTRY
    const swiper_industry = new Swiper('.industry', {
      loop: true,
      speed: 6000,
      autoplay: {
         delay: 1,
      },
      allowTouchMove: false,
      disableOnInteraction: true,
      paginationClickable: false,
      pagination: {
          el: '.swiper-pagination',
          clickable: true,
      },
      breakpoints: {
          1101: {
              slidesPerView: 5,
              spaceBetween: 30
          },
          600: {
              slidesPerView: 3,
          },
          300: {
              slidesPerView: 3,
              spaceBetween: 10
          }
      },
    });

    $('.industry .swiper-wrapper').on('mouseenter', function(e){
        swiper_industry.autoplay.stop();
    });

    $('.industry .swiper-wrapper').on('mouseleave', function(e){
        swiper_industry.autoplay.start();
    });

    var fx = function fx() {
        $(".anime-svg").each(function (i, el) {
            
            setTimeout(() => {
                $(this).addClass("animated-svg");
            }, "3000")
        });
    };
    
    var reset = function reset() {
        var monitoramento = $("#monitoramento").offset();
        if ($(this).scrollTop() > monitoramento.top-500) {
            $(this).off("scroll");
        fx()
        }
    };
    $(window).on("scroll", reset);

    $('.text-field-input').on('focus', function(){
        $(this).closest('.field-wrapper').addClass('focused');
    });

    $('.text-field-input').on('blur', function(){
        if ($(this).val() === '') {
            $(this).closest('.field-wrapper').removeClass('focused');
        }
		});

</script>

<?php

}

add_action('wp_enqueue_scripts', 'soma_enqueue_scripts_input');
add_action('wp_footer', 'soma_activate_scripts');


