<?php
/*
 Template Name: Music
 */
get_header();

?>

<section class="header-music">
    <div class="header-music__img">
        <img class="news-header__image" src="<?= get_the_post_thumbnail_url(); ?>" alt="kygo">
    </div>
    <div class="header-music__content">
        <div>
            <h2><?php the_field('artist_name', 'option'); ?></h2>
            <p><?php the_field('artist_description', 'option'); ?></p>
        </div>
    </div>
</section>

<div class="theme">

</div>


<?php get_footer();
