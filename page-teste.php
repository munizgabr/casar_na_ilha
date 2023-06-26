<?php
/**
 *
 * @package SOMA Dev
 * @since 0.0.1
 */
get_header();
?>

<!-- Slider -->
<section class="main-slider mt-[80px] sm:mt-[90px] overflow-hidden h-auto relative pb-4">
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


<!-- Highlights -->
<section class="grid grid-cols-1 items-center bg-gradient-to-b from-white via-[#64CCC5] to-[#176B87]">
  <div class="center flex flex-row place-content-between p-4 items-center">
    <h2 class="font-bold text0black text-xl">Empresas em destaque</h2>
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
          <a href="<?php the_permalink(); ?>" title="<?php echo 'Visitar '.get_the_title();?>" class="swiper-slide shadow-[0_3px_10px_rgb(0,0,0,0.2)] bg-white rounded-lg overflow-hidden group-hover:no-underline hover:shadow-[0_3px_10px_rgb(0,0,0,0.5)] ease-in duration-300">
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

<!-- Blog posts -->
<section class="p-4 bg-gradient-to-b from-[#176B87] to-[#001C30]">
  <span class="uppercase text-lg text-center text-white my-4 font-bold block">Últimas notícias</span>
  <div class="center p-4 grid grid-cols-3 grid-rows-3 gap-3 bg-[#ffffff66] rounded-lg items-center justify-center text-center">
    <?php
    $recent_posts = get_posts(array(
      'post_type' => 'post',
      'numberposts' => 4,
      'order' => 'DESC' // Ordenar em ordem decrescente
    ));
    $post_count = count($recent_posts);

    // Verificar se há pelo menos um post
    if ($post_count > 0) {
      // Último post
      $last_post = $recent_posts[0];
      setup_postdata($last_post);
      $last_post_thumbnail = get_the_post_thumbnail_url($last_post);
      $last_post_title = get_the_title($last_post);
      $last_post_content = wp_trim_words(get_the_content($last_post), 50, '...');
    ?>
      <a href="<?php echo get_permalink($last_post); ?>" class="principal h-full grid grid-cols-2 row-start-1 row-end-3 col-start-1 col-end-4" title="<?php echo $last_post_title; ?>">
        <img class="h-full object-cover" src="<?php echo (!empty($last_post_thumbnail)) ? $last_post_thumbnail : bloginfo('template_url') . '/src/images/ensaio.jpg'; ?>" alt="<?php echo $last_post_title; ?>">
        <div class="w-full p-4 bg-white">
          <span class="font-bold text-lg text-black uppercase"><?php echo $last_post_title; ?></span>
          <p class="opacity-[100%] text-black text-sm"><?php echo $last_post_content; ?></p>
        </div>
      </a>
    <?php
      // Demais posts
      for ($i = 1; $i < $post_count; $i++) {
        $post = $recent_posts[$i];
        setup_postdata($post);
        $post_thumbnail = get_the_post_thumbnail_url($post);
        $post_title = get_the_title($post);
        $post_content = wp_trim_words(get_the_content($post), 10, '...');
    ?>
        <a href="<?php echo get_permalink($post); ?>" class="secundario h-full font-semibold text-black text-lg relative">
          <img class="w-full h-full object-cover" src="<?php echo (!empty($post_thumbnail)) ? $post_thumbnail : bloginfo('template_url') . '/src/images/ensaio.jpg'; ?>" alt="<?php echo $post_title; ?>">
          <div class="absolute bottom-0 w-full bg-[#ffffff66]">
            <span class="font-bold text-lg text-black uppercase"><?php echo $post_title; ?></span>
            <p class="opacity-[100%] text-black text-sm"><?php echo $post_content; ?></p>
          </div>
        </a>
    <?php
      }
    }
    wp_reset_postdata();
    ?>
  </div>
</section>


<!-- Categories -->
<?php
$terms = get_terms('tipo');
foreach ($terms as $term) :
  if(!empty($term)) :
?>
  <section class="swiper-category relative py-4 px-8 last:mb-4 bg-[#001C30] overflow-hidden">
    <div class="w-full flex items-center place-content-between">
      <span class="uppercase text-white font-extrabold"><?php echo $term->name; ?></span>
      <a class="text-white font-semibold border border-white px-4 py-2 hover:text-[#001C30] hover:bg-white hover:no-underline" href="#" title="Ver todos">Ver todos</a>
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