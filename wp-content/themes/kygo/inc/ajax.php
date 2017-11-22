<?php

add_action( 'wp_ajax_ajax_tour', 'ajax_tour' );
add_action( 'wp_ajax_nopriv_ajax_tour', 'ajax_tour' );

function ajax_tour() {

    $args = array (
        'post_type'              => 'tour',
        'nopaging'               => false,
        'posts_per_page'         => '1',
        'order'                  => 'DESC',
        'orderby'                => 'date',
    );

    $query = new WP_Query( $args );

    foreach ($query->posts as $tour){
        if( have_rows('locations', $tour->ID) ){
            $json = array();
            while ( have_rows('locations', $tour->ID)) {
                the_row();
                $city = get_sub_field('city');

                 array_push($json,[
                     'city' => $city['address'],
                     'date' => get_sub_field('date')
                 ]);

            }
            echo json_encode($json);

        }
    }

    die();
}


add_action( 'wp_ajax_ajax_search_tour', 'ajax_search_tour' );
add_action( 'wp_ajax_nopriv_ajax_search_tour', 'ajax_search_tour' );

function ajax_search_tour() {

    $args = array (
        'post_type' => 'tour',
        'post_status' => 'publish',
        'numberposts' => -1,
    );

    $query = new WP_Query( $args );

    foreach ($query->posts as $post){
        $args = array (
            'p' => $post->ID,
        );

        $query = new WP_Query( $args );


        var_dump($query);

    }


    die();
}



