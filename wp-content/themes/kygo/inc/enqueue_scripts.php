<?php

function kygo_script_enqueue() {

    wp_enqueue_style('style', get_template_directory_uri() . '/assets/css/app.css');
    wp_enqueue_style('font-awesome', 'https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css', array(), '4.7.1');

    wp_enqueue_script('js', get_template_directory_uri() . '/assets/js/app.min.js', array(), '1.0.0', true);
    wp_enqueue_script('js-navigation', get_template_directory_uri() . '/assets/js/navigation.min.js', array(), '1.0.0', true);
    wp_enqueue_script('js-parallax', get_template_directory_uri() . '/assets/js/parallax.min.js', array(), '1.0.0', true);
    wp_localize_script('js', 'ajaxurl', admin_url('admin-ajax.php') );

    if(is_front_page()){
        wp_enqueue_script('js-home-tour', get_template_directory_uri() . '/assets/js/home-tour.min.js', array(), '1.0.0', true);
        wp_enqueue_script('js-slider', get_template_directory_uri() . '/assets/js/slider.min.js', array(), '1.0.0', true);
    }

    if( is_page( 'Tour' ) ) {
        $query = new WP_Query(array(
            'post_type' => 'tour',
            'post_status' => 'publish',
            'numberposts' => -1
        ));

        $json = array();

        foreach ($query->posts as $tour){

            $id = $tour->ID;



            while ( have_rows('locations', $id) ) {
                the_row();
                $city = get_sub_field('city');
                $type = get_sub_field('type');
                $show = array();

                if (have_rows('show')) {
                    while (have_rows('show')) {
                        the_row();
                        array_push($show, [
                            'city' => $city,
                            'date' => get_sub_field('date'),
                            'theather' => get_sub_field('theater'),
                            'sold_out' => get_sub_field('sold_out'),
                            'link' => get_sub_field('tickets'),
                        ]);


                    }
                }


                array_push($json, [
                    'city' => $city,
                    'show' => $show,
                    'type' => get_term($type)->slug
                ]);
            }

        }

        wp_enqueue_script('js-tour', get_template_directory_uri() . '/assets/js/tour.min.js', array(), '1.0.0', true);
        wp_localize_script('js-tour', 'data', json_encode($json));

        wp_enqueue_script('js-json', get_template_directory_uri() . '/assets/js/map.json', array(), '1.0.0', true);
        wp_enqueue_script('js-map', get_template_directory_uri() . '/assets/js/map.min.js', array(), '1.0.0', true);
    }

    if(is_page('News')){
        wp_enqueue_script('js-news', get_template_directory_uri() . '/assets/js/news.min.js', array(), '1.0.0', true);
    }





}

add_action( 'wp_enqueue_scripts', 'kygo_script_enqueue');



