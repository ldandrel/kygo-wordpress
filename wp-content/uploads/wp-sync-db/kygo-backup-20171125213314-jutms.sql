# WordPress MySQL database migration
#
# Generated: Saturday 25. November 2017 21:33 UTC
# Hostname: localhost
# Database: `kygo`
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `kygomusic_commentmeta`
#

DROP TABLE IF EXISTS `kygomusic_commentmeta`;


#
# Table structure of table `kygomusic_commentmeta`
#

CREATE TABLE `kygomusic_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `kygomusic_commentmeta`
#

#
# End of data contents of table `kygomusic_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `kygomusic_comments`
#

DROP TABLE IF EXISTS `kygomusic_comments`;


#
# Table structure of table `kygomusic_comments`
#

CREATE TABLE `kygomusic_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `kygomusic_comments`
#

#
# End of data contents of table `kygomusic_comments`
# --------------------------------------------------------



#
# Delete any existing table `kygomusic_links`
#

DROP TABLE IF EXISTS `kygomusic_links`;


#
# Table structure of table `kygomusic_links`
#

CREATE TABLE `kygomusic_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `kygomusic_links`
#

#
# End of data contents of table `kygomusic_links`
# --------------------------------------------------------



#
# Delete any existing table `kygomusic_options`
#

DROP TABLE IF EXISTS `kygomusic_options`;


#
# Table structure of table `kygomusic_options`
#

CREATE TABLE `kygomusic_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=582 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `kygomusic_options`
#
INSERT INTO `kygomusic_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/h3/kygo_wordpress', 'yes'),
(2, 'home', 'http://localhost:8888/h3/kygo_wordpress', 'yes'),
(3, 'blogname', 'Kygo', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'luc.dandrel@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '7', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:1;s:30:"advanced-custom-fields/acf.php";i:2;s:25:"menu-icons/menu-icons.php";i:3;s:25:"wp-sync-db/wp-sync-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'kygo', 'yes'),
(41, 'stylesheet', 'kygo', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:27:"wp-super-cache/wp-cache.php";s:22:"wpsupercache_uninstall";}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '65', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'kygomusic_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'fr_FR', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `kygomusic_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'cron', 'a:5:{i:1511651273;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1511652094;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1511652199;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1511693949;a:1:{s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1510615408;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(139, 'can_compress_scripts', '1', 'no'),
(140, 'current_theme', 'Kygo Theme', 'yes'),
(141, 'theme_mods_kygo', 'a:5:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:4:{s:7:"primary";i:9;s:8:"external";i:16;s:8:"language";i:18;s:7:"socials";i:10;}s:11:"custom_logo";i:48;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1511090186;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(142, 'theme_switched', '', 'yes'),
(165, 'recently_activated', 'a:3:{s:21:"polylang/polylang.php";i:1511645569;s:33:"w3-total-cache/w3-total-cache.php";i:1511089254;s:27:"wp-super-cache/wp-cache.php";i:1511087062;}', 'yes'),
(169, 'acf_version', '5.6.3', 'yes'),
(174, 'polylang', 'a:14:{s:7:"browser";b:0;s:7:"rewrite";i:1;s:12:"hide_default";i:1;s:10:"force_lang";i:1;s:13:"redirect_lang";i:1;s:13:"media_support";i:1;s:9:"uninstall";i:0;s:4:"sync";a:0:{}s:10:"post_types";a:1:{i:0;s:4:"song";}s:10:"taxonomies";a:0:{}s:7:"domains";a:0:{}s:7:"version";s:5:"2.2.5";s:12:"default_lang";s:2:"en";s:9:"nav_menus";a:1:{s:4:"kygo";a:4:{s:7:"primary";a:2:{s:2:"fr";i:9;s:2:"en";i:15;}s:8:"external";a:2:{s:2:"fr";i:17;s:2:"en";i:16;}s:8:"language";a:2:{s:2:"fr";i:18;s:2:"en";i:18;}s:7:"socials";a:2:{s:2:"fr";i:10;s:2:"en";i:10;}}}}', 'yes'),
(175, 'polylang_wpml_strings', 'a:0:{}', 'yes'),
(176, 'widget_polylang', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(185, 'category_children', 'a:0:{}', 'yes'),
(207, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(220, 'menu-icons', 'a:2:{s:6:"global";a:1:{s:10:"icon_types";a:1:{i:0;s:3:"svg";}}s:7:"menu_10";a:6:{s:10:"hide_label";s:1:"1";s:8:"position";s:6:"before";s:14:"vertical_align";s:6:"middle";s:9:"font_size";s:3:"1.2";s:9:"svg_width";s:1:"1";s:10:"image_size";s:9:"thumbnail";}}', 'yes'),
(258, 'wpmdb_settings', 'a:12:{s:3:"key";s:40:"dCl5PuAMePga099Yr63ISLPQMYd1Em8h9tf5N+5T";s:10:"allow_pull";b:0;s:10:"allow_push";b:0;s:8:"profiles";a:1:{i:0;a:18:{s:13:"save_computer";s:1:"0";s:9:"gzip_file";s:1:"1";s:13:"replace_guids";s:1:"1";s:12:"exclude_spam";s:1:"0";s:19:"keep_active_plugins";s:1:"0";s:13:"create_backup";s:1:"0";s:18:"exclude_post_types";s:1:"0";s:18:"exclude_transients";s:1:"1";s:25:"compatibility_older_mysql";s:1:"0";s:19:"import_find_replace";s:1:"0";s:6:"action";s:8:"savefile";s:15:"connection_info";s:0:"";s:11:"replace_old";a:2:{i:1;s:34:"//localhost:8888/h3/kygo_wordpress";i:2;s:64:"/Users/yoann-baunach/Documents/Development/h3/kygo_wordpress-new";}s:11:"replace_new";a:2:{i:1;s:34:"//localhost:8888/h3/kygo_wordpress";i:2;s:60:"/Users/yoann-baunach/Documents/Development/h3/kygo_wordpress";}s:22:"save_migration_profile";s:1:"1";s:29:"save_migration_profile_option";s:1:"0";s:18:"create_new_profile";s:0:"";s:4:"name";s:4:"Prod";}}s:7:"licence";s:0:"";s:10:"verify_ssl";b:0;s:17:"whitelist_plugins";a:0:{}s:11:"max_request";i:1048576;s:22:"delay_between_requests";i:0;s:18:"prog_tables_hidden";b:1;s:21:"pause_before_finalize";b:0;s:28:"compatibility_plugin_version";s:3:"1.1";}', 'no'),
(259, 'wpmdb_schema_version', '1', 'no'),
(260, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1510704426;}', 'no'),
(261, 'wpmdb_state_timeout_5a0b851726601', '1510790812', 'no'),
(262, 'wpmdb_state_5a0b851726601', 'a:22:{s:6:"action";s:19:"wpmdb_migrate_table";s:6:"intent";s:8:"savefile";s:3:"url";s:0:"";s:9:"form_data";s:455:"action=savefile&save_computer=1&gzip_file=1&connection_info=&replace_old%5B%5D=&replace_new%5B%5D=&replace_old%5B%5D=%2F%2Fkygo.local&replace_new%5B%5D=%2F%2Fkygo.lucdandrel.com&replace_old%5B%5D=%2FUsers%2Flucdandrel%2FDesktop%2Fkygo-new&replace_new%5B%5D=%2Fvar%2Fwww%2Fvhosts%2Flucdandrel.com%2Fkygo.lucdandrel.com&replace_guids=1&exclude_transients=1&save_migration_profile=1&save_migration_profile_option=new&create_new_profile=Prod&remote_json_data=";s:5:"stage";s:7:"migrate";s:5:"nonce";s:10:"94813f78d8";s:12:"site_details";a:1:{s:5:"local";a:10:{s:12:"is_multisite";s:5:"false";s:8:"site_url";s:39:"http://localhost:8888/h3/kygo_wordpress";s:8:"home_url";s:39:"http://localhost:8888/h3/kygo_wordpress";s:6:"prefix";s:10:"kygomusic_";s:15:"uploads_baseurl";s:59:"http://localhost:8888/h3/kygo_wordpress/wp-content/uploads/";s:7:"uploads";a:6:{s:4:"path";s:91:"/Users/yoann-baunach/Documents/Development/h3/kygo_wordpress-new/wp-content/uploads/2017/11";s:3:"url";s:66:"http://localhost:8888/h3/kygo_wordpress/wp-content/uploads/2017/11";s:6:"subdir";s:8:"/2017/11";s:7:"basedir";s:83:"/Users/yoann-baunach/Documents/Development/h3/kygo_wordpress-new/wp-content/uploads";s:7:"baseurl";s:58:"http://localhost:8888/h3/kygo_wordpress/wp-content/uploads";s:5:"error";b:0;}s:11:"uploads_dir";s:33:"wp-content/uploads/wp-migrate-db/";s:8:"subsites";a:0:{}s:13:"subsites_info";a:0:{}s:20:"is_subdomain_install";s:5:"false";}}s:4:"code";i:200;s:7:"message";s:2:"OK";s:4:"body";s:11:"{"error":0}";s:9:"dump_path";s:138:"/Users/yoann-baunach/Documents/Development/h3/kygo_wordpress-new/wp-content/uploads/wp-migrate-db/kygo-migrate-20171115000647-qejdr.sql.gz";s:13:"dump_filename";s:33:"kygo-migrate-20171115000647-qejdr";s:8:"dump_url";s:113:"http://localhost:8888/h3/kygo_wordpress/wp-content/uploads/wp-migrate-db/kygo-migrate-20171115000647-qejdr.sql.gz";s:10:"db_version";s:6:"5.6.35";s:8:"site_url";s:39:"http://localhost:8888/h3/kygo_wordpress";s:18:"find_replace_pairs";a:2:{s:11:"replace_old";a:2:{i:1;s:34:"//localhost:8888/h3/kygo_wordpress";i:2;s:64:"/Users/yoann-baunach/Documents/Development/h3/kygo_wordpress-new";}s:11:"replace_new";a:2:{i:1;s:34:"//localhost:8888/h3/kygo_wordpress";i:2;s:60:"/Users/yoann-baunach/Documents/Development/h3/kygo_wordpress";}}s:18:"migration_state_id";s:13:"5a0b851726601";s:5:"table";s:15:"kygomusic_users";s:11:"current_row";s:0:"";s:10:"last_table";s:1:"1";s:12:"primary_keys";s:0:"";s:4:"gzip";s:1:"0";}', 'no'),
(263, 'wpmdb_state_timeout_5a0b852a58b0c', '1510790831', 'no'),
(264, 'wpmdb_state_5a0b852a58b0c', 'a:22:{s:6:"action";s:19:"wpmdb_migrate_table";s:6:"intent";s:8:"savefile";s:3:"url";s:0:"";s:9:"form_data";s:433:"action=savefile&gzip_file=1&connection_info=&replace_old%5B%5D=&replace_new%5B%5D=&replace_old%5B%5D=%2F%2Fkygo.local&replace_new%5B%5D=%2F%2Fkygo.lucdandrel.com&replace_old%5B%5D=%2FUsers%2Flucdandrel%2FDesktop%2Fkygo-new&replace_new%5B%5D=%2Fvar%2Fwww%2Fvhosts%2Flucdandrel.com%2Fkygo.lucdandrel.com&replace_guids=1&exclude_transients=1&save_migration_profile=1&save_migration_profile_option=0&create_new_profile=&remote_json_data=";s:5:"stage";s:7:"migrate";s:5:"nonce";s:10:"94813f78d8";s:12:"site_details";a:1:{s:5:"local";a:10:{s:12:"is_multisite";s:5:"false";s:8:"site_url";s:39:"http://localhost:8888/h3/kygo_wordpress";s:8:"home_url";s:39:"http://localhost:8888/h3/kygo_wordpress";s:6:"prefix";s:10:"kygomusic_";s:15:"uploads_baseurl";s:59:"http://localhost:8888/h3/kygo_wordpress/wp-content/uploads/";s:7:"uploads";a:6:{s:4:"path";s:91:"/Users/yoann-baunach/Documents/Development/h3/kygo_wordpress-new/wp-content/uploads/2017/11";s:3:"url";s:66:"http://localhost:8888/h3/kygo_wordpress/wp-content/uploads/2017/11";s:6:"subdir";s:8:"/2017/11";s:7:"basedir";s:83:"/Users/yoann-baunach/Documents/Development/h3/kygo_wordpress-new/wp-content/uploads";s:7:"baseurl";s:58:"http://localhost:8888/h3/kygo_wordpress/wp-content/uploads";s:5:"error";b:0;}s:11:"uploads_dir";s:33:"wp-content/uploads/wp-migrate-db/";s:8:"subsites";a:0:{}s:13:"subsites_info";a:0:{}s:20:"is_subdomain_install";s:5:"false";}}s:4:"code";i:200;s:7:"message";s:2:"OK";s:4:"body";s:11:"{"error":0}";s:9:"dump_path";s:138:"/Users/yoann-baunach/Documents/Development/h3/kygo_wordpress-new/wp-content/uploads/wp-migrate-db/kygo-migrate-20171115000706-rbewy.sql.gz";s:13:"dump_filename";s:33:"kygo-migrate-20171115000706-rbewy";s:8:"dump_url";s:113:"http://localhost:8888/h3/kygo_wordpress/wp-content/uploads/wp-migrate-db/kygo-migrate-20171115000706-rbewy.sql.gz";s:10:"db_version";s:6:"5.6.35";s:8:"site_url";s:39:"http://localhost:8888/h3/kygo_wordpress";s:18:"find_replace_pairs";a:2:{s:11:"replace_old";a:2:{i:1;s:34:"//localhost:8888/h3/kygo_wordpress";i:2;s:64:"/Users/yoann-baunach/Documents/Development/h3/kygo_wordpress-new";}s:11:"replace_new";a:2:{i:1;s:34:"//localhost:8888/h3/kygo_wordpress";i:2;s:60:"/Users/yoann-baunach/Documents/Development/h3/kygo_wordpress";}}s:18:"migration_state_id";s:13:"5a0b852a58b0c";s:5:"table";s:15:"kygomusic_users";s:11:"current_row";s:0:"";s:10:"last_table";s:1:"1";s:12:"primary_keys";s:0:"";s:4:"gzip";s:1:"0";}', 'no'),
(339, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(412, 'ossdl_off_cdn_url', 'http://localhost:8888/h3/kygo_wordpress', 'yes'),
(413, 'ossdl_off_blog_url', 'http://localhost:8888/h3/kygo_wordpress', 'yes'),
(414, 'ossdl_off_include_dirs', 'wp-content,wp-includes', 'yes'),
(415, 'ossdl_off_exclude', '.php', 'yes'),
(416, 'ossdl_cname', '', 'yes'),
(417, 'wpsupercache_start', '1511086614', 'yes'),
(418, 'wpsupercache_count', '0', 'yes'),
(419, 'supercache_stats', 'a:3:{s:9:"generated";i:1511086717;s:10:"supercache";a:5:{s:7:"expired";i:0;s:6:"cached";i:0;s:5:"fsize";i:0;s:11:"cached_list";a:0:{}s:12:"expired_list";a:0:{}}s:7:"wpcache";a:5:{s:7:"expired";i:0;s:6:"cached";i:0;s:5:"fsize";i:0;s:11:"cached_list";a:0:{}s:12:"expired_list";a:0:{}}}', 'yes'),
(428, 'w3tc_state', '{"common.install":1511087070,"common.show_note.flush_statics_needed":false,"common.show_note.flush_statics_needed.timestamp":1511087144,"common.show_note.flush_posts_needed":false,"common.show_note.flush_posts_needed.timestamp":1511087144,"common.show_note.plugins_updated":false,"common.show_note.plugins_updated.timestamp":1511087144,"minify.show_note.need_flush":false,"minify.show_note.need_flush.timestamp":1511087144,"objectcache.show_note.flush_needed":false,"objectcache.show_note.flush_needed.timestamp":1511087144,"extension.swarmify.hide_note_activate_suggestion":"true"}', 'no'),
(431, 'w3tc_nr_application_id', '{"d41d8cd98f00b204e9800998ecf8427e":0}', 'yes'),
(450, 'theme_mods_twentyfifteen', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:7:"primary";i:9;s:6:"social";i:10;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1511090190;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-1";a:0:{}}}}', 'yes'),
(497, 'wpsdb_error_log', '********************************************\n******  Log date: 2017/11/14 23:36:28 ******\n********************************************\n\nWPSDB Error: Invalid content verification signature, please verify the connection information on the remote site and try again. (#137)\n\nArray\n(\n    [action] => wpsdb_backup_remote_table\n    [intent] => pull\n    [url] => https://localhost:8888/h3/kygo_wordpress\n    [key] => jrWPIBX+hZdUajIZ3sX2pQIsWLoNkJVO\n    [table] => kygomusic_commentmeta\n    [form_data] => save_computer=1&gzip_file=1&action=push&connection_info=https%3A%2F%2Fkygo.lucdandrel.com%0D%0AjrWPIBX%2BhZdUajIZ3sX2pQIsWLoNkJVO&auth_username=&auth_password=&replace_old%5B%5D=&replace_new%5B%5D=&replace_old%5B%5D=%2F%2Fkygo.local&replace_new%5B%5D=%2F%2Fkygo.lucdandrel.com&replace_old%5B%5D=%2FUsers%2Flucdandrel%2FDesktop%2Fkygo-new&replace_new%5B%5D=%2Fvar%2Fwww%2Fvhosts%2Flucdandrel.com%2Fkygo.lucdandrel.com&table_migrate_option=migrate_only_with_prefix&replace_guids=1&exclude_transients=1&create_backup=1&backup_option=backup_only_with_prefix&save_migration_profile=1&save_migration_profile_option=0&create_new_profile=kygo.lucdandrel.com&remote_json_data=\n    [stage] => backup\n    [current_row] => -1\n    [dump_filename] => wordpress_f-backup-20171114233627-34msx\n    [last_table] => 0\n    [primary_keys] => \n    [gzip] => 1\n    [bottleneck] => 1048576\n    [prefix] => kygomusic_\n    [sig] => yvRCwa5PqmItfBtT5Kn5bMkQ/jw=\n)\n\n\n********************************************\n******  Log date: 2017/11/14 23:38:09 ******\n********************************************\n\nWPSDB Error: Invalid content verification signature, please verify the connection information on the remote site and try again. (#137)\n\nArray\n(\n    [action] => wpsdb_backup_remote_table\n    [intent] => pull\n    [url] => https://localhost:8888/h3/kygo_wordpress\n    [key] => jrWPIBX+hZdUajIZ3sX2pQIsWLoNkJVO\n    [table] => kygomusic_commentmeta\n    [form_data] => save_computer=1&gzip_file=1&action=push&connection_info=https%3A%2F%2Fkygo.lucdandrel.com%0D%0AjrWPIBX%2BhZdUajIZ3sX2pQIsWLoNkJVO&auth_username=&auth_password=&replace_old%5B%5D=&replace_new%5B%5D=&replace_old%5B%5D=%2F%2Fkygo.local&replace_new%5B%5D=%2F%2Fkygo.lucdandrel.com&replace_old%5B%5D=%2FUsers%2Flucdandrel%2FDesktop%2Fkygo-new&replace_new%5B%5D=%2Fvar%2Fwww%2Fvhosts%2Flucdandrel.com%2Fkygo.lucdandrel.com&table_migrate_option=migrate_only_with_prefix&replace_guids=1&exclude_transients=1&create_backup=1&backup_option=backup_only_with_prefix&save_migration_profile=1&save_migration_profile_option=0&create_new_profile=kygo.lucdandrel.com&remote_json_data=\n    [stage] => backup\n    [current_row] => -1\n    [dump_filename] => wordpress_f-backup-20171114233808-ne2z4\n    [last_table] => 0\n    [primary_keys] => \n    [gzip] => 1\n    [bottleneck] => 1048576\n    [prefix] => kygomusic_\n    [sig] => lIydQutnDttz341MgRpBinmfi9g=\n)\n\n\n********************************************\n******  Log date: 2017/11/14 23:42:39 ******\n********************************************\n\nWPSDB Error: Invalid content verification signature, please verify the connection information on the remote site and try again. (#137)\n\nArray\n(\n    [action] => wpsdb_backup_remote_table\n    [intent] => pull\n    [url] => https://localhost:8888/h3/kygo_wordpress\n    [key] => jrWPIBX+hZdUajIZ3sX2pQIsWLoNkJVO\n    [table] => kygomusic_commentmeta\n    [form_data] => save_computer=1&gzip_file=1&action=push&connection_info=https%3A%2F%2Fkygo.lucdandrel.com%0D%0AjrWPIBX%2BhZdUajIZ3sX2pQIsWLoNkJVO&auth_username=&auth_password=&replace_old%5B%5D=&replace_new%5B%5D=&replace_old%5B%5D=%2F%2Fkygo.local&replace_new%5B%5D=%2F%2Fkygo.lucdandrel.com&replace_old%5B%5D=%2FUsers%2Flucdandrel%2FDesktop%2Fkygo-new&replace_new%5B%5D=%2Fvar%2Fwww%2Fvhosts%2Flucdandrel.com%2Fkygo.lucdandrel.com&table_migrate_option=migrate_only_with_prefix&replace_guids=1&exclude_transients=1&create_backup=1&backup_option=backup_only_with_prefix&save_migration_profile=1&save_migration_profile_option=0&create_new_profile=kygo.lucdandrel.com&remote_json_data=\n    [stage] => backup\n    [current_row] => -1\n    [dump_filename] => wordpress_f-backup-20171114234238-zr7jh\n    [last_table] => 0\n    [primary_keys] => \n    [gzip] => 1\n    [bottleneck] => 1048576\n    [prefix] => kygomusic_\n    [sig] => E3il2MIzz2CPEF8pddHBCSlDA30=\n)\n\n\n********************************************\n******  Log date: 2017/11/14 23:43:37 ******\n********************************************\n\nWPSDB Error: Invalid content verification signature, please verify the connection information on the remote site and try again. (#137)\n\nArray\n(\n    [action] => wpsdb_backup_remote_table\n    [intent] => pull\n    [url] => https://localhost:8888/h3/kygo_wordpress\n    [key] => 8KdLpiUB2OM4PJ9v3yWtRS531ln3ssbY\n    [table] => kygomusic_commentmeta\n    [form_data] => save_computer=1&gzip_file=1&action=push&connection_info=https%3A%2F%2Fkygo.lucdandrel.com%0D%0A8KdLpiUB2OM4PJ9v3yWtRS531ln3ssbY&auth_username=&auth_password=&replace_old%5B%5D=&replace_new%5B%5D=&replace_old%5B%5D=%2F%2Fkygo.local&replace_new%5B%5D=%2F%2Fkygo.lucdandrel.com&replace_old%5B%5D=%2FUsers%2Flucdandrel%2FDesktop%2Fkygo-new&replace_new%5B%5D=%2Fvar%2Fwww%2Fvhosts%2Flucdandrel.com%2Fkygo.lucdandrel.com&table_migrate_option=migrate_only_with_prefix&replace_guids=1&exclude_transients=1&create_backup=1&backup_option=backup_only_with_prefix&save_migration_profile=1&save_migration_profile_option=0&create_new_profile=kygo.lucdandrel.com&remote_json_data=\n    [stage] => backup\n    [current_row] => -1\n    [dump_filename] => wordpress_f-backup-20171114234336-c99jg\n    [last_table] => 0\n    [primary_keys] => \n    [gzip] => 1\n    [bottleneck] => 1048576\n    [prefix] => kygomusic_\n    [sig] => zCgWagQigk0vNRV85ApNJrXjh6E=\n)\n\n\n********************************************\n******  Log date: 2017/11/14 23:43:54 ******\n********************************************\n\nWPSDB Error: Invalid content verification signature, please verify the connection information on the remote site and try again. (#137)\n\nArray\n(\n    [action] => wpsdb_backup_remote_table\n    [intent] => pull\n    [url] => https://localhost:8888/h3/kygo_wordpress\n    [key] => 8KdLpiUB2OM4PJ9v3yWtRS531ln3ssbY\n    [table] => kygomusic_commentmeta\n    [form_data] => save_computer=1&gzip_file=1&action=push&connection_info=https%3A%2F%2Fkygo.lucdandrel.com%0D%0A8KdLpiUB2OM4PJ9v3yWtRS531ln3ssbY&auth_username=&auth_password=&replace_old%5B%5D=&replace_new%5B%5D=&replace_old%5B%5D=%2F%2Fkygo.local&replace_new%5B%5D=%2F%2Fkygo.lucdandrel.com&replace_old%5B%5D=%2FUsers%2Flucdandrel%2FDesktop%2Fkygo-new&replace_new%5B%5D=%2Fvar%2Fwww%2Fvhosts%2Flucdandrel.com%2Fkygo.lucdandrel.com&table_migrate_option=migrate_only_with_prefix&replace_guids=1&exclude_transients=1&create_backup=1&backup_option=backup_only_with_prefix&save_migration_profile=1&save_migration_profile_option=0&create_new_profile=kygo.lucdandrel.com&remote_json_data=\n    [stage] => backup\n    [current_row] => -1\n    [dump_filename] => wordpress_f-backup-20171114234353-cjf0d\n    [last_table] => 0\n    [primary_keys] => \n    [gzip] => 1\n    [bottleneck] => 1048576\n    [prefix] => kygomusic_\n    [sig] => 6AGWnWOFeLw7gIKe6LMKdUFSCHg=\n)\n\n\n********************************************\n******  Log date: 2017/11/14 23:44:25 ******\n********************************************\n\nWPSDB Error: Invalid content verification signature, please verify the connection information on the remote site and try again. (#137)\n\nArray\n(\n    [action] => wpsdb_backup_remote_table\n    [intent] => pull\n    [url] => https://localhost:8888/h3/kygo_wordpress\n    [key] => 8KdLpiUB2OM4PJ9v3yWtRS531ln3ssbY\n    [table] => kygomusic_commentmeta\n    [form_data] => save_computer=1&gzip_file=1&action=push&connection_info=https%3A%2F%2Fkygo.lucdandrel.com%0D%0A8KdLpiUB2OM4PJ9v3yWtRS531ln3ssbY&auth_username=&auth_password=&replace_old%5B%5D=&replace_new%5B%5D=&replace_old%5B%5D=%2F%2Fkygo.local&replace_new%5B%5D=%2F%2Fkygo.lucdandrel.com&replace_old%5B%5D=%2FUsers%2Flucdandrel%2FDesktop%2Fkygo-new&replace_new%5B%5D=%2Fvar%2Fwww%2Fvhosts%2Flucdandrel.com%2Fkygo.lucdandrel.com&table_migrate_option=migrate_only_with_prefix&replace_guids=1&exclude_transients=1&create_backup=1&backup_option=backup_only_with_prefix&save_migration_profile=1&save_migration_profile_option=0&create_new_profile=kygo.lucdandrel.com&remote_json_data=\n    [stage] => backup\n    [current_row] => -1\n    [dump_filename] => wordpress_f-backup-20171114234424-xivgs\n    [last_table] => 0\n    [primary_keys] => \n    [gzip] => 1\n    [bottleneck] => 1048576\n    [prefix] => kygomusic_\n    [sig] => Dx0AcpWhmGQMA3UZlcTQKKWCp/s=\n)\n\n\n********************************************\n******  Log date: 2017/11/14 23:48:18 ******\n********************************************\n\nWPSDB Error: Invalid content verification signature, please verify the connection information on the remote site and try again. (#137)\n\nArray\n(\n    [action] => wpsdb_backup_remote_table\n    [intent] => pull\n    [url] => https://localhost:8888/h3/kygo_wordpress\n    [key] => 8KdLpiUB2OM4PJ9v3yWtRS531ln3ssbY\n    [table] => kygomusic_commentmeta\n    [form_data] => save_computer=1&gzip_file=1&action=push&connection_info=https%3A%2F%2Fkygo.lucdandrel.com%0D%0A8KdLpiUB2OM4PJ9v3yWtRS531ln3ssbY&auth_username=&auth_password=&replace_old%5B%5D=&replace_new%5B%5D=&replace_old%5B%5D=%2F%2Fkygo.local&replace_new%5B%5D=%2F%2Fkygo.lucdandrel.com&replace_old%5B%5D=%2FUsers%2Flucdandrel%2FDesktop%2Fkygo-new&replace_new%5B%5D=%2Fvar%2Fwww%2Fvhosts%2Flucdandrel.com%2Fkygo.lucdandrel.com&table_migrate_option=migrate_only_with_prefix&replace_guids=1&exclude_transients=1&create_backup=1&backup_option=backup_only_with_prefix&save_migration_profile=1&save_migration_profile_option=0&create_new_profile=kygo.lucdandrel.com&remote_json_data=\n    [stage] => backup\n    [current_row] => -1\n    [dump_filename] => wordpress_f-backup-20171114234817-3y2qo\n    [last_table] => 0\n    [primary_keys] => \n    [gzip] => 1\n    [bottleneck] => 1048576\n    [prefix] => kygomusic_\n    [sig] => bSa/gpgYxj7iTqSMVOrcjkf4Yfw=\n)\n\n\n********************************************\n******  Log date: 2017/11/14 23:52:44 ******\n********************************************\n\nWPSDB Error: Invalid content verification signature, please verify the connection information on the remote site and try again. (#120)\n\nArray\n(\n    [action] => wpsdb_verify_connection_to_remote_site\n    [intent] => push\n    [sig] => ZOxMBWF8FrJVVMtpvldrKs1nAhY=\n)\n\n\n********************************************\n******  Log date: 2017/11/14 23:52:45 ******\n********************************************\n\nWPSDB Error: Invalid content verification signature, please verify the connection information on the remote site and try again. (#120)\n\nArray\n(\n    [action] => wpsdb_verify_connection_to_remote_site\n    [intent] => push\n    [sig] => ZOxMBWF8FrJVVMtpvldrKs1nAhY=\n)\n\n\n********************************************\n******  Log date: 2017/11/14 23:52:51 ******\n********************************************\n\nWPSDB Error: Invalid content verification signature, please verify the connection information on the remote site and try again. (#137)\n\nArray\n(\n    [action] => wpsdb_backup_remote_table\n    [intent] => pull\n    [url] => https://localhost:8888/h3/kygo_wordpress\n    [key] => uilQnbqQWNM2rB4ijPyl5jjcCeMKc1Hj\n    [table] => kygomusic_commentmeta\n    [form_data] => save_computer=1&gzip_file=1&action=push&connection_info=https%3A%2F%2Fkygo.lucdandrel.com%0D%0AuilQnbqQWNM2rB4ijPyl5jjcCeMKc1Hj&auth_username=&auth_password=&replace_old%5B%5D=&replace_new%5B%5D=&replace_old%5B%5D=%2F%2Fkygo.local&replace_new%5B%5D=%2F%2Fkygo.lucdandrel.com&replace_old%5B%5D=%2FUsers%2Flucdandrel%2FDesktop%2Fkygo-new&replace_new%5B%5D=%2Fvar%2Fwww%2Fvhosts%2Flucdandrel.com%2Fkygo.lucdandrel.com&table_migrate_option=migrate_only_with_prefix&replace_guids=1&exclude_transients=1&create_backup=1&backup_option=backup_only_with_prefix&save_migration_profile=1&save_migration_profile_option=0&create_new_profile=kygo.lucdandrel.com&remote_json_data=\n    [stage] => backup\n    [current_row] => -1\n    [dump_filename] => wordpress_f-backup-20171114235250-97oah\n    [last_table] => 0\n    [primary_keys] => \n    [gzip] => 1\n    [bottleneck] => 1048576\n    [prefix] => kygomusic_\n    [sig] => 8H0yDS6DAztrO8zQAwi8q4hd8rI=\n)\n\n\n********************************************\n******  Log date: 2017/11/14 23:53:09 ******\n********************************************\n\nWPSDB Error: Invalid content verification signature, please verify the connection information on the remote site and try again. (#137)\n\nArray\n(\n    [action] => wpsdb_backup_remote_table\n    [intent] => pull\n    [url] => https://localhost:8888/h3/kygo_wordpress\n    [key] => uilQnbqQWNM2rB4ijPyl5jjcCeMKc1Hj\n    [table] => kygomusic_commentmeta\n    [form_data] => save_computer=1&gzip_file=1&action=push&connection_info=https%3A%2F%2Fkygo.lucdandrel.com%0D%0AuilQnbqQWNM2rB4ijPyl5jjcCeMKc1Hj&auth_username=&auth_password=&replace_old%5B%5D=&replace_new%5B%5D=&replace_old%5B%5D=%2F%2Fkygo.local&replace_new%5B%5D=%2F%2Fkygo.lucdandrel.com&replace_old%5B%5D=%2FUsers%2Flucdandrel%2FDesktop%2Fkygo-new&replace_new%5B%5D=%2Fvar%2Fwww%2Fvhosts%2Flucdandrel.com%2Fkygo.lucdandrel.com&table_migrate_option=migrate_only_with_prefix&replace_guids=1&exclude_transients=1&create_backup=1&backup_option=backup_only_with_prefix&save_migration_profile=1&save_migration_profile_option=0&create_new_profile=kygo.lucdandrel.com&remote_json_data=\n    [stage] => backup\n    [current_row] => -1\n    [dump_filename] => wordpress_f-backup-20171114235308-mta3j\n    [last_table] => 0\n    [primary_keys] => \n    [gzip] => 1\n    [bottleneck] => 1048576\n    [prefix] => kygomusic_\n    [sig] => OBecS/RyBQeqcXjVqfULju8suKo=\n)\n\n\n********************************************\n******  Log date: 2017/11/14 23:53:29 ******\n********************************************\n\nWPSDB Error: Invalid content verification signature, please verify the connection information on the remote site and try again. (#137)\n\nArray\n(\n    [action] => wpsdb_backup_remote_table\n    [intent] => pull\n    [url] => https://localhost:8888/h3/kygo_wordpress\n    [key] => uilQnbqQWNM2rB4ijPyl5jjcCeMKc1Hj\n    [table] => kygomusic_commentmeta\n    [form_data] => save_computer=1&gzip_file=1&action=push&connection_info=https%3A%2F%2Fkygo.lucdandrel.com%0D%0AuilQnbqQWNM2rB4ijPyl5jjcCeMKc1Hj&auth_username=&auth_password=&replace_old%5B%5D=&replace_new%5B%5D=&replace_old%5B%5D=%2F%2Fkygo.local&replace_new%5B%5D=%2F%2Fkygo.lucdandrel.com&replace_old%5B%5D=%2FUsers%2Flucdandrel%2FDesktop%2Fkygo-new&replace_new%5B%5D=%2Fvar%2Fwww%2Fvhosts%2Flucdandrel.com%2Fkygo.lucdandrel.com&table_migrate_option=migrate_only_with_prefix&replace_guids=1&exclude_transients=1&create_backup=1&backup_option=backup_only_with_prefix&save_migration_profile=1&save_migration_profile_option=0&create_new_profile=kygo.lucdandrel.com&remote_json_data=\n    [stage] => backup\n    [current_row] => -1\n    [dump_filename] => wordpress_f-backup-20171114235328-e9p0p\n    [last_table] => 0\n    [primary_keys] => \n    [gzip] => 1\n    [bottleneck] => 1048576\n    [prefix] => kygomusic_\n    [sig] => zsXzdXBDDdcPvblg6NG9f8U4PQI=\n)\n\n\n********************************************\n******  Log date: 2017/11/17 12:53:14 ******\n********************************************\n\nWPSDB Error: Invalid content verification signature, please verify the connection information on the remote site and try again. (#120) <a href="#" class="try-again js-action-link">Try again?</a>\n\nAttempted to connect to: http://kygo.lucdandrel.com/wp-admin/admin-ajax.php\n\nArray\n(\n    [error] => 1\n    [message] => Invalid content verification signature, please verify the connection information on the remote site and try again. (#120) <a href="#" class="try-again js-action-link">Try again?</a>\n)\n\n\n', 'yes'),
(498, 'wpsdb_settings', 'a:7:{s:11:"max_request";i:1048576;s:3:"key";s:32:"RyDYs2BDT37j+r3+2IPJgltQlU8Yxp49";s:10:"allow_pull";b:0;s:10:"allow_push";b:0;s:8:"profiles";a:1:{i:0;a:18:{s:13:"save_computer";s:1:"1";s:9:"gzip_file";s:1:"1";s:13:"replace_guids";s:1:"1";s:12:"exclude_spam";s:1:"0";s:19:"keep_active_plugins";s:1:"0";s:13:"create_backup";s:1:"1";s:18:"exclude_post_types";s:1:"0";s:6:"action";s:4:"pull";s:15:"connection_info";s:61:"https://kygo.lucdandrel.com\r\nuilQnbqQWNM2rB4ijPyl5jjcCeMKc1Hj";s:11:"replace_old";a:2:{i:1;s:21:"//kygo.lucdandrel.com";i:2;s:50:"/var/www/vhosts/lucdandrel.com/kygo.lucdandrel.com";}s:11:"replace_new";a:2:{i:1;s:34:"//localhost:8888/h3/kygo_wordpress";i:2;s:60:"/Users/yoann-baunach/Documents/Development/h3/kygo_wordpress";}s:20:"table_migrate_option";s:24:"migrate_only_with_prefix";s:18:"exclude_transients";s:1:"1";s:13:"backup_option";s:23:"backup_only_with_prefix";s:22:"save_migration_profile";s:1:"1";s:29:"save_migration_profile_option";s:1:"0";s:18:"create_new_profile";s:19:"kygo.lucdandrel.com";s:4:"name";s:19:"kygo.lucdandrel.com";}}s:10:"verify_ssl";b:0;s:17:"blacklist_plugins";a:0:{}}', 'yes'),
(504, '_site_transient_timeout_browser_6cd77015ec4a62e4fdace07d0b0a8f84', '1511807843', 'no'),
(505, '_site_transient_browser_6cd77015ec4a62e4fdace07d0b0a8f84', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:12:"62.0.3202.94";s:8:"platform";s:9:"Macintosh";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(552, '_transient_pll_languages_list', 'a:2:{i:0;a:24:{s:7:"term_id";i:2;s:4:"name";s:2:"FR";s:4:"slug";s:2:"fr";s:10:"term_group";i:0;s:16:"term_taxonomy_id";i:2;s:8:"taxonomy";s:8:"language";s:11:"description";s:5:"fr_FR";s:6:"parent";i:0;s:5:"count";i:11;s:10:"tl_term_id";i:3;s:19:"tl_term_taxonomy_id";i:3;s:8:"tl_count";i:1;s:6:"locale";R:9;s:6:"is_rtl";i:0;s:8:"flag_url";s:80:"http://localhost:8888/h3/kygo_wordpress/wp-content/plugins/polylang/flags/fr.png";s:4:"flag";s:784:"<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAGzSURBVHjaYiyeepkBBv79+Zfnx/f379+fP38CyT9//jAyMiq5GP77wvDnJ8MfoAIGBoAAYgGqC7STApL///3/9++/pCTv////Qdz/QO4/IMna0vf/z+9/v379//37bUUTQACBNDD8Z/j87fffvyAVX79+/Q8GQDbQeKA9fM+e/Pv18/+vnwzCIkBLAAKQOAY5AIAwCEv4/4PddNUm3ji0QJyxW3rgzE0iLfqDGr2oYuu0l54AYvnz5x9Q6d+/QPQfyAQqAin9B3EOyG1A1UDj//36zfjr1y8GBoAAFI9BDgAwCMIw+P8Ho3GDO6XQ0l4MN8b2kUwYaLszqgKM/KHcDXwBxAJUD3TJ779A8h9Q5D8SAHoARP36+Rfo41+/mcA2AAQQy49ff0Cu//MPpAeI/0FdA1QNYYNVA/3wmwEYVgwMAAHE8uPHH5BqoD1//gJJLADoJKDS378Z//wFhhJAALF8A3rizz8uTmYg788fJkj4QOKREQyYxSWBhjEC/fcXZANAALF8+/anbcHlHz9+ffvx58uPX9KckkCn/gby/wLd8uvHjx96k+cD1UGiGQgAAgwA7q17ZpsMdUQAAAAASUVORK5CYII=" title="FR" alt="FR" />";s:8:"home_url";s:43:"http://localhost:8888/h3/kygo_wordpress/fr/";s:10:"search_url";s:43:"http://localhost:8888/h3/kygo_wordpress/fr/";s:4:"host";N;s:5:"mo_id";s:1:"6";s:13:"page_on_front";i:36;s:14:"page_for_posts";b:0;s:6:"filter";s:3:"raw";s:9:"flag_code";s:2:"fr";}i:1;a:24:{s:7:"term_id";i:5;s:4:"name";s:2:"EN";s:4:"slug";s:2:"en";s:10:"term_group";i:0;s:16:"term_taxonomy_id";i:5;s:8:"taxonomy";s:8:"language";s:11:"description";s:5:"en_US";s:6:"parent";i:0;s:5:"count";i:6;s:10:"tl_term_id";i:6;s:19:"tl_term_taxonomy_id";i:6;s:8:"tl_count";i:1;s:6:"locale";R:33;s:6:"is_rtl";i:0;s:8:"flag_url";s:80:"http://localhost:8888/h3/kygo_wordpress/wp-content/plugins/polylang/flags/us.png";s:4:"flag";s:868:"<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHzSURBVHjaYkxOP8IAB//+Mfz7w8Dwi4HhP5CcJb/n/7evb16/APL/gRFQDiAAw3JuAgAIBEDQ/iswEERjGzBQLEru97ll0g0+3HvqMn1SpqlqGsZMsZsIe0SICA5gt5a/AGIEarCPtFh+6N/ffwxA9OvP/7//QYwff/6fZahmePeB4dNHhi+fGb59Y4zyvHHmCEAAAW3YDzQYaJJ93a+vX79aVf58//69fvEPlpIfnz59+vDhw7t37968efP3b/SXL59OnjwIEEAsDP+YgY53b2b89++/awvLn98MDi2cVxl+/vl6mituCtBghi9f/v/48e/XL86krj9XzwEEEENy8g6gu22rfn78+NGs5Ofr16+ZC58+fvyYwX8rxOxXr169fPny+fPn1//93bJlBUAAsQADZMEBxj9/GBxb2P/9+S/R8u3vzxuyaX8ZHv3j8/YGms3w8ycQARmi2eE37t4ACCDGR4/uSkrKAS35B3TT////wADOgLOBIaXIyjBlwxKAAGKRXjCB0SOEaeu+/y9fMnz4AHQxCP348R/o+l+//sMZQBNLEvif3AcIIMZbty7Ly6t9ZmXl+fXj/38GoHH/UcGfP79//BBiYHjy9+8/oUkNAAHEwt1V/vI/KBY/QSISFqM/GBg+MzB8A6PfYC5EFiDAABqgW776MP0rAAAAAElFTkSuQmCC" title="EN" alt="EN" />";s:8:"home_url";s:40:"http://localhost:8888/h3/kygo_wordpress/";s:10:"search_url";s:40:"http://localhost:8888/h3/kygo_wordpress/";s:4:"host";N;s:5:"mo_id";s:1:"7";s:13:"page_on_front";s:2:"65";s:14:"page_for_posts";b:0;s:6:"filter";s:3:"raw";s:9:"flag_code";s:2:"us";}}', 'yes'),
(571, '_site_transient_timeout_theme_roots', '1511629980', 'no'),
(572, '_site_transient_theme_roots', 'a:1:{s:4:"kygo";s:7:"/themes";}', 'no'),
(574, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:63:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.9";s:7:"version";s:3:"4.9";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1511628184;s:15:"version_checked";s:3:"4.9";s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:4:"core";s:4:"slug";s:7:"default";s:8:"language";s:5:"fr_FR";s:7:"version";s:3:"4.9";s:7:"updated";s:19:"2017-11-21 15:38:11";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9/fr_FR.zip";s:10:"autoupdate";b:1;}}}', 'no'),
(575, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1511628190;s:7:"checked";a:1:{s:4:"kygo";s:9:"0.1 alpha";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(576, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1511645570;s:7:"checked";a:5:{s:30:"advanced-custom-fields/acf.php";s:5:"5.6.3";s:33:"duplicate-post/duplicate-post.php";s:3:"3.2";s:25:"menu-icons/menu-icons.php";s:6:"0.10.2";s:21:"polylang/polylang.php";s:5:"2.2.5";s:25:"wp-sync-db/wp-sync-db.php";s:3:"1.5";}s:8:"response";a:3:{s:33:"duplicate-post/duplicate-post.php";O:8:"stdClass":12:{s:2:"id";s:28:"w.org/plugins/duplicate-post";s:4:"slug";s:14:"duplicate-post";s:6:"plugin";s:33:"duplicate-post/duplicate-post.php";s:11:"new_version";s:5:"3.2.1";s:3:"url";s:45:"https://wordpress.org/plugins/duplicate-post/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/duplicate-post.3.2.1.zip";s:5:"icons";a:3:{s:2:"1x";s:67:"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=1612753";s:2:"2x";s:67:"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=1612753";s:7:"default";s:67:"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=1612753";}s:7:"banners";a:2:{s:2:"1x";s:69:"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=1612986";s:7:"default";s:69:"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=1612986";}s:11:"banners_rtl";a:0:{}s:14:"upgrade_notice";s:58:"<p>Fixes some problems with Multisite, WPML, revisions</p>";s:6:"tested";s:3:"4.9";s:13:"compatibility";O:8:"stdClass":0:{}}s:21:"polylang/polylang.php";O:8:"stdClass":11:{s:2:"id";s:22:"w.org/plugins/polylang";s:4:"slug";s:8:"polylang";s:6:"plugin";s:21:"polylang/polylang.php";s:11:"new_version";s:5:"2.2.6";s:3:"url";s:39:"https://wordpress.org/plugins/polylang/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/polylang.2.2.6.zip";s:5:"icons";a:3:{s:2:"1x";s:61:"https://ps.w.org/polylang/assets/icon-128x128.png?rev=1331499";s:2:"2x";s:61:"https://ps.w.org/polylang/assets/icon-256x256.png?rev=1331499";s:7:"default";s:61:"https://ps.w.org/polylang/assets/icon-256x256.png?rev=1331499";}s:7:"banners";a:3:{s:2:"2x";s:64:"https://ps.w.org/polylang/assets/banner-1544x500.png?rev=1405299";s:2:"1x";s:63:"https://ps.w.org/polylang/assets/banner-772x250.png?rev=1405299";s:7:"default";s:64:"https://ps.w.org/polylang/assets/banner-1544x500.png?rev=1405299";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:3:"4.9";s:13:"compatibility";O:8:"stdClass":0:{}}s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"5.6.5";s:3:"url";s:37:"https://www.advancedcustomfields.com/";s:6:"tested";s:5:"4.9.0";s:7:"package";s:0:"";}}s:12:"translations";a:2:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:14:"duplicate-post";s:8:"language";s:5:"fr_FR";s:7:"version";s:3:"3.2";s:7:"updated";s:19:"2017-09-17 17:22:59";s:7:"package";s:79:"https://downloads.wordpress.org/translation/plugin/duplicate-post/3.2/fr_FR.zip";s:10:"autoupdate";b:1;}i:1;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:8:"polylang";s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"2.2.5";s:7:"updated";s:19:"2017-09-14 07:50:36";s:7:"package";s:75:"https://downloads.wordpress.org/translation/plugin/polylang/2.2.5/fr_FR.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:2:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip";s:5:"icons";a:3:{s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:7:"default";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";}s:7:"banners";a:3:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";s:7:"default";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";}s:11:"banners_rtl";a:0:{}}s:25:"menu-icons/menu-icons.php";O:8:"stdClass":9:{s:2:"id";s:24:"w.org/plugins/menu-icons";s:4:"slug";s:10:"menu-icons";s:6:"plugin";s:25:"menu-icons/menu-icons.php";s:11:"new_version";s:6:"0.10.2";s:3:"url";s:41:"https://wordpress.org/plugins/menu-icons/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/menu-icons.0.10.2.zip";s:5:"icons";a:0:{}s:7:"banners";a:3:{s:2:"2x";s:65:"https://ps.w.org/menu-icons/assets/banner-1544x500.jpg?rev=979807";s:2:"1x";s:64:"https://ps.w.org/menu-icons/assets/banner-772x250.jpg?rev=979807";s:7:"default";s:65:"https://ps.w.org/menu-icons/assets/banner-1544x500.jpg?rev=979807";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(577, '_site_transient_timeout_community-events-4501c091b0366d76ea3218b6cfdd8097', '1511671408', 'no'),
(578, '_site_transient_community-events-4501c091b0366d76ea3218b6cfdd8097', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:2:"::";}s:6:"events";a:2:{i:0;a:7:{s:4:"type";s:8:"wordcamp";s:5:"title";s:11:"WordCamp US";s:3:"url";s:29:"https://2017.us.wordcamp.org/";s:6:"meetup";s:0:"";s:10:"meetup_url";s:0:"";s:4:"date";s:19:"2017-12-01 00:00:00";s:8:"location";a:4:{s:8:"location";s:18:"Nashville, TN, USA";s:7:"country";s:2:"US";s:8:"latitude";d:36.15660849999999726378518971614539623260498046875;s:9:"longitude";d:-86.7784908999999942125214147381484508514404296875;}}i:1;a:7:{s:4:"type";s:8:"wordcamp";s:5:"title";s:14:"WordCamp Paris";s:3:"url";s:31:"https://2018.paris.wordcamp.org";s:6:"meetup";N;s:10:"meetup_url";N;s:4:"date";s:19:"2018-03-09 00:00:00";s:8:"location";a:4:{s:8:"location";s:5:"Paris";s:7:"country";s:2:"FR";s:8:"latitude";d:48.82406919999999672654666937887668609619140625;s:9:"longitude";d:2.372298900000000099197450253996066749095916748046875;}}}}', 'no'),
(579, '_transient_timeout_plugin_slugs', '1511731972', 'no'),
(580, '_transient_plugin_slugs', 'a:5:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:33:"duplicate-post/duplicate-post.php";i:2;s:25:"menu-icons/menu-icons.php";i:3;s:21:"polylang/polylang.php";i:4;s:25:"wp-sync-db/wp-sync-db.php";}', 'no') ;

#
# End of data contents of table `kygomusic_options`
# --------------------------------------------------------



#
# Delete any existing table `kygomusic_postmeta`
#

DROP TABLE IF EXISTS `kygomusic_postmeta`;


#
# Table structure of table `kygomusic_postmeta`
#

CREATE TABLE `kygomusic_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=419 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `kygomusic_postmeta`
#
INSERT INTO `kygomusic_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_lock', '1510698934:1'),
(3, 2, '_edit_last', '1'),
(8, 6, '_pll_strings_translations', 'a:0:{}'),
(9, 7, '_pll_strings_translations', 'a:0:{}'),
(10, 10, '_edit_lock', '1510735753:1'),
(11, 10, '_edit_last', '1'),
(12, 36, '_edit_last', '1'),
(13, 36, '_edit_lock', '1511186467:1'),
(14, 38, '_edit_last', '1'),
(15, 38, '_edit_lock', '1511203109:1'),
(16, 40, '_edit_last', '1'),
(17, 40, '_edit_lock', '1511104466:1'),
(18, 42, '_edit_last', '1'),
(19, 42, '_edit_lock', '1511203132:1'),
(56, 48, '_wp_attached_file', '2017/11/Logo-1.png'),
(57, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:189;s:6:"height";i:189;s:4:"file";s:18:"2017/11/Logo-1.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"Logo-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(58, 49, '_wp_trash_meta_status', 'publish'),
(59, 49, '_wp_trash_meta_time', '1510701780'),
(60, 50, '_menu_item_type', 'custom'),
(61, 50, '_menu_item_menu_item_parent', '0'),
(62, 50, '_menu_item_object_id', '50'),
(63, 50, '_menu_item_object', 'custom'),
(64, 50, '_menu_item_target', ''),
(65, 50, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(66, 50, '_menu_item_xfn', ''),
(67, 50, '_menu_item_url', 'https://www.facebook.com/kygoofficial'),
(69, 51, '_menu_item_type', 'custom'),
(70, 51, '_menu_item_menu_item_parent', '0'),
(71, 51, '_menu_item_object_id', '51'),
(72, 51, '_menu_item_object', 'custom'),
(73, 51, '_menu_item_target', ''),
(74, 51, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(75, 51, '_menu_item_xfn', ''),
(76, 51, '_menu_item_url', 'https://twitter.com/KygoMusic'),
(78, 52, '_menu_item_type', 'custom'),
(79, 52, '_menu_item_menu_item_parent', '0'),
(80, 52, '_menu_item_object_id', '52'),
(81, 52, '_menu_item_object', 'custom'),
(82, 52, '_menu_item_target', ''),
(83, 52, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(84, 52, '_menu_item_xfn', ''),
(85, 52, '_menu_item_url', 'https://soundcloud.com/kygo/'),
(87, 53, '_menu_item_type', 'custom'),
(88, 53, '_menu_item_menu_item_parent', '0'),
(89, 53, '_menu_item_object_id', '53'),
(90, 53, '_menu_item_object', 'custom'),
(91, 53, '_menu_item_target', ''),
(92, 53, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(93, 53, '_menu_item_xfn', ''),
(94, 53, '_menu_item_url', 'https://www.instagram.com/kygomusic/'),
(96, 54, '_menu_item_type', 'custom'),
(97, 54, '_menu_item_menu_item_parent', '0'),
(98, 54, '_menu_item_object_id', '54'),
(99, 54, '_menu_item_object', 'custom'),
(100, 54, '_menu_item_target', ''),
(101, 54, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(102, 54, '_menu_item_xfn', ''),
(103, 54, '_menu_item_url', 'http://kygoofficial.tumblr.com/'),
(105, 55, '_wp_attached_file', '2017/11/Facebook.svg'),
(106, 56, '_wp_attached_file', '2017/11/Instagram.svg'),
(107, 57, '_wp_attached_file', '2017/11/Soundcloud.svg'),
(108, 58, '_wp_attached_file', '2017/11/tumblr-logo.svg'),
(109, 59, '_wp_attached_file', '2017/11/Twitter.svg'),
(110, 50, 'menu-icons', 'a:8:{s:4:"type";s:3:"svg";s:4:"icon";s:2:"55";s:10:"hide_label";s:1:"1";s:8:"position";s:6:"before";s:14:"vertical_align";s:6:"middle";s:9:"font_size";s:3:"1.2";s:9:"svg_width";s:1:"1";s:10:"image_size";s:9:"thumbnail";}'),
(111, 51, 'menu-icons', 'a:8:{s:4:"type";s:3:"svg";s:4:"icon";s:2:"59";s:10:"hide_label";s:1:"1";s:8:"position";s:6:"before";s:14:"vertical_align";s:6:"middle";s:9:"font_size";s:3:"1.2";s:9:"svg_width";s:1:"1";s:10:"image_size";s:9:"thumbnail";}'),
(112, 52, 'menu-icons', 'a:8:{s:4:"type";s:3:"svg";s:4:"icon";s:2:"57";s:10:"hide_label";s:1:"1";s:8:"position";s:6:"before";s:14:"vertical_align";s:6:"middle";s:9:"font_size";s:3:"1.2";s:9:"svg_width";s:1:"1";s:10:"image_size";s:9:"thumbnail";}'),
(113, 53, 'menu-icons', 'a:8:{s:4:"type";s:3:"svg";s:4:"icon";s:2:"56";s:10:"hide_label";s:1:"1";s:8:"position";s:6:"before";s:14:"vertical_align";s:6:"middle";s:9:"font_size";s:3:"1.2";s:9:"svg_width";s:1:"1";s:10:"image_size";s:9:"thumbnail";}'),
(114, 54, 'menu-icons', 'a:8:{s:4:"type";s:3:"svg";s:4:"icon";s:2:"58";s:10:"hide_label";s:1:"1";s:8:"position";s:6:"before";s:14:"vertical_align";s:6:"middle";s:9:"font_size";s:3:"1.2";s:9:"svg_width";s:1:"1";s:10:"image_size";s:9:"thumbnail";}'),
(124, 2, '_wp_trash_meta_status', 'publish'),
(125, 2, '_wp_trash_meta_time', '1510703364'),
(126, 2, '_wp_desired_post_slug', 'page-d-exemple'),
(127, 65, '_edit_last', '1'),
(128, 65, '_edit_lock', '1511186617:1'),
(132, 80, '_wp_attached_file', '2017/11/stargazing.jpeg'),
(133, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:939;s:6:"height";i:939;s:4:"file";s:23:"2017/11/stargazing.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"stargazing-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"stargazing-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"stargazing-768x768.jpeg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(134, 79, '_edit_last', '1'),
(135, 79, 'type', '12'),
(136, 79, '_type', 'field_5a0bfd00944ff'),
(137, 79, 'title', 'Stargazing'),
(138, 79, '_title', 'field_5a0bfce6944fe'),
(139, 79, 'description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed erat massa, malesuada ac vulputate non, mattis sed ex. Ut imperdiet vitae justo a pretium. Morbi molestie ac ante et semper. Suspendisse tincidunt odio lacus, vitae ultrices ex facilisis sit amet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi at congue arcu. Ut a enim non lacus auctor gravida. Curabitur dui libero, egestas et ex et, viverra vestibulum enim. In tincidunt varius consequat. Ut tincidunt elementum orci, posuere aliquet est vulputate eu. Quisque varius metus quis consectetur volutpat. Ut finibus nec lorem vitae molestie. Etiam feugiat ullamcorper nibh, dapibus rhoncus dui posuere nec.'),
(140, 79, '_description', 'field_59e5ba786acd3'),
(141, 79, 'picture', '80'),
(142, 79, '_picture', 'field_59e5bdd90a9b6'),
(143, 79, 'tracks_0_title', 'Test'),
(144, 79, '_tracks_0_title', 'field_59e5bb2d6680b'),
(145, 79, 'tracks_0_duration', 'Test'),
(146, 79, '_tracks_0_duration', 'field_59e5bb386680c'),
(147, 79, 'tracks_0_soundcloud', ''),
(148, 79, '_tracks_0_soundcloud', 'field_5a0bfdc794505'),
(149, 79, 'tracks_1_title', 'Test'),
(150, 79, '_tracks_1_title', 'field_59e5bb2d6680b'),
(151, 79, 'tracks_1_duration', 'Test'),
(152, 79, '_tracks_1_duration', 'field_59e5bb386680c'),
(153, 79, 'tracks_1_soundcloud', ''),
(154, 79, '_tracks_1_soundcloud', 'field_5a0bfdc794505'),
(155, 79, 'tracks_2_title', 'Test'),
(156, 79, '_tracks_2_title', 'field_59e5bb2d6680b'),
(157, 79, 'tracks_2_duration', 'Test') ;
INSERT INTO `kygomusic_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(158, 79, '_tracks_2_duration', 'field_59e5bb386680c'),
(159, 79, 'tracks_2_soundcloud', ''),
(160, 79, '_tracks_2_soundcloud', 'field_5a0bfdc794505'),
(161, 79, 'tracks_3_title', 'Test'),
(162, 79, '_tracks_3_title', 'field_59e5bb2d6680b'),
(163, 79, 'tracks_3_duration', 'Test'),
(164, 79, '_tracks_3_duration', 'field_59e5bb386680c'),
(165, 79, 'tracks_3_soundcloud', ''),
(166, 79, '_tracks_3_soundcloud', 'field_5a0bfdc794505'),
(167, 79, 'tracks_4_title', 'Test'),
(168, 79, '_tracks_4_title', 'field_59e5bb2d6680b'),
(169, 79, 'tracks_4_duration', 'Test'),
(170, 79, '_tracks_4_duration', 'field_59e5bb386680c'),
(171, 79, 'tracks_4_soundcloud', ''),
(172, 79, '_tracks_4_soundcloud', 'field_5a0bfdc794505'),
(173, 79, 'tracks', '5'),
(174, 79, '_tracks', 'field_59e5baef6680a'),
(175, 79, 'buy', 'https://itunes.apple.com/fr/album/stargazing-ep/id1287132900'),
(176, 79, '_buy', 'field_59e5c8a580355'),
(177, 79, '_edit_lock', '1511186790:1'),
(178, 17, '_edit_lock', '1510737430:1'),
(179, 17, '_edit_last', '1'),
(180, 81, '_wp_attached_file', '2017/11/kygo-encore-photo-johanneslovund-8518.jpg'),
(181, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1732;s:6:"height";i:1155;s:4:"file";s:49:"2017/11/kygo-encore-photo-johanneslovund-8518.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:49:"kygo-encore-photo-johanneslovund-8518-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:49:"kygo-encore-photo-johanneslovund-8518-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:49:"kygo-encore-photo-johanneslovund-8518-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:50:"kygo-encore-photo-johanneslovund-8518-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(182, 82, '_wp_attached_file', '2017/11/kygo-south-korea-photo-johanneslovund-7631.jpg'),
(183, 82, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1731;s:6:"height";i:1154;s:4:"file";s:54:"2017/11/kygo-south-korea-photo-johanneslovund-7631.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:54:"kygo-south-korea-photo-johanneslovund-7631-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:54:"kygo-south-korea-photo-johanneslovund-7631-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:54:"kygo-south-korea-photo-johanneslovund-7631-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:55:"kygo-south-korea-photo-johanneslovund-7631-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(184, 83, '_wp_attached_file', '2017/11/tokyo-photo-johanneslovund-0210.jpg'),
(185, 83, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1732;s:6:"height";i:1155;s:4:"file";s:43:"2017/11/tokyo-photo-johanneslovund-0210.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:43:"tokyo-photo-johanneslovund-0210-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"tokyo-photo-johanneslovund-0210-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:43:"tokyo-photo-johanneslovund-0210-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:44:"tokyo-photo-johanneslovund-0210-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(186, 84, '_wp_attached_file', '2017/11/tour.png'),
(187, 84, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1080;s:6:"height";i:720;s:4:"file";s:16:"2017/11/tour.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"tour-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"tour-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:16:"tour-768x512.png";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:17:"tour-1024x683.png";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(188, 36, 'show-last-album', '1'),
(189, 36, '_show-last-album', 'field_59e5ee2eda0ad'),
(190, 36, 'last_album', 'a:1:{i:0;s:2:"79";}'),
(191, 36, '_last_album', 'field_59e5bcd96638c'),
(192, 36, 'slider', 'a:4:{i:0;s:2:"81";i:1;s:2:"82";i:2;s:2:"83";i:3;s:2:"84";}'),
(193, 36, '_slider', 'field_59e9b27d3b1a3'),
(194, 36, 'title-section-3', 'Music'),
(195, 36, '_title-section-3', 'field_59e5f2e773334'),
(196, 85, 'show-last-album', '1'),
(197, 85, '_show-last-album', 'field_59e5ee2eda0ad'),
(198, 85, 'last_album', 'a:1:{i:0;s:2:"79";}'),
(199, 85, '_last_album', 'field_59e5bcd96638c'),
(200, 85, 'slider', 'a:4:{i:0;s:2:"81";i:1;s:2:"82";i:2;s:2:"83";i:3;s:2:"84";}'),
(201, 85, '_slider', 'field_59e9b27d3b1a3'),
(202, 85, 'title-section-3', 'Music'),
(203, 85, '_title-section-3', 'field_59e5f2e773334'),
(250, 91, '_menu_item_type', 'custom'),
(251, 91, '_menu_item_menu_item_parent', '0'),
(252, 91, '_menu_item_object_id', '91'),
(253, 91, '_menu_item_object', 'custom'),
(254, 91, '_menu_item_target', ''),
(255, 91, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(256, 91, '_menu_item_xfn', ''),
(257, 91, '_menu_item_url', 'https://kygolife.com/'),
(259, 92, '_menu_item_type', 'custom'),
(260, 92, '_menu_item_menu_item_parent', '0'),
(261, 92, '_menu_item_object_id', '92'),
(262, 92, '_menu_item_object', 'custom'),
(263, 92, '_menu_item_target', ''),
(264, 92, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(265, 92, '_menu_item_xfn', ''),
(266, 92, '_menu_item_url', 'https://kygolife.com/'),
(268, 93, '_menu_item_type', 'custom'),
(269, 93, '_menu_item_menu_item_parent', '0'),
(270, 93, '_menu_item_object_id', '93'),
(271, 93, '_menu_item_object', 'custom'),
(272, 93, '_menu_item_target', ''),
(273, 93, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(274, 93, '_menu_item_xfn', ''),
(275, 93, '_menu_item_url', '#pll_switcher'),
(277, 93, '_pll_menu_item', 'a:6:{s:22:"hide_if_no_translation";i:0;s:12:"hide_current";i:0;s:10:"force_home";i:0;s:10:"show_flags";i:0;s:10:"show_names";i:1;s:8:"dropdown";i:0;}'),
(278, 94, '_edit_last', '1'),
(279, 94, '_edit_lock', '1511211178:1'),
(280, 96, '_edit_last', '1'),
(281, 96, '_edit_lock', '1511186673:1'),
(282, 98, '_edit_last', '1'),
(283, 98, '_edit_lock', '1511203115:1'),
(284, 100, '_menu_item_type', 'post_type'),
(285, 100, '_menu_item_menu_item_parent', '0'),
(286, 100, '_menu_item_object_id', '98'),
(287, 100, '_menu_item_object', 'page'),
(288, 100, '_menu_item_target', ''),
(289, 100, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(290, 100, '_menu_item_xfn', ''),
(291, 100, '_menu_item_url', ''),
(293, 101, '_menu_item_type', 'post_type'),
(294, 101, '_menu_item_menu_item_parent', '0'),
(295, 101, '_menu_item_object_id', '96'),
(296, 101, '_menu_item_object', 'page'),
(297, 101, '_menu_item_target', ''),
(298, 101, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(299, 101, '_menu_item_xfn', ''),
(300, 101, '_menu_item_url', ''),
(302, 102, '_menu_item_type', 'post_type'),
(303, 102, '_menu_item_menu_item_parent', '0'),
(304, 102, '_menu_item_object_id', '94'),
(305, 102, '_menu_item_object', 'page'),
(306, 102, '_menu_item_target', ''),
(307, 102, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(308, 102, '_menu_item_xfn', '') ;
INSERT INTO `kygomusic_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(309, 102, '_menu_item_url', ''),
(311, 103, '_menu_item_type', 'post_type'),
(312, 103, '_menu_item_menu_item_parent', '0'),
(313, 103, '_menu_item_object_id', '65'),
(314, 103, '_menu_item_object', 'page'),
(315, 103, '_menu_item_target', ''),
(316, 103, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(317, 103, '_menu_item_xfn', ''),
(318, 103, '_menu_item_url', ''),
(320, 104, '_menu_item_type', 'post_type'),
(321, 104, '_menu_item_menu_item_parent', '0'),
(322, 104, '_menu_item_object_id', '42'),
(323, 104, '_menu_item_object', 'page'),
(324, 104, '_menu_item_target', ''),
(325, 104, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(326, 104, '_menu_item_xfn', ''),
(327, 104, '_menu_item_url', ''),
(329, 105, '_menu_item_type', 'post_type'),
(330, 105, '_menu_item_menu_item_parent', '0'),
(331, 105, '_menu_item_object_id', '40'),
(332, 105, '_menu_item_object', 'page'),
(333, 105, '_menu_item_target', ''),
(334, 105, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(335, 105, '_menu_item_xfn', ''),
(336, 105, '_menu_item_url', ''),
(338, 106, '_menu_item_type', 'post_type'),
(339, 106, '_menu_item_menu_item_parent', '0'),
(340, 106, '_menu_item_object_id', '38'),
(341, 106, '_menu_item_object', 'page'),
(342, 106, '_menu_item_target', ''),
(343, 106, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(344, 106, '_menu_item_xfn', ''),
(345, 106, '_menu_item_url', ''),
(347, 107, '_menu_item_type', 'post_type'),
(348, 107, '_menu_item_menu_item_parent', '0'),
(349, 107, '_menu_item_object_id', '36'),
(350, 107, '_menu_item_object', 'page'),
(351, 107, '_menu_item_target', ''),
(352, 107, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(353, 107, '_menu_item_xfn', ''),
(354, 107, '_menu_item_url', ''),
(355, 110, '_edit_last', '1'),
(356, 110, '_edit_lock', '1511187094:1'),
(357, 115, '_edit_last', '1'),
(358, 115, '_edit_lock', '1510940605:1'),
(359, 116, '_edit_last', '1'),
(360, 116, '_edit_lock', '1511186901:1'),
(361, 116, 'locations_0_date', '20171118'),
(362, 116, '_locations_0_date', 'field_59de9b70a70d6'),
(363, 116, 'locations_0_tickets', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:49:"http://localhost:8888/h3/kygo_wordpress/fr/music/";s:6:"target";s:0:"";}'),
(364, 116, '_locations_0_tickets', 'field_59de9c8cf959d'),
(365, 116, 'locations_0_theater', 'Dome de Marseille'),
(366, 116, '_locations_0_theater', 'field_59df3a8a6d9b0'),
(367, 116, 'locations_0_city', 'a:3:{s:7:"address";s:49:"Le Dôme, Avenue de Saint-Just, Marseille, France";s:3:"lat";s:9:"43.315319";s:3:"lng";s:17:"5.404402000000005";}'),
(368, 116, '_locations_0_city', 'field_59de9b90a70d7'),
(369, 116, 'locations_1_date', '20171125'),
(370, 116, '_locations_1_date', 'field_59de9b70a70d6'),
(371, 116, 'locations_1_tickets', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:49:"http://localhost:8888/h3/kygo_wordpress/fr/music/";s:6:"target";s:0:"";}'),
(372, 116, '_locations_1_tickets', 'field_59de9c8cf959d'),
(373, 116, 'locations_1_theater', 'Test'),
(374, 116, '_locations_1_theater', 'field_59df3a8a6d9b0'),
(375, 116, 'locations_1_city', 'a:3:{s:7:"address";s:13:"Paris, France";s:3:"lat";s:17:"48.85661400000001";s:3:"lng";s:18:"2.3522219000000177";}'),
(376, 116, '_locations_1_city', 'field_59de9b90a70d7'),
(377, 116, 'locations_2_date', '20171129'),
(378, 116, '_locations_2_date', 'field_59de9b70a70d6'),
(379, 116, 'locations_2_tickets', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:51:"http://localhost:8888/h3/kygo_wordpress/fr/song/79/";s:6:"target";s:0:"";}'),
(380, 116, '_locations_2_tickets', 'field_59de9c8cf959d'),
(381, 116, 'locations_2_theater', 'Test'),
(382, 116, '_locations_2_theater', 'field_59df3a8a6d9b0'),
(383, 116, 'locations_2_city', 'a:3:{s:7:"address";s:16:"Toulouse, France";s:3:"lat";s:9:"43.604652";s:3:"lng";s:18:"1.4442090000000007";}'),
(384, 116, '_locations_2_city', 'field_59de9b90a70d7'),
(385, 116, 'locations', '3'),
(386, 116, '_locations', 'field_59de9b3ba70d3'),
(387, 38, '_wp_page_template', 'page-templates/tour.php'),
(388, 98, '_wp_page_template', 'page-templates/tour.php'),
(389, 42, '_wp_page_template', 'page-templates/news.php'),
(390, 94, '_wp_page_template', 'page-templates/news.php'),
(391, 139, '_edit_last', '1'),
(392, 139, '_edit_lock', '1511209894:1'),
(393, 145, '_edit_last', '1'),
(394, 145, '_edit_lock', '1511213153:1'),
(395, 146, '_wp_attached_file', '2017/11/image_kygo.png'),
(396, 146, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:333;s:4:"file";s:22:"2017/11/image_kygo.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"image_kygo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"image_kygo-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(397, 145, '_oembed_3d87d840043ea9db3502687fe52d76e7', '<iframe width="500" height="281" src="https://www.youtube.com/embed/hEdvvTF5js4?feature=oembed" frameborder="0" gesture="media" allowfullscreen></iframe>'),
(398, 145, '_oembed_time_3d87d840043ea9db3502687fe52d76e7', '1511209977'),
(399, 145, '_oembed_ee6ad3cdb8d9c3568c388575c9d551e5', '<iframe width="916" height="515" src="https://www.youtube.com/embed/hEdvvTF5js4?feature=oembed" frameborder="0" gesture="media" allowfullscreen></iframe>'),
(400, 145, '_oembed_time_ee6ad3cdb8d9c3568c388575c9d551e5', '1511209978'),
(402, 145, 'description', 'In addition to \'Stargazing\' with Justin Jesso, the single also includes \'This Town\' with Sasha Sloan \'It aint me\', \'First Time\' and \'Best Thing About You\' created in collaboration with U2.'),
(403, 145, '_description', 'field_5a13360e24c93'),
(404, 147, 'description', 'In addition to \'Stargazing\' with Justin Jesso, the single also includes \'This Town\' with Sasha Sloan \'It aint me\', \'First Time\' and \'Best Thing About You\' created in collaboration with U2.'),
(405, 147, '_description', 'field_5a13360e24c93'),
(407, 149, 'description', 'In addition to \'Stargazing\' with Justin Jesso, the single also includes \'This Town\' with Sasha Sloan \'It aint me\', \'First Time\' and \'Best Thing About You\' created in collaboration with U2.'),
(408, 149, '_description', 'field_5a13360e24c93'),
(409, 145, '_thumbnail_id', '146'),
(411, 150, 'description', 'In addition to \'Stargazing\' with Justin Jesso, the single also includes \'This Town\' with Sasha Sloan \'It aint me\', \'First Time\' and \'Best Thing About You\' created in collaboration with U2.'),
(412, 150, '_thumbnail_id', '146'),
(413, 150, '_edit_last', '1'),
(414, 150, '_edit_lock', '1511213337:1'),
(416, 150, '_description', 'field_5a13360e24c93'),
(417, 151, 'description', 'In addition to \'Stargazing\' with Justin Jesso, the single also includes \'This Town\' with Sasha Sloan \'It aint me\', \'First Time\' and \'Best Thing About You\' created in collaboration with U2.') ;
INSERT INTO `kygomusic_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(418, 151, '_description', 'field_5a13360e24c93') ;

#
# End of data contents of table `kygomusic_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `kygomusic_posts`
#

DROP TABLE IF EXISTS `kygomusic_posts`;


#
# Table structure of table `kygomusic_posts`
#

CREATE TABLE `kygomusic_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `kygomusic_posts`
#
INSERT INTO `kygomusic_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2017-11-14 00:21:34', '2017-11-13 23:21:34', '', 'Page d’accueil', '', 'trash', 'closed', 'open', '', 'page-d-exemple__trashed', '', '', '2017-11-15 00:49:24', '2017-11-14 23:49:24', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?page_id=2', 0, 'page', '', 0),
(4, 1, '2017-11-14 22:31:39', '2017-11-14 21:31:39', '', 'Page d’accueil', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-11-14 22:31:39', '2017-11-14 21:31:39', '', 2, 'http://localhost:8888/h3/kygo_wordpress/2017/11/14/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2017-11-14 23:52:10', '2017-11-14 22:52:10', '', 'polylang_mo_2', '', 'private', 'closed', 'closed', '', 'polylang_mo_2', '', '', '2017-11-14 23:52:10', '2017-11-14 22:52:10', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?post_type=polylang_mo&p=6', 0, 'polylang_mo', '', 0),
(7, 1, '2017-11-14 23:52:40', '2017-11-14 22:52:40', '', 'polylang_mo_5', '', 'private', 'closed', 'closed', '', 'polylang_mo_5', '', '', '2017-11-14 23:52:40', '2017-11-14 22:52:40', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?post_type=polylang_mo&p=7', 0, 'polylang_mo', '', 0),
(10, 1, '2017-11-15 00:10:55', '2017-11-14 23:10:55', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"song";}}}s:8:"position";s:6:"normal";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:15:{i:0;s:9:"permalink";i:1;s:11:"the_content";i:2;s:7:"excerpt";i:3;s:13:"custom_fields";i:4;s:10:"discussion";i:5;s:8:"comments";i:6;s:9:"revisions";i:7;s:4:"slug";i:8;s:6:"author";i:9;s:6:"format";i:10;s:15:"page_attributes";i:11;s:14:"featured_image";i:12;s:10:"categories";i:13;s:4:"tags";i:14;s:15:"send-trackbacks";}s:11:"description";s:0:"";}', 'Songs', 'songs', 'publish', 'closed', 'closed', '', 'group_59e5ba6408147', '', '', '2017-11-15 09:50:46', '2017-11-15 08:50:46', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field-group&#038;p=10', 0, 'acf-field-group', '', 0),
(11, 1, '2017-11-15 00:10:56', '2017-11-14 23:10:56', 'a:11:{s:4:"type";s:8:"textarea";s:5:"value";N;s:12:"instructions";s:0:"";s:8:"required";i:1;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";s:17:"conditional_logic";a:1:{i:0;a:1:{i:0;a:3:{s:5:"field";s:19:"field_5a0b7859bc78e";s:8:"operator";s:2:"==";s:5:"value";s:5:"Album";}}}}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_59e5ba786acd3', '', '', '2017-11-15 09:43:27', '2017-11-15 08:43:27', '', 10, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&#038;p=11', 3, 'acf-field', '', 0),
(12, 1, '2017-11-15 00:10:56', '2017-11-14 23:10:56', 'a:16:{s:4:"type";s:5:"image";s:5:"value";N;s:12:"instructions";s:0:"";s:8:"required";i:1;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:17:"conditional_logic";a:2:{i:0;a:1:{i:0;a:3:{s:5:"field";s:19:"field_5a0b7859bc78e";s:8:"operator";s:2:"==";s:5:"value";s:5:"Album";}}i:1;a:1:{i:0;a:3:{s:5:"field";s:19:"field_5a0b7859bc78e";s:8:"operator";s:2:"==";s:5:"value";s:6:"Single";}}}}', 'Picture', 'picture', 'publish', 'closed', 'closed', '', 'field_59e5bdd90a9b6', '', '', '2017-11-15 09:43:27', '2017-11-15 08:43:27', '', 10, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&#038;p=12', 4, 'acf-field', '', 0),
(13, 1, '2017-11-15 00:10:56', '2017-11-14 23:10:56', 'a:11:{s:4:"type";s:8:"repeater";s:5:"value";N;s:12:"instructions";s:11:"Add a track";s:8:"required";i:1;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:11:"Add a track";s:17:"conditional_logic";a:1:{i:0;a:1:{i:0;a:3:{s:5:"field";s:19:"field_5a0b7859bc78e";s:8:"operator";s:2:"==";s:5:"value";s:5:"Album";}}}}', 'Tracks', 'tracks', 'publish', 'closed', 'closed', '', 'field_59e5baef6680a', '', '', '2017-11-15 09:43:27', '2017-11-15 08:43:27', '', 10, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&#038;p=13', 5, 'acf-field', '', 0),
(14, 1, '2017-11-15 00:10:56', '2017-11-14 23:10:56', 'a:11:{s:4:"type";s:4:"text";s:5:"value";N;s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_59e5bb2d6680b', '', '', '2017-11-15 00:10:56', '2017-11-14 23:10:56', '', 13, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&p=14', 0, 'acf-field', '', 0),
(15, 1, '2017-11-15 00:10:56', '2017-11-14 23:10:56', 'a:11:{s:4:"type";s:4:"text";s:5:"value";N;s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Duration', 'duration', 'publish', 'closed', 'closed', '', 'field_59e5bb386680c', '', '', '2017-11-15 00:10:56', '2017-11-14 23:10:56', '', 13, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&p=15', 1, 'acf-field', '', 0),
(16, 1, '2017-11-15 00:10:56', '2017-11-14 23:10:56', 'a:8:{s:4:"type";s:3:"url";s:5:"value";N;s:12:"instructions";s:34:"Add a Itunes link to buy the album";s:8:"required";i:1;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:17:"conditional_logic";a:1:{i:0;a:1:{i:0;a:3:{s:5:"field";s:19:"field_5a0b7859bc78e";s:8:"operator";s:2:"==";s:5:"value";s:5:"Album";}}}}', 'Buy', 'buy', 'publish', 'closed', 'closed', '', 'field_59e5c8a580355', '', '', '2017-11-15 09:43:41', '2017-11-15 08:43:41', '', 10, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&#038;p=16', 6, 'acf-field', '', 0),
(17, 1, '2017-11-15 00:10:56', '2017-11-14 23:10:56', 'a:7:{s:8:"location";a:2:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"36";}}i:1;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"65";}}}s:8:"position";s:6:"normal";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:2:{i:0;s:11:"the_content";i:1;s:9:"revisions";}s:11:"description";s:0:"";}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_59e5bcd60a48b', '', '', '2017-11-15 09:55:05', '2017-11-15 08:55:05', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field-group&#038;p=17', 0, 'acf-field-group', '', 0),
(18, 1, '2017-11-15 00:10:56', '2017-11-14 23:10:56', 'a:8:{s:4:"type";s:3:"tab";s:5:"value";N;s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Last album', '', 'publish', 'closed', 'closed', '', 'field_59e5cfa2d0624', '', '', '2017-11-15 09:53:19', '2017-11-15 08:53:19', '', 17, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&#038;p=18', 0, 'acf-field', '', 0),
(19, 1, '2017-11-15 00:10:56', '2017-11-14 23:10:56', 'a:11:{s:4:"type";s:10:"true_false";s:5:"value";N;s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"message";s:0:"";s:13:"default_value";i:1;s:2:"ui";i:1;s:10:"ui_on_text";s:3:"Yes";s:11:"ui_off_text";s:3:"Non";}', 'Show', 'show-last-album', 'publish', 'closed', 'closed', '', 'field_59e5ee2eda0ad', '', '', '2017-11-15 00:10:56', '2017-11-14 23:10:56', '', 17, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&p=19', 1, 'acf-field', '', 0),
(20, 1, '2017-11-15 00:10:56', '2017-11-14 23:10:56', 'a:14:{s:4:"type";s:6:"select";s:5:"value";N;s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:3:{i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";}s:13:"default_value";a:1:{i:0;i:1;}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:0;s:4:"ajax";i:0;s:13:"return_format";s:5:"value";s:11:"placeholder";s:0:"";s:17:"conditional_logic";a:1:{i:0;a:1:{i:0;a:3:{s:5:"field";s:19:"field_59e5ee2eda0ad";s:8:"operator";s:2:"!=";s:5:"value";s:1:"1";}}}}', 'Order', 'order', 'publish', 'closed', 'closed', '', 'field_59e5d18494136', '', '', '2017-11-15 00:10:56', '2017-11-14 23:10:56', '', 17, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&p=20', 2, 'acf-field', '', 0),
(21, 1, '2017-11-15 00:10:56', '2017-11-14 23:10:56', 'a:13:{s:4:"type";s:12:"relationship";s:5:"value";N;s:12:"instructions";s:41:"Select the last album to show in homepage";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"post_type";a:1:{i:0;s:4:"song";}s:8:"taxonomy";a:0:{}s:7:"filters";a:1:{i:0;s:6:"search";}s:8:"elements";s:0:"";s:3:"min";s:0:"";s:3:"max";i:1;s:13:"return_format";s:6:"object";}', 'Album', 'last_album', 'publish', 'closed', 'closed', '', 'field_59e5bcd96638c', '', '', '2017-11-15 09:55:05', '2017-11-15 08:55:05', '', 17, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&#038;p=21', 3, 'acf-field', '', 0),
(22, 1, '2017-11-15 00:10:56', '2017-11-14 23:10:56', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Tour', '', 'publish', 'closed', 'closed', '', 'field_59e5efff7ee2c', '', '', '2017-11-15 00:10:56', '2017-11-14 23:10:56', '', 17, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&p=22', 4, 'acf-field', '', 0),
(23, 1, '2017-11-15 00:10:56', '2017-11-14 23:10:56', 'a:17:{s:4:"type";s:7:"gallery";s:5:"value";N;s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:3:"min";i:4;s:3:"max";s:0:"";s:6:"insert";s:6:"append";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:17:".png, .jpg, .jpeg";}', 'Slider', 'slider', 'publish', 'closed', 'closed', '', 'field_59e9b27d3b1a3', '', '', '2017-11-15 00:10:56', '2017-11-14 23:10:56', '', 17, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&p=23', 5, 'acf-field', '', 0),
(24, 1, '2017-11-15 00:10:56', '2017-11-14 23:10:56', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Section 3', '', 'publish', 'closed', 'closed', '', 'field_59e5f2bf5f05f', '', '', '2017-11-15 00:10:56', '2017-11-14 23:10:56', '', 17, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&p=24', 6, 'acf-field', '', 0),
(25, 1, '2017-11-15 00:10:56', '2017-11-14 23:10:56', 'a:11:{s:4:"type";s:4:"text";s:5:"value";N;s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:5:"Music";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Title', 'title-section-3', 'publish', 'closed', 'closed', '', 'field_59e5f2e773334', '', '', '2017-11-15 00:10:56', '2017-11-14 23:10:56', '', 17, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&p=25', 7, 'acf-field', '', 0),
(26, 1, '2017-11-15 00:10:56', '2017-11-14 23:10:56', 'a:9:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"tour";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:15:{i:0;s:9:"permalink";i:1;s:11:"the_content";i:2;s:7:"excerpt";i:3;s:13:"custom_fields";i:4;s:10:"discussion";i:5;s:8:"comments";i:6;s:9:"revisions";i:7;s:4:"slug";i:8;s:6:"author";i:9;s:6:"format";i:10;s:15:"page_attributes";i:11;s:14:"featured_image";i:12;s:10:"categories";i:13;s:4:"tags";i:14;s:15:"send-trackbacks";}s:11:"description";s:0:"";s:8:"modified";i:1509316711;s:5:"local";s:4:"json";}', 'Tour', 'tour', 'publish', 'closed', 'closed', '', 'group_59de9b26a29f4', '', '', '2017-11-15 00:10:56', '2017-11-14 23:10:56', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field-group&p=26', 0, 'acf-field-group', '', 0),
(27, 1, '2017-11-15 00:10:56', '2017-11-14 23:10:56', 'a:11:{s:4:"type";s:8:"repeater";s:5:"value";N;s:12:"instructions";s:22:"Add a new concert date";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:19:"field_59de9b90a70d7";s:3:"min";i:0;s:3:"max";i:0;s:6:"layout";s:3:"row";s:12:"button_label";s:14:"Add a new date";}', 'New date', 'locations', 'publish', 'closed', 'closed', '', 'field_59de9b3ba70d3', '', '', '2017-11-15 00:10:56', '2017-11-14 23:10:56', '', 26, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&p=27', 0, 'acf-field', '', 0),
(28, 1, '2017-11-15 00:10:56', '2017-11-14 23:10:56', 'a:9:{s:4:"type";s:11:"date_picker";s:5:"value";N;s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:14:"display_format";s:5:"d/m/Y";s:13:"return_format";s:5:"d/m/Y";s:9:"first_day";i:1;}', 'Date', 'date', 'publish', 'closed', 'closed', '', 'field_59de9b70a70d6', '', '', '2017-11-15 00:10:56', '2017-11-14 23:10:56', '', 27, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&p=28', 0, 'acf-field', '', 0),
(29, 1, '2017-11-15 00:10:56', '2017-11-14 23:10:56', 'a:7:{s:4:"type";s:4:"link";s:5:"value";N;s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";}', 'Tickets', 'tickets', 'publish', 'closed', 'closed', '', 'field_59de9c8cf959d', '', '', '2017-11-15 00:10:56', '2017-11-14 23:10:56', '', 27, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&p=29', 1, 'acf-field', '', 0),
(30, 1, '2017-11-15 00:10:56', '2017-11-14 23:10:56', 'a:11:{s:4:"type";s:4:"text";s:5:"value";N;s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Theater', 'theater', 'publish', 'closed', 'closed', '', 'field_59df3a8a6d9b0', '', '', '2017-11-15 00:10:56', '2017-11-14 23:10:56', '', 27, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&p=30', 2, 'acf-field', '', 0),
(31, 1, '2017-11-15 00:10:56', '2017-11-14 23:10:56', 'a:10:{s:4:"type";s:10:"google_map";s:5:"value";N;s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:10:"center_lat";s:0:"";s:10:"center_lng";s:0:"";s:4:"zoom";s:0:"";s:6:"height";s:0:"";}', 'City', 'city', 'publish', 'closed', 'closed', '', 'field_59de9b90a70d7', '', '', '2017-11-15 00:10:56', '2017-11-14 23:10:56', '', 27, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&p=31', 3, 'acf-field', '', 0),
(32, 1, '2017-11-15 00:13:12', '2017-11-14 23:13:12', 'a:14:{s:4:"type";s:6:"select";s:5:"value";N;s:12:"instructions";s:23:"Select the music to add";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:3:{s:5:"Album";s:5:"Album";s:6:"Single";s:6:"Single";s:4:"Clip";s:4:"Clip";}s:13:"default_value";a:0:{}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:0;s:4:"ajax";i:0;s:13:"return_format";s:5:"value";s:11:"placeholder";s:0:"";}', 'Type', 'type', 'publish', 'closed', 'closed', '', 'field_5a0b7859bc78e', '', '', '2017-11-15 09:50:46', '2017-11-15 08:50:46', '', 10, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&#038;p=32', 0, 'acf-field', '', 0),
(36, 1, '2017-11-15 00:19:41', '2017-11-14 23:19:41', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2017-11-15 09:56:14', '2017-11-15 08:56:14', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?page_id=36', 0, 'page', '', 0),
(37, 1, '2017-11-15 00:19:41', '2017-11-14 23:19:41', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2017-11-15 00:19:41', '2017-11-14 23:19:41', '', 36, 'http://localhost:8888/h3/kygo_wordpress/2017/11/15/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2017-11-15 00:19:56', '2017-11-14 23:19:56', '', 'Tour', '', 'publish', 'closed', 'closed', '', 'tour', '', '', '2017-11-20 19:40:51', '2017-11-20 18:40:51', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?page_id=38', 0, 'page', '', 0),
(39, 1, '2017-11-15 00:19:56', '2017-11-14 23:19:56', '', 'Tour', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2017-11-15 00:19:56', '2017-11-14 23:19:56', '', 38, 'http://localhost:8888/h3/kygo_wordpress/2017/11/15/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2017-11-15 00:20:21', '2017-11-14 23:20:21', '', 'Discographie', '', 'publish', 'closed', 'closed', '', 'music', '', '', '2017-11-15 17:57:09', '2017-11-15 16:57:09', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?page_id=40', 0, 'page', '', 0),
(41, 1, '2017-11-15 00:20:21', '2017-11-14 23:20:21', '', 'Music', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2017-11-15 00:20:21', '2017-11-14 23:20:21', '', 40, 'http://localhost:8888/h3/kygo_wordpress/2017/11/15/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2017-11-15 00:20:35', '2017-11-14 23:20:35', '', 'Actualités', '', 'publish', 'closed', 'closed', '', 'actualites', '', '', '2017-11-20 19:41:14', '2017-11-20 18:41:14', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?page_id=42', 0, 'page', '', 0),
(43, 1, '2017-11-15 00:20:35', '2017-11-14 23:20:35', '', 'Actualités', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2017-11-15 00:20:35', '2017-11-14 23:20:35', '', 42, 'http://localhost:8888/h3/kygo_wordpress/2017/11/15/42-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2017-11-15 00:22:48', '2017-11-14 23:22:48', '', 'Logo-1', '', 'inherit', 'open', 'closed', '', 'logo-1', '', '', '2017-11-15 00:22:48', '2017-11-14 23:22:48', '', 0, 'http://localhost:8888/h3/kygo_wordpress/wp-content/uploads/2017/11/Logo-1.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2017-11-15 00:23:00', '2017-11-14 23:23:00', '{"kygo::custom_logo":{"value":48,"type":"theme_mod","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', '77a37ad5-7649-4f3c-8f29-a93f29f6baf1', '', '', '2017-11-15 00:23:00', '2017-11-14 23:23:00', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?p=49', 0, 'customize_changeset', '', 0),
(50, 1, '2017-11-15 00:28:02', '2017-11-14 23:28:02', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2017-11-15 14:58:35', '2017-11-15 13:58:35', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?p=50', 3, 'nav_menu_item', '', 0),
(51, 1, '2017-11-15 00:28:02', '2017-11-14 23:28:02', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2017-11-15 14:58:35', '2017-11-15 13:58:35', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?p=51', 4, 'nav_menu_item', '', 0),
(52, 1, '2017-11-15 00:28:02', '2017-11-14 23:28:02', '', 'Soundcloud', '', 'publish', 'closed', 'closed', '', 'soundcloud', '', '', '2017-11-15 14:58:35', '2017-11-15 13:58:35', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?p=52', 1, 'nav_menu_item', '', 0),
(53, 1, '2017-11-15 00:28:02', '2017-11-14 23:28:02', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2017-11-15 14:58:35', '2017-11-15 13:58:35', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?p=53', 5, 'nav_menu_item', '', 0),
(54, 1, '2017-11-15 00:28:03', '2017-11-14 23:28:03', '', 'Tumblr', '', 'publish', 'closed', 'closed', '', 'tumblr', '', '', '2017-11-15 14:58:35', '2017-11-15 13:58:35', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?p=54', 2, 'nav_menu_item', '', 0),
(55, 1, '2017-11-15 00:26:28', '2017-11-14 23:26:28', '', 'Facebook', '', 'inherit', 'open', 'closed', '', 'facebook', '', '', '2017-11-15 00:26:28', '2017-11-14 23:26:28', '', 0, 'http://localhost:8888/h3/kygo_wordpress/wp-content/uploads/2017/11/Facebook.svg', 0, 'attachment', 'image/svg+xml', 0),
(56, 1, '2017-11-15 00:26:51', '2017-11-14 23:26:51', '', 'Instagram', '', 'inherit', 'open', 'closed', '', 'instagram', '', '', '2017-11-15 00:26:51', '2017-11-14 23:26:51', '', 0, 'http://localhost:8888/h3/kygo_wordpress/wp-content/uploads/2017/11/Instagram.svg', 0, 'attachment', 'image/svg+xml', 0),
(57, 1, '2017-11-15 00:26:52', '2017-11-14 23:26:52', '', 'Soundcloud', '', 'inherit', 'open', 'closed', '', 'soundcloud', '', '', '2017-11-15 00:26:52', '2017-11-14 23:26:52', '', 0, 'http://localhost:8888/h3/kygo_wordpress/wp-content/uploads/2017/11/Soundcloud.svg', 0, 'attachment', 'image/svg+xml', 0),
(58, 1, '2017-11-15 00:26:53', '2017-11-14 23:26:53', '', 'tumblr-logo', '', 'inherit', 'open', 'closed', '', 'tumblr-logo', '', '', '2017-11-15 00:26:53', '2017-11-14 23:26:53', '', 0, 'http://localhost:8888/h3/kygo_wordpress/wp-content/uploads/2017/11/tumblr-logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(59, 1, '2017-11-15 00:26:53', '2017-11-14 23:26:53', '', 'Twitter', '', 'inherit', 'open', 'closed', '', 'twitter', '', '', '2017-11-15 00:26:53', '2017-11-14 23:26:53', '', 0, 'http://localhost:8888/h3/kygo_wordpress/wp-content/uploads/2017/11/Twitter.svg', 0, 'attachment', 'image/svg+xml', 0),
(65, 1, '2017-11-15 00:50:54', '2017-11-14 23:50:54', '', 'Home', '', 'publish', 'closed', 'closed', '', '65-2', '', '', '2017-11-15 00:52:03', '2017-11-14 23:52:03', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?page_id=65', 0, 'page', '', 0),
(66, 1, '2017-11-15 00:50:54', '2017-11-14 23:50:54', '', '', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2017-11-15 00:50:54', '2017-11-14 23:50:54', '', 65, 'http://localhost:8888/h3/kygo_wordpress/2017/11/15/65-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2017-11-15 00:52:03', '2017-11-14 23:52:03', '', 'Home', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2017-11-15 00:52:03', '2017-11-14 23:52:03', '', 65, 'http://localhost:8888/h3/kygo_wordpress/2017/11/15/65-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2017-11-15 09:43:27', '2017-11-15 08:43:27', 'a:11:{s:4:"type";s:4:"text";s:5:"value";N;s:12:"instructions";s:5:"Titre";s:8:"required";i:1;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{i:0;a:1:{i:0;a:3:{s:5:"field";s:19:"field_5a0b7859bc78e";s:8:"operator";s:2:"==";s:5:"value";s:5:"Album";}}i:1;a:1:{i:0;a:3:{s:5:"field";s:19:"field_5a0b7859bc78e";s:8:"operator";s:2:"==";s:5:"value";s:6:"Single";}}i:2;a:1:{i:0;a:3:{s:5:"field";s:19:"field_5a0b7859bc78e";s:8:"operator";s:2:"==";s:5:"value";s:4:"Clip";}}}}', 'Titre', 'title', 'publish', 'closed', 'closed', '', 'field_5a0bfce6944fe', '', '', '2017-11-15 09:43:27', '2017-11-15 08:43:27', '', 10, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&p=72', 1, 'acf-field', '', 0),
(73, 1, '2017-11-15 09:43:27', '2017-11-15 08:43:27', 'a:14:{s:4:"type";s:8:"taxonomy";s:5:"value";N;s:12:"instructions";s:0:"";s:8:"required";i:1;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:8:"taxonomy";s:4:"type";s:10:"field_type";s:6:"select";s:10:"allow_null";i:0;s:8:"add_term";i:1;s:10:"save_terms";i:0;s:10:"load_terms";i:0;s:13:"return_format";s:2:"id";s:8:"multiple";i:0;s:17:"conditional_logic";a:3:{i:0;a:1:{i:0;a:3:{s:5:"field";s:19:"field_5a0b7859bc78e";s:8:"operator";s:2:"==";s:5:"value";s:5:"Album";}}i:1;a:1:{i:0;a:3:{s:5:"field";s:19:"field_5a0b7859bc78e";s:8:"operator";s:2:"==";s:5:"value";s:6:"Single";}}i:2;a:1:{i:0;a:3:{s:5:"field";s:19:"field_5a0b7859bc78e";s:8:"operator";s:2:"==";s:5:"value";s:4:"Clip";}}}}', 'Type', 'type', 'publish', 'closed', 'closed', '', 'field_5a0bfd00944ff', '', '', '2017-11-15 09:43:27', '2017-11-15 08:43:27', '', 10, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&p=73', 2, 'acf-field', '', 0),
(74, 1, '2017-11-15 09:43:27', '2017-11-15 08:43:27', 'a:8:{s:4:"type";s:3:"url";s:5:"value";N;s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Soundcloud', 'soundcloud', 'publish', 'closed', 'closed', '', 'field_5a0bfdc794505', '', '', '2017-11-15 09:43:27', '2017-11-15 08:43:27', '', 13, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&p=74', 2, 'acf-field', '', 0),
(75, 1, '2017-11-15 09:43:27', '2017-11-15 08:43:27', 'a:8:{s:4:"type";s:3:"url";s:5:"value";N;s:12:"instructions";s:0:"";s:8:"required";i:1;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:17:"conditional_logic";a:1:{i:0;a:1:{i:0;a:3:{s:5:"field";s:19:"field_5a0b7859bc78e";s:8:"operator";s:2:"==";s:5:"value";s:4:"Clip";}}}}', 'URL Clip', 'url_clip', 'publish', 'closed', 'closed', '', 'field_5a0bfe1594506', '', '', '2017-11-15 09:43:27', '2017-11-15 08:43:27', '', 10, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&p=75', 7, 'acf-field', '', 0),
(79, 1, '2017-11-15 09:49:03', '2017-11-15 08:49:03', '', 'Stargazing', '', 'publish', 'closed', 'closed', '', '79', '', '', '2017-11-15 09:54:22', '2017-11-15 08:54:22', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?post_type=song&#038;p=79', 0, 'song', '', 0),
(80, 1, '2017-11-15 09:47:50', '2017-11-15 08:47:50', '', 'stargazing', '', 'inherit', 'open', 'closed', '', 'stargazing', '', '', '2017-11-15 09:47:52', '2017-11-15 08:47:52', '', 79, 'http://localhost:8888/h3/kygo_wordpress/wp-content/uploads/2017/11/stargazing.jpeg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2017-11-15 09:56:00', '2017-11-15 08:56:00', '', 'kygo-encore-photo-johanneslovund-8518', '', 'inherit', 'open', 'closed', '', 'kygo-encore-photo-johanneslovund-8518', '', '', '2017-11-15 09:56:07', '2017-11-15 08:56:07', '', 36, 'http://localhost:8888/h3/kygo_wordpress/wp-content/uploads/2017/11/kygo-encore-photo-johanneslovund-8518.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2017-11-15 09:56:02', '2017-11-15 08:56:02', '', 'kygo-south-korea-photo-johanneslovund-7631', '', 'inherit', 'open', 'closed', '', 'kygo-south-korea-photo-johanneslovund-7631', '', '', '2017-11-15 09:56:02', '2017-11-15 08:56:02', '', 36, 'http://localhost:8888/h3/kygo_wordpress/wp-content/uploads/2017/11/kygo-south-korea-photo-johanneslovund-7631.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2017-11-15 09:56:03', '2017-11-15 08:56:03', '', 'tokyo-photo-johanneslovund-0210', '', 'inherit', 'open', 'closed', '', 'tokyo-photo-johanneslovund-0210', '', '', '2017-11-15 09:56:03', '2017-11-15 08:56:03', '', 36, 'http://localhost:8888/h3/kygo_wordpress/wp-content/uploads/2017/11/tokyo-photo-johanneslovund-0210.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2017-11-15 09:56:04', '2017-11-15 08:56:04', '', 'tour', '', 'inherit', 'open', 'closed', '', 'tour-2', '', '', '2017-11-15 09:56:04', '2017-11-15 08:56:04', '', 36, 'http://localhost:8888/h3/kygo_wordpress/wp-content/uploads/2017/11/tour.png', 0, 'attachment', 'image/png', 0),
(85, 1, '2017-11-15 09:56:14', '2017-11-15 08:56:14', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2017-11-15 09:56:14', '2017-11-15 08:56:14', '', 36, 'http://localhost:8888/h3/kygo_wordpress/2017/11/15/36-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2017-11-15 11:15:47', '2017-11-15 10:15:47', '', 'Store', '', 'publish', 'closed', 'closed', '', 'store', '', '', '2017-11-15 11:15:59', '2017-11-15 10:15:59', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?p=91', 1, 'nav_menu_item', '', 0),
(92, 1, '2017-11-15 11:17:57', '2017-11-15 10:17:57', '', 'Boutique', '', 'publish', 'closed', 'closed', '', 'boutique', '', '', '2017-11-15 11:17:57', '2017-11-15 10:17:57', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?p=92', 1, 'nav_menu_item', '', 0),
(93, 1, '2017-11-15 11:18:29', '2017-11-15 10:18:29', '', 'Language switcher', '', 'publish', 'closed', 'closed', '', 'language-switcher', '', '', '2017-11-15 11:18:29', '2017-11-15 10:18:29', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?p=93', 1, 'nav_menu_item', '', 0),
(94, 1, '2017-11-15 14:10:23', '2017-11-15 13:10:23', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2017-11-20 21:43:16', '2017-11-20 20:43:16', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?page_id=94', 0, 'page', '', 0),
(95, 1, '2017-11-15 14:10:23', '2017-11-15 13:10:23', '', 'News', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2017-11-15 14:10:23', '2017-11-15 13:10:23', '', 94, 'http://localhost:8888/h3/kygo_wordpress/2017/11/15/94-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2017-11-15 14:13:37', '2017-11-15 13:13:37', '', 'Music', '', 'publish', 'closed', 'closed', '', 'music-2', '', '', '2017-11-15 14:13:37', '2017-11-15 13:13:37', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?page_id=96', 0, 'page', '', 0),
(97, 1, '2017-11-15 14:13:37', '2017-11-15 13:13:37', '', 'Music', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2017-11-15 14:13:37', '2017-11-15 13:13:37', '', 96, 'http://localhost:8888/h3/kygo_wordpress/2017/11/15/96-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2017-11-15 14:14:20', '2017-11-15 13:14:20', '', 'Tour', '', 'publish', 'closed', 'closed', '', 'tour-2', '', '', '2017-11-20 19:40:58', '2017-11-20 18:40:58', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?page_id=98', 0, 'page', '', 0),
(99, 1, '2017-11-15 14:14:21', '2017-11-15 13:14:21', '', 'Tour', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2017-11-15 14:14:21', '2017-11-15 13:14:21', '', 98, 'http://localhost:8888/h3/kygo_wordpress/2017/11/15/98-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2017-11-15 14:15:41', '2017-11-15 13:15:41', ' ', '', '', 'publish', 'closed', 'closed', '', '100', '', '', '2017-11-15 14:15:41', '2017-11-15 13:15:41', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?p=100', 2, 'nav_menu_item', '', 0),
(101, 1, '2017-11-15 14:15:41', '2017-11-15 13:15:41', ' ', '', '', 'publish', 'closed', 'closed', '', '101', '', '', '2017-11-15 14:15:41', '2017-11-15 13:15:41', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?p=101', 3, 'nav_menu_item', '', 0),
(102, 1, '2017-11-15 14:15:41', '2017-11-15 13:15:41', ' ', '', '', 'publish', 'closed', 'closed', '', '102', '', '', '2017-11-15 14:15:41', '2017-11-15 13:15:41', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?p=102', 4, 'nav_menu_item', '', 0),
(103, 1, '2017-11-15 14:15:41', '2017-11-15 13:15:41', ' ', '', '', 'publish', 'closed', 'closed', '', '103', '', '', '2017-11-15 14:15:41', '2017-11-15 13:15:41', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?p=103', 1, 'nav_menu_item', '', 0),
(104, 1, '2017-11-15 14:16:48', '2017-11-15 13:16:48', ' ', '', '', 'publish', 'closed', 'closed', '', '104', '', '', '2017-11-15 14:16:48', '2017-11-15 13:16:48', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?p=104', 4, 'nav_menu_item', '', 0),
(105, 1, '2017-11-15 14:16:48', '2017-11-15 13:16:48', ' ', '', '', 'publish', 'closed', 'closed', '', '105', '', '', '2017-11-15 14:16:48', '2017-11-15 13:16:48', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?p=105', 3, 'nav_menu_item', '', 0),
(106, 1, '2017-11-15 14:16:48', '2017-11-15 13:16:48', ' ', '', '', 'publish', 'closed', 'closed', '', '106', '', '', '2017-11-15 14:16:48', '2017-11-15 13:16:48', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?p=106', 2, 'nav_menu_item', '', 0),
(107, 1, '2017-11-15 14:16:48', '2017-11-15 13:16:48', ' ', '', '', 'publish', 'closed', 'closed', '', '107', '', '', '2017-11-15 14:16:48', '2017-11-15 13:16:48', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?p=107', 1, 'nav_menu_item', '', 0),
(109, 1, '2017-11-15 17:57:09', '2017-11-15 16:57:09', '', 'Discographie', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2017-11-15 17:57:09', '2017-11-15 16:57:09', '', 40, 'http://localhost:8888/h3/kygo_wordpress/2017/11/15/40-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2017-11-17 18:21:23', '2017-11-17 17:21:23', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:22:"theme-general-settings";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Theme Settings', 'theme-settings', 'publish', 'closed', 'closed', '', 'group_5a0f1a14acc44', '', '', '2017-11-17 18:37:26', '2017-11-17 17:37:26', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field-group&#038;p=110', 0, 'acf-field-group', '', 0),
(111, 1, '2017-11-17 18:21:23', '2017-11-17 17:21:23', 'a:11:{s:4:"type";s:4:"text";s:5:"value";N;s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Artist name', 'artist_name', 'publish', 'closed', 'closed', '', 'field_5a0f1a26e2b7a', '', '', '2017-11-17 18:21:23', '2017-11-17 17:21:23', '', 110, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&p=111', 0, 'acf-field', '', 0),
(112, 1, '2017-11-17 18:21:23', '2017-11-17 17:21:23', 'a:7:{s:4:"type";s:12:"color_picker";s:5:"value";N;s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";}', 'Main color', 'main_color_', 'publish', 'closed', 'closed', '', 'field_5a0f1a37e2b7b', '', '', '2017-11-17 18:21:23', '2017-11-17 17:21:23', '', 110, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&p=112', 1, 'acf-field', '', 0),
(113, 1, '2017-11-17 18:36:51', '2017-11-17 17:36:51', 'a:11:{s:4:"type";s:10:"true_false";s:5:"value";N;s:12:"instructions";s:43:"Activate important message on the home page";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"message";s:0:"";s:13:"default_value";i:0;s:2:"ui";i:1;s:10:"ui_on_text";s:0:"";s:11:"ui_off_text";s:0:"";}', 'Alert', 'popup', 'publish', 'closed', 'closed', '', 'field_5a0f1dd9322dc', '', '', '2017-11-17 18:37:26', '2017-11-17 17:37:26', '', 110, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&#038;p=113', 2, 'acf-field', '', 0),
(114, 1, '2017-11-17 18:36:52', '2017-11-17 17:36:52', 'a:11:{s:4:"type";s:4:"text";s:5:"value";N;s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:1:{i:0;a:1:{i:0;a:3:{s:5:"field";s:19:"field_5a0f1dd9322dc";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";}}}}', 'Alert message', 'alert_message', 'publish', 'closed', 'closed', '', 'field_5a0f1df2322dd', '', '', '2017-11-17 18:36:52', '2017-11-17 17:36:52', '', 110, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&p=114', 3, 'acf-field', '', 0),
(115, 1, '2017-11-17 18:43:25', '0000-00-00 00:00:00', '', 'French Tour', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-17 18:43:25', '2017-11-17 17:43:25', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?post_type=tour&#038;p=115', 0, 'tour', '', 0),
(116, 1, '2017-11-18 09:57:22', '2017-11-18 08:57:22', '', 'French tour', '', 'publish', 'closed', 'closed', '', 'french-tour', '', '', '2017-11-18 09:57:22', '2017-11-18 08:57:22', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?post_type=tour&#038;p=116', 0, 'tour', '', 0),
(120, 1, '2017-11-18 18:41:16', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-18 18:41:16', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?page_id=120', 0, 'page', '', 0),
(121, 1, '2017-11-18 18:41:24', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-18 18:41:24', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?page_id=121', 0, 'page', '', 0),
(122, 1, '2017-11-19 11:09:14', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-19 11:09:14', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?page_id=122', 0, 'page', '', 0),
(123, 1, '2017-11-19 11:15:05', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-19 11:15:05', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?page_id=123', 0, 'page', '', 0),
(124, 1, '2017-11-19 11:15:15', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-19 11:15:15', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?page_id=124', 0, 'page', '', 0),
(125, 1, '2017-11-19 12:03:00', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-19 12:03:00', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?page_id=125', 0, 'page', '', 0),
(126, 1, '2017-11-19 12:04:38', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-19 12:04:38', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?page_id=126', 0, 'page', '', 0),
(127, 1, '2017-11-19 12:05:28', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-19 12:05:28', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?page_id=127', 0, 'page', '', 0),
(128, 1, '2017-11-19 12:06:10', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-19 12:06:10', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?page_id=128', 0, 'page', '', 0),
(129, 1, '2017-11-19 12:07:20', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-19 12:07:20', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?page_id=129', 0, 'page', '', 0),
(130, 1, '2017-11-19 12:10:21', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-19 12:10:21', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?page_id=130', 0, 'page', '', 0),
(131, 1, '2017-11-19 12:16:40', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-19 12:16:40', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?page_id=131', 0, 'page', '', 0),
(132, 1, '2017-11-19 12:38:34', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-19 12:38:34', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?page_id=132', 0, 'page', '', 0),
(133, 1, '2017-11-19 12:39:36', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-19 12:39:36', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?page_id=133', 0, 'page', '', 0) ;
INSERT INTO `kygomusic_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(134, 1, '2017-11-19 12:42:49', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-19 12:42:49', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?page_id=134', 0, 'page', '', 0),
(135, 1, '2017-11-19 12:43:04', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-19 12:43:04', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?page_id=135', 0, 'page', '', 0),
(136, 1, '2017-11-19 12:43:30', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-19 12:43:30', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?page_id=136', 0, 'page', '', 0),
(137, 1, '2017-11-19 16:56:39', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-19 16:56:39', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?page_id=137', 0, 'page', '', 0),
(138, 1, '2017-11-20 19:40:45', '2017-11-20 18:40:45', '', 'Tour', '', 'inherit', 'closed', 'closed', '', '38-autosave-v1', '', '', '2017-11-20 19:40:45', '2017-11-20 18:40:45', '', 38, 'http://localhost:8888/h3/kygo_wordpress/2017/11/20/38-autosave-v1/', 0, 'revision', '', 0),
(139, 1, '2017-11-20 21:05:45', '2017-11-20 20:05:45', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'News', 'news', 'publish', 'closed', 'closed', '', 'group_5a1334af67e57', '', '', '2017-11-20 21:30:00', '2017-11-20 20:30:00', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field-group&#038;p=139', 0, 'acf-field-group', '', 0),
(141, 1, '2017-11-20 21:05:50', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-20 21:05:50', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?p=141', 0, 'post', '', 0),
(142, 1, '2017-11-20 21:23:35', '2017-11-20 20:23:35', 'a:11:{s:4:"type";s:4:"text";s:5:"value";N;s:12:"instructions";s:31:"The description of your article";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:22:"My awesome description";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5a13360e24c93', '', '', '2017-11-20 21:23:35', '2017-11-20 20:23:35', '', 139, 'http://localhost:8888/h3/kygo_wordpress/?post_type=acf-field&p=142', 0, 'acf-field', '', 0),
(145, 1, '2017-11-20 21:33:24', '2017-11-20 20:33:24', 'Check out this video where Kygo and Bono talk about their collaboration, and catch a glimpse of when Kygo premiered the song at his own Cloud Nine Festival in Bergen.\r\n\r\n[embed]https://www.youtube.com/watch?v=hEdvvTF5js4[/embed]\r\n\r\n&nbsp;', 'The Stargazing EP is out', '', 'publish', 'open', 'open', '', 'the-stargazing-ep-is-out', '', '', '2017-11-20 22:24:50', '2017-11-20 21:24:50', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?p=145', 0, 'post', '', 0),
(146, 1, '2017-11-20 21:27:27', '2017-11-20 20:27:27', '', 'image_kygo', '', 'inherit', 'open', 'closed', '', 'image_kygo', '', '', '2017-11-20 21:27:27', '2017-11-20 20:27:27', '', 145, 'http://localhost:8888/h3/kygo_wordpress/wp-content/uploads/2017/11/image_kygo.png', 0, 'attachment', 'image/png', 0),
(147, 1, '2017-11-20 21:33:24', '2017-11-20 20:33:24', 'iozhdoiahzdoihaziodha\r\n\r\n[embed]https://www.youtube.com/watch?v=hEdvvTF5js4[/embed]\r\n\r\n&nbsp;', 'The Stargazing EP is out', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2017-11-20 21:33:24', '2017-11-20 20:33:24', '', 145, 'http://localhost:8888/h3/kygo_wordpress/2017/11/20/145-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2017-11-20 21:35:02', '2017-11-20 20:35:02', 'Check out this video where Kygo and Bono talk about their collaboration, and catch a glimpse of when Kygo premiered the song at his own Cloud Nine Festival in Bergen.\n\n[embed]https://www.youtube.com/watch?v=hEdvvTF5js4[/embed]\n\n&nbsp;', 'The Stargazing EP is out', '', 'inherit', 'closed', 'closed', '', '145-autosave-v1', '', '', '2017-11-20 21:35:02', '2017-11-20 20:35:02', '', 145, 'http://localhost:8888/h3/kygo_wordpress/2017/11/20/145-autosave-v1/', 0, 'revision', '', 0),
(149, 1, '2017-11-20 21:35:19', '2017-11-20 20:35:19', 'Check out this video where Kygo and Bono talk about their collaboration, and catch a glimpse of when Kygo premiered the song at his own Cloud Nine Festival in Bergen.\r\n\r\n[embed]https://www.youtube.com/watch?v=hEdvvTF5js4[/embed]\r\n\r\n&nbsp;', 'The Stargazing EP is out', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2017-11-20 21:35:19', '2017-11-20 20:35:19', '', 145, 'http://localhost:8888/h3/kygo_wordpress/2017/11/20/145-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2017-11-20 22:28:56', '2017-11-20 21:28:56', 'test bla bla bla', 'Stargazing EP est sorti', '', 'publish', 'open', 'open', '', 'stargazing-ep-est-sorti', '', '', '2017-11-20 22:28:56', '2017-11-20 21:28:56', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?p=150', 0, 'post', '', 0),
(151, 1, '2017-11-20 22:28:56', '2017-11-20 21:28:56', 'test bla bla bla', 'Stargazing EP est sorti', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2017-11-20 22:28:56', '2017-11-20 21:28:56', '', 150, 'http://localhost:8888/h3/kygo_wordpress/2017/11/20/150-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2017-11-21 22:45:15', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-21 22:45:15', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/h3/kygo_wordpress/?p=152', 0, 'post', '', 0) ;

#
# End of data contents of table `kygomusic_posts`
# --------------------------------------------------------



#
# Delete any existing table `kygomusic_term_relationships`
#

DROP TABLE IF EXISTS `kygomusic_term_relationships`;


#
# Table structure of table `kygomusic_term_relationships`
#

CREATE TABLE `kygomusic_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `kygomusic_term_relationships`
#
INSERT INTO `kygomusic_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 3, 0),
(1, 4, 0),
(2, 2, 0),
(7, 4, 0),
(7, 6, 0),
(36, 2, 0),
(36, 11, 0),
(38, 2, 0),
(38, 21, 0),
(40, 2, 0),
(40, 20, 0),
(42, 2, 0),
(42, 19, 0),
(48, 2, 0),
(50, 10, 0),
(51, 10, 0),
(52, 10, 0),
(53, 10, 0),
(54, 10, 0),
(55, 2, 0),
(56, 2, 0),
(57, 2, 0),
(58, 2, 0),
(59, 2, 0),
(65, 5, 0),
(65, 11, 0),
(79, 2, 0),
(80, 2, 0),
(81, 2, 0),
(82, 2, 0),
(83, 2, 0),
(84, 2, 0),
(91, 16, 0),
(92, 17, 0),
(93, 18, 0),
(94, 5, 0),
(94, 19, 0),
(96, 5, 0),
(96, 20, 0),
(98, 5, 0),
(98, 21, 0),
(100, 15, 0),
(101, 15, 0),
(102, 15, 0),
(103, 15, 0),
(104, 9, 0),
(105, 9, 0),
(106, 9, 0),
(107, 9, 0),
(120, 2, 0),
(121, 5, 0),
(122, 5, 0),
(123, 5, 0),
(124, 5, 0),
(125, 5, 0),
(126, 5, 0),
(127, 5, 0),
(128, 5, 0),
(129, 5, 0),
(130, 5, 0),
(131, 5, 0),
(132, 5, 0),
(133, 5, 0),
(134, 5, 0),
(135, 5, 0),
(136, 5, 0),
(137, 5, 0),
(141, 5, 0),
(145, 5, 0),
(145, 7, 0),
(145, 22, 0),
(146, 5, 0),
(150, 1, 0),
(150, 2, 0),
(150, 22, 0),
(152, 5, 0) ;

#
# End of data contents of table `kygomusic_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `kygomusic_term_taxonomy`
#

DROP TABLE IF EXISTS `kygomusic_term_taxonomy`;


#
# Table structure of table `kygomusic_term_taxonomy`
#

CREATE TABLE `kygomusic_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `kygomusic_term_taxonomy`
#
INSERT INTO `kygomusic_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'language', 'a:3:{s:6:"locale";s:5:"fr_FR";s:3:"rtl";i:0;s:9:"flag_code";s:2:"fr";}', 0, 11),
(3, 3, 'term_language', '', 0, 1),
(4, 4, 'term_translations', 'a:2:{s:2:"fr";i:1;s:2:"en";i:7;}', 0, 2),
(5, 5, 'language', 'a:3:{s:6:"locale";s:5:"en_US";s:3:"rtl";i:0;s:9:"flag_code";s:2:"us";}', 0, 6),
(6, 6, 'term_language', '', 0, 1),
(7, 7, 'category', '', 0, 1),
(9, 9, 'nav_menu', '', 0, 4),
(10, 10, 'nav_menu', '', 0, 5),
(11, 11, 'post_translations', 'a:2:{s:2:"en";i:65;s:2:"fr";i:36;}', 0, 2),
(12, 12, 'type', '', 0, 0),
(13, 13, 'type', '', 0, 0),
(14, 14, 'type', '', 0, 0),
(15, 15, 'nav_menu', '', 0, 4),
(16, 16, 'nav_menu', '', 0, 1),
(17, 17, 'nav_menu', '', 0, 1),
(18, 18, 'nav_menu', '', 0, 1),
(19, 19, 'post_translations', 'a:2:{s:2:"en";i:94;s:2:"fr";i:42;}', 0, 2),
(20, 20, 'post_translations', 'a:2:{s:2:"fr";i:40;s:2:"en";i:96;}', 0, 2),
(21, 21, 'post_translations', 'a:2:{s:2:"en";i:98;s:2:"fr";i:38;}', 0, 2),
(22, 22, 'post_translations', 'a:2:{s:2:"fr";i:150;s:2:"en";i:145;}', 0, 2) ;

#
# End of data contents of table `kygomusic_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `kygomusic_termmeta`
#

DROP TABLE IF EXISTS `kygomusic_termmeta`;


#
# Table structure of table `kygomusic_termmeta`
#

CREATE TABLE `kygomusic_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `kygomusic_termmeta`
#

#
# End of data contents of table `kygomusic_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `kygomusic_terms`
#

DROP TABLE IF EXISTS `kygomusic_terms`;


#
# Table structure of table `kygomusic_terms`
#

CREATE TABLE `kygomusic_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `kygomusic_terms`
#
INSERT INTO `kygomusic_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'FR', 'fr', 0),
(3, 'FR', 'pll_fr', 0),
(4, 'pll_5a0b739a94703', 'pll_5a0b739a94703', 0),
(5, 'EN', 'en', 0),
(6, 'EN', 'pll_en', 0),
(7, 'Non classé', 'non-classe-en', 0),
(9, 'Main Menu French', 'main-menu-french', 0),
(10, 'Social links', 'social-links', 0),
(11, 'pll_5a0b815eb669c', 'pll_5a0b815eb669c', 0),
(12, 'Album', 'album', 0),
(13, 'Clip', 'clip', 0),
(14, 'EP', 'ep', 0),
(15, 'Main Menu English', 'main-menu-english', 0),
(16, 'External link EN', 'external-link-en', 0),
(17, 'External link FR', 'external-link-fr', 0),
(18, 'Language switcher', 'language-switcher', 0),
(19, 'pll_5a0c3cbf1b480', 'pll_5a0c3cbf1b480', 0),
(20, 'pll_5a0c3d8161389', 'pll_5a0c3d8161389', 0),
(21, 'pll_5a0c3dad1263f', 'pll_5a0c3dad1263f', 0),
(22, 'pll_5a1349185887c', 'pll_5a1349185887c', 0) ;

#
# End of data contents of table `kygomusic_terms`
# --------------------------------------------------------



#
# Delete any existing table `kygomusic_usermeta`
#

DROP TABLE IF EXISTS `kygomusic_usermeta`;


#
# Table structure of table `kygomusic_usermeta`
#

CREATE TABLE `kygomusic_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `kygomusic_usermeta`
#
INSERT INTO `kygomusic_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'kygomusic_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'kygomusic_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '0'),
(15, 1, 'session_tokens', 'a:5:{s:64:"52d1396636b5321ae8b0daf10334f36a99437361594f98718da3147d3543c7d2";a:4:{s:10:"expiration";i:1511259575;s:2:"ip";s:3:"::1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36";s:5:"login";i:1511086775;}s:64:"02885dafc8865093b17c1445b2666def851c2184648c38d7fc0034f8dfee98c7";a:4:{s:10:"expiration";i:1512396165;s:2:"ip";s:13:"91.90.102.214";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36";s:5:"login";i:1511186565;}s:64:"4eef961317938bb52c17ec10efe22ffeb43575dd987c95927d1bf32c6610c1ef";a:4:{s:10:"expiration";i:1511366679;s:2:"ip";s:13:"91.90.102.214";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36";s:5:"login";i:1511193879;}s:64:"470aa16936051ac54c5cb154cafe6f1d52e05139eff27dc108a7e094defcffb1";a:4:{s:10:"expiration";i:1511375744;s:2:"ip";s:12:"81.65.96.251";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36";s:5:"login";i:1511202944;}s:64:"e8830183bd54279a7a8e253952858d06db209e6f669c2bbcb85dcdf56e4f4c7f";a:4:{s:10:"expiration";i:1512412627;s:2:"ip";s:3:"::1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36";s:5:"login";i:1511203027;}}'),
(16, 1, 'kygomusic_user-settings', 'libraryContent=browse&hidetb=0&editor=html'),
(17, 1, 'kygomusic_user-settings-time', '1511210116'),
(18, 1, 'kygomusic_dashboard_quick_press_last_post_id', '152'),
(19, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(20, 1, 'closedpostboxes_dashboard', 'a:2:{i:0;s:18:"dashboard_activity";i:1;s:17:"dashboard_primary";}'),
(21, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(22, 1, 'pll_filter_content', ''),
(23, 1, 'acf_user_settings', 'a:0:{}'),
(24, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(25, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:18:"add-post-type-song";i:1;s:18:"add-post-type-tour";i:2;s:12:"add-post_tag";}'),
(26, 1, 'nav_menu_recently_edited', '10'),
(27, 1, 'closedpostboxes_settings_page_mlang', 'a:1:{i:0;s:13:"pll-about-box";}'),
(28, 1, 'metaboxhidden_settings_page_mlang', 'a:0:{}'),
(29, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(30, 1, 'closedpostboxes_page', 'a:0:{}'),
(31, 1, 'metaboxhidden_page', 'a:7:{i:0;s:23:"acf-group_59e5bcd60a48b";i:1;s:23:"acf-group_59e5ba6408147";i:2;s:23:"acf-group_5a0f1a14acc44";i:3;s:23:"acf-group_59de9b26a29f4";i:4;s:16:"commentstatusdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}') ;

#
# End of data contents of table `kygomusic_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `kygomusic_users`
#

DROP TABLE IF EXISTS `kygomusic_users`;


#
# Table structure of table `kygomusic_users`
#

CREATE TABLE `kygomusic_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `kygomusic_users`
#
INSERT INTO `kygomusic_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$BPe2Dpyy0R9RrSh5.gn.IMg5zflSH.1', 'root', 'luc.dandrel@gmail.com', '', '2017-11-13 23:21:34', '', 0, 'root') ;

#
# End of data contents of table `kygomusic_users`
# --------------------------------------------------------

#
# Add constraints back in
#

