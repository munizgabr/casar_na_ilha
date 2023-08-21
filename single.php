<?php

/**
 * The Template for displaying single posts
 *
 * @package Neuring Tech
 * @since 0.0.1
 */

get_header();

while (have_posts()) :
	the_post();

	$post_title = get_the_title();
	$post_content = get_the_content();
	$thumbnail_url = get_the_post_thumbnail_url(get_the_ID(), 'thumb_blog');
?>
	<div class="center bg-white grid grid-cols-1 sm:grid-cols-[3fr_1fr] gap-4 mt-[80px] sm:mt-[90px] md:mt-[98px]">
		<div>
			<div class="breadcrumb">
				<?php if (function_exists('yoast_breadcrumb')) {
					yoast_breadcrumb('<span class="breadcrumb">', '</span>');
				} ?>
			</div>
			<div class="p-6">
				<div class="wrapper-post">
					<div class="relative p-4 bg-[#176B87] rounded-md shadow-[0_3px_10px_rgb(0,0,0,0.2)] mb-4 text-center md:text-start">
						<?php if ($thumbnail_url) : ?>
							<img class="w-full" src="<?php echo esc_url($thumbnail_url); ?>" alt="<?php echo esc_attr($post_title); ?>">
						<?php endif; ?>
						<h2 class="text-[#fff] uppercase font-bold text-lg no-underline"><?php echo esc_html($post_title); ?></h2>
						<div class="text-[#fff] grid md:grid-cols-[auto_auto] place-items-center items-end gap-4">
							<?php echo wp_kses_post($post_content); ?>
						</div>
						<div class="absolut bottom-0 flex items-center justify-center gap-3 my-2">
							<span class="text-white hidden sm:block">Compartilhe</span>
							<a href="https://www.facebook.com/sharer/sharer.php?u=<?php the_permalink(); ?>" target="_blank" rel="noopener noreferrer">
								<img src="<?php bloginfo('template_url');?>/src/images/facebook-share.png" alt="Compartilhar no Facebook">
							</a>
							<a href="https://twitter.com/intent/tweet?url=<?php the_permalink(); ?>&text=<?php the_title(); ?>" target="_blank" rel="noopener noreferrer">
								<img src="<?php bloginfo('template_url');?>/src/images/twitter-share.png" alt="Compartilhar no Twitter">
							</a>
							<a href="https://api.whatsapp.com/send?text=<?php the_title(); ?> - <?php the_permalink(); ?>" target="_blank" rel="noopener noreferrer">
								<img src="<?php bloginfo('template_url');?>/src/images/whatsapp-share.png" alt="Compartilhar no WhatsApp">
							</a>
							<!-- Adicione outros botões de compartilhamento aqui -->
						</div>

					</div>
				</div>
			</div>
			<!-- Seção de Comentários -->
			<div class="comments-section">
				<?php comments_template(); ?>
			</div>
		</div>

		<div class="p-4">
			<?php if (!dynamic_sidebar('sidebar')) : endif; ?>
		</div>
	</div>
<?php
endwhile;

get_footer();
?>