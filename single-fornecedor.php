<?php
/**
 *
 * @package SOMA Dev
 * @since 0.0.1
 */
get_header();?>
<section class="center mt-[80px] sm:mt-[90px]">
    <div class="grid p-4 mt-4 bg-white rounded-md">
        <div>
            <img class="rounded-md"src="<?php bloginfo('template_url')?>/src/images/casamento.jpeg" alt="">
        </div>
        <div class="p-4">
            <span class="text-lg text-[#001C30] font-bold"><?php the_title(); ?></span>
            <div>4* <?php echo !empty($location) ? $location : "Bairro, Cidade"; ?></div>
            <div class="grid grid-cols-[20px_auto] gap-2">
            <img src="<?php echo get_template_directory_uri(); ?>/src/images/coin.png" alt="Custo"> <?php echo $value; ?>
            </div>
        </div>
        <a href="<?php echo get_post_type_archive_link('post');?>" title="Chamar" class="flex font-bold text-white gap-4 py-2 px-4 rounded-md w-[150px] justify-center justify-self-center items-center bg-[#176B87] hover:bg-[#062029]"><img src="<?php bloginfo('template_url')?>/src/images/whatsapp.png" alt=""> Orçamento</a>
    </div>
    <div class="center py-4">
        <div class="mb-4">
            <span class="font-bold text-lg text-white">Informação</span>
            <p class="text-white">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aperiam, doloremque. Distinctio earum possimus nisi, debitis voluptate voluptatibus. Consectetur magnam necessitatibus aut quos molestiae dolore vel qui laborum, rerum distinctio eius?</p>
        </div>
        <div class="mb-4">
            <span class="font-bold text-lg text-white">Serviços</span>
            <p class="text-white">Lorem ipsum dolor sit amet consectetur adipisicing elit. In sunt, velit dicta iure omnis est laborum quas repellendus nisi nesciunt cupiditate incidunt asperiores officia vitae laudantium quisquam dolorum animi! Veritatis!</p>
        </div>
        <div class="mb-4">
            <span class="font-bold text-lg text-white">O que estão falando sobre a empresa?</span>
            <p class="text-white">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt amet rem numquam, quae temporibus magni, enim deleniti illum provident, voluptates tenetur magnam nisi eaque reiciendis explicabo harum possimus rerum autem.</p>
        </div>
    </div>
</section>
<section>
    <div class="center text-center"><span class="font-bold text-lg text-white">Como chegar?</span></div>
    <iframe class="w-screen" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3771.114762580135!2d-45.348805224434145!3d-23.739277568153277!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94d2992e007a47a3%3A0x2210353f2faae63a!2sVila%20Salga!5e1!3m2!1spt-BR!2sbr!4v1688999905035!5m2!1spt-BR!2sbr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</section>
<?php get_footer(); ?>