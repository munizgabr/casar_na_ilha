<?php

function mithril_enqueue_scripts_input(){
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
    wp_enqueue_script( $item, get_template_directory_uri() . "/build/js/" . "$item.js", array(), mithrilwebworks_VERSION );
    wp_enqueue_script('wow', get_template_directory_uri().'/build/js/wow.min.js', array(), mithrilwebworks_VERSION);
  }

  // CSS
  wp_enqueue_style( 'global', get_template_directory_uri() . "/build/css/global.css", array(), mithrilwebworks_VERSION );
  wp_enqueue_style( 'caveat', 'https://fonts.googleapis.com/css2?family=Caveat&display=swap', array(), mithrilwebworks_VERSION );

  // SWIPER JS
  wp_enqueue_script('jsswiper', 'https://unpkg.com/swiper@8/swiper-bundle.min.js', array(), mithrilwebworks_VERSION);

  // SWIPPER CSS
  wp_enqueue_style('swiper', 'https://unpkg.com/swiper@8/swiper-bundle.min.css', array(), mithrilwebworks_VERSION);
  

  $translation_array = array(
    'siteURL' => get_site_url(),
    'siteUrlTemplate' => get_bloginfo('template_url'),
  );
  wp_localize_script( 'jquery-3.2.1.min', 'mithrilData', $translation_array );

}

function mithril_activate_scripts(){ ?>
<script>

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

  //   // SWIPER CATEGORY
    const swiper_category = new Swiper('.swiper-category', {
      loop: true,
      slidesPerView: 2,
      spaceBetween: 25,
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
        slidesPerView: 3,
        spaceBetween: 25,
      },
      1024: {
        slidesPerView: 4,
        spaceBetween: 35,
      },
      1280: {
        slidesPerView: 5,
        spaceBetween: 45,
      }
    }
    });

  //   var swiper = new Swiper(".mySwiper", {
  //     effect: "coverflow",
  //     grabCursor: true,
  //     centeredSlides: true,
  //     slidesPerView: "auto",
  //     loop: true,
  //     autoplay: {
  //         delay: 5000,
  //         disableOnInteraction: false,
  //     },
  //     coverflowEffect: {
  //       rotate: 50,
  //       stretch: 0,
  //       depth: 100,
  //       modifier: 1,
  //       slideShadows: true,
  //     },
  //     pagination: {
  //       el: ".swiper-pagination",
  //     },
  //   });

    var main_swiper = new Swiper(".main-slider", {
      slidesPerView: '1',
      spaceBetween: 16,
      centeredSlides: true,
      loop: true,
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
    });
    var gallery_swiper = new Swiper(".swiper-img", {
      slidesPerView: '1',
      spaceBetween: 16,
      centeredSlides: true,
      loop: true,
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
    });

    var swiper = new Swiper('.swiper-highlights', {
      slidesPerView: '2',
      spaceBetween: 10,
      autoplay: {
          delay: 5000,
          disableOnInteraction: false,
      },
      breakpoints: {
        680: {
          slidesPerView: 3,
        },
        720: {
          slidesPerView: 4,
        },
        1000: {
          slidesPerView: 5,
        }
      },
    });
</script>

<?php

}

add_action('wp_enqueue_scripts', 'mithril_enqueue_scripts_input');
add_action('wp_footer', 'mithril_activate_scripts');


