<?php
$forms = get_sub_field('forms');
$title = get_sub_field('form-title');
?>

<section id="form" class="bg-gray-300 flex">
    <div data-wow-delay="0.5s" data-wow-duration="1s" class="form form-center py-4 wow bounceInUp">
        <div class="text-center font-bold text-black text-2xl font-din-bold mb-8 mt-5">
            <?php
                if (!empty($title)) {
                    echo $title;
                }
            ?>
        </div>
        <?php echo do_shortcode('[contact-form-7 id="' . $forms->ID . '" title="' . $forms->post_title . '"]'); ?>
    </div>
</section>