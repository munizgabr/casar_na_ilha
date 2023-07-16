<?php
/**
 *
 * @package SOMA Dev
 * @since 0.0.1
 */
get_header(); ?>

<section class="center pt-4 mt-[80px] sm:mt-[90px]">
    <?php
    // Recuperar informações do post personalizado "fornecedor"
    $value = get_field('value');
    $local = get_field('local');
    $categories = get_the_terms(get_the_ID(), 'tipo');
    if ($categories) {
        $category_names = array(); // Inicializa um array vazio para armazenar os nomes das categorias
        foreach ($categories as $category) {
            $category_names[] = $category->name; // Adiciona o nome da categoria ao array
        }
        // Concatena os nomes das categorias usando " | "
        $category_list = implode(' | ', $category_names);
    }
    $city = $local['city'];
    $neighborhood = $local['neighborhood'];
    $location = $neighborhood . ', ' . $city;
    $capacity = get_field('capacity');
    $services = get_field('services');
    $gallery = get_field('gallery');
    $contact = get_field('contact');
    $insta = $contact['instagram'];
    $facebook = $contact['facebook'];
    $map = get_field('map');
    $whatsapp = $contact['whatsapp'];
    $ddd = $whatsapp['ddd']; // Recupera o valor do campo 'ddd'
    $number = $whatsapp['number']; // Recupera o valor do campo 'number'
    $message = $whatsapp['message']; // Recupera o valor do campo 'message'
    $encodedMessage = rawurlencode($message);
    $isMobile = wp_is_mobile();
    $whatsappLink = '';

    if ($isMobile) {
        // Link para o WhatsApp no dispositivo móvel
        $whatsappLink = "https://api.whatsapp.com/send?phone={$ddd}{$number}&text={$encodedMessage}";
    } else {
        // Link para o WhatsApp Web no desktop
        $whatsappLink = "https://web.whatsapp.com/send?phone={$ddd}{$number}&text={$encodedMessage}";
    }


    


    // Verifica se o post personalizado foi encontrado
    if (have_posts()) :
        while (have_posts()) : the_post();
    ?>
            <div class="text-white font-thin text-sm flex items-center">
                <img src="<?php bloginfo('template_url') ?>/src/images/category.png" alt="Categoria">
                <?php echo $category_list; ?>
            </div>
            <div class="grid sm:grid-cols-4 sm:gap-4 p-4 mt-4 bg-white rounded-md">
                <div class="sm:col-start-1 sm:col-span-2">
                    <img class="rounded-md" src="<?php bloginfo('template_url') ?>/src/images/casamento.jpeg" alt="">
                </div>
                <div class="p-4 sm:col-start-3 sm:col-end-5 sm:self-center flex flex-col gap-[5px]">
                    <span class="text-lg text-[#001C30] font-bold"><?php the_title(); ?></span>
                    <div>4* <?php echo !empty($location) ? $location : "Bairro, Cidade"; ?></div>
                    <div class="grid grid-cols-[20px_auto] gap-2">
                        <img src="<?php echo get_template_directory_uri(); ?>/src/images/coin.png" alt="Custo"> <?php echo $value; ?>
                    </div>
                    <div class="grid grid-cols-[20px_auto] gap-2">
                        <img src="<?php echo get_template_directory_uri(); ?>/src/images/capacity.png" alt="Capacidade"> <?php echo !empty($capacity) ? 'Até '.$capacity.' pessoas' : 'A partir de 100 pessoas'; ?>
                    </div>
                    <a href="https://www.instagram.com/<?php echo $insta;?>" title="Acesse o nosso instagram" target="_blank" class="grid grid-cols-[20px_auto] gap-2 items-center">
                        <img src="<?php echo get_template_directory_uri(); ?>/src/images/insta.png" alt="Custo"> Vem dar uma olhada no nosso insta!
                    </a>
                    <a href="<?php echo $facebook;?>" title="Acesse o nosso facebook" target="_blank" class="grid grid-cols-[20px_auto] gap-2 items-center">
                        <img src="<?php echo get_template_directory_uri(); ?>/src/images/facebook.png" alt="Custo"> Siga-nos no Facebook
                    </a>
                </div>
                <a href="<?php echo $whatsappLink; ?>" title="Chamar" class="flex font-bold text-white gap-4 py-2 px-4 rounded-md w-[150px] justify-center justify-self-center items-center bg-[#176B87] hover:bg-[#062029] sm:col-start-2 sm:col-span-2" target="_blank">
                    <img src="<?php bloginfo('template_url') ?>/src/images/whatsapp.png" alt="Peça seu orçamento"> Orçamento
                </a>
            </div>
            <div class="center py-4">
                <div class="mb-4">
                    <span class="font-bold text-lg text-white">Informação</span>
                    <p class="text-white"><?php echo !empty(get_the_content()) ? get_the_content() : 'Lorem ipsum dolor sit amet consectetur adipisicing elit. In sunt, velit dicta iure omnis est laborum quas repellendus nisi nesciunt cupiditate incidunt asperiores officia vitae laudantium quisquam dolorum animi! Veritatis!' ?></p>
                </div>
                <div class="mb-4">
                    <span class="font-bold text-lg text-white">Serviços</span>
                    <p class="text-white"><?php echo !empty($services) ? $services : 'Lorem ipsum dolor sit amet consectetur adipisicing elit. In sunt, velit dicta iure omnis est laborum quas repellendus nisi nesciunt cupiditate incidunt asperiores officia vitae laudantium quisquam dolorum animi! Veritatis!'?></p>
                </div>
                <!-- <div class="mb-4">
                    <span class="font-bold text-lg text-white">O que estão falando sobre a empresa?</span>
                    <p class="text-white"></p>
                </div> -->
            </div>
    <?php
        endwhile;
    endif;
    ?>
</section>
<?php echo !empty($map) ? '
<section>
<div class="center text-center">
    <span class="font-bold text-lg text-white">Como chegar?</span>
</div>
</section>
'.$map : '';?>

<?php get_footer();?>

