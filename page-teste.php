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
  <div class="center p-4 grid grid-cols-3 grid-rows-3 border gap-3 border-black bg-white rounded-lg items-center justify-center text-center">
    <a href="#" class="principal grid grid-cols-2  row-start-1 row-end-3 col-start-1 col-end-4 font-semibold text-black text-xl" title="teste">
      <img src="<?php bloginfo('template_url');?>/src/images/ensaio.jpg" alt="teste">
      <div class="w-full p-4 bg-[#ffffff69]">
        <span class="font-bold text-black">titulo da materia</span>
        <p class="opacity-[100%] text-black text-sm">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam ipsum ad earum vel. Impedit maiores, odio voluptatibus quis autem tempora quisquam ducimus, libero atque laboriosam au.</p>
      </div>
    </a>
    <a href="" class="secundario font-semibold text-black text-lg relative">
      <img src="<?php bloginfo('template_url');?>/src/images/ensaio.jpg" alt="ensaio">
      <div class="absolute bottom-0 w-full bg-white opacity-75">
        <span>Título</span>
        <p class="opacity-[100%]">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dicta ratione cum doloremque fugit.</p>
      </div>
    </a>
    <a href="" class="secundario font-semibold text-black text-lg relative">
      <img src="<?php bloginfo('template_url');?>/src/images/ensaio.jpg" alt="ensaio">
      <div class="absolute bottom-0 w-full bg-white opacity-75">
        <span>Título</span>
        <p class="opacity-[100%]">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dicta ratione cum doloremque fugit.</p>
      </div>
    </a>
    <a href="" class="secundario font-semibold text-black text-lg relative">
      <img src="<?php bloginfo('template_url');?>/src/images/ensaio.jpg" alt="ensaio">
      <div class="absolute bottom-0 w-full bg-white opacity-75">
        <span>Título</span>
        <p class="opacity-[100%]">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dicta ratione cum doloremque fugit.</p>
      </div>
    </a>
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