<?php
/**
 *
 * @package SOMA Dev
 * @since 0.0.1
 */
get_header();?>
<div class="container">
	<div class="top-page">
		<div class="center">
			<div class="breadcrumb">
				<?php if ( function_exists('yoast_breadcrumb') ) {
					yoast_breadcrumb('<span class="breadcrumb">','</span>');
				} ?>
			</div>
			<div class="wrapper-title">
				<h1 class="title"><?php the_title(); ?></h1>
			</div>
		</div>
	</div>
	<div class="wrapper-page">
		<div class="center">
			<?php the_content(); ?>
		</div>
	</div>
	<div class="wrapper-map bg-gray">
		<?php if ( ! dynamic_sidebar( 'mapa' ) ) : endif; ?>
	</div>
</div>
<?php get_footer(); ?>