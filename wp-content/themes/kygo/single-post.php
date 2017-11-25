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

            <div class="single-new__content">
                <?php the_content(); ?>
            </div>

            <div class="single-new__share">
                <span>Share this article on :<i class="fa fa-facebook" aria-hidden="true"></i><i class="fa fa-twitter" aria-hidden="true"></i></span>
            </div>

        </section>


<?php   endwhile;
    endif; ?>



<?php get_footer(); ?>