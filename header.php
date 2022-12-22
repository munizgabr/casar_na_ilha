<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>" />
	<title><?php wp_title( '|', true, 'right' ); ?></title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="initial-scale=1.0, maximum-scale=2.0, width=device-width" />
	<?php $color = '#FFB81D'; ?>
	<meta name="theme-color" content="<?php echo $color; ?>">
	<!-- Windows Phone -->
	<meta name="msapplication-navbutton-color" content="<?php echo $color; ?>">
	<!-- iOS Safari -->
	<meta name="apple-mobile-web-app-status-bar-style" content="<?php echo $color; ?>">
	<link rel="mask-icon" href="<?php bloginfo('template_url') ?>/favicon/images/safari-pinned-tab.svg" color="<?php echo $color; ?>">
	<?php include (TEMPLATEPATH . '/favicon/favicon.php'); ?>
	<script src= "https://cdnjs.cloudflare.com/ajax/libs/bodymovin/5.7.1/lottie_svg.js">
	<script
	src="https://code.jquery.com/jquery-3.6.1.js"
	integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="
	crossorigin="anonymous"></script>
	<script src="https://cdn.tailwindcss.com"></script>
	<script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
	<style>[x-cloak] { display: none !important; }</style>
	<?php wp_head(); ?>
</head>
	<body <?php body_class(); ?>>
		<div class="all line">
			<header class="header content line principal-header">
				<div class="center-header">
					<div class="wrapper-header">
						<div class="wrapper-logo">
							<?php if (is_home() || is_front_page()) { ?>
								<h1 class="h1-hide"><?php echo get_bloginfo('name'); ?></h1>
								<img src="<?php echo get_stylesheet_directory_uri(); ?>/src/images/parker.png" alt="logo Parker">
							<?php } else { ?>
								<a href="<?php echo esc_url( home_url() ); ?>" title="Parker"><img src="<?php echo get_stylesheet_directory_uri(); ?>/src/images/parker.png" alt="logo Parker"></a>
							<?php } ?>
						</div
						><div class="wrapper-menu">
							<div class="nav-item">
								<span></span>
								<span></span>
								<span></span>
								<span></span>
								<i>Menu</i>
							</div>
							<div class="menu-multinivel wrapper">
								<div class="rmm">
									<?php wp_nav_menu( array( 'container' => '', 'menu' => 'menu-principal' ) ); ?>
								</div>
								<div class="tap-mobile"></div>
							</div>
						</div>
						<div class="mt-4 btn-mobile">
								<a class="btn-modal btn-header bg-blue-title rounded-md hover:bg-cyan-700 hover:no-underline hover:text-white text-white p-[5px_25px] font-din-bold uppercase" href="#" title="demonstração">Demonstração</a>
							</div>
					</div>
				</div>
			</header>
			<div class="h-full lg:h-[550px] relative top-[-4px] lg:bg-yellow-fundo content-footer grid lg:grid-cols-[49.95%_50.05%] lg:grid-rows-[4fr_1fr] lg:rounded-br-xlarge bg-yellow-banner pt-[100px]">
				<div class="relative">
					<div data-wow-delay="0.2s" data-wow-duration="1s" class="wow bounceInLeft sm:px-16 py-3 px-10 flex flex-col h-full justify-center items-center lg:h-auto lg:block lg:absolute lg:right-[-35px] z-10 top-[45px]">
						<div>
							<h2 class="banner-title text-center font-bold text-black text-4xl md:text-5xl font-din-bold lg:text-start">
							Sensores<br class="hidden lg:block"> Voice Of The Machine™<br class="hidden lg:block"> & SensoNODE™
							</h2>
							<p class="banner-subtitle font-normal text-black sm:text-2xl text-justify font-din-bold lg:text-start">Sistema Wireless IoT de<br class="hidden lg:block"> Monitoramento de Condição<br class="hidden lg:block"> e Soluções de Diagnóstico </p>
						</div>
						<div class="mt-6 lg:mt-4 btn-mobile">
							<a class="btn-modal bg-blue-title rounded-md hover:bg-cyan-700 hover:no-underline hover:text-white text-white p-[5px_25px] font-din-bold uppercase" href="#" title="demonstração">Demonstração</a>
						</div>
            		</div>
				</div>
				<div class="lg:bg-yellow-yolk rounded-bl-xlarge relative lg:block">
					<div data-wow-delay="0.6s" data-wow-duration="1s" class="anime wow bounceInRight"></div>
				</div>
			</div>




		<div style="display: none;" id="modal" class="modal" >
			<div class="modal-content" >

				<div id="elements"

				x-data="{
				changeAnswer(question_index){


					this.answer_counter = question_index

					document.querySelectorAll('input').forEach(el => {
						let label = document.getElementById('label_'+el.id);
						if (label) label.style.border = el.checked? '2px solid #FFB91D' : ''
					})

					$nextTick(() => { 
						let question = document.getElementById('bottom_question_'+question_index);
							if (question) question.scrollIntoView({ behavior: 'smooth' });

					});


				},
				answer_counter: 0,
				questions: [{
				'question': 'Qual o seu cargo?',
				'options': [
					{
						'text': 'Gerente de Manutenção',
						'img': 'icon_1.png'
					},
					{
						'text': 'Supervisor de Manutenção',
						'img': 'icon_2.png'
					},
					{
						'text': 'Técnico de Manutenção',
						'img': 'icon_3.png'
					},
					{
						'text': 'Outros',
						'img': 'icon_4.png'
					}
				]
			}, {
				'question': 'Qual indústria sua empresa atua?',
				'options': [
					{
						'text': 'Indústrias',
						'img': 'icon_5.png'
					},
					{
						'text': 'Facilities',
						'img': 'icon_6.png'
					},
					{
						'text': 'Comercial',
						'img': 'icon_7.png'
					},
					{
						'text': 'Outros',
						'img': 'icon_8.png'
					}
				]
			}, {
				'question': 'Quando gostaria de iniciar o projeto',
				'options': [
					{
						'text': 'Em menos de um mês',
						'img': 'icon_9.png'
					},
					{
						'text': 'De 2 a 3  meses',
						'img': 'icon_10.png'
					},
					{
						'text': 'Em 4 meses ou mais',
						'img': 'icon_11.png'
					}
				]
			}, {
				'question': 'O que mais te interessou nessa solução?',
				'options': [
					{
						'text': 'Monitoramento Online da Operação',
						'img': ''
					},
					{
						'text': 'Software para Gestão e Manutenção',
						'img': ''
					},
					{
						'text': 'Todas as Soluções',
						'img': ''
					}
				]
			}] }"
			>
			<span id="btn-modal" class="cursor-pointer">&times;</span>
					<h1 class="p-2 text-center  text-black font-bold text-4xl">Converse com um especialista</h1>
					<h2 class="p-2 text-center text-black text-lg max-w-[100%] lg:max-w-[50%] m-auto">Conheça os benefícios que essa solução pode trazer para sua operação:</h2>
					<template x-for="(question, question_index) in questions">
						<div>
						<div x-bind:id="'bottom_question_'+question_index"></div>
							<div class="p-0 lg:p-6" x-show="question_index <= answer_counter" x-transition.duration.500ms>
								<h2 class="p-2 text-center uppercase text-black font-bold text-lg" x-text="question.question"></h2>
								<hr class="bg-[#FFB91D] h-1.5 w-full lg:w-80 m-auto">
								<div class="justify-center grid grid-cols-2 sm:flex sm:flex-1 sm:items-center  sm:flex-wrap">
									<template x-for="(option, option_index) in question.options">
										<label x-bind:for="'question_' + question_index + 'option_' + option_index" x-bind:id="'label_question_' + question_index + 'option_' + option_index" class="flex flex-col bg-white items-center justify-center cursor-pointer border shadow p-4 m-3 lg:m-5 lg:w-44 lg:h-44 rounded-lg hover:bg-[#ffb71d11]">
											<input  class="hidden" type="radio" :value="option.text" x-bind:name="'question_' + question_index" x-bind:id="'question_' + question_index + 'option_' + option_index" x-on:click="changeAnswer(question_index+1)">

											<img x-show="option.img != ''" x-bind:src="'<?php echo get_template_directory_uri(); ?>/src/images/modal-icons/'+ option.img" style="display:block; max-width:100%; width:initial; height:initial; background:none; opacity:1; border:0; margin:0 auto; padding:0" alt="" aria-hidden="true"></span>
										
											<p class="cursor-pointer text-center text-black text-xs lg:text-sm mt-2" x-text="option.text"></p>
										
										</label>
									</template>
								</div>
							</div>

						</div>
					</template>
					<div x-show="answer_counter == questions.length"  x-bind:id="'bottom_question_'+ questions.length" class="form form-center py-4" x-transition.duration.500ms>
						<?php echo do_shortcode('[contact-form-7 id="46" title="Contact form Modal"]'); ?>
					</div>
				</div>
				
			</div>
		</div>
