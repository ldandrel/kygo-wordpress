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
    $lastAlbum = get_field('last_album');
    $showLastAlbum = get_field('show-last-album');

    if( $showLastAlbum && $lastAlbum ):
        foreach( $lastAlbum as $p ):

        $image = get_field('picture', $p->ID);
        ?>

        <div class="news-header">
            <div class="news-header__left">
                <div class="news-header__image-container">
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
                <p class="news-header__description"><?= get_post_field('description', $p->ID)?></p>
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

    <?php endforeach; ?>
        <div class="album__buy">
            <a href="<?= get_post_field('buy', $p->ID)?>" target="_blank"><img src="<?= get_template_directory_uri() ?>/assets/img/buy.png" alt="buy"></a>
        </div>
</section>

<?php endif; ?>


<section class="tour">
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
                    if (have_rows('locations', $tour->ID)):
                        while (have_rows('locations', $tour->ID)):
                            the_row();
            var_dump(the_row());

            ?>

                <ul>
                    <li>
                        <h3><?= get_sub_field('city'); ?></h3>
                        <?= get_sub_field('date') ?>
                    </li>
                </ul>

                 <?php endwhile;
                    endif;
                endforeach;
             endif; ?>

                <a href="<?= get_permalink( get_page_by_title( 'tour' ) ) ?>" class="btn-kygo">
                    All dates
                </a>
        </div>


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
                            <img src="<?= $image['sizes']['large']; ?>" srcset="<?= $image['sizes']['medium']; ?> 320w" alt="<?=$image['alt']?>">
                        </div>
                        <?php endforeach; ?>
                    <?php endif; ?>

                  <div class="tour-photo-controls slider__controls">
                    <p><strong>01</strong> | <?= sprintf("%02d", count($images)) ?></p>
                    <div class="slider__prev"><img src="<?= get_template_directory_uri() ?>/assets/img/prev.svg" alt="prev"></div>
                    <div class="slider__timeline"><div class="slider__timeline--progress"></div></div>
                    <div class="slider__next"><img src="<?= get_template_directory_uri() ?>/assets/img/next.svg" alt="next"></div>
                </div>
            </div>
        </div>
    </div>
</section>




<section class="music">
    <div class="music-banner" style="background-image: url('<?= get_template_directory_uri() ?>/assets/img/kygo-music.jpeg')">
        <h2>Music.</h2>
        <p>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias consequatur magni, odit quam quis voluptatem. Culpa ipsa itaque, maiores molestias nemo repellendus sapiente sit soluta temporibus tenetur veritatis voluptas voluptatem.
        </p>

        <a href="<?= get_permalink( get_page_by_title( 'music' ) ) ?>" class="btn-kygo">
            See Kygo's music
        </a>
    </div>
    <div class="clear-both"></div>
</section>


<section class="news">
    <div class="news-title">
        <h2>News.</h2>
    </div>

    <div class="news-container">
        <div class="new news-container-main-new">
            <img src="<?= get_template_directory_uri() ?>/assets/img/main-new.jpeg" alt="new">
            <span class="new-date">
                14 OCT. 2017
            </span>
            <h3>Touring India in November</h3>
            <p>This will be Kygo's second visit to India after last year's success at the Sunburn Festival in Goa.</p>
        </div>


    </div>
</section>


<?php get_footer(); ?>