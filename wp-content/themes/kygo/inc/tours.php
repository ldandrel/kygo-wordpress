<?php
function kygo_custom_tours() {

    $post_type = "tour";


    $labels = array(
        'name'               => 'Tours',
        'singular_name'      => 'Tour',
        'all_items'          => 'All tours',
        'add_new'            => 'Add a tour',
        'add_new_item'       => 'Add a tour',
        'edit_item'          => "Edit tour",
        'new_item'           => 'New tour',
        'view_item'          => "View tour",
        'search_items'       => 'Find a tour',
        'not_found'          => 'No result',
        'not_found_in_trash' => 'No result',
        'parent_item_colon'  => 'Parent tour:',
        'menu_name'          => 'Tours',
    );

    $args = array(
        'labels'              => $labels,
        'hierarchical'        => false,
        'public'              => false,
        'show_ui'             => true,
        'show_in_menu'        => true,
        'menu_icon'           => 'dashicons-admin-site',
        'show_in_nav_menus'   => true,
        'publicly_queryable'  => true,
        'exclude_from_search' => false,
        'has_archive'         => false,
        'query_var'           => true,
        'can_export'          => true,
        'rewrite'             => array( 'slug' => $post_type )
    );

    register_post_type( 'tour', $args );

}
add_action( 'init', 'kygo_custom_tours' );