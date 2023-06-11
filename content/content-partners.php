<?php
// Criando uma nova consulta para recuperar os posts do tipo "fornecedor"
$args = array(
    'post_type' => 'fornecedor',
    'posts_per_page' => 1 // Número de posts para exibir
);
$custom_query = new WP_Query($args);

// Verificar se existem posts
if ($custom_query->have_posts()) {?>
    <!-- grid -->
    <section class="wrapper-grid category-slider">
        <div class="swiper-wrapper">
        <?php
        $categories = get_terms('tipo'); // Obtenha todas as categorias do tipo 'tipo'

        foreach ($categories as $category):
            $image = get_field('category_image', $category);?>
            <div class="swiper-slide">
                <?php $category_link = get_term_link($category);?>
                <div class="wrapper-grid__controller">
                    <div class="wrapper-grid__cta" style="background: no-repeat center center url(<?php echo !empty($image) ? $image : get_bloginfo('template_url') . '/src/images/casamento.jpg'; ?>);">
                        <a href="<?php echo $category_link;?>" alt="<?php echo $category->name;?>">
                            <?php
                                echo $category->name;
                            ?>
                        </a>
                    </div>
                </div>
            </div>
        <?php endforeach;?>
        </div>
    </section>
<?php
    // Restaurar os dados originais do post
    wp_reset_postdata();
} else {
    // Caso não haja posts do tipo "fornecedor" para exibir
    echo 'Nenhum fornecedor encontrado.';
}
?>

       
            
    