<?php
function kygo_custom_albums() {

    $post_type = "album";


    $labels = array(
        'name'               => 'Albums',
        'singular_name'      => 'Album',
        'all_items'          => 'All albums',
        'add_new'            => 'Add an album',
        'add_new_item'       => 'Add an album',
        'edit_item'          => "Edit album",
        'new_item'           => 'New album',
        'view_item'          => "View album",
        'search_items'       => 'Find an album',
        'not_found'          => 'No result',
        'not_found_in_trash' => 'No result',
        'parent_item_colon'  => 'Parent album:',
        'menu_name'          => 'Albums',
    );

    $args = array(
        'labels'              => $labels,
        'hierarchical'        => false,
        'public'              => false,
        'show_ui'             => true,
        'show_in_menu'        => true,
        'menu_icon'           => 'dashicons-format-audio',
        'show_in_nav_menus'   => true,
        'publicly_queryable'  => true,
        'exclude_from_search' => false,
        'has_archive'         => false,
        'query_var'           => true,
        'can_export'          => true,
        'rewrite'             => array( 'slug' => $post_type )
    );

    register_post_type( 'album', $args );

}
add_action( 'init', 'kygo_custom_albums' );