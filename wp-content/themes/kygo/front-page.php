<?php get_header(); ?>






<section class="landing">
    <div class="landing__title">
        <h1>Kygo</h1>
    </div>

    <div class="landing__circle circle"></div>

    <div class="landing__portrait">
        <img src="<?= get_template_directory_uri() ?>/assets/img/portrait_kygo.png" alt="portrait-kygo">
    </div>

    <div class="landing__scroll">
        <div class="landing__scrollCircle circle"></div>
        <div class="landing__scrollMessage">
            Scroll
            <img src="<?= get_template_directory_uri() ?>/assets/img/scroll.svg" alt="scroll">
        </div>
    </div>
</section>


<section class="last-new">

<?php
    if(get_field('display-last-news')){
        $last = get_field('songs');
    } else {
        $last = get_posts(array(
            'post_type' => 'song',
            'posts_per_page' => 1,
            'meta_key' => 'date',
            'orderby' => 'meta_value',
            'order' => 'DESC'
        ));
    }




    if($last):
        foreach( $last as $p ):
            if(get_field('selection-type', $p->ID) == 'Album'):

        $image = get_field('picture', $p->ID);
        ?>

        <div class="news-header">
            <div class="news-header__left">
                <div class="news-header__image-container">
                    <div class="new-header__left-backgroud m-object m-object--parallax"></div>

                    <?php if( !empty($image) ): ?>
                        <div class="news-header__image">
                            <div>
                                <img src="<?= $image['url']; ?>" alt="<?= $image['title']; ?>">
                            </div>
                        </div>
                    <?php endif; ?>
                </div>
            </div>

            <div class="news-header__right">
                <h2 class="news-header__title"><?= get_the_title( $p->ID ); ?> is out now.</h2>
                <p class="news-header__description last-new__description"><?= get_post_field('description', $p->ID)?></p>
                <div class="last-new__playlist">
                    <ol>
                        <?php
                        if( have_rows('tracks', $p->ID) ):
                            while( have_rows('tracks', $p->ID) ) : the_row();
                                $title = get_sub_field('title');
                                ?>
                                <li>
                                    <?=$title?>
                                </li>
                                <?php
                            endwhile;
                        endif;
                        ?>
                    </ol>
                </div>
            </div>
        </div>

        <div class="album__buy">
            <a href="<?= get_post_field('buy', $p->ID)?>" target="_blank"><img src="<?= get_template_directory_uri() ?>/assets/img/buy.png" alt="buy"></a>
        </div>
            <?php endif; ?>
        <?php endforeach; ?>
<?php endif; ?>
</section>


<section class="tour-homepage">
    <div class="tour__right">
        <div class="tour__slider">
            <div class="slider">
                <?php

                $images = get_field('slider');
                if( $images ):
                    $i = 0;
                    ?>
                    <?php foreach( $images as $image ):
                    $i++;

                    ?>
                    <div id="slider-<?= $i - 1 ?>" class="slider__wrapper <?= (($i == 1) ? 'active active-next' : '')?><?=(($i == 2) ? 'next' : '') ?><?= (($i == count($images)) ? 'prev' : '') ?>">
                        <img src="<?= $image['url']; ?>" alt="<?=$image['alt']?>">
                    </div>
                <?php endforeach; ?>
                <?php endif; ?>
                <div class="slider-backgroud m-object m-object--parallax">

                <div class="tour-photo-controls slider__controls">
                    <span class="slider__controls-number"><strong>01 &nbsp</strong>|&nbsp<?= sprintf("%02d", count($images)) ?></span>
                    <span class="slider__controls-right">
                        <div class="slider__prev"><img src="<?= get_template_directory_uri() ?>/assets/img/prev.svg" alt="prev"></div>
                        <div class="slider__timeline"><div class="slider__timeline--progress"></div></div>
                        <div class="slider__next"><img src="<?= get_template_directory_uri() ?>/assets/img/next.svg" alt="next"></div>
                    </span>
                </div>
                </div>
            </div>
        </div>
    </div>
    <div class="tour__left">
        <div class="tour__title">
            <h2>Tour Date.</h2>
        </div>

        <div class="tour__list">

            <?php
            $args = array (
                'post_type'              => 'tour',
                'posts_per_page'         => '3',
                'orderby'                => 'rand'

            );

            $query = new WP_Query( $args );

            if($query->posts):
                foreach ($query->posts as $tour):
                        while (have_rows('locations', $tour->ID)): the_row(); ?>

                <ul>
                    <li>
                        <span><?php the_sub_field('city');?></span>
                        <?php if( have_rows('show') ):
                            while ( have_rows('show') ) : the_row(); ?>
                                 <p class="date"><?= strftime("%d %b. %Y",strtotime(get_sub_field('date', false))); ?></p>
                             <?php endwhile;
                        endif; ?>
                    </li>
                </ul>

                 <?php endwhile;
                endforeach; ?>
                <a href="<?= get_permalink( get_page_by_title( 'tour' ) ) ?>" class="btn-kygo">
                    All dates
                </a>
             <?php endif; ?>
        </div>
    </div>
</section>




<section class="music">
    <div class="music__banner" style="background-image: url('<?= get_template_directory_uri() ?>/assets/img/kygo-music.jpeg')">
        <div class="music-backgroud m-object m-object--parallax-inverse"></div>
        <div class="music__content">
            <h2>Music.</h2>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias consequatur magni, odit quam quis voluptatem. Culpa ipsa itaque, maiores molestias nemo repellendus sapiente sit soluta temporibus tenetur veritatis voluptas voluptatem.
            </p>

            <div class="music__see-more">
                <a href="<?= get_permalink( get_page_by_title( 'music' ) ) ?>" class="btn-kygo">
                    See Kygo's music
                </a>
            </div>
        </div>
    </div>
</section>


    <section class="news news-container">

        <div class="news-title">
            <h2>News.</h2>
        </div>

        <div class="news-list">
            <?php

            $args = array(
                'post_type' => 'post',
                'posts_per_page' => 3,
                'orderby' => 'date',
                'order'   => 'DESC'
            );


            $query = new WP_Query($args);

            if ($query->have_posts()):
                while ($query->have_posts()):
                    $query->the_post(); ?>

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

                    <?php
                endwhile;
            endif; ?>
        </div>

        <div class="news__more">
            <a href="<?= get_site_url() ?>/news" class="simliar-articles__more-btn btn-kygo">See more news</a>
        </div>
    </section>


<?php get_footer(); ?>