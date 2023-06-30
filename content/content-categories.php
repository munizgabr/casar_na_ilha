<?php
$terms = get_terms('tipo');
foreach ($terms as $term) :
  if(!empty($term)) :
?>
  <section class="swiper-category relative py-4 px-8 last:mb-4 overflow-hidden">
    <div class="w-full flex items-center place-content-between">
      <span class="uppercase text-white font-extrabold"><?php echo $term->name; ?></span>
      <a class="btn-ver-todos" href="#" title="Ver todos">Ver todos</a>
    </div>
    <div class="swiper-wrapper p-4">
      <?php
      $category_posts = get_posts(array(
        'post_type' => 'fornecedor',
        'tax_query' => array(
          array(
            'taxonomy' => 'tipo',
            'field' => 'slug',
            'terms' => $term->slug,
          ),
        ),
      ));

      foreach ($category_posts as $post) :
        setup_postdata($post);
        $adsType = get_field('advertising-type');
        $thumbnailCategory = get_the_post_thumbnail_url(get_the_ID(), 'thumb_1');
        if (in_array('Destaque da categoria', $adsType)) :
      ?>
          <a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>" class="swiper-slide fornecedores">
            <img class="h-full w-full" src="<?php echo !empty($thumbnailCategory) ? $thumbnailCategory : get_template_directory_uri() . '/src/images/ensaio.jpg'; ?>">
          </a>
      <?php
        endif;
      endforeach;
      wp_reset_postdata();
      ?>
    </div>
  </section>
<?php endif;
endforeach;
get_footer();
?>