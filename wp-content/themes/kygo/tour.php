<?php
/*
 Template Name: Tour
 */
?>

<?php get_header(); ?>


<?php /*if( have_rows('locations') ): ?>
    <div class="acf-map">
        <?php while ( have_rows('locations') ) : the_row();

            $location = get_sub_field('city');

            ?>
            <div class="marker" data-lat="<?php echo $location['lat']; ?>" data-lng="<?php echo $location['lng']; ?>">
                <h4><?php the_sub_field('title'); ?></h4>
                <p class="address"><?php echo $location['address']; ?></p>
                <p><?php the_sub_field('description'); ?></p>
            </div>
        <?php endwhile; ?>
    </div>
<?php endif; */ ?>


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

