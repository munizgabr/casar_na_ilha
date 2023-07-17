<?php
/**
 *
 * @package SOMA Dev
 * @since 0.0.1
 */
get_header();

if (isset($_GET['tipo_slug']) && !empty($_GET['tipo_slug'])) {
    $tipo_slug = sanitize_text_field($_GET['tipo_slug']);

    $args = array(
        'post_type' => 'fornecedor',
        'posts_per_page' => 10,
        'tax_query' => array(
            array(
                'taxonomy' => 'tipo', // Nome da taxonomia personalizada (categoria)
                'field' => 'slug',
                'terms' => $tipo_slug, // Slug da categoria do tipo de fornecedor que deseja listar
            ),
        ),
    );

    $query = new WP_Query($args);
}

?>
<section class="archive-slider main-slider--controll">
    <!-- Slides do Slider -->
</section>
<h2 class="category-title"><?php echo isset($tipo_slug) ? $tipo_slug : 'Todos os fornecedores'; ?></h2>
<section class="center wrapper-archive">
    <div class="archive-main">
        <?php
        if (isset($query) && $query->have_posts()) {
            while ($query->have_posts()) {
                $query->the_post();
                ?>
                <div class="archive-main__wrapper">
                    <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>">
                        <?php the_post_thumbnail(); ?>
                    </a>
                </div>
            <?php
            }
            wp_reset_postdata();
        } elseif (isset($tipo_slug) && !empty($tipo_slug)) {
            // Caso não haja fornecedores do tipo especificado, exibir uma mensagem alternativa
            echo '<p>Nenhum fornecedor encontrado para este tipo.</p>';
        }
        ?>
    </div>
    <div class="advertising">
        <span>Anuncie aqui</span>
    </div>
</section>

<!-- Formulário de Pesquisa -->
<form method="GET" action="">
    <label for="tipo_slug">Digite o slug da categoria de tipo:</label>
    <input type="text" name="tipo_slug" id="tipo_slug">
    <button type="submit">Pesquisar</button>
</form>

<?php get_footer(); ?>
