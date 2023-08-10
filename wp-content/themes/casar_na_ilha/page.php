<?php
/**
 *
 * @package Neuring Tech
 * @since 0.0.1
 */
get_header();?>
<div class="mt-[80px] sm:mt-[90px] center">
	<div class="top-page">
		<div>
			<div class="breadcrumb">
				<?php if ( function_exists('yoast_breadcrumb') ) {
					yoast_breadcrumb('<span class="breadcrumb">','</span>');
				} ?>
			</div>
			<div class="wrapper-title">
				<h1 class="title font-bold text-white text-2xl"><?php the_title(); ?></h1>
			</div>
		</div>
	</div>
	<div class="wrapper-page">
		<div>
			<?php the_content(); ?>
		</div>
	</div>
	<div class="wrapper-map bg-gray">
		<?php if ( ! dynamic_sidebar( 'mapa' ) ) : endif; ?>
	</div>
</div>
<?php get_footer(); ?>