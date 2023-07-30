<?php
/**
 * Template Name: Blog
 * @package Neuring Tech
 * @since 0.0.1
 */
get_header();

// Obtendo o número total de posts do tipo "post" para a paginação
$total_posts = wp_count_posts('post');
$total_posts_count = $total_posts->publish;

// Definindo o número de posts por página
$posts_per_page = 2;

// Calculando o número total de páginas necessárias para a paginação
$total_pages = ceil($total_posts_count / $posts_per_page);

// Obtendo o número da página atual
$paged = get_query_var('paged') ? get_query_var('paged') : 1;

// Ajustando a consulta WP_Query com base na paginação
$args = array(
    'post_type'      => 'post',
    'posts_per_page' => $posts_per_page,
    'paged'          => $paged,
    'orderby'        => 'date',
    'order'          => 'DESC',
);

$query = new WP_Query($args); ?>
<div class="center grid grid-cols-1 md:grid-cols-[auto_auto] gap-4 mt-[80px] sm:mt-[90px] md:mt-[98px]">
    <?php
    // Verificando se há posts
    if ($query->have_posts()) :
        echo '<div class="wrapper-post">';
        while ($query->have_posts()) : $query->the_post();
            // Obtendo a URL da thumbnail
            $thumbnail_url = get_the_post_thumbnail_url(get_the_ID(), 'thumb_blog');

            // Obtendo o título do post
            $post_title = get_the_title();

            // Obtendo o conteúdo resumido com limite de 50 palavras
            $post_content = wp_trim_words(get_the_content(), 50, '...');

            // Exibindo o conteúdo do post em um container
            ?>
            <div class="p-4 bg-white my-4 text-center md:text-start">
                <?php if ($thumbnail_url) : ?>
                    <img src="<?php echo esc_url($thumbnail_url); ?>" alt="<?php echo esc_attr($post_title); ?>">
                <?php endif; ?>
                <h2 class="text-[#176B87] uppercase font-bold text-lg no-underline"><?php echo esc_html($post_title); ?></h2>
                <p class="text-[#176B87] grid md:grid-cols-[auto_auto] place-items-center items-end gap-4"><?php echo esc_html($post_content); ?><a href="<?php the_permalink(); ?>" class="btn-ver-todos text-[#176B87] border-4 border-[#176B87] hover:text-white hover:bg-[#176B87]">Ver tudo</a></p>
            </div>
    <?php
        endwhile;
        echo '</div>';

        // Redefinir a consulta do WordPress antes de exibir a próxima página
        wp_reset_postdata();
else :
        // Caso não haja posts, exibir uma mensagem alternativa
        echo '<p>Nenhum post encontrado.</p>';
    endif;
    ?>
    <div class="my-4">
        <?php if (!dynamic_sidebar('sidebar')) : endif; ?>
    </div>
</div>
<?php 
 // Exibir links de paginação
 $pagination_args = array(
    'base'      => get_pagenum_link(1) . '%_%',
    'format'    => '?paged=%#%',
    'total'     => $total_pages,
    'current'   => $paged,
    'prev_next' => true,
    'prev_text' => __('<img src="' . get_template_directory_uri() . '/src/images/arrow-left.png" alt="anterior">'),
    'next_text' => __('<img src="' . get_template_directory_uri() . '/src/images/arrow-rigth.png" alt="próximo">'),
);
echo '<div class="pagination">';
echo paginate_links($pagination_args);
echo '</div>';
get_footer(); ?>
