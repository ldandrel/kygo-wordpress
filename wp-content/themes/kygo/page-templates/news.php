<?php
/*
 Template Name: News
 */
    get_header();

?>

<div class="news-container">

    <?php
    $args = array(
        'post_type' => 'post',
        'posts_per_page' => 9,
        'orderby' => 'date',
        'order'   => 'DESC'

    );

    $query = new WP_Query($args);

    $i = 0;

    if ($query->have_posts()):
        while ($query->have_posts()):
            $i++;
            $query->the_post();
            if($i == 1): ?>


            <div class="news-header">
                <div class="news-header__left">
                    <div class="news-header__image-container">
                        <img class="news-header__image" src="<?= get_the_post_thumbnail_url(); ?>" alt="thumbnail">
                    </div>
                </div>

                <div class="news-header__right">
                    <h2 class="news-header__title"><?php the_title(); ?></h2>
                    <p class="news-header__description"><?php the_field('description') ?></p>
                    <div class="news-header__date date"><?= strftime("%d %b. %Y",strtotime(get_post()->post_date)); ?></div>
                    <a class="news-header__more btn-kygo" href="<?php the_permalink(); ?>">Read more</a>
                </div>
            </div>

            <ul class="news-list">
            <?php endif; ?>

                <li class="new__cards">
                    <div class="card" data-src="<?php the_permalink(); ?>">
                        <div class="new__img" style="background-image: url(<?= get_the_post_thumbnail_url(); ?>)"></div>
                        <div class="new__content">
                            <div class="new__date date"><?= strftime("%d %b. %Y",strtotime(get_post()->post_date)); ?></div>
                            <h3 class="new__title"><?php the_title(); ?></h3>
                            <p class="new__description"><?php the_field('description') ?></p>
                            <a class="new__more btn-kygo" href="<?php the_permalink(); ?>">Read more</a>
                        </div>
                    </div>
                </li>

            <?php if($i == 9): ?></ul><?php endif; ?>

        <?php
        endwhile;
    endif; ?>



    <div class="container2 loader-container">
        <div class="loader gradient-loader">
            <div class="inner-circle"></div>
        </div>
    </div>

</div>

<?php get_footer(); ?>