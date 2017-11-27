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

    $labels = array(
        'name'              => _x( 'Types of tour', 'taxonomy general name', 'type' ),
        'singular_name'     => _x( 'Type of tour', 'taxonomy singular name', 'type' ),
        'search_items'      => __( 'Search Types of tour', 'type' ),
        'all_items'         => __( 'All Types of tour', 'type' ),
        'parent_item'       => __( 'Parent Type of tour', 'type' ),
        'parent_item_colon' => __( 'Parent Type of tour:', 'type' ),
        'edit_item'         => __( 'Edit Type of tour', 'type' ),
        'update_item'       => __( 'Update Type of tour', 'type' ),
        'add_new_item'      => __( 'Add New Type of tour', 'type' ),
        'new_item_name'     => __( 'New Type Name of tour', 'type' ),
        'menu_name'         => __( 'Type of tour', 'type' ),
    );
    $args = array(
        'labels' => $labels,
        'description' => __( 'Type of tour', 'type' ),
        'hierarchical' => false,
        'public' => false,
        'publicly_queryable' => false,
        'show_ui' => true,
        'show_in_menu' => true,
        'show_in_nav_menus' => false,
        'show_in_rest' => false,
        'show_tagcloud' => false,
        'show_in_quick_edit' => true,
        'show_admin_column' => false,
    );
    register_taxonomy( 'type-tour', array('tour', ), $args );

}
add_action( 'init', 'kygo_custom_tours' );