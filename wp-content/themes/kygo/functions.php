<?php


if( !function_exists( 'kygo_setup' ) ) {
    function kygo_setup()
    {
        show_admin_bar(false);
        // Load languages information
        load_theme_textdomain( 'mm', get_template_directory() . '/languages' );
        // Add default posts and comments RSS feed links to head
        add_theme_support( 'automatic-feed-links' );
        // Let WordPress manage the document title
        add_theme_support( 'title-tag' );
        // Enable support for Post Thumbnails on posts and pages
        add_theme_support( 'post-thumbnails' );
        // Enable support for custom logo
        add_theme_support( 'custom-logo' );

        //show_admin_bar(false);

        // Disallow file edit from WordPress admin
        define( 'DISALLOW_FILE_EDIT', true );
        // Disallow post revisions
        define( 'WP_POST_REVISIONS', false );
        // Hide head unnecessary tags
        remove_action( 'wp_head', 'wp_generator' );
        remove_action( 'wp_head', 'wlwmanifest_link' );
        remove_action( 'wp_head', 'rsd_link' );
        remove_action( 'wp_head', 'feed_links', 2 );
        remove_action( 'wp_head', 'feed_links_extra', 3 );
        remove_action( 'wp_head', 'parent_post_rel_link', 10 );
        remove_action( 'wp_head', 'start_post_rel_link', 10 );
        remove_action( 'wp_head', 'adjacent_posts_rel_link_wp_head', 10 );
        add_filter( 'xmlrpc_enabled', '__return_false' );
        // Remove added <p> & <br> tags in WordPress WYSIWYG
        remove_filter( 'the_content', 'wpautop' );
        remove_filter( 'the_excerpt', 'wpautop' );
        // Hide login errors
        add_filter( 'login_errors', create_function( '$a', "return null;" ) );
        // Add theme support for selective refresh for widgets
        add_theme_support( 'customize-selective-refresh-widgets' );
        // This theme uses wp_nav_menu() in one location
        register_nav_menus( array(
            'primary' => __( 'Header primary menu', 'kygo' ),
            'external'  => __( 'Header external link', 'kygo' ),
            'language'  => __( 'Header language switcher', 'kygo' ),
            'socials'  => __('Socials links', 'kygo'),
            'privacy'  => __('Privacy', 'kygo')

        ));
        /**
         * Switch default core markup for search form, comment form, and comments
         * to output valid HTML5
         */
        add_theme_support('html5', array(
            'search-form',
            'comment-form',
            'comment-list',
            'gallery',
            'caption',
        ));
    }
}
add_action( 'after_setup_theme', 'kygo_setup' );


function my_acf_init() {

    acf_update_setting('google_api_key', 'AIzaSyBtDyN2Hj47tU58XCgzAgct_Elb5C78ne4');
}

add_action('acf/init', 'my_acf_init');


/*
 * Enqueue scripts & styles
 */
require get_template_directory() . '/inc/enqueue_scripts.php';


/*
 * Register all custom post types
 */
require get_template_directory() . '/inc/song.php';
require get_template_directory() . '/inc/tours.php';
require get_template_directory() . '/inc/award.php';



/*
 * AJAX
 */
require get_template_directory() . '/inc/ajax.php';


/*
 * Theme Settings
 */
require get_template_directory() . '/inc/theme_settings.php';

/*
 * Translate
 */
require get_template_directory() . '/inc/language.php';



