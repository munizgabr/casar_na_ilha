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
        disableOnInteraction: true,
      },
      paginationClickable: true,
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
        disableOnInteraction: true,
      },
      paginationClickable: true,
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
      paginationClickable: true,
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },
      navigation: {
        nextEl: '.swiper-button-next-main',
        prevEl: '.swiper-button-prev-main',
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
      paginationClickable: true,
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },
      navigation: {
        nextEl: '.swiper-button-next-highlights',
        prevEl: '.swiper-button-prev-highlights',
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

    //mascara para cpf e cnpj
    document.addEventListener('DOMContentLoaded', function() {
      const cpfCnpjInput = document.getElementById('cpf_cnpj');
      cpfCnpjInput.addEventListener('input', function(event) {
        let value = event.target.value;
        value = value.replace(/\D/g, '');
        if (value.length > 11) {
          value = value.replace(/^(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})$/, '$1.$2.$3/$4-$5');
        } else {
          value = value.replace(/^(\d{3})(\d{3})(\d{3})(\d{2})$/, '$1.$2.$3-$4');
        }
        event.target.value = value;
      });
    });
    $(document).ready(function() {
  // Selecionar todos os campos de entrada e textarea dentro da classe .form-group
  const formInputs = $(".form-group input, .form-group textarea");

  // Adicionar um ouvinte de evento para o evento "focus" nos campos de entrada e textarea
  formInputs.on("focus", function() {
    // Encontrar o label associado a este campo de entrada ou textarea
    const label = $(this).closest(".form-group").find("label");

    // Verificar se o label tem as classes "label-animation" e "comments"
    if (label.hasClass("label-animation") && label.hasClass("comments")) {
      label.css("top", "0");
    } else if ($(this).is("input")) {
      label.css("top", "37%");
    } else if ($(this).is("textarea")) {
      label.css("top", "8%");
    }

    // Adicionar a classe "label-animation--focus" ao label encontrado
    label.addClass("label-animation--focus");
  });

  // Adicionar um ouvinte de evento para o evento "blur" nos campos de entrada e textarea
  formInputs.on("blur", function() {
    // Encontrar o label associado a este campo de entrada ou textarea
    const label = $(this).closest(".form-group").find("label");

    // Remover a classe "label-animation--focus" do label encontrado
    label.removeClass("label-animation--focus");

    // Remover o estilo de top adicionado ao label
    label.css("top", "");
  });
});


    $(document).ready(function() {
      // Selecionar todas as tags <a> com a classe .fornecedores
      const fornecedoresLinks = $(".fornecedores");

      // Adicionar um ouvinte de evento para o evento "mouseenter" (hover) nas tags <a>
      fornecedoresLinks.on("mouseenter", function() {
        // Encontrar a tag <span> dentro desta tag <a>
        const spanTag = $(this).find("span");

        // Remover a classe hidden da tag <span> e adicionar a classe flex
        spanTag.removeClass("hidden").addClass("flex");
      });

      // Adicionar um ouvinte de evento para o evento "mouseleave" (quando o mouse sai do hover) nas tags <a>
      fornecedoresLinks.on("mouseleave", function() {
        // Encontrar a tag <span> dentro desta tag <a>
        const spanTag = $(this).find("span");

        // Remover a classe flex e adicionar a classe hidden na tag <span>
        spanTag.removeClass("flex").addClass("hidden");
      });
    });
  </script>

<?php

}

add_action('wp_enqueue_scripts', 'neuringtech_enqueue_scripts_input');
add_action('wp_footer', 'neuringtech_activate_scripts');
