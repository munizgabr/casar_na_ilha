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

// Widgets
require(get_template_directory() . '/functions/widgets.php' );
require(get_template_directory() . '/functions/widgets-categoria-fornecedor.php' );

add_filter( 'use_widgets_block_editor', '__return_false' );