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
	<div class="center bg-white grid grid-cols-1 gap-4 mt-[80px] sm:mt-[90px] md:mt-[98px]">
		<div class="breadcrumb">
			<?php if (function_exists('yoast_breadcrumb')) {
				yoast_breadcrumb('<span class="breadcrumb">', '</span>');
			} ?>
		</div>
		<div class="p-6">
			<div class="wrapper-post">
				<div class="p-4 bg-[#176B87] rounded-md shadow-[0_3px_10px_rgb(0,0,0,0.2)] my-4 text-center md:text-start">
					<h2 class="text-[#fff] uppercase font-bold text-lg no-underline"><?php echo esc_html($post_title); ?></h2>
					<?php if ($thumbnail_url) : ?>
						<img class="w-full" src="<?php echo esc_url($thumbnail_url); ?>" alt="<?php echo esc_attr($post_title); ?>">
					<?php endif; ?>
					<div class="text-[#fff] grid md:grid-cols-[auto_auto] place-items-center items-end gap-4">
						<?php echo wp_kses_post($post_content); ?>
					</div>
				</div>
			</div>
		</div>
		<!-- Seção de Comentários -->
		<div class="comments-section">
			<?php comments_template(); ?>
		</div>
	</div>
<?php
endwhile;

get_footer();
?>