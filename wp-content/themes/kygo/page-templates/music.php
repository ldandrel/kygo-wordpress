<?php
/*
 Template Name: Music
 */
get_header();

$songs = get_posts(array(
    'post_type' => 'song',
    'posts_per_page' => -1,
    'meta_key' => 'date',
    'orderby' => 'meta_value',
    'order' => 'DESC'
));

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

<div class="timeline">
    <?php
        $timeline = [];
        foreach($songs as $song) {
            array_push($timeline, get_field('date'));
            var_dump(get_field('date'));

        }
    ?>

    <ul>
        <li>2017</li>
        <ul>
            <li>SEP.</li>
        </ul>
    </ul>
</div>


<?php get_footer();
