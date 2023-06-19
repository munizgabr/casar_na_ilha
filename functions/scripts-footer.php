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
    wp_enqueue_script( $item, get_template_directory_uri() . "/build/js/" . "$item.js", array(), bytebloom_VERSION );
    wp_enqueue_script('wow', get_template_directory_uri().'/build/js/wow.min.js', array(), bytebloom_VERSION);
  }

  // CSS
  wp_enqueue_style( 'global', get_template_directory_uri() . "/build/css/global.css", array(), bytebloom_VERSION );
  wp_enqueue_style( 'caveat', 'https://fonts.googleapis.com/css2?family=Caveat&display=swap', array(), bytebloom_VERSION );

  // SWIPER JS
  wp_enqueue_script('jsswiper', 'https://unpkg.com/swiper@8/swiper-bundle.min.js', array(), bytebloom_VERSION);

  // SWIPPER CSS
  wp_enqueue_style('swiper', 'https://unpkg.com/swiper@8/swiper-bundle.min.css', array(), bytebloom_VERSION);
  

  $translation_array = array(
    'siteURL' => get_site_url(),
    'siteUrlTemplate' => get_bloginfo('template_url'),
  );
  wp_localize_script( 'jquery-3.2.1.min', 'somaData', $translation_array );

}

function soma_activate_scripts(){ ?>
<script>

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

    const swiper_archive = new Swiper('.archive-slider', {
      loop: true,
      slidesPerView: 1,
      autoplay: {
          delay: 5000,
          disableOnInteraction: false,
      },
      paginationClickable: false,
      pagination: {
          el: '.swiper-pagination',
          clickable: true,
      },
    });

    // SWIPER CATEGORY
    const swiper_category = new Swiper('.category-slider', {
      loop: true,
      slidesPerView: 1,
      spaceBetween: 45,
      autoplay: {
          delay: 5000,
          disableOnInteraction: false,
      },
      paginationClickable: false,
      pagination: {
          el: '.swiper-pagination', 
          clickable: true,
      },
      navigation: {
          nextEl: '.swiper-button-next-category',
          prevEl: '.swiper-button-prev-category',
      },
      breakpoints: {
      // define diferentes opções para diferentes larguras de tela
      768: {
        slidesPerView: 2,
        spaceBetween: 25,
      },
      1024: {
        slidesPerView: 3,
        spaceBetween: 35,
      },
      1280: {
        slidesPerView: 4,
        spaceBetween: 45,
      }
    }
    });

    var swiper = new Swiper(".mySwiper", {
      effect: "coverflow",
      grabCursor: true,
      centeredSlides: true,
      slidesPerView: "auto",
      loop: true,
      autoplay: {
          delay: 5000,
          disableOnInteraction: false,
      },
      coverflowEffect: {
        rotate: 50,
        stretch: 0,
        depth: 100,
        modifier: 1,
        slideShadows: true,
      },
      pagination: {
        el: ".swiper-pagination",
      },
    });

    var main_swiper = new Swiper(".main-slider", {
      slidesPerView: 'auto',
  spaceBetween: 16,
  centeredSlides: true,
  loop: true,
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },
    });
</script>

<?php

}

add_action('wp_enqueue_scripts', 'soma_enqueue_scripts_input');
add_action('wp_footer', 'soma_activate_scripts');


