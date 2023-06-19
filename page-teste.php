<?php
/**
 *
 * @package SOMA Dev
 * @since 0.0.1
 */
get_header();?>

<!-- slider -->
<!-- <section class="swiper main-slider main-slider__controller">
  <div class="swiper-wrapper">
    <div class="swiper-slide">
      <div class="slide-content" style="background-image: url(../../wp-content/themes/casar_na_ilha/src/images/wedding.jpg);">
        <div class="center main-slider__content">
          <div class="description">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit dignissimos amet facilis natus, fugit deserunt molestiae soluta dolores magnam eaque nisi fugiat, temporibus quos, perferendis placeat recusandae mollitia ad delectus?
          </div>
          <a class="btn" href="#" title="Saiba mais">Saiba mais!</a>
        </div>
      </div>
    </div>
  </div>
</section> -->

<!-- Grid category -->
<section class="fornecedores grid gap-4 grid-cols-3 p-6">
    <div class='rounded-md shadow-[0_35px_60px_-15px_rgba(0,0,0,0.3)] hover:scale-[1.025] hover:ease-in hover:duration-300  flex gap-5 flex-col items-center p-6'>
        <img src="<?php bloginfo('template_url');?>/src/images/noiva.png" alt="Categoria vestido de noiva">
        <span class='text-black font-bold text-sm'>Vestidos de noiva</span>
    </div>
    <div class='rounded-md shadow-[0_35px_60px_-15px_rgba(0,0,0,0.3)] hover:scale-[1.025] hover:ease-in hover:duration-300  flex gap-5 flex-col items-center p-6'>
        <img src="<?php bloginfo('template_url');?>/src/images/noiva.png" alt="Categoria vestido de noiva">
        <span class='text-black font-bold text-sm'>Vestidos de noiva</span>
    </div>
    <div class='rounded-md shadow-[0_35px_60px_-15px_rgba(0,0,0,0.3)] hover:scale-[1.025] hover:ease-in hover:duration-300  flex gap-5 flex-col items-center p-6'>
        <img src="<?php bloginfo('template_url');?>/src/images/noiva.png" alt="Categoria vestido de noiva">
        <span class='text-black font-bold text-sm'>Vestidos de noiva</span>
    </div>
    <div class='rounded-md shadow-[0_35px_60px_-15px_rgba(0,0,0,0.3)] hover:scale-[1.025] hover:ease-in hover:duration-300  flex gap-5 flex-col items-center p-6'>
        <img src="<?php bloginfo('template_url');?>/src/images/noiva.png" alt="Categoria vestido de noiva">
        <span class='text-black font-bold text-sm'>Vestidos de noiva</span>
    </div>
    <div class='rounded-md shadow-[0_35px_60px_-15px_rgba(0,0,0,0.3)] hover:scale-[1.025] hover:ease-in hover:duration-300  flex gap-5 flex-col items-center p-6'>
        <img src="<?php bloginfo('template_url');?>/src/images/noiva.png" alt="Categoria vestido de noiva">
        <span class='text-black font-bold text-sm'>Vestidos de noiva</span>
    </div>
    <div class='rounded-md shadow-[0_35px_60px_-15px_rgba(0,0,0,0.3)] hover:scale-[1.025] hover:ease-in hover:duration-300  flex gap-5 flex-col items-center p-6'>
        <img src="<?php bloginfo('template_url');?>/src/images/noiva.png" alt="Categoria vestido de noiva">
        <span class='text-black font-bold text-sm'>Vestidos de noiva</span>
    </div>
</section>

<!-- fornecedores premium -->
<section class="grid grid-cols-1 gap-6 p-6">
    <div class="flex space-x-4">
        <div class="flex flex-col place-content-between">
            <h3 class="text-xl font-bold">Fornecedores PREMIUM</h3>
            <span class="text-lg">Consulte os fornecedores mais procurados da região</span>
        </div>
        <img src="<?php bloginfo('template_url');?>/src/images/fornecedor-premium.png" alt="Selo de fornecedor Premium">
    </div>
    <div class="swiper-container flex">
        <div class="swiper-wrapper">
            <a class="swiper-slide rounded-md shadow-[-10px_-10px_30px_4px_rgba(0,0,0,0.1),_10px_10px_30px_4px_rgba(45,78,255,0.15)] overflow-hidden flex flex-col space-y-4" href="#" title="Fornecedor">
                <img src="<?php bloginfo('template_url');?>/src/images/carro-antigo.jpeg" alt="Transfer">
                <div class="p-4 pb-8 pt-0">
                    <div class="review no-underline text-black">*4.9(33) Bairro, cidade</div>
                    <div class="flex space-x-2 items-center">
                        <img src="<?php bloginfo('template_url');?>/src/images/coin.png" alt="Valor" class="cost">
                        <span class="text-black text-sm">A partir de R$1000,00</span>
                    </div>
                </div>
            </a>
            <a class="swiper-slide rounded-md shadow-[-10px_-10px_30px_4px_rgba(0,0,0,0.1),_10px_10px_30px_4px_rgba(45,78,255,0.15)] overflow-hidden flex flex-col space-y-4" href="#" title="Fornecedor">
                <img src="<?php bloginfo('template_url');?>/src/images/carro-antigo.jpeg" alt="Transfer">
                <div class="p-4 pb-8 pt-0">
                    <div class="review no-underline text-black">*4.9(33) Bairro, cidade</div>
                    <div class="flex space-x-2 items-center">
                        <img src="<?php bloginfo('template_url');?>/src/images/coin.png" alt="Valor" class="cost">
                        <span class="text-black text-sm">A partir de R$1000,00</span>
                    </div>
                </div>
            </a>
            <a class="swiper-slide rounded-md shadow-[-10px_-10px_30px_4px_rgba(0,0,0,0.1),_10px_10px_30px_4px_rgba(45,78,255,0.15)] overflow-hidden flex flex-col space-y-4" href="#" title="Fornecedor">
                <img src="<?php bloginfo('template_url');?>/src/images/carro-antigo.jpeg" alt="Transfer">
                <div class="p-4 pb-8 pt-0">
                    <div class="review no-underline text-black">*4.9(33) Bairro, cidade</div>
                    <div class="flex space-x-2 items-center">
                        <img src="<?php bloginfo('template_url');?>/src/images/coin.png" alt="Valor" class="cost">
                        <span class="text-black text-sm">A partir de R$1000,00</span>
                    </div>
                </div>
            </a>
            <a class="swiper-slide rounded-md shadow-[-10px_-10px_30px_4px_rgba(0,0,0,0.1),_10px_10px_30px_4px_rgba(45,78,255,0.15)] overflow-hidden flex flex-col space-y-4" href="#" title="Fornecedor">
                <img src="<?php bloginfo('template_url');?>/src/images/carro-antigo.jpeg" alt="Transfer">
                <div class="p-4 pb-8 pt-0">
                    <div class="review no-underline text-black">*4.9(33) Bairro, cidade</div>
                    <div class="flex space-x-2 items-center">
                        <img src="<?php bloginfo('template_url');?>/src/images/coin.png" alt="Valor" class="cost">
                        <span class="text-black text-sm">A partir de R$1000,00</span>
                    </div>
                </div>
            </a>
        </div>
    </div>
</section>

<?php get_footer(); ?>