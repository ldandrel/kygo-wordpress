<?php get_header();
    if (have_posts()):
        while (have_posts()) : the_post(); ?>

        <section class="single-new">

            <div class="single-new__intro">
                <h2><?php the_title(); ?></h2>
                <p><?php the_field('description') ?></p>
                <div class="date"><?= strftime("%d %b. %Y",strtotime(get_post()->post_date)); ?></div>
            </div>

            <div class="single-new__img">
                <img src="<?= get_the_post_thumbnail_url(); ?>" alt="">
            </div>


        </section>

    <?php the_content(); ?>
    <?php echo get_the_date(); ?>

<?php   endwhile;
    endif; ?>



<?php get_footer(); ?>