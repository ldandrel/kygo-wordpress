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
</section>


<?php get_footer();
