<?php
	

function kygo_theme_setup() {
	
	add_theme_support('menus');
	

    register_nav_menus( array(
        'primary' => __( 'Header primary menu', 'kygo' ),
        'external'  => __( 'Header external link', 'kygo' ),
        'socials'  => __('Socials links footer', 'kygo')
    ) );

}

add_action('init', 'kygo_theme_setup');


function my_acf_init() {

    acf_update_setting('google_api_key', 'AIzaSyBtDyN2Hj47tU58XCgzAgct_Elb5C78ne4');
}

add_action('acf/init', 'my_acf_init');

add_theme_support( 'custom-logo' );

show_admin_bar(false);




/*
 * Enqueue scripts & styles
 */
require get_template_directory() . '/inc/enqueue_scripts.php';


/*
 * Register all custom post types
 */
require get_template_directory() . '/inc/song.php';
require get_template_directory() . '/inc/tours.php';


/*
 * AJAX
 */
require get_template_directory() . '/inc/ajax.php';

