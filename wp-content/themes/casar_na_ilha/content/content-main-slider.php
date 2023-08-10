<section class="main-slider mt-[70px] sm:mt-[90px] overflow-hidden h-auto relative pb-4">
  <div class="swiper-wrapper">
    <?php
    $slider_posts = get_posts(array(
      'post_type' => 'fornecedor',
      'orderby' => 'name',
      'order' => 'DESC'
    ));

    foreach ($slider_posts as $post) :
      setup_postdata($post);
      $adsType = get_field('advertising-type');
      $thumb = get_the_post_thumbnail_url(get_the_ID(), 'thumb_banner');
      if (in_array('Banner principal', $adsType)) :
    ?>
        <div class="swiper-slide h-[55vh]" style="background-image: url(<?php echo !empty($thumb) ? $thumb : get_template_directory_uri() . '/src/images/wedding.jpg' ?>);background-size:100%;">
          <div class="center grid grid-cols-1 sm:grid-cols-2 h-full items-center text-md">
            <div class="description font-bold text-white text-center">
              <?php echo wp_trim_words(get_the_content(), 30, '...'); ?>
            </div>
            <a class="btn font-bold" href="<?php the_permalink(); ?>" title="Saiba mais sobre <?php the_title(); ?>">Saiba mais!</a>
          </div>
        </div>
    <?php
      endif;
    endforeach;
    wp_reset_postdata();
    ?>
  </div>
</section>