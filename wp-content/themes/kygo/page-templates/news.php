<?php
/*
 Template Name: News
 */
    get_header();

    if (have_posts()) :
        while (have_posts()) :
            the_post();
?>

<div class="news-container">
    <div class="news-header">

        <?php
            $args = array(
                'post_type' => 'post',
            );

            $the_query = new WP_Query($args);

            if ($the_query->have_posts()):
                while ($the_query->have_posts()):
                    $the_query->the_post();
        ?>

        <div class="news-header__left">
            <div class="news-header__image-deco"></div>
            <img class="news-header__image" src="<?= get_the_post_thumbnail_url(); ?>" alt="thumbnail">
        </div>

        <div class="news-header__right">
            <h2 class="news-header__title"><?php the_title(); ?></h2>
            <div class="news-header__description"><?php the_field('description') ?></div>
            <div class="news-header__date"><?php the_date(); ?></div>
            <a class="news-header__more btn-kygo" href="<?php the_permalink(); ?>">Read more</a>
        </div>

        <?php
                endwhile;
            endif;
        ?>

    </div>
</div>

<?php
        endwhile;
    endif;
?>

<?php get_footer(); ?>
