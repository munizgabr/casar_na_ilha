<?php

add_action( 'widgets_init', 'mithrilwebworks_widgets_init' );

function mithrilwebworks_widgets_init() {

    register_sidebar ( array (
        'name' => __( 'Topo Esquerda', 'mithrilwebworks' ),
        'id' => 'topoesquerda',
        'description' => __( 'Exibição de conteúdo no topo a esquerda', 'mithrilwebworks' ),
        'before_widget' => '',
        'after_widget' => '',
        'before_title' => '',
        'after_title' => '',
    ));
    register_sidebar ( array (
        'name' => __( 'Sidebar', 'mithrilwebworks' ),
        'id' => 'sidebar',
        'description' => __( 'Exibição de conteúdo na sidebar', 'mithrilwebworks' ),
        'before_widget' => '',
        'after_widget' => '',
        'before_title' => '<h2 class="widget-title">',
        'after_title' => '</h2>',
    ));

    register_sidebar ( array (
        'name' => __( 'Topo Direita', 'mithrilwebworks' ),
        'id' => 'topodireita',
        'description' => __( 'Exibição de conteúdo no topo a direita', 'mithrilwebworks' ),
        'before_widget' => '',
        'after_widget' => '',
        'before_title' => '',
        'after_title' => '',
    ));

    register_sidebar ( array (
        'name' => __( 'Footer 1', 'mithrilwebworks' ),
        'id' => 'footer1',
        'description' => __( 'Exibição de conteúdo na coluna 1 do rodapé', 'mithrilwebworks' ),
        'before_widget' => '<div class="widget">',
        'after_widget' => '</div>',
        'before_title' => '<h4>',
        'after_title' => '</h4>',
    ));

    register_sidebar ( array (
        'name' => __( 'Footer 2', 'mithrilwebworks' ),
        'id' => 'footer2',
        'description' => __( 'Exibição de conteúdo na coluna 2 do rodapé', 'mithrilwebworks' ),
        'before_widget' => '<div class="widget">',
        'after_widget' => '</div>',
        'before_title' => '<h4>',
        'after_title' => '</h4>',
    ));

    register_sidebar ( array (
        'name' => __( 'Footer 3', 'mithrilwebworks' ),
        'id' => 'footer3',
        'description' => __( 'Exibição de conteúdo na coluna 3 do rodapé', 'mithrilwebworks' ),
        'before_widget' => '<div class="widget">',
        'after_widget' => '</div>',
        'before_title' => '<h4>',
        'after_title' => '</h4>',
    ));

    register_sidebar ( array (
        'name' => __( 'Footer 4', 'mithrilwebworks' ),
        'id' => 'footer4',
        'description' => __( 'Exibição de conteúdo na coluna 4 do rodapé', 'mithrilwebworks' ),
        'before_widget' => '<div class="widget">',
        'after_widget' => '</div>',
        'before_title' => '<h4>',
        'after_title' => '</h4>',
    ));

    register_sidebar ( array (
        'name' => __( 'Search bar', 'mithrilwebworks' ),
        'id' => 'search',
        'description' => __( 'Exibição de barra de pesquisa na home', 'mithrilwebworks' ),
        'before_widget' => '<div class="widget searchbar">',
        'after_widget' => '</div>',
        'before_title' => '<h4>',
        'after_title' => '</h4>',
    ));

}