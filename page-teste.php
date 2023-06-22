<?php
/**
 *
 * @package SOMA Dev
 * @since 0.0.1
 */
get_header();?>

<!-- slider -->
<section class="h-auto relative pb-4">
    <div class="h-[75vh]" style="background-image: url(../../wp-content/themes/casar_na_ilha/src/images/wedding.jpg);background-size:auto;">
      <div class="center grid grid-cols-1 sm:grid-cols-2 h-full items-center text-md">
        <div class="description font-bold text-white text-center">
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit dignissimos amet facilis natus, fugit deserunt molestiae soluta dolores magnam eaque nisi fugiat, temporibus quos, perferendis placeat recusandae mollitia ad delectus?
        </div>
        <a class="btn font-bold" href="#" title="Saiba mais">Saiba mais!</a>
      </div>
    </div>
</section>

<!-- Highlights -->
<section class="grid grid-cols-1 items-center">
  <div class="flex flex-row place-content-between px-4 items-center">
    <h2 class="font-bold text0black text-xl">Empresas em destaque</h2>
    <img src="<?php bloginfo('template_url');?>/src/images/fornecedor-premium.png" alt="Fornecedores premium">
  </div>
  <div class="pb-4 px-4 grid grid-cols-2">
    <div class="shadow-[0_3px_10px_rgb(0,0,0,0.2)] rounded-lg overflow-hidden">
      <img src="<?php bloginfo('template_url');?>/src/images/carro-antigo.jpeg" alt="Carro">
      <div class="p-4">
        <span class="text-lg text-black font-bold">Empresa</span>
        <div>4* Bairro, Cidade</div>
        <div class="grid grid-cols-[20px_auto] gap-2">
          <img src="<?php bloginfo('template_url');?>/src/images/coin.png" alt="Custo"> A partir de R$1000,00
        </div>
      </div>
    </div>
  </div>
</section>



<?php get_footer(); ?>