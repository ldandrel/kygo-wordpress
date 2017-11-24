<?php get_header();
    if (have_posts()):
        while (have_posts()) : the_post(); ?>

        <section class="single-new">


        </section>

    <?php the_title(); ?>
    <?php the_content(); ?>
    <?php echo get_the_date(); ?>

<?php   endwhile;
    endif; ?>



<?php get_footer(); ?>