<?php
/**
 *
 * @package SOMA Dev
 * @since 0.0.1
 */
get_header();?>

<!-- slider -->
<section class="main-slider main-slider__controller">
    <div class="center main-slider__content">
        <div class="description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit dignissimos amet facilis natus, fugit deserunt molestiae soluta dolores magnam eaque nisi fugiat, temporibus quos, perferendis placeat recusandae mollitia ad delectus?</div>
        <a class="btn" href="#" title="Saiba mais">Saiba mais!</a>
    </div>
</section>

<!-- grid -->
<section class="center">
    <div class="wrapper-grid">
        <div class="wrapper-grid__controller">
            <div class="wrapper-grid__cta" style="background: no-repeat center center url(<?php echo get_bloginfo('template_url')?>/src/images/casamento.jpg);">
                <a href="#" alt="Casamento">Casamentos</a>
            </div>
        </div>
        <div class="wrapper-grid__controller">
            <div class="wrapper-grid__cta" style="background: no-repeat center center url(<?php echo get_bloginfo('template_url')?>/src/images/noivado.png);">
                <a href="#" alt="Casamento">Noivados</a>
            </div>
        </div>
        <div class="wrapper-grid__controller">
            <div class="wrapper-grid__cta" style="background: no-repeat center center url(<?php echo get_bloginfo('template_url')?>/src/images/ensaio.jpg);">
                <a href="#" alt="Casamento">Ensaios fotográficos</a>
            </div>
        </div>
    </div>
</section>

<!-- gallery -->
<section class="center gallery">
    <h2>Um casamento com o seu estilo</h2>
    <span>Fotógrafos proficionais</span>
    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur, quia? Nemo beatae, non incidunt rerum maxime, nesciunt architecto quidem impedit animi repudiandae obcaecati enim, cum earum ducimus! Rem, cumque ducimus.</p>
</section>
<?php get_footer(); ?>