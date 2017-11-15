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
<h1>res</h1>
<section class="album">

<?php
    $lastAlbum = get_field('last_album');
    $showLastAlbum = get_field('show-last-album');

    if( $showLastAlbum && $lastAlbum ):
        foreach( $lastAlbum as $p ):

        $image = get_field('picture', $p->ID);

        if( !empty($image) ): ?>
            <div class="album__img">
                <img src="<?= $image['url']; ?>" alt="<?= $image['title']; ?>">
            </div>
        <?php endif; ?>


    
        <div class="album__title">
            <h2><?= get_the_title( $p->ID ); ?> is out now.</h2>
        </div>


        <div class="album__description">
            <p>
                <?= get_post_field('description', $p->ID)?>
            </p>
        </div>

        <div class="album__playlist">
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




    <?php endforeach; ?>
</section>
        <div class="album__buy">
            <a href="<?= get_post_field('buy', $p->ID)?>" target="_blank"><img src="<?= get_template_directory_uri() ?>/assets/img/buy.png" alt="buy"></a>
        </div>
<?php endif; ?>


<section class="tour">
        <div class="tour__title">
            <h2>Tour Date.</h2>
        </div>

        <div class="tour__list">

            <?php
            $args = array (
                'post_type'              => 'tour',
                'nopaging'               => false,
                'posts_per_page'         => '1',
                'order'                  => 'DESC',
                'orderby'                => 'date',
            );

            $query = new WP_Query( $args );
            $json = array();

            foreach ($query->posts as $tour){
                if( have_rows('locations', $tour->ID) ){
                    while ( have_rows('locations', $tour->ID)) {
                        the_row();
                        $city = get_sub_field('city');

                        array_push($json,[
                            'city' => $city['address'],
                            'date' => get_sub_field('date')
                        ]);

                    }
                }
            }

            $rand_keys = array_rand($json, 3);

            ?>

                <ul>
                    <?php   for($i = 0; $i < 3; $i++): ?>
                        <li>
                            <h3>
                               <?= $json[$rand_keys[$i]]['city'] ?>
                            </h3>
                            <?= $json[$rand_keys[$i]]['date'] ?>
                        </li>
                    <?php endfor; ?>
                </ul>

                <a href="<?= get_permalink( get_page_by_title( 'tour' ) ) ?>" class="btn-kygo">
                    All dates
                </a>
        </div>


        <div class="tour__slider slider">
                <div class="slider__wrapper">
                    <?php

                    $images = get_field('slider');
                    if( $images ):
                        $i = 0;
                        ?>
                        <?php foreach( $images as $image ):
                            $i++;
                        ?>

                            <img data-position="<?= $i - 1 ?>" class="<?= (($i == 1) ? 'is-active' : '') ?>" src="<?= $image['sizes']['large']; ?>" alt="<?=$image['alt']?>">
                        <?php endforeach; ?>
                    <?php endif; ?>
                </div>


              <div class="tour-photo-controls slider__controls">
                <p><strong>01</strong> | <?= sprintf("%02d", count($images)) ?></p>
                <div class="slider__prev"><img src="<?= get_template_directory_uri() ?>/assets/img/prev.svg" alt="prev"></div>
                <div class="slider__timeline"><div class="slider__timeline--progress"></div></div>
                <div class="slider__next"><img src="<?= get_template_directory_uri() ?>/assets/img/next.svg" alt="next"></div>



            </div>
        </div>
    </div>
</section>

<div class="tour-background"></div>



<section class="music">
    <div class="music-title">
        <h1>Music</h1>
    </div>

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