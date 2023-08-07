<?php
/**
 *
 * @package Neuring Tech
 * @since 0.0.1
 */
get_header();

// Obtendo o slug do tipo de fornecedor (categoria do fornecedor)
$term = get_queried_object();
$tipo_slug = $term->slug;

// Definindo o número de posts por página
$posts_per_page = 20;

// Obtendo o número total de fornecedores para a paginação
$total_posts = wp_count_posts('fornecedor');
$total_fornecedores = $total_posts->publish;

// Calculando o número total de páginas necessárias para a paginação
$total_pages = ceil($total_fornecedores / $posts_per_page);

// Obtendo o número da página atual
$paged = get_query_var('page') ? get_query_var('page') : 1;

// Ajustando a consulta WP_Query com base na paginação
$args = array(
    'post_type'      => 'fornecedor',
    'posts_per_page' => $posts_per_page,
    'paged'          => $paged,
    'tax_query'      => array(
        array(
            'taxonomy' => 'tipo', // Nome da taxonomia personalizada (categoria)
            'field'    => 'slug',
            'terms'    => $tipo_slug, // Slug da categoria do tipo de fornecedor que deseja listar
        ),
    ),
);

$query = new WP_Query($args);
$term_description = wp_strip_all_tags(term_description());
?>

<section class="center grid grid-cols-1 items-center mt-[80px] sm:mt-[90px]">
    <div class="py-4 items-center justify-center">
        <h2 class="font-bold text-white text-center text-xl no-underline"><?php echo single_term_title('', false); ?></h2>
        <p class="text-white font-thin text-md"><?php echo $term_description;?></p>
    </div>
    <div class="py-4 overflow-hidden">
        <?php
        if ($query->have_posts()) :?>
            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-5">
            <?php while ($query->have_posts()) : $query->the_post();
                $local = get_field('local');
                $city = $local['city'];
                $neighborhood = $local['neighborhood'];
                $location = $neighborhood . ', ' . $city;
                $value = get_field('value');
                $thumbnail = get_the_post_thumbnail_url(get_the_ID(), 'thumb_1');
        ?>
                
                <a class="shadow-[0_3px_10px_rgb(0,0,0,0.2)] bg-white rounded-md overflow-hidden group-hover:no-underline hover:shadow-[0_3px_10px_rgb(0,0,0,0.5)] ease-in duration-300" href="<?php the_permalink(); ?>" title="<?php echo 'Visitar ' . get_the_title(); ?>">
                    <img src="<?php echo !empty($thumbnail) ? $thumbnail : get_template_directory_uri() . '/src/images/ensaio.jpg'; ?>" alt="<?php the_title(); ?>">
                    <div class="p-4 bg-white">
                        <span class="text-lg text-[#001C30] font-bold"><?php the_title(); ?></span>
                        <div><?php echo !empty($location) ? $location : "Bairro, Cidade"; ?></div>
                        <div class="grid grid-cols-[20px_auto] gap-2">
                            <img src="<?php echo get_template_directory_uri(); ?>/src/images/coin.png" alt="Custo"> <?php echo $value; ?>
                        </div>
                    </div>
                </a>
        <?php endwhile;?>
            </div>
            <?php

            $pagenum_link = html_entity_decode( get_pagenum_link() );
            $url_parts    = explode( '?', $pagenum_link );
            $pagenum_link = trailingslashit( $url_parts[0] ) . '%_%';

            // Exibir links de paginação
            $pagination_args = array(
                'base'      => $pagenum_link,
                'format'    => '?page=%#%&tipo=' . $tipo_slug, // Ajustando a estrutura do link de paginação
                'total'     => $total_pages,
                'current'   => $paged,
                'prev_next' => true,
                'prev_text' => __('<img src="' . get_template_directory_uri() . '/src/images/arrow-left.png" alt="anterior">'),
                'next_text' => __('<img src="' . get_template_directory_uri() . '/src/images/arrow-rigth.png" alt="próximo">'),
            );
            echo '<div class="pagination">';
            echo paginate_links($pagination_args);
            echo '</div>';

            // Redefinir a consulta do WordPress antes de exibir a próxima página
            wp_reset_postdata();
        else :
            // Caso não haja fornecedores do tipo especificado, exibir uma mensagem alternativa
            echo '<p>Nenhum fornecedor encontrado para este tipo.</p>';
        endif;
        ?>
    </div>
</section>

<?php get_footer(); ?>
