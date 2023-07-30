<?php
/**
 *
 * @package Neuring Tech
 * @since 0.0.1
 */
get_header();?>

<!-- slider -->
<section class="swiper main-slider main-slider__controller">
    <div class="swiper-wrapper">
        <div class="swiper-slide" style="background: fixed no-repeat center center url(../../wp-content/themes/casar_na_ilha/src/images/wedding.jpg); background-size: 100%;">
            <div class="center main-slider__content">
                <div class="description">
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit dignissimos amet facilis natus, fugit deserunt molestiae soluta dolores magnam eaque nisi fugiat, temporibus quos, perferendis placeat recusandae mollitia ad delectus?
                </div>
                <a class="btn" href="#" title="Saiba mais">Saiba mais!</a>  
            </div>
        </div>
    </div>
</section>

<!-- grid -->
<section>
    <div class="wrapper-grid category-slider">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <div class="wrapper-grid__controller">
                    <div class="wrapper-grid__cta" style="background: no-repeat center center url(<?php echo get_bloginfo('template_url')?>/src/images/casamento.jpg);">
                        <a href="#" alt="Casamento">Casamentos</a>
                    </div>
                </div>
            </div>
            
            <div class="swiper-slide">
                <div class="wrapper-grid__controller">
                    <div class="wrapper-grid__cta" style="background: no-repeat center center url(<?php echo get_bloginfo('template_url')?>/src/images/noivado.png);">
                        <a href="#" alt="Casamento">Noivados</a>
                    </div>
                </div>    
            </div>
            
            <div class="swiper-slide">
                <div class="wrapper-grid__controller">
                    <div class="wrapper-grid__cta" style="background: no-repeat center center url(<?php echo get_bloginfo('template_url')?>/src/images/ensaio.jpg);">
                        <a href="#" alt="Casamento">Ensaios fotográficos</a>
                    </div>
                </div>    
            </div>
            
        </div>
    </div>
</section>

<!-- gallery -->
<section class="center gallery">
    <h2>Um casamento com o seu estilo</h2>
    <span>Conheça nossos parceiros</span>
    <div class="gallery__grid center">
        <a href="#" title="" class="gallery__item gallery__grid--item1">
            <img src="<?php bloginfo('template_url');?>/src/images/item1.jpg" alt="Imagem">
            <div class="opacity">
                <span>testando</span>
                <span class="cursive">123</span>
            </div>
        </a>
        <a href="#" title="" class="gallery__item gallery__grid--item2">
            <img src="<?php bloginfo('template_url');?>/src/images/item2.jpg" alt="Imagem">
            <div class="opacity">
                <span>testando</span>
                <span class="cursive">123</span>
            </div>
        </a>
        <a href="#" title="" class="gallery__item gallery__grid--item3">
            <img src="<?php bloginfo('template_url');?>/src/images/item3.jpg" alt="Imagem">
            <div class="opacity">
                <span>testando</span>
                <span class="cursive">123</span>
            </div>
        </a>
        <a href="#" title="" class="gallery__item gallery__grid--item4">
            <img src="<?php bloginfo('template_url');?>/src/images/item4.jpg" alt="Imagem">
            <div class="opacity">
                <span>testando</span>
                <span class="cursive">123</span>
            </div>
        </a>
        <a href="#" title="" class="gallery__item gallery__grid--item5">
            <img src="<?php bloginfo('template_url');?>/src/images/item1.jpg" alt="Imagem">
            <div class="opacity">
                <span>testando</span>
                <span class="cursive">123</span>
            </div>
        </a>
        <a href="#" title="" class="gallery__item gallery__grid--item6">
            <img src="<?php bloginfo('template_url');?>/src/images/item2.jpg" alt="Imagem">
            <div class="opacity">
                <span>testando</span>
                <span class="cursive">123</span>
            </div>
        </a>
        <a href="#" title="" class="gallery__item gallery__grid--item7">
            <img src="<?php bloginfo('template_url');?>/src/images/item3.jpg" alt="Imagem">
            <div class="opacity">
                <span>testando</span>
                <span class="cursive">123</span>
            </div>
        </a>
        <a href="#" title="" class="gallery__item gallery__grid--item8">
            <img src="<?php bloginfo('template_url');?>/src/images/item4.jpg" alt="Imagem">
            <div class="opacity">
                <span>testando</span>
                <span class="cursive">123</span>
            </div>
        </a>
        <a href="#" title="" class="gallery__item gallery__grid--item9">
            <img src="<?php bloginfo('template_url');?>/src/images/item1.jpg" alt="Imagem">
            <div class="opacity">
                <span>testando</span>
                <span class="cursive">123</span>
            </div>
        </a>
        <a href="#" title="" class="gallery__item gallery__grid--item10">
            <img src="<?php bloginfo('template_url');?>/src/images/item2.jpg" alt="Imagem">
            <div class="opacity">
                <span>testando</span>
                <span class="cursive">123</span>
            </div>
        </a>
        <a href="#" title="" class="gallery__item gallery__grid--item11">
            <img src="<?php bloginfo('template_url');?>/src/images/item3.jpg" alt="Imagem">
            <div class="opacity">
                <span>testando</span>
                <span class="cursive">123</span>
            </div>
        </a>
        <a href="#" title="" class="gallery__item gallery__grid--item12">
            <img src="<?php bloginfo('template_url');?>/src/images/item4.jpg" alt="Imagem">
            <div class="opacity">
                <span>testando</span>
                <span class="cursive">123</span>
            </div>
        </a>
        <a href="#" title="" class="gallery__item gallery__grid--item13">
            <img src="<?php bloginfo('template_url');?>/src/images/item1.jpg" alt="Imagem">
            <div class="opacity">
                <span>testando</span>
                <span class="cursive">123</span>
            </div>
        </a>
        
    </div>
</section>

<!--  -->
<?php get_footer(); ?>