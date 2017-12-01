<?php
/*
 Template Name: Music
 */
get_header();

$songs = get_posts(array(
    'post_type' => ['song', 'award'],
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




<section class="content-music">
<?php foreach ($songs as $song): ?>

    <?php $type = get_field('type', $song->ID); $taxonomy = get_term($type); ?>

    <?php if($taxonomy->slug == 'album'): $image = get_field('picture', $song->ID); ?>
    <div class="song album music-section">
        <div class="news-header">
            <div class="news-header__left">
                <div class="news-header__image-container">
                    <div class="new-header__left-backgroud m-object" data-parralax="5"></div>

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
                <h2 class="news-header__title"><?= get_the_title( $song->ID ); ?> <?php pll_e('is out now'); ?>.</h2>
                <p class="news-header__description last-new__description"><?= get_post_field('description', $song->ID)?></p>
                <div class="last-new__playlist">
                    <ol>
                        <?php
                        if( have_rows('tracks', $song->ID) ):
                            while( have_rows('tracks', $song->ID) ) : the_row();
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
    </div>
    <?php elseif($taxonomy->slug == 'single'): ?>
        <div class="single music-section">
            <div class="news-header">
                <p class="single__caption caption">Single</p>
                <div class="news-header__left">
                    <div class="news-header__image-container">
                        <div class="new-header__left-backgroud m-object" data-parralax="5"></div>

                        <?php if( !empty( get_field('picture', $song->ID)['url'] ) ): ?>
                            <div class="news-header__image">
                                <div>
                                    <img src="<?= get_field('picture', $song->ID)['url']; ?>" alt="<?= get_field('picture', $song->ID)['title']; ?>">
                                </div>
                            </div>
                        <?php endif; ?>
                        </div>
                    </div>
                    <div class="news-header__right">
                        <h2 class="news-header__title"><?= get_the_title( $song->ID ); ?></h2>
                    </div>
                </div>
            </div>
        </div>
    <?php elseif($taxonomy->slug == 'clip'): ?>
        <div class="clip music-section">
            <p class="clip__caption caption"><?php pll_e('clip'); ?></p>
            <h2 class="clip__title"><?= get_the_title($song->ID) ?></h2>
            <div class="clip__video"><?php the_field('url_clip', $song->ID); ?></div>
        </div>
    <?php elseif(is_null($taxonomy->slug)): //award ?>
        <div class="award music-section">
            <div class="award-content">
                <div class="award-content__title">
                    <?= get_field('result', $song->ID) ?>
                </div>
                <div class="award-content__award">
                   <?= get_the_title($song->ID); ?>
                </div>
            </div>
        </div>
    <?php endif; ?>


<?php endforeach; ?>
</section>

<?php get_footer();
