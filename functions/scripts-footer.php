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
  wp_enqueue_script('jsswiper', 'https://unpkg.com/swiper@10/swiper-bundle.min.js', array(), neuringtech_VERSION);

  // SWIPPER CSS
  wp_enqueue_style('swiper', 'https://unpkg.com/swiper@10/swiper-bundle.min.css', array(), neuringtech_VERSION);


  $translation_array = array(
    'siteURL' => get_site_url(),
    'siteUrlTemplate' => get_bloginfo('template_url'),
  );
  wp_localize_script('jquery-3.2.1.min', 'mithrilData', $translation_array);
}

function neuringtech_activate_scripts()
{ ?>
  <script>
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
        nextEl: '.swiper-button-next-main',
        prevEl: '.swiper-button-prev-main',
      },
    });

    var gallery_swiper = new Swiper(".swiper-img", {
      slidesPerView: '1',
      spaceBetween: 16,
      centeredSlides: true,
      loop: true,
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },
      navigation: {
        nextEl: '.swiper-button-next-img',
        prevEl: '.swiper-button-prev-img',
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

    //cookies
    jQuery(document).ready(function($) {
      // Função para gerar um ID de sessão aleatório
      function generateSessionID() {
        const characters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
        let sessionID = '';
        for (let i = 0; i < 10; i++) {
          const randomIndex = Math.floor(Math.random() * characters.length);
          sessionID += characters.charAt(randomIndex);
        }
        return sessionID;
      }

      // Função para verificar e obter o ID da sessão do Local Storage
      function getSessionID() {
        let sessionID = localStorage.getItem('sessionID');
        if (!sessionID) {
          sessionID = generateSessionID();
          localStorage.setItem('sessionID', sessionID);
        }
        return sessionID;
      }

      let sessionID = getSessionID(); // Obtém ou gera o ID da sessão

      let cookieHtml = '<div class="lgpd shadow-[0_3px_10px_rgb(0,0,0,0.2)] fixed left-5 right-5 bottom-5 p-5 flex justify-between items-center bg-[#0d303c] z-50"><span class="text-white">Nosso site utiliza cookies para melhorar a experiência do usuário. Acesse nossa página de <a class="font-bold hover:underline" href="https://www.casarnailha.com/política-de-privacidade">política de privacidade</a> para saber mais!</span><button class="cookie-btn px-5 py-3 text-[#176B87] font-bold bg-white hover:text-white hover:bg-[#176B87]">Aceitar</button></div>';

      let lsContent = localStorage.getItem('cookie-lgpd');
      if (!lsContent) {
        $('body').append(cookieHtml);

        $('.cookie-btn').on('click', async function() {
          let cookieArea = $(this).closest('.lgpd');
          cookieArea.remove();

          // Enviar uma requisição POST para o endpoint do WordPress
          let requestData = {
            session_id: sessionID // Usar o valor da sessão gerado/acessado
          };

          try {
            let response = await $.post('/wp-json/custom/v1/set-cookie', requestData);
            if (response && response.message === 'Cookie acceptance stored') {
              let postId = response.post_id; // Capturar o ID do post criado
              localStorage.setItem('cookie-lgpd', postId); // Armazenar o ID no localStorage
            }
          } catch (error) {
            console.error('Erro ao enviar a requisição:', error);
          }
        });
      }
    });


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
