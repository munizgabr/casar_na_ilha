<?php
// Obtém o valor do campo repetidor
$slider = get_field('slider');

// Verifica se existem subcampos no campo repetidor
if ($slider) {?>
    <section class="swiper main-slider main-slider__controller">
        <div class="swiper-wrapper">
    <?php 
    // Loop pelos subcampos do campo repetidor
    foreach ($slider as $subfield) {
        // Obtém os valores dos subcampos individuais
        $image = $subfield['image'];
        $description = $subfield['description'];
        $button = $subfield['button'];?>
        <!-- slider -->
        
                <div class="swiper-slide" style="background: fixed no-repeat center center url(<?php echo $image['desktop_image'];?>); background-size: 100%;">
                    <div class="center main-slider__content">
                        <div class="description">
                            <?php echo strip_tags($description);?>
                        </div>
                        <a class="btn" href="<?php echo $button['link'];?>" title="<?php echo $button['text'];?>" target="_blank"><?php echo $button['text'];?></a>  
                    </div>
                </div>
    <?php } ?>
     </div>
     </section>
<?php } ?>