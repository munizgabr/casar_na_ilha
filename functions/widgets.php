<?php

add_action( 'widgets_init', 'bytebloom_widgets_init' );

function bytebloom_widgets_init() {

    register_sidebar ( array (
        'name' => __( 'Topo Esquerda', 'bytebloom' ),
        'id' => 'topoesquerda',
        'description' => __( 'Exibição de conteúdo no topo a esquerda', 'bytebloom' ),
        'before_widget' => '',
        'after_widget' => '',
        'before_title' => '',
        'after_title' => '',
    ));
    register_sidebar ( array (
        'name' => __( 'Sidebar', 'bytebloom' ),
        'id' => 'sidebar',
        'description' => __( 'Exibição de conteúdo na sidebar', 'bytebloom' ),
        'before_widget' => '',
        'after_widget' => '',
        'before_title' => '<h2 class="widget-title">',
        'after_title' => '</h2>',
    ));

    register_sidebar ( array (
        'name' => __( 'Topo Direita', 'bytebloom' ),
        'id' => 'topodireita',
        'description' => __( 'Exibição de conteúdo no topo a direita', 'bytebloom' ),
        'before_widget' => '',
        'after_widget' => '',
        'before_title' => '',
        'after_title' => '',
    ));

    register_sidebar ( array (
        'name' => __( 'Footer 1', 'bytebloom' ),
        'id' => 'footer1',
        'description' => __( 'Exibição de conteúdo na coluna 1 do rodapé', 'bytebloom' ),
        'before_widget' => '<div class="widget">',
        'after_widget' => '</div>',
        'before_title' => '<h4>',
        'after_title' => '</h4>',
    ));

    register_sidebar ( array (
        'name' => __( 'Footer 2', 'bytebloom' ),
        'id' => 'footer2',
        'description' => __( 'Exibição de conteúdo na coluna 2 do rodapé', 'bytebloom' ),
        'before_widget' => '<div class="widget">',
        'after_widget' => '</div>',
        'before_title' => '<h4>',
        'after_title' => '</h4>',
    ));

    register_sidebar ( array (
        'name' => __( 'Footer 3', 'bytebloom' ),
        'id' => 'footer3',
        'description' => __( 'Exibição de conteúdo na coluna 3 do rodapé', 'bytebloom' ),
        'before_widget' => '<div class="widget">',
        'after_widget' => '</div>',
        'before_title' => '<h4>',
        'after_title' => '</h4>',
    ));

    register_sidebar ( array (
        'name' => __( 'Footer 4', 'bytebloom' ),
        'id' => 'footer4',
        'description' => __( 'Exibição de conteúdo na coluna 4 do rodapé', 'bytebloom' ),
        'before_widget' => '<div class="widget">',
        'after_widget' => '</div>',
        'before_title' => '<h4>',
        'after_title' => '</h4>',
    ));

    register_sidebar ( array (
        'name' => __( 'Search bar', 'bytebloom' ),
        'id' => 'search',
        'description' => __( 'Exibição de barra de pesquisa na home', 'bytebloom' ),
        'before_widget' => '<div class="widget searchbar">',
        'after_widget' => '</div>',
        'before_title' => '<h4>',
        'after_title' => '</h4>',
    ));

}