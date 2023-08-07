
<a href="#anuncie-aqui" title="Anuncie conosco" class="bg-white p-6 rounded-md center block text-center uppercase font-bold text-black hover:text-white border-4 border-white hover:bg-transparent ease-in duration-300">
  Quer anunciar de graça? Clique aqui
</a>
<?php
$terms = get_terms('tipo');
foreach ($terms as $term) :
  $term_link = get_term_link($term);
  if(!empty($term)) :
?>
  <section class="swiper-category relative py-4 px-8 last:mb-4 overflow-hidden">
    <div class="w-full flex items-center place-content-between">
      <span class="uppercase text-white font-extrabold"><?php echo $term->name; ?></span>
      <a class="btn-ver-todos" href="<?php echo esc_url($term_link);?>" title="Ver todos">Ver todos</a>
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
          <a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>" class="swiper-slide fornecedores relative">
            <img class="h-full w-full" src="<?php echo !empty($thumbnailCategory) ? $thumbnailCategory : get_template_directory_uri() . '/src/images/ensaio.jpg'; ?>">
            <span class="bg-[#000000b8] absolute hidden bottom-0 top-0 w-full text-white capitalize font-bold justify-center items-center"><?php the_title();?></span>
          </a>
      <?php
        endif;
      endforeach;
      wp_reset_postdata();
      ?>
    </div>
  </section>
<?php endif;
endforeach;?>