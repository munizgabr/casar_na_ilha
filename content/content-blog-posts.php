<section class="py-4 center">
  <span class="uppercase text-lg text-center text-white my-4 font-bold block">Últimas notícias</span>
  <div class=" w-full mx-0 p-4 grid grid-cols-3 grid-rows-2 md:grid-rows-3 gap-3 bg-[#ffffff66] rounded-md items-center justify-center text-center">
    <?php
    $recent_posts = get_posts(array(
      'post_type' => 'post',
      'numberposts' => 4,
      'order' => 'DESC' // Ordenar em ordem decrescente
    ));
    $post_count = count($recent_posts);
    $blog_page_url = get_permalink(get_page_by_path('blog'));

    // Verificar se há pelo menos um post
    if ($post_count > 0) {
      // Último post
      $last_post = $recent_posts[0];
      setup_postdata($last_post);
      $last_post_thumbnail = get_the_post_thumbnail_url($last_post);
      $last_post_title = get_the_title($last_post);
      $last_post_content = wp_trim_words(get_the_content($last_post), 50, '...');
    ?>
      <a href="<?php echo get_permalink($last_post); ?>" class="principal rounded-md overflow-hidden h-full grid grid-cols-2 row-start-1 row-end-3 col-start-1 col-end-4" title="<?php echo $last_post_title; ?>">
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
        <a href="<?php echo get_permalink($post); ?>" class="hidden md:block secundario h-full rounded-md overflow-hidden font-semibold text-black text-lg relative" title="<?php the_title();?>">
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
    <a href="<?php echo $blog_page_url;?>" title="Ir para o blog" class="row-start-5 row-end-5 col-start-2 col-end-3 btn-ver-todos">Conheça nosso blog!</a>
  </div>
</section>