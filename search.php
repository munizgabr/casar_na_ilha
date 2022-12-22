<?php
/**
 * @package SOMA Dev
 * @since 0.0.1
 */
get_header(); ?>
<div class="container">
	<div class="top-page">
		<div class="center">
			<div class="breadcrumb">
				<?php if ( function_exists('yoast_breadcrumb') ) {
					yoast_breadcrumb('<span class="breadcrumb">','</span>');
				} ?>
			</div>
			<div class="wrapper-title">
				<h1 class="title">Resultados</h1>
			</div>
		</div>
	</div>
	<div class="search-top">
		<div class="wrapper">
			<?php
				$allsearch = new WP_Query("s=$s&showposts=-1");
				$key = esc_html($s, 1);
				$count = $allsearch->post_count;
			?>
			<?php if($count > 1){ ?>
				<span class="title">"<?php echo $count; ?>" resultados encontrados para <strong><?php echo $key; ?></strong></span>
			<?php } else { ?>
				<span class="title">"<?php echo $count; ?>" resultado encontrado para <strong><?php echo $key; ?></strong></span>
			<?php } ?>
			<?php get_template_part( 'searchform' ); ?>
		</div>
	</div>
	<div class="list-itens">
		<div class="center">
			<?php get_template_part( 'content/content', 'list-itens' ); ?>
		</div>
	</div>
	<?php if (function_exists('pagination')) pagination(); ?>
</div>
<?php if ( ! dynamic_sidebar( 'bottom-product' ) ) : endif;
get_footer();