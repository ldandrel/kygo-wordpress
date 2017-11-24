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

add_action( 'wp_ajax_ajax_news', 'ajax_news' );
add_action( 'wp_ajax_nopriv_ajax_news', 'ajax_news' );


function ajax_news() {
    header('Content-Type: application/json');

    $args = array(
        'post_type' => 'post',
        'posts_per_page' => 9,
        'paged' => $_GET['page'],
        'orderby' => 'date',
        'order'   => 'DESC',
    );

    $query = new WP_Query($args);
    $json = array();

    foreach ($query->posts as $new){

        $id = $new->ID;

        array_push($json,[
            'title' => get_the_title($id),
            'description' => get_field('description', $id),
            'thumbmail' => get_the_post_thumbnail_url($id),
            'date' => strftime("%d %b. %Y",strtotime($new->post_date)),
            'link' => get_permalink($id)
        ]);

    }

    echo json_encode($json);

    die;

}

