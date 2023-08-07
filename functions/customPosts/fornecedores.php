<?php

add_action('init', 'fornecedor_register_init');

function fornecedor_register_init() {
    $labels = array(
        'name' => _x( 'Fornecedores', 'post type general name', 'neuringtech' ),
        'singular_name' => _x( 'Fornecedor', 'post type singular name', 'neuringtech' ),
        'add_new' => _x( 'Adicionar novo', 'fornecedor entry', 'neuringtech' ),
        'add_new_item' => __('Adicionar novo fornecedor', 'neuringtech' ),
        'edit_item' => __( 'Editar fornecedor', 'neuringtech' ),
        'new_item' => __( 'Novo fornecedor', 'neuringtech' ),
        'view_item' => __( 'Visualizar fornecedor', 'neuringtech' ),
        'search_items' => __( 'Procurar fornecedores', 'neuringtech' ),
        'not_found' =>  __( 'Nenhum fornecedor encontrado', 'neuringtech' ),
        'not_found_in_trash' => __( 'Nenhum fornecedor foi encontrado na lixeira', 'neuringtech' ),
        'parent_item_colon' => ''
    );

    $args = array( 'labels' => $labels,
        'public' => true,
        'publicly_queryable' => true,
        'show_ui' => true,
        'query_var' => true,
        'menu_icon' => 'dashicons-networking',
        'rewrite' => true,
        'capability_type' => 'post',
        'hierarchical' => false,
        'menu_position' => null,
        'supports' => array( 'title', 'thumbnail', 'editor', 'custom-fields' )
    );

    register_post_type( 'fornecedor', $args );
    flush_rewrite_rules();
}

register_taxonomy("tipo",
    array("fornecedor"),
        array("hierarchical"    => true,
            "label"           => "Categoria do Fornecedor",
            "singular_label"  => "Categoria do Fornecedor",
            "rewrite"         => true
        )
);

add_action('save_post', 'save_details_fornecedor');


function save_details_fornecedor(){
  global $post;


  if(isset($_POST["fornecedor_pagelink"]))
    update_post_meta($post->ID, "fornecedor_pagelink", $_POST["fornecedor_pagelink"]);
}

add_filter("manage_edit-fornecedor_columns", "fornecedor_edit_columns");
add_action("manage_posts_custom_column",  "fornecedor_custom_columns");

function fornecedor_edit_columns($columns){
    $columns = array(
        "cb" => "<input type=\"checkbox\" />",
        "title" => __('Titulo do fornecedor'),
        "fornecedor_desc" => __('Resumo fornecedor'),
        "img-fornecedor" => __('Foto'),
    );
    return $columns;
}
function fornecedor_custom_columns($column){
    global $post;
    switch ($column)
    {
        case "fornecedor_desc":
        the_excerpt();
        break;
        case "img-fornecedor":
        the_post_thumbnail(array(133, 133));
        break;
    }
}