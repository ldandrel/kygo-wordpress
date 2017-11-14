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

