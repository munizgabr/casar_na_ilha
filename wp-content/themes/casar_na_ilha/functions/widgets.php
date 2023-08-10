<?php

add_action( 'widgets_init', 'neuringtech_widgets_init' );

function neuringtech_widgets_init() {

    register_sidebar ( array (
        'name' => __( 'Topo Esquerda', 'neuringtech' ),
        'id' => 'topoesquerda',
        'description' => __( 'Exibição de conteúdo no topo a esquerda', 'neuringtech' ),
        'before_widget' => '',
        'after_widget' => '',
        'before_title' => '',
        'after_title' => '',
    ));
    register_sidebar ( array (
        'name' => __( 'Sidebar', 'neuringtech' ),
        'id' => 'sidebar',
        'description' => __( 'Exibição de conteúdo na sidebar', 'neuringtech' ),
        'before_widget' => '',
        'after_widget' => '',
        'before_title' => '<h2 class="widget-title">',
        'after_title' => '</h2>',
    ));

    register_sidebar ( array (
        'name' => __( 'Topo Direita', 'neuringtech' ),
        'id' => 'topodireita',
        'description' => __( 'Exibição de conteúdo no topo a direita', 'neuringtech' ),
        'before_widget' => '',
        'after_widget' => '',
        'before_title' => '',
        'after_title' => '',
    ));

    register_sidebar ( array (
        'name' => __( 'Footer 1', 'neuringtech' ),
        'id' => 'footer1',
        'description' => __( 'Exibição de conteúdo na coluna 1 do rodapé', 'neuringtech' ),
        'before_widget' => '<div class="widget">',
        'after_widget' => '</div>',
        'before_title' => '<h4>',
        'after_title' => '</h4>',
    ));

    register_sidebar ( array (
        'name' => __( 'Footer 2', 'neuringtech' ),
        'id' => 'footer2',
        'description' => __( 'Exibição de conteúdo na coluna 2 do rodapé', 'neuringtech' ),
        'before_widget' => '<div class="widget">',
        'after_widget' => '</div>',
        'before_title' => '<h4>',
        'after_title' => '</h4>',
    ));

    register_sidebar ( array (
        'name' => __( 'Footer 3', 'neuringtech' ),
        'id' => 'footer3',
        'description' => __( 'Exibição de conteúdo na coluna 3 do rodapé', 'neuringtech' ),
        'before_widget' => '<div class="widget">',
        'after_widget' => '</div>',
        'before_title' => '<h4>',
        'after_title' => '</h4>',
    ));

    register_sidebar ( array (
        'name' => __( 'Footer 4', 'neuringtech' ),
        'id' => 'footer4',
        'description' => __( 'Exibição de conteúdo na coluna 4 do rodapé', 'neuringtech' ),
        'before_widget' => '<div class="widget">',
        'after_widget' => '</div>',
        'before_title' => '<h4>',
        'after_title' => '</h4>',
    ));

    register_sidebar ( array (
        'name' => __( 'Search bar', 'neuringtech' ),
        'id' => 'search',
        'description' => __( 'Exibição de barra de pesquisa na home', 'neuringtech' ),
        'before_widget' => '<div class="widget searchbar">',
        'after_widget' => '</div>',
        'before_title' => '<h4>',
        'after_title' => '</h4>',
    ));

}