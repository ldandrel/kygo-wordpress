<?php

function kygo_script_enqueue() {

    wp_enqueue_style('style', get_template_directory_uri() . '/assets/css/app.min.css');
    wp_enqueue_script('js', get_template_directory_uri() . '/assets/js/bundle.js', array(), '1.0.0', true);

    wp_localize_script('js', 'ajaxurl', admin_url('admin-ajax.php') );




}

add_action( 'wp_enqueue_scripts', 'kygo_script_enqueue');


