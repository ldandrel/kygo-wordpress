<!doctype html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php wp_title() ?></title>

    <style>
        :root {
            --main-color: <?php the_field('main_color', 'option'); ?>;
            --main-btn-hover: <?php the_field('main_btn_hover', 'option'); ?>;
            --main-color-hover: <?php the_field('main_color_hover', 'option'); ?>;

        }
    </style>
    <?php wp_head(); ?>


</head>
<body>

<header class="<?= (get_field('alert_display', 'option') ? 'alert' : '') ?> header">

    <div class="header__alert-band">
        <p class="header__alert-text"><?php the_field('alert_message', 'option'); ?></p>
        <img src="<?= get_template_directory_uri() ?>/assets/img/alert-close.svg" class="header__alert-close">
    </div>

    <div class="header--desktop">
        <div class="header__left--desktop">
            <?php wp_nav_menu(array(
                'container' => '',
                'theme_location'=>'primary'
            )); ?>
        </div>

        <?php if ( function_exists( 'the_custom_logo' ) ) {
            the_custom_logo();
        } ?>

        <div class="header__right--desktop">
            <?php wp_nav_menu(array(
                'container' => '',
                'theme_location'=>'socials'
            ));

            wp_nav_menu(array(
                'container' => '',
                'theme_location'=>'language'
            ));

            wp_nav_menu(array(
                'container' => '',
                'theme_location'=>'external'
            )); ?>
        </div>


    </div>

    <div class="header--mobile">
        <div class="header__top">
            <?php
            if ( function_exists( 'the_custom_logo' ) ) {
                the_custom_logo();
            }

            wp_nav_menu(array(
                'container' => '',
                'theme_location'=>'language'
            ));
            ?>

            <div class="header__toggle-nav">
                <img src="<?= get_template_directory_uri() ?>/assets/img/burger.svg" alt="toggle-nav">
            </div>


        </div>

        <nav>
            <?php wp_nav_menu(array(
                'container' => '',
                'theme_location'=>'primary'
            ));

            wp_nav_menu(array(
                'container' => '',
                'theme_location'=>'external'
            ));

             wp_nav_menu(array(
                'container' => '',
                'theme_location'=>'socials'
            ));


            ?>
        </nav>
    </div>
</header>