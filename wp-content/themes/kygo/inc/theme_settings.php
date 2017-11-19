<?php


if( function_exists('acf_add_options_page') ) {

    acf_add_options_page(array(
        'page_title' 	=> 'Option du thème',
        'menu_title'	=> 'Thème options',
        'menu_slug' 	=> 'theme-general-settings',
        'capability'	=> 'edit_private_posts',
        'redirect'		=> false,
        'position' => 30
    ));
}
