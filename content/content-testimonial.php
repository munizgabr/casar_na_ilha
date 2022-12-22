<section id="depoimentos" class="pt-0 pb-20 pl-4 pr-4 lg:pl-0 lg:pr-0">
	<div class="center">
		<div class="testimonial pt-10 bg-yellow-fundo rounded-[50px] pb-6">
			<h2 data-wow-delay="0.5s" data-wow-duration="1s" class="wow bounceInLeft text-black text-center text-2xl lg:text-4xl font-din-bold">O que nossos clientes dizem:</h2>
			<div class="group mt-[20px] lg:mt-[50px] mx-auto w-full lg:w-[935px] relative pl-3 pr-3 lg:pl-0 lg:pr-0">
				<div class="swiper testimonial-swiper">
					<div data-wow-delay="0.5s" data-wow-duration="1s" class="swiper-wrapper wow bounceInRight">
						<div class="swiper-slide text-sm pb-[140px]">
							<div class="relative bg-slate-100 p-5 pt-10 rounded-3xl h-full lg:h-[250px]">
								<p class="text-black pb-8">
									Lorem ipsum dolor, sit amet consectetur adipisicing elit. Magnam quasi aspernatur ullam tempore, asperiores iusto at inventore
								</p>
								<div class="info absolute left-0 right-0 bottom-[-110px] mx-auto text-center">
									<img class="w-[100px] mx-auto" src="<?php bloginfo('template_url');?>/src/images/person-1.png" alt="">
									<h2 class="font-almarai-bold text-base mt-3 text-black">Nome Sobrenome</h2>
									<h3 class="font-almarai-light text-black">empresa</h3>
								</div>
							</div>
						</div>
						<div class="swiper-slide text-sm pb-[140px]">
							<div class="relative bg-slate-100 p-5 pt-10 rounded-3xl h-full lg:h-[250px]">
								<p class="text-black pb-8">
									Lorem ipsum dolor, sit amet consectetur adipisicing elit. Magnam quasi aspernatur ullam tempore, asperiores iusto at inventore
								</p>
								<div class="info absolute left-0 right-0 bottom-[-110px] mx-auto text-center">
									<img class="w-[100px] mx-auto" src="<?php bloginfo('template_url');?>/src/images/person-2.png" alt="Nome Sobrenome">
									<h2 class="font-almarai-bold text-base mt-3 text-black">Nome Sobrenome</h2>
									<h3 class="font-almarai-light text-black">empresa</h3>
								</div>
							</div>
						</div>
						<div class="swiper-slide text-sm pb-[140px]">
							<div class="relative bg-slate-100 p-5 pt-10 rounded-3xl h-full lg:h-[250px]">
								<p class="text-black pb-8">
									Lorem ipsum dolor, sit amet consectetur adipisicing elit. Magnam quasi aspernatur ullam tempore, asperiores iusto at inventore
								</p>
								<div class="info absolute left-0 right-0 bottom-[-110px] mx-auto text-center">
									<img class="w-[100px] mx-auto" src="<?php bloginfo('template_url');?>/src/images/person-3.png" alt="Nome Sobrenome">
									<h2 class="font-almarai-bold text-base mt-3 text-black">Nome Sobrenome</h2>
									<h3 class="font-almarai-light text-black">empresa</h3>
								</div>
							</div>
						</div>
					</div>
				</div>
				<?php if(wp_is_mobile() != true) { ?>
					<div class="swiper-button-prev swiper-button-prev-testimonial hover:opacity-75 top-[125px] left-[-70px]"><img src="<?php bloginfo('template_url');?>/src/images/arrow-left-white.png" alt="Anterior"></div>
            		<div class="swiper-button-next swiper-button-next-testimonial hover:opacity-75 top-[125px] right-[-70px]"><img src="<?php bloginfo('template_url');?>/src/images/arrow-right-white.png" alt="Próximo"></div>
				<?php } ?>
			</div>
		</div>
	</div>
</section>