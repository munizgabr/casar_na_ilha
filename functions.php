<?php

define( 'neuringtech_VERSION', '0.0.5' );
add_theme_support( 'post-thumbnails' );

if (function_exists('add_image_size')) {
  add_image_size( 'thumb_1', 235, 160, true );
  add_image_size( 'thumb_banner', 1920, 1080, true );
  add_image_size( 'thumb_blog', 800, 800, true );
}

remove_action('wp_head', 'print_emoji_detection_script', 7);
remove_action('wp_print_styles', 'print_emoji_styles');

// Functions
require(get_template_directory() . '/functions/scripts-footer.php');
require(get_template_directory() . '/functions/login-style.php' );
require(get_template_directory() . '/functions/pagination.php' );

//Custom Posts
require(get_template_directory() . '/functions/customPosts/fornecedores.php' );
require(get_template_directory() . '/functions/customPosts/cookie_acceptance.php' );

//Endpoints
require(get_template_directory() . '/functions/endpoint/cookieAccept.php' );

// Widgets
require(get_template_directory() . '/functions/widgets.php' );
require(get_template_directory() . '/functions/widgets-categoria-fornecedor.php' );

add_filter( 'use_widgets_block_editor', '__return_false' );

// Criar página de opções
if( function_exists( 'acf_add_options_page' ) ) {
  acf_add_options_page([
    'menu_title' => 'Configurações do Tema',
    'page_title' => 'Configurações do Tema',
    'position' => '4',
    'menu_slug' => 'pagina_opcoes',
    // 'parent_slug' => 'options-general.php',
    'update_button' => 'Atualizar',
    'updated_message' => 'Alterações feitas com sucesso.',
    'icon_url' => 'dashicons-welcome-widgets-menus'
  ]);
}