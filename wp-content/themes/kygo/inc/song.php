<?php

function kygo_custom_songs() {

    $labels = array(
        'name' => __( 'Songs', 'Post Type General Name', 'songs' ),
        'singular_name' => __( 'Song', 'Post Type Singular Name', 'songs' ),
        'menu_name' => __( 'Songs', 'songs' ),
        'name_admin_bar' => __( 'Song', 'songs' ),
        'archives' => __( 'Song Archives', 'songs' ),
        'attributes' => __( 'Song Attributes', 'songs' ),
        'parent_item_colon' => __( 'Parent Song:', 'songs' ),
        'all_items' => __( 'All Songs', 'songs' ),
        'add_new_item' => __( 'Add New Song', 'songs' ),
        'add_new' => __( 'Add New', 'songs' ),
        'new_item' => __( 'New Song', 'songs' ),
        'edit_item' => __( 'Edit Song', 'songs' ),
        'update_item' => __( 'Update Song', 'songs' ),
        'view_item' => __( 'View Song', 'songs' ),
        'view_items' => __( 'View Songs', 'songs' ),
        'search_items' => __( 'Search Song', 'songs' ),
        'not_found' => __( 'Not found', 'songs' ),
        'not_found_in_trash' => __( 'Not found in Trash', 'songs' ),
        'featured_image' => __( 'Featured Image', 'songs' ),
        'set_featured_image' => __( 'Set featured image', 'songs' ),
        'remove_featured_image' => __( 'Remove featured image', 'songs' ),
        'use_featured_image' => __( 'Use as featured image', 'songs' ),
        'insert_into_item' => __( 'Insert into Song', 'songs' ),
        'uploaded_to_this_item' => __( 'Uploaded to this Song', 'songs' ),
        'items_list' => __( 'Songs list', 'songs' ),
        'items_list_navigation' => __( 'Songs list navigation', 'songs' ),
        'filter_items_list' => __( 'Filter Songs list', 'songs' ),
    );
    $args = array(
        'label' => __( 'Song', 'songs' ),
        'description' => __( 'Songs of Kigo', 'songs' ),
        'labels' => $labels,
        'menu_icon' => 'dashicons-list-view',
        'supports' => array(),
        'taxonomies' => array('type'),
        'public' => true,
        'show_ui' => true,
        'show_in_menu' => true,
        'menu_position' => 5,
        'show_in_admin_bar' => true,
        'show_in_nav_menus' => true,
        'can_export' => true,
        'has_archive' => false,
        'hierarchical' => false,
        'exclude_from_search' => false,
        'show_in_rest' => true,
        'publicly_queryable' => true,
        'capability_type' => 'post',
    );
    register_post_type( 'song', $args );

    $labels = array(
        'name'              => _x( 'Types', 'taxonomy general name', 'type' ),
        'singular_name'     => _x( 'Type', 'taxonomy singular name', 'type' ),
        'search_items'      => __( 'Search Types', 'type' ),
        'all_items'         => __( 'All Types', 'type' ),
        'parent_item'       => __( 'Parent Type', 'type' ),
        'parent_item_colon' => __( 'Parent Type:', 'type' ),
        'edit_item'         => __( 'Edit Type', 'type' ),
        'update_item'       => __( 'Update Type', 'type' ),
        'add_new_item'      => __( 'Add New Type', 'type' ),
        'new_item_name'     => __( 'New Type Name', 'type' ),
        'menu_name'         => __( 'Type', 'type' ),
    );
    $args = array(
        'labels' => $labels,
        'description' => __( 'Type of songs', 'type' ),
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
    register_taxonomy( 'type', array('song', ), $args );

}


add_action( 'init', 'kygo_custom_songs' );
