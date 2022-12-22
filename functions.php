<?php

define( 'somadev_VERSION', '0.0.5' );
add_theme_support( 'post-thumbnails' );

if (function_exists('add_image_size')) {
  //add_image_size( 'thumb_square', 155, 155, true );
}

remove_action('wp_head', 'print_emoji_detection_script', 7);
remove_action('wp_print_styles', 'print_emoji_styles');

// Functions
require(get_template_directory() . '/functions/scripts-footer.php');
require(get_template_directory() . '/functions/login-style.php' );
require(get_template_directory() . '/functions/pagination.php' );

// Widgets
require(get_template_directory() . '/functions/widgets.php' );

add_filter( 'use_widgets_block_editor', '__return_false' );