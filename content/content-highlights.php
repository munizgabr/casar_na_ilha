<section class="grid grid-cols-1 items-center">
  <div class="center flex flex-row place-content-between p-4 items-center">
    <h2 class="font-bold text-white text-xl">Empresas em destaque</h2>
    <img src="<?php echo get_template_directory_uri(); ?>/src/images/fornecedor-premium.png" alt="Fornecedores premium">
  </div>
  <div class="center swiper-highlights pb-4 overflow-hidden">
    <div class="swiper-wrapper">
      <?php
      $highlight_posts = get_posts(array(
        'post_type' => 'fornecedor',
      ));

      foreach ($highlight_posts as $post) :
        setup_postdata($post);
        $adsType = get_field('advertising-type');
        if (in_array('Fornecedor destaque', $adsType)) :
          $value = get_field('value');
          $local = get_field('local');
          $city = $local['city'];
          $neighborhood = $local['neighborhood'];
          $location = $neighborhood . ', ' . $city;
          $thumbnail = get_the_post_thumbnail_url(get_the_ID(), 'thumb_1');
      ?>
          <a href="<?php the_permalink(); ?>" title="<?php echo 'Visitar '.get_the_title();?>" class="swiper-slide shadow-[0_3px_10px_rgb(0,0,0,0.2)] bg-white rounded-md overflow-hidden group-hover:no-underline hover:shadow-[0_3px_10px_rgb(0,0,0,0.5)] ease-in duration-300 h-auto">
            <img src="<?php echo !empty($thumbnail) ? $thumbnail : get_template_directory_uri() . '/src/images/ensaio.jpg'; ?>" alt="<?php the_title(); ?>">
            <div class="p-4">
              <span class="text-lg text-[#001C30] font-bold"><?php the_title(); ?></span>
              <div>4* <?php echo !empty($location) ? $location : "Bairro, Cidade"; ?></div>
              <div class="grid grid-cols-[20px_auto] gap-2">
                <img src="<?php echo get_template_directory_uri(); ?>/src/images/coin.png" alt="Custo"> <?php echo $value; ?>
              </div>
            </div>
          </a>
      <?php
        endif;
      endforeach;
      wp_reset_postdata();
      ?>
    </div>
  </div>
</section>