<?php

function neuringtech_enqueue_scripts_input()
{
  $postfix = (defined('SCRIPT_DEBUG') && true === SCRIPT_DEBUG) ? '' : '.min';
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
    wp_enqueue_script($item, get_template_directory_uri() . "/build/js/" . "$item.js", array(), neuringtech_VERSION);
    wp_enqueue_script('wow', get_template_directory_uri() . '/build/js/wow.min.js', array(), neuringtech_VERSION);
  }

  // CSS
  wp_enqueue_style('global', get_template_directory_uri() . "/build/css/global.css", array(), neuringtech_VERSION);
  wp_enqueue_style('caveat', 'https://fonts.googleapis.com/css2?family=Caveat&display=swap', array(), neuringtech_VERSION);

  // SWIPER JS
  wp_enqueue_script('jsswiper', 'https://unpkg.com/swiper@8/swiper-bundle.min.js', array(), neuringtech_VERSION);

  // SWIPPER CSS
  wp_enqueue_style('swiper', 'https://unpkg.com/swiper@8/swiper-bundle.min.css', array(), neuringtech_VERSION);


  $translation_array = array(
    'siteURL' => get_site_url(),
    'siteUrlTemplate' => get_bloginfo('template_url'),
  );
  wp_localize_script('jquery-3.2.1.min', 'mithrilData', $translation_array);
}

function neuringtech_activate_scripts()
{ ?>
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

    var purecookieTitle = "Cookies.",
      purecookieDesc = "Os cookies nos ajudam a oferecer nossos serviços e alguns cookies são necessários para o funcionamento do site. Ao usar nossos serviços, você concorda com o uso de cookies",
      purecookieLink = '<a href="https://www.casarnailha.com/politicas-de-privacidade/" target="_blank">Politicas de privacidade</a>',
      purecookieButton = "aceitar";

    function pureFadeIn(e, o) {
      var i = document.getElementById(e);
      i.style.opacity = 0, i.style.display = o || "block",
        function e() {
          var o = parseFloat(i.style.opacity);
          (o += .02) > 1 || (i.style.opacity = o, requestAnimationFrame(e))
        }()
    }

    function pureFadeOut(e) {
      var o = document.getElementById(e);
      o.style.opacity = 1,
        function e() {
          (o.style.opacity -= .02) < 0 ? o.style.display = "none" : requestAnimationFrame(e)
        }()
    }

    function setCookie(e, o, i) {
      var t = "";
      if (i) {
        var n = new Date;
        n.setTime(n.getTime() + 24 * i * 60 * 60 * 1e3), t = "; expires=" + n.toUTCString()
      }
      document.cookie = e + "=" + (o || "") + t + "; path=/"
    }

    function getCookie(e) {
      for (var o = e + "=", i = document.cookie.split(";"), t = 0; t < i.length; t++) {
        for (var n = i[t];
          " " == n.charAt(0);) n = n.substring(1, n.length);
        if (0 == n.indexOf(o)) return n.substring(o.length, n.length)
      }
      return null
    }

    function eraseCookie(e) {
      document.cookie = e + "=; Max-Age=-99999999;"
    }

    function cookieConsent() {
      getCookie("purecookieDismiss") || (document.body.innerHTML += '<div class="cookieConsentContainer" id="cookieConsentContainer"><div class="cookieTitle"><a>' + purecookieTitle + '</a></div><div class="cookieDesc"><p>' + purecookieDesc + " " + purecookieLink + '</p></div><div class="cookieButton"><a onClick="purecookieDismiss();">' + purecookieButton + "</a></div></div>", pureFadeIn("cookieConsentContainer"))
    }

    function purecookieDismiss() {
      setCookie("purecookieDismiss", "1", 7), pureFadeOut("cookieConsentContainer")
    }
    window.onload = function() {
      cookieConsent()
    };
  </script>

<?php

}

add_action('wp_enqueue_scripts', 'neuringtech_enqueue_scripts_input');
add_action('wp_footer', 'neuringtech_activate_scripts');
