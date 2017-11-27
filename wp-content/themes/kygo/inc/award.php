<?php

function kygo_custom_award() {

    $labels = array(
        'name' => __( 'Awards', 'Post Type General Name', 'awards' ),
        'singular_name' => __( 'Award', 'Post Type Singular Name', 'awards' ),
        'menu_name' => __( 'Awards', 'awards' ),
        'name_admin_bar' => __( 'Award', 'awards' ),
        'archives' => __( 'Award Archives', 'awards' ),
        'attributes' => __( 'Award Attributes', 'awards' ),
        'parent_item_colon' => __( 'Parent Award:', 'awards' ),
        'all_items' => __( 'All Awards', 'awards' ),
        'add_new_item' => __( 'Add New Award', 'awards' ),
        'add_new' => __( 'Add New', 'awards' ),
        'new_item' => __( 'New Award', 'awards' ),
        'edit_item' => __( 'Edit Award', 'awards' ),
        'update_item' => __( 'Update Award', 'awards' ),
        'view_item' => __( 'View Award', 'awards' ),
        'view_items' => __( 'View Awards', 'awards' ),
        'search_items' => __( 'Search Award', 'awards' ),
        'not_found' => __( 'Not found', 'awards' ),
        'not_found_in_trash' => __( 'Not found in Trash', 'awards' ),
        'featured_image' => __( 'Featured Image', 'awards' ),
        'set_featured_image' => __( 'Set featured image', 'awards' ),
        'remove_featured_image' => __( 'Remove featured image', 'awards' ),
        'use_featured_image' => __( 'Use as featured image', 'awards' ),
        'insert_into_item' => __( 'Insert into Award', 'awards' ),
        'uploaded_to_this_item' => __( 'Uploaded to this Award', 'awards' ),
        'items_list' => __( 'Awards list', 'awards' ),
        'items_list_navigation' => __( 'Awards list navigation', 'awards' ),
        'filter_items_list' => __( 'Filter Awards list', 'awards' ),
    );
    $args = array(
        'label' => __( 'Award', 'awards' ),
        'description' => __( 'Award', 'awards' ),
        'labels' => $labels,
        'menu_icon' => 'dashicons-editor-quote',
        'supports' => array(),
        'taxonomies' => array(),
        'public' => false,
        'show_ui' => true,
        'show_in_menu' => true,
        'show_in_admin_bar' => true,
        'show_in_nav_menus' => true,
        'can_export' => false,
        'has_archive' => false,
        'hierarchical' => false,
        'exclude_from_search' => true,
        'show_in_rest' => false,
        'publicly_queryable' => false,
        'capability_type' => 'post',
    );
    register_post_type( 'award', $args );

}


add_action( 'init', 'kygo_custom_award' );
