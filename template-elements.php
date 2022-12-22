<?php
/**
 * Template Name: Elementos
 * @package Soma
 * @since 0.0.1
 */
get_header();?>
<section>
	<?php
	if ( have_posts() ) :
		while ( have_posts() ) : the_post();
			$id_post = get_the_ID();
				if( have_rows('elements', $id_post) ):
				while ( have_rows('elements', $id_post) ) : the_row();
					array_map(function($component) {
						if( get_row_layout() == $component ):
							get_template_part( 'content/content', $component );
						endif;
					}, [
						'banner',
						'cta',
						'scroll',
						'form',
						'testimonial',
						'industry',
						'tabs',
					]);
				endwhile;
				else :
					echo "Nenhum conteúdo cadastrado";
				endif;?>
		<?php endwhile;
		wp_reset_postdata();
	endif; ?>
</section>
<?php get_footer(); ?>