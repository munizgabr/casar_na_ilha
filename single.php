<?php
/**
 *
 * @package SOMA Dev
 * @since 0.0.1
 */
get_header();?>
<section class="container center">
    <div class="single-partner">
        <div class="single-partner__info">
            <h2>Luna Côco</h2>
            <div class="swiper-partner__content">
                <div class="swiper mySwiper">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img src="<?php bloginfo('template_url');?>/src/images/luna_coco.jpg" alt="Luna Côco">
                        </div>
                        <div class="swiper-slide">
                            <img src="<?php bloginfo('template_url');?>/src/images/luna_coco.jpg" alt="Luna Côco">
                        </div>
                        <div class="swiper-slide">
                            <img src="<?php bloginfo('template_url');?>/src/images/luna_coco.jpg" alt="Luna Côco">
                        </div>
                        <div class="swiper-slide">
                            <img src="<?php bloginfo('template_url');?>/src/images/luna_coco.jpg" alt="Luna Côco">
                        </div>
                        <div class="swiper-slide">
                            <img src="<?php bloginfo('template_url');?>/src/images/luna_coco.jpg" alt="Luna Côco">
                        </div>
                        <div class="swiper-slide">
                            <img src="<?php bloginfo('template_url');?>/src/images/luna_coco.jpg" alt="Luna Côco">
                        </div>
                        <div class="swiper-slide">
                            <img src="<?php bloginfo('template_url');?>/src/images/luna_coco.jpg" alt="Luna Côco">
                        </div>
                        <div class="swiper-slide">
                            <img src="<?php bloginfo('template_url');?>/src/images/luna_coco.jpg" alt="Luna Côco">
                        </div>
                        <div class="swiper-slide">
                            <img src="<?php bloginfo('template_url');?>/src/images/luna_coco.jpg" alt="Luna Côco">
                        </div>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <div class="anchor">
                <a href="#info" title="Informações">Informações</a>
                <a href="#servicos" title="Serviços">Serviços</a>
                <a href="#atuacao" title="Onde atuamos">Onde atuamos</a>
                <a href="#faq" title="FAQ">FAQ</a>
                <a href="#reviews" title="Reviews">Reviews</a>
            </div>
        </div>
        <div class="single-partner__info--wrapper">
            <div class="info" id="informacoes">
                <span>Informações</span>
                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Est, commodi reiciendis culpa quam aperiam sequi voluptates nemo ipsam error. Veritatis accusamus dolores sit sint accusantium expedita fugiat, suscipit repellat non.</p>
            </div>
            <div class="services" id="servicos">
                <span>Serviços que oferecemos</span>
                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quas, sit odio quaerat sed et aliquid recusandae nisi omnis nam. Quidem unde voluptate repellendus nobis. Vitae voluptas rerum eius molestiae necessitatibus?</p>
            </div>
            <div class="where-we-act" id="atuacao">
                <span>Onde atuamos</span>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus nihil commodi in cupiditate error nulla excepturi repellendus enim sed incidunt ad labore eaque, ex architecto qui illum dolores, vel sunt?</p>
            </div>
            <div class="faq" id="faq">
                <span>FAQ</span>
            </div>
            <div class="reviews" id="reviews">
                <span>Reviews</span>
            </div>
        </div>
    </div>
    <nav class="sidebar"><?php if ( ! dynamic_sidebar( 'sidebar' ) ) : endif; ?></dinavv>
</section>
<?php get_footer(); ?>