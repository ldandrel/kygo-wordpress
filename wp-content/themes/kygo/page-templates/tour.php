<?php
/*
 Template Name: Tour
 */
?>

<?php get_header();

$query = new WP_Query(array(
    'post_type' => 'tour',
    'post_status' => 'publish',
    'numberposts' => -1

));


?>

<section class="map-container">
    <img style="display:none;" id="marker" src="<?= get_template_directory_uri() ?>/assets/img/marker.svg" alt="">
    <img style="display:none;" id="marker-active" src="<?= get_template_directory_uri() ?>/assets/img/marker-active.svg" alt="">
    <div class="map">
        <?php foreach($query->posts as $post):?>
            <?php while ( have_rows('locations', $post->id) ) : the_row();
                 $location = get_sub_field('city'); ?>

                <div class="marker" style="display: none" data-lat="<?php echo $location['lat']; ?>" data-lng="<?php echo $location['lng']; ?>">
                        <h3><?php echo $location['address']; ?></h3>
                        <?php if( have_rows('show') ):
                            while ( have_rows('show') ) : the_row(); ?>
                                <div class="popup__date">
                                    <span>
                                        <strong><?php the_sub_field('theater'); ?></strong>
                                        <p><?php the_sub_field('date'); ?></p>
                                    </span>
                                    <?php if(!get_sub_field('sold_out')): ?>
                                        <a href="<?php the_sub_field('tickets'); ?>" class="btn-kygo">Buy Tickets</a>
                                    <?php else: ?>
                                        <span id="sold_out">Sold out</span>
                                    <?php endif; ?>
                                </div>
                                <?php endwhile;
                        endif; ?>

                </div>
            <?php endwhile; ?>
        <?php endforeach; ?>
    </div>
    <div class="popup-map">
        <div class="popup__close">
            <img src="<?= get_template_directory_uri() ?>/assets/img/close.svg" alt="close">
        </div>
        <div class="popup__content">
        </div>

    </div>
</section>



<?php wp_reset_query(); ?>


<section class="tour">

    <div class="tour__search">
        <div class="tour__search-title">
            <h2>See Kygo Live</h2>
        </div>
        <div class="tour__search-input">
            <input type="text" placeholder="Rechercher un concert">
        </div>
        <div class="tour__search-filter">
            <ul>
                <li class="active">All</li>
                <li>Concerts</li>
                <li>Festivals</li>
                <li>Showcases</li>
            </ul>
        </div>
    </div>

   <div class="tour__results">
       <div class="list__date">
           <span>Paris, France</span>
           <p>5 FEB. 2018</p>
           <p id="theater">Zénith</p>
           <a href="#" class="btn-kygo">Buy Tickets</a>
       </div>
       <div class="list__date">
           <span>New-York, United Stated</span>
           <p>10 FEB. 2018</p>
           <p id="theater">Lorem Ipsum</p>
           <a href="#" class="btn-kygo">Buy Tickets</a>
       </div>
       <div class="list__date">
           <span>Paris, France</span>
           <p>5 FEB. 2018</p>
           <p id="theater">Zénith</p>
           <a href="#" class="btn-kygo">Buy Tickets</a>
       </div>
       <div class="list__date">
           <span>Paris, France</span>
           <p>5 FEB. 2018</p>
           <p id="theater">Zénith</p>
           <a href="#" class="btn-kygo">Buy Tickets</a>
       </div>
       <div class="list__date">
           <span>Paris, France</span>
           <p>5 FEB. 2018</p>
           <p id="theater">Zénith</p>
           <a href="#" class="btn-kygo">Buy Tickets</a>
       </div>

   </div>
</section>


<?php get_footer() ?>
