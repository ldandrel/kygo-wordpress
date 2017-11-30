<?php

function kygo_script_enqueue() {

    wp_enqueue_style('style', get_template_directory_uri() . '/assets/css/app.css');
    wp_enqueue_style('font-awesome', 'https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css', array(), '4.7.1');

    wp_enqueue_script('js', get_template_directory_uri() . '/assets/js/app.js', array(), '1.0.0', true);
    wp_enqueue_script('js-navigation', get_template_directory_uri() . '/assets/js/navigation.js', array(), '1.0.0', true);
    wp_enqueue_script('js-parallax', get_template_directory_uri() . '/assets/js/parallax.js', array(), '1.0.0', true);
    wp_localize_script('js', 'ajaxurl', admin_url('admin-ajax.php') );

    if(is_front_page()){
        wp_enqueue_script('js-home-tour', get_template_directory_uri() . '/assets/js/home-tour.js', array(), '1.0.0', true);
        wp_enqueue_script('js-slider', get_template_directory_uri() . '/assets/js/slider.js', array(), '1.0.0', true);
    }

    if( is_page( 'Tour' ) ) {
        wp_enqueue_script('js-tour', get_template_directory_uri() . '/assets/js/tour.js', array(), '1.0.0', true);
        wp_enqueue_script('js-json', get_template_directory_uri() . '/assets/js/map.json', array(), '1.0.0', true);
        wp_enqueue_script('js-map', get_template_directory_uri() . '/assets/js/map.js', array(), '1.0.0', true);
    }

    if(is_page('News')){
        wp_enqueue_script('js-news', get_template_directory_uri() . '/assets/js/news.js', array(), '1.0.0', true);
    }

    if(is_page('Music')){
        wp_enqueue_script('js-music', get_template_directory_uri() . '/assets/js/music.js', array(), '1.0.0', true);
    }



}

add_action( 'wp_enqueue_scripts', 'kygo_script_enqueue');


