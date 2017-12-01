<?php
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

