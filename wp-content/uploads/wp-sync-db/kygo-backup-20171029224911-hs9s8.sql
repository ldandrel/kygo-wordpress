# WordPress MySQL database migration
#
# Generated: Sunday 29. October 2017 22:49 UTC
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `kygomusic_commentmeta`
#
INSERT INTO `kygomusic_commentmeta` ( `meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_wp_trash_meta_status', '1'),
(2, 1, '_wp_trash_meta_time', '1508487785') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `kygomusic_comments`
#
INSERT INTO `kygomusic_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-10-11 22:17:14', '2017-10-11 20:17:14', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href="https://gravatar.com">Gravatar</a>.', 0, 'trash', '', '', 0, 0) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=434 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `kygomusic_options`
#
INSERT INTO `kygomusic_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://kygo.local', 'yes'),
(2, 'home', 'http://kygo.local', 'yes'),
(3, 'blogname', 'Kygo Music', 'yes'),
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
(18, 'default_category', '1', 'yes'),
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
(29, 'rewrite_rules', 'a:91:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=7&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:25:"menu-icons/menu-icons.php";i:2;s:27:"wp-super-cache/wp-cache.php";i:3;s:33:"wp-sync-db-master /wp-sync-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:80:"/Users/lucdandrel/Desktop/kygo/wp-content/plugins/advanced-custom-fields/acf.php";i:2;s:0:"";}', 'no'),
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
(83, 'page_for_posts', '13', 'yes'),
(84, 'page_on_front', '7', 'yes'),
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
(100, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes') ;
INSERT INTO `kygomusic_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'cron', 'a:5:{i:1509319503;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1509351434;a:3:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1509395440;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1509397279;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:2:{s:3:"top";i:2;s:6:"social";i:0;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1507758159;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(133, 'can_compress_scripts', '1', 'no'),
(140, 'theme_mods_kygotheme', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1507755815;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(141, 'current_theme', 'Kygo Theme', 'yes'),
(142, 'theme_switched', '', 'yes'),
(143, 'theme_switched_via_customizer', '', 'yes'),
(144, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(148, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(150, '_site_transient_timeout_wporg_theme_feature_list', '1507767208', 'no'),
(151, '_site_transient_wporg_theme_feature_list', 'a:3:{s:6:"Layout";a:7:{i:0;s:11:"grid-layout";i:1;s:10:"one-column";i:2;s:11:"two-columns";i:3;s:13:"three-columns";i:4;s:12:"four-columns";i:5;s:12:"left-sidebar";i:6;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:10:"buddypress";i:2;s:17:"custom-background";i:3;s:13:"custom-colors";i:4;s:13:"custom-header";i:5;s:11:"custom-menu";i:6;s:12:"editor-style";i:7;s:21:"featured-image-header";i:8;s:15:"featured-images";i:9;s:15:"flexible-header";i:10;s:14:"footer-widgets";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:9:{i:0;s:4:"blog";i:1;s:10:"e-commerce";i:2;s:9:"education";i:3;s:13:"entertainment";i:4;s:14:"food-and-drink";i:5;s:7:"holiday";i:6;s:4:"news";i:7;s:11:"photography";i:8;s:9:"portfolio";}}', 'no'),
(152, 'theme_mods_kygo', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:4:{s:3:"top";i:2;s:7:"primary";i:2;s:6:"social";i:0;s:8:"external";i:3;}s:18:"custom_css_post_id";i:-1;s:11:"custom_logo";i:49;}', 'yes'),
(153, '_site_transient_timeout_available_translations', '1507769564', 'no'),
(154, '_site_transient_available_translations', 'a:110:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-10-02 13:13:49";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.2/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-29 08:49:40";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.2/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.7.6";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.6/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-22 18:59:07";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-26 18:50:50";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8.2/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-08-09 09:24:45";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-10-01 12:57:10";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-05 09:44:12";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-04 20:20:28";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-08-08 21:01:45";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.2/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 08:46:26";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-19 16:27:32";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.2/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-10-03 23:25:51";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-09 11:53:31";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.8.2/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-10-01 18:14:59";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-10-01 18:14:36";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.8.2/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-09 11:51:58";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-10-10 19:51:38";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.2/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-08-02 03:57:05";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-10-08 11:31:20";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.7.6";s:7:"updated";s:19:"2017-01-26 15:53:43";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.6/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-25 19:47:01";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-25 10:03:08";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-26 10:38:53";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.2/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-30 16:09:17";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-08-13 17:00:30";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-10-05 17:50:24";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-10-04 05:23:56";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CR";a:8:{s:8:"language";s:5:"es_CR";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-10-01 17:54:52";s:12:"english_name";s:20:"Spanish (Costa Rica)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/es_CR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-31 15:12:02";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-28 20:09:49";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-08-01 04:48:11";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 16:37:11";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-19 12:08:05";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-09 15:50:45";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-28 11:00:29";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.2/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-28 12:37:07";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-10-10 19:40:03";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-28 09:14:18";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-26 12:45:35";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-08-31 06:54:10";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.2/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-12 21:37:24";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-28 10:29:26";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-22 14:47:25";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.2/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:39";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-28 12:45:08";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.7.6";s:7:"updated";s:19:"2017-04-13 13:55:54";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.6/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-30 11:12:28";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-10-09 07:51:37";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.2/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-10-09 06:06:41";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-08-22 15:33:00";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8.2/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-07 02:07:59";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-28 10:48:16";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:25";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:9:"ຕໍ່";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-28 11:02:15";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.7.6";s:7:"updated";s:19:"2017-03-17 20:40:40";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.6/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.7.6";s:7:"updated";s:19:"2017-01-26 15:54:41";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.6/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-30 06:25:41";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.2/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.7.6";s:7:"updated";s:19:"2017-03-05 09:45:10";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.6/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.19";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.19/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-08-02 21:02:39";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-31 08:47:10";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:31:"जारीराख्नु ";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-08-30 07:58:32";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.8.2/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-10-02 15:25:12";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-10-02 09:10:59";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-25 10:02:16";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-08-25 10:03:08";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-20 08:02:58";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.19";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.19/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-30 17:15:54";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-10-09 15:37:59";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:10:"pt_PT_ao90";a:8:{s:8:"language";s:10:"pt_PT_ao90";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-29 08:57:23";s:12:"english_name";s:27:"Portuguese (Portugal, AO90)";s:11:"native_name";s:17:"Português (AO90)";s:7:"package";s:69:"https://downloads.wordpress.org/translation/core/4.8.2/pt_PT_ao90.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-10-09 20:13:14";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-23 11:17:01";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-30 08:21:26";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-12 12:51:50";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.7.6";s:7:"updated";s:19:"2017-04-24 08:35:30";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.6/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-28 12:07:44";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-10-08 16:15:48";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:24:"தொடரவும்";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-10-07 02:08:56";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-30 02:38:08";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-31 11:38:12";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-05 09:23:39";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-19 19:56:39";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.2/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-10-03 08:22:57";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.2/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-28 11:44:02";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-10-03 09:08:47";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-08-04 07:53:05";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-12 11:35:05";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-27 14:50:31";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.2/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'no'),
(155, '_transient_timeout_plugin_slugs', '1509403671', 'no'),
(156, '_transient_plugin_slugs', 'a:6:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:25:"menu-icons/menu-icons.php";i:3;s:27:"wp-super-cache/wp-cache.php";i:4;s:33:"wp-sync-db-master /wp-sync-db.php";i:5;s:24:"wordpress-seo/wp-seo.php";}', 'no'),
(157, 'recently_activated', 'a:0:{}', 'yes'),
(167, 'ossdl_off_cdn_url', 'http://kygo.local', 'yes'),
(168, 'ossdl_off_blog_url', 'http://kygo.local', 'yes'),
(169, 'ossdl_off_include_dirs', 'wp-content,wp-includes', 'yes'),
(170, 'ossdl_off_exclude', '.php', 'yes'),
(171, 'ossdl_cname', '', 'yes'),
(172, 'wpsupercache_start', '1507759108', 'yes'),
(173, 'wpsupercache_count', '0', 'yes'),
(175, 'acf_version', '5.6.3', 'yes'),
(182, '_transient_timeout_acf_plugin_info_pro', '1507801157', 'no') ;
INSERT INTO `kygomusic_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(183, '_transient_acf_plugin_info_pro', 'a:16:{s:4:"name";s:26:"Advanced Custom Fields PRO";s:4:"slug";s:26:"advanced-custom-fields-pro";s:8:"homepage";s:37:"https://www.advancedcustomfields.com/";s:7:"version";s:5:"5.6.3";s:6:"author";s:13:"Elliot Condon";s:10:"author_url";s:28:"http://www.elliotcondon.com/";s:12:"contributors";s:12:"elliotcondon";s:8:"requires";s:5:"3.6.0";s:6:"tested";s:5:"4.9.0";s:4:"tags";a:68:{i:0;s:5:"5.6.2";i:1;s:5:"5.6.1";i:2;s:11:"5.6.0-beta2";i:3;s:11:"5.6.0-beta1";i:4;s:9:"5.6.0-RC2";i:5;s:9:"5.6.0-RC1";i:6;s:5:"5.6.0";i:7;s:5:"5.5.9";i:8;s:5:"5.5.7";i:9;s:5:"5.5.5";i:10;s:5:"5.5.3";i:11;s:5:"5.5.2";i:12;s:6:"5.5.14";i:13;s:6:"5.5.13";i:14;s:6:"5.5.12";i:15;s:6:"5.5.11";i:16;s:6:"5.5.10";i:17;s:5:"5.5.1";i:18;s:5:"5.5.0";i:19;s:5:"5.4.8";i:20;s:5:"5.4.7";i:21;s:5:"5.4.6";i:22;s:5:"5.4.5";i:23;s:5:"5.4.4";i:24;s:5:"5.4.3";i:25;s:5:"5.4.2";i:26;s:5:"5.4.1";i:27;s:5:"5.4.0";i:28;s:5:"5.3.8";i:29;s:5:"5.3.7";i:30;s:5:"5.3.6";i:31;s:5:"5.3.5";i:32;s:5:"5.3.4";i:33;s:5:"5.3.3";i:34;s:5:"5.3.2";i:35;s:6:"5.3.10";i:36;s:5:"5.3.1";i:37;s:5:"5.3.0";i:38;s:5:"5.2.9";i:39;s:5:"5.2.8";i:40;s:5:"5.2.7";i:41;s:5:"5.2.6";i:42;s:5:"5.2.5";i:43;s:5:"5.2.4";i:44;s:5:"5.2.3";i:45;s:5:"5.2.2";i:46;s:5:"5.2.1";i:47;s:5:"5.2.0";i:48;s:5:"5.1.9";i:49;s:5:"5.1.8";i:50;s:5:"5.1.7";i:51;s:5:"5.1.6";i:52;s:5:"5.1.5";i:53;s:5:"5.1.4";i:54;s:5:"5.1.3";i:55;s:5:"5.1.2";i:56;s:5:"5.1.1";i:57;s:5:"5.1.0";i:58;s:5:"5.0.9";i:59;s:5:"5.0.8";i:60;s:5:"5.0.7";i:61;s:5:"5.0.6";i:62;s:5:"5.0.5";i:63;s:5:"5.0.4";i:64;s:5:"5.0.3";i:65;s:5:"5.0.2";i:66;s:5:"5.0.1";i:67;s:5:"5.0.0";}s:6:"tagged";s:61:"acf, advanced, custom, field, fields, form, repeater, content";s:11:"description";s:1518:"<p>Use the Advanced Custom Fields plugin to take full control of your WordPress edit screens & custom field data.</p>\n<b>Add fields on demand.</b> Our field builder allows you to quickly and easily add fields to WP edit screens with only the click of a few buttons!\n<b>Add them anywhere.</b> Fields can be added all over WP including posts, users, taxonomy terms, media, comments and even custom options pages!\n<b>Show them everywhere.</b> Load and display your custom field values in any theme template file with our hassle free developer friendly functions!\n<h4> Features </h4>\n<ul><li>Simple & Intuitive</li><li>Powerful Functions</li><li>Over 30 Field Types</li><li>Extensive Documentation</li><li>Millions of Users</li></ul>\n<h4> Links </h4>\n<ul><li>[Website](<a href="https://www.advancedcustomfields.com)">www.advancedcustomfields.com)</a></li><li>[Documentation](<a href="https://www.advancedcustomfields.com/resources/)">www.advancedcustomfields.com/resources/)</a></li><li>[Support](<a href="https://support.advancedcustomfields.com)">support.advancedcustomfields.com)</a></li><li>[ACF PRO](<a href="https://www.advancedcustomfields.com/resources/pro/)">www.advancedcustomfields.com/resources/pro/)</a></li></ul>\n<h4> PRO </h4>\n<p>The Advanced Custom Fields plugin is also available in a professional version which includes more fields, more functionality, and more flexibility! [Learn more](<a href="https://www.advancedcustomfields.com/resources/pro/)">www.advancedcustomfields.com/resources/pro/)</a></p>\n";s:12:"installation";s:515:"<p>From your WordPress dashboard<ol><li><b>Visit</b> Plugins > Add New</li><li><b>Search</b> for "Advanced Custom Fields"</li><li><b>Activate</b> Advanced Custom Fields from your Plugins page</li><li><b>Click</b> on the new menu item "Custom Fields" and create your first Custom Field Group!</li><li><b>Read</b> the documentation to [get started](<a href="https://www.advancedcustomfields.com/resources/getting-started-with-acf/)">www.advancedcustomfields.com/resources/getting-started-with-acf/)</a></li></ol></p>\n";s:9:"changelog";s:4984:"<h4> 5.6.3 </h4>\n<ul><li>Button Group field: Added new field type</li><li>Range field: Added missing <code>step</code> attribute to number input</li><li>Range field: Added width to number input based on max setting</li><li>Basic fields: Added missing <code>required</code> attribute to inputs</li><li>Basic fields: Removed empty attributes from inputs</li><li>API: Fixed `get_fields()` bug ignoring fields starting with an underscore</li><li>Core: Minor fixes and improvements</li><li>Language: Updated Portuguese translation - thanks to Pedro Mendonça</li><li>Language: Updated French translation - thanks to Maxime Bernard-Jacquet</li><li>Language: Updated Finnish translation - thanks to Sauli Rajala</li><li>Language: Updated German translation - thanks to Ralf Koller</li></ul>\n<h4> 5.6.2 </h4>\n<ul><li>Range field: Added new field type</li><li>Clone field: Fixed bug causing value update issues for <code>seamless</code> + widgets / nave menu items</li><li>Location: Added parent theme<code>s post templates to </code>post template\' location rule</li><li>Location: Fixed bug causing <code>nav menu</code> location rule to fail during AJAX (add new item)</li><li>Core: Fixed PHP errors in customizer when editing non ACF panels</li><li>Core: Fixed bug casing backslash character to break fields / field groups</li><li>Core: Many minor bug fixes</li><li>Language: Updated Romanian translation - thanks to Ionut Staicu</li><li>Language: Updated Italian translation - thanks to Davide Pantè</li><li>Language: Update Turkish translation - thanks to Emre Erkan</li><li>Language: Updated Russian translation - Thanks to Алекс Яровиков</li><li>Language: Updated French translation - Thanks to Julie Arrigoni</li></ul>\n<h4> 5.6.1 </h4>\n<ul><li>Fixed an assortment of bugs found in 5.6.0</li></ul>\n<h4> 5.6.0 </h4>\n<ul><li>Link field: Added new field type</li><li>Group field: Added new field type</li><li>API: Improved `have_rows()` function to work with clone and group field values</li><li>Core: Added new location for Menus</li><li>Core: Added new location for Menu Items</li><li>Core: Added types to Attachment location rule</li><li>Core: Added "Confirm Remove" tooltips</li><li>Core: Updated Select2 JS library to v4</li><li>Core: Minor fixes and improvements</li></ul>\n<h4> 5.5.14 </h4>\n<ul><li>Core: Minor bug fixes</li></ul>\n<h4> 5.5.13 </h4>\n<ul><li>Clone field: Improved <code>Fields</code> setting to show all fields within a matching field group search</li><li>Flexible Content field: Fixed bug causing <code>layout_title</code> filter to fail when field is cloned</li><li>Flexible Content field: Added missing <code>translate_field</code> function</li><li>WYSIWYG field: Fixed JS error when using CKEditor plugin</li><li>Date Picker field: Improved <code>Display Format</code> and <code>Return Format</code> settings UI</li><li>Time Picker field: Same as above</li><li>Datetime Picker field: Same as above</li><li>Core: Added new <code>remove_wp_meta_box</code> setting</li><li>Core: Added constants ACF, ACF_PRO, ACF_VERSION and ACF_PATH</li><li>Core: Improved compatibility with Select2 v4 including sortable functionality</li><li>Language: Updated Portuguese translation - thanks to Pedro Mendonça</li></ul>\n<h4> 5.5.12 </h4>\n<ul><li>Tab field: Allowed HTML within field label to show in tab</li><li>Core: Improved plugin update class</li><li>Language: Updated Portuguese translation - thanks to Pedro Mendonça</li><li>Language: Updated Brazilian Portuguese translation - thanks to Rafael Ribeiro</li></ul>\n<h4> 5.5.11 </h4>\n<ul><li>Google Map field: Added new <code>google_map_init</code> JS action</li><li>Core: Minor fixes and improvements</li><li>Language: Updated Swiss German translation - thanks to Raphael Hüni</li><li>Language: Updated French translation - thanks to Maxime Bernard-Jacquet</li></ul>\n<h4> 5.5.10 </h4>\n<ul><li>API: Added new functionality to the `acf_form()` function:</li><li>- added new <code>html_updated_message</code> setting</li><li>- added new <code>html_submit_button</code> setting</li><li>- added new <code>html_submit_spinner</code> setting</li><li>- added new <code>acf/pre_submit_form</code> filter run when form is successfully submit (before saving $_POST)</li><li>- added new <code>acf/submit_form</code> action run when form is successfully submit (after saving $_POST)</li><li>- added new <code>%post_id%</code> replace string to the <code>return</code> setting</li><li>- added new encryption logic to prevent $_POST exploits</li><li>- added new `acf_register_form()` function</li><li>Core: Fixed bug preventing values being loaded on a new post/page preview</li><li>Core: Fixed missing <code>Bulk Actions</code> dropdown on sync screen when no field groups exist</li><li>Core: Fixed bug ignoring PHP field groups if exists in JSON</li><li>Core: Minor fixes and improvements</li></ul>\n<h4> 5.5.9 </h4>\n<ul><li>Core: Fixed bug causing ACF4 PHP field groups to be ignored if missing ‘key’ setting</li></ul>\n";s:14:"upgrade_notice";s:551:"<h4> 5.2.7 </h4>\n<ul><li>Field class names have changed slightly in v5.2.7 from `field_type-{$type}` to `acf-field-{$type}`. This change was introduced to better optimise JS performance. The previous class names can be added back in with the following filter: <a href="https://www.advancedcustomfields.com/resources/acfcompatibility/">www.advancedcustomfields.com/resources/acfcompatibility/</a></li></ul>\n<h4> 3.0.0 </h4>\n<ul><li>Editor is broken in WordPress 3.3</li></ul>\n<h4> 2.1.4 </h4>\n<ul><li>Adds post_id column back into acf_values</li></ul>\n";s:7:"banners";a:2:{s:3:"low";s:65:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg";s:4:"high";s:66:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg";}}', 'no'),
(217, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1508073444', 'no'),
(218, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4386;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2512;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2370;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2348;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1837;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1607;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1598;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1438;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1360;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1354;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1347;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1278;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1272;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1143;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1058;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1053;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:998;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:956;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:825;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:825;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:816;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:777;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:773;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:672;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:671;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:666;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:655;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:652;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:647;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:638;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:630;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:615;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:598;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:593;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:588;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:586;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:580;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:579;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:563;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:558;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:547;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:535;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:528;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:520;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:507;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:503;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:497;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:493;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:477;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:475;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:475;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:473;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:452;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:448;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:446;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:441;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:441;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:438;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:425;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:417;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:412;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:411;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:406;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:405;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:404;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:397;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:390;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:383;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:382;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:371;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:356;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:347;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:339;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:333;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:332;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:332;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:331;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:331;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:330;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:327;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:324;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:323;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:323;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:318;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:306;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:302;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:300;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:294;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:294;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:292;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:290;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:286;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:284;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:283;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:280;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:278;}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";i:276;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:276;}s:7:"tinymce";a:3:{s:4:"name";s:7:"tinyMCE";s:4:"slug";s:7:"tinymce";s:5:"count";i:273;}s:7:"captcha";a:3:{s:4:"name";s:7:"captcha";s:4:"slug";s:7:"captcha";s:5:"count";i:271;}}', 'no'),
(221, 'menu-icons', 'a:2:{s:6:"global";a:1:{s:10:"icon_types";a:3:{i:0;s:9:"dashicons";i:1;s:5:"image";i:2;s:3:"svg";}}s:6:"menu_3";a:6:{s:10:"hide_label";s:0:"";s:8:"position";s:6:"before";s:14:"vertical_align";s:6:"middle";s:9:"font_size";s:3:"1.2";s:9:"svg_width";s:1:"1";s:10:"image_size";s:9:"thumbnail";}}', 'yes'),
(226, 'category_children', 'a:0:{}', 'yes'),
(288, '_site_transient_timeout_browser_0f568b11a74d5c4fce6dae540063a05a', '1508968456', 'no'),
(289, '_site_transient_browser_0f568b11a74d5c4fce6dae540063a05a', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"61.0.3163.100";s:8:"platform";s:9:"Macintosh";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(339, 'wpsdb_settings', 'a:7:{s:11:"max_request";i:1048576;s:3:"key";s:32:"hm7zOf/sY0ybq25O10G/4hoFKHtsmm9/";s:10:"allow_pull";b:0;s:10:"allow_push";b:0;s:8:"profiles";a:0:{}s:10:"verify_ssl";b:0;s:17:"blacklist_plugins";a:0:{}}', 'yes'),
(345, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.8.2.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.8.2.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.8.2";s:7:"version";s:5:"4.8.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1509315903;s:15:"version_checked";s:5:"4.8.2";s:12:"translations";a:0:{}}', 'no'),
(346, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1509315908;s:7:"checked";a:4:{s:4:"kygo";s:9:"0.1 alpha";s:13:"twentyfifteen";s:3:"1.8";s:15:"twentyseventeen";s:3:"1.3";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(416, '_site_transient_timeout_theme_roots', '1509317701', 'no'),
(417, '_site_transient_theme_roots', 'a:4:{s:4:"kygo";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(419, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1509317264;s:7:"checked";a:6:{s:30:"advanced-custom-fields/acf.php";s:5:"5.6.3";s:19:"akismet/akismet.php";s:5:"3.3.4";s:25:"menu-icons/menu-icons.php";s:6:"0.10.2";s:27:"wp-super-cache/wp-cache.php";s:7:"1.5.7.1";s:33:"wp-sync-db-master /wp-sync-db.php";s:3:"1.5";s:24:"wordpress-seo/wp-seo.php";s:3:"5.6";}s:8:"response";a:3:{s:19:"akismet/akismet.php";O:8:"stdClass":11:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"4.0";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/akismet.4.0.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.8.2";s:13:"compatibility";O:8:"stdClass":0:{}}s:24:"wordpress-seo/wp-seo.php";O:8:"stdClass":11:{s:2:"id";s:27:"w.org/plugins/wordpress-seo";s:4:"slug";s:13:"wordpress-seo";s:6:"plugin";s:24:"wordpress-seo/wp-seo.php";s:11:"new_version";s:5:"5.7.1";s:3:"url";s:44:"https://wordpress.org/plugins/wordpress-seo/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/wordpress-seo.5.7.1.zip";s:5:"icons";a:4:{s:2:"1x";s:66:"https://ps.w.org/wordpress-seo/assets/icon-128x128.png?rev=1550389";s:2:"2x";s:66:"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1550389";s:3:"svg";s:58:"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1203032";s:7:"default";s:58:"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1203032";}s:7:"banners";a:3:{s:2:"2x";s:69:"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1695112";s:2:"1x";s:68:"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1695112";s:7:"default";s:69:"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1695112";}s:11:"banners_rtl";a:3:{s:2:"2x";s:73:"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1695112";s:2:"1x";s:72:"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1695112";s:7:"default";s:73:"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1695112";}s:6:"tested";s:5:"4.8.2";s:13:"compatibility";O:8:"stdClass":0:{}}s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"5.6.4";s:3:"url";s:37:"https://www.advancedcustomfields.com/";s:6:"tested";s:5:"4.9.0";s:7:"package";s:0:"";}}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip";s:5:"icons";a:3:{s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:7:"default";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";}s:7:"banners";a:3:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";s:7:"default";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";}s:11:"banners_rtl";a:0:{}}s:25:"menu-icons/menu-icons.php";O:8:"stdClass":9:{s:2:"id";s:24:"w.org/plugins/menu-icons";s:4:"slug";s:10:"menu-icons";s:6:"plugin";s:25:"menu-icons/menu-icons.php";s:11:"new_version";s:6:"0.10.2";s:3:"url";s:41:"https://wordpress.org/plugins/menu-icons/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/menu-icons.0.10.2.zip";s:5:"icons";a:0:{}s:7:"banners";a:3:{s:2:"2x";s:65:"https://ps.w.org/menu-icons/assets/banner-1544x500.jpg?rev=979807";s:2:"1x";s:64:"https://ps.w.org/menu-icons/assets/banner-772x250.jpg?rev=979807";s:7:"default";s:65:"https://ps.w.org/menu-icons/assets/banner-1544x500.jpg?rev=979807";}s:11:"banners_rtl";a:0:{}}s:27:"wp-super-cache/wp-cache.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/wp-super-cache";s:4:"slug";s:14:"wp-super-cache";s:6:"plugin";s:27:"wp-super-cache/wp-cache.php";s:11:"new_version";s:7:"1.5.7.1";s:3:"url";s:45:"https://wordpress.org/plugins/wp-super-cache/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/wp-super-cache.1.5.7.1.zip";s:5:"icons";a:3:{s:2:"1x";s:67:"https://ps.w.org/wp-super-cache/assets/icon-128x128.png?rev=1095422";s:2:"2x";s:67:"https://ps.w.org/wp-super-cache/assets/icon-256x256.png?rev=1095422";s:7:"default";s:67:"https://ps.w.org/wp-super-cache/assets/icon-256x256.png?rev=1095422";}s:7:"banners";a:3:{s:2:"2x";s:70:"https://ps.w.org/wp-super-cache/assets/banner-1544x500.png?rev=1082414";s:2:"1x";s:69:"https://ps.w.org/wp-super-cache/assets/banner-772x250.png?rev=1082414";s:7:"default";s:70:"https://ps.w.org/wp-super-cache/assets/banner-1544x500.png?rev=1082414";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(420, '_site_transient_timeout_browser_acc858a65221943036ff10e4ad34c39c', '1509920721', 'no'),
(421, '_site_transient_browser_acc858a65221943036ff10e4ad34c39c', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:12:"62.0.3202.75";s:8:"platform";s:9:"Macintosh";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(422, '_transient_timeout_feed_66a70e9599b658d5cc038e8074597e7c', '1509359122', 'no') ;
INSERT INTO `kygomusic_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(423, '_transient_feed_66a70e9599b658d5cc038e8074597e7c', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:4:"WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:16:"https://wpfr.net";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:31:"Site officiel de la communauté";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 29 Oct 2017 21:41:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"fr-FR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:56:"Certification WordPress par WPFR, appel à contributions";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/UUGDJmDzVjE/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 19 Oct 2017 06:46:49 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=1931227";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1508:"Le chantier lié à la mise en place d&#8217;une certification WordPress accessible via le Compte Personnel de Formation (CPF) et enregistré auprès du Registre National des Certifications Professionnelles (RNCP) est en marche. Ce dernier est mené par Maxime Bernard-Jacquet avec nous l&#8217;espérons des résultats concrets pour 2018. Cette mission a été relancée lors de la<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/UUGDJmDzVjE" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:66:"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"Le 30 septembre, c’est le WordPress Translation Day 2017 !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/PgJgl5KXQwk/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:81:"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 12 Sep 2017 12:03:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:4:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Evènements";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:11:"communauté";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:10:"traduction";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=1883236";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1488:"Le troisième WordPress Translation Day aura lieu le 30 septembre 2017 ! Le 30/09 se déroulera un marathon mondial de 24 heures dédié à la traduction et à la localisation de la plate-forme WordPress et de son écosystème : thèmes, extensions, applications… Organisé par l&#8217;équipe WordPress Polyglots dont la mission est de traduire WordPress dans<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/PgJgl5KXQwk" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Jb Audras";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:77:"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:72:"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:73:"#GEN5, l’évènement numérique du grand-Est où l’on cause WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/POlUtKLV2DI/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wpfr.net/gen5-evenement-numerique-wordpress/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 05 Sep 2017 11:59:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Evènements";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=1860285";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1488:"La 5e édition de Grand-Est Numérique ou #GEN5 aura lieu les 21 et 22 septembre 2017 au Centre Foire et Congrès de Metz. Cet évènement réservé aux professionnels du numérique nous propose un programme de conférences, tables rondes et autres ateliers participatifs. Deux sessions autour de WordPress vous seront proposées par votre humble serviteur. WPFR<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=POlUtKLV2DI:D5WhSR95RJY:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=POlUtKLV2DI:D5WhSR95RJY:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=POlUtKLV2DI:D5WhSR95RJY:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/POlUtKLV2DI" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wpfr.net/gen5-evenement-numerique-wordpress/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wpfr.net/gen5-evenement-numerique-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:40:"BlendWebMix 2017 : WPFR est partenaire !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/WzJcLpFnZ7Q/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wpfr.net/blendwebmix-2017-wpfr-partenaire/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 16 Aug 2017 10:00:55 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Evènements";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=1780344";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1513:"Le BlendWebMix 2017 aura lieu les 26 et 27 octobre 2017 à Lyon. Pour l&#8217;occasion, WPFR vous propose une billetterie communautaire pour vous faire profiter de tarifs avantageux. Le BlendWebMix est un évènement Web similaire aux WordCamps organisés par la communauté WordPress. Elle rassemble des orateurs talentueux aux multiples compétences Web qui vous feront partager leurs<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WzJcLpFnZ7Q:LaqrXUsOGtI:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WzJcLpFnZ7Q:LaqrXUsOGtI:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=WzJcLpFnZ7Q:LaqrXUsOGtI:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WzJcLpFnZ7Q:LaqrXUsOGtI:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=WzJcLpFnZ7Q:LaqrXUsOGtI:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=WzJcLpFnZ7Q:LaqrXUsOGtI:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/WzJcLpFnZ7Q" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wpfr.net/blendwebmix-2017-wpfr-partenaire/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:50:"https://wpfr.net/blendwebmix-2017-wpfr-partenaire/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"Compte rendu de la réunion du 10 juillet 2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/HOXhXbdFR7A/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 03 Aug 2017 06:22:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"Association";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=1689645";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1481:"Présents : Xavier Borderie, Benoît Catherineau et Aurélien Denis L’ordre du jour Les finances Actions en cours et à venir Questions diverses Aurélien Denis, Président, ouvre la séance en rappelant que l&#8217;association compte à ce jour 225 membres à jour de leur cotisation. Il passe la parole à Xavier pour parler des finances. Les finances<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=HOXhXbdFR7A:_7ilDV_EV8s:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=HOXhXbdFR7A:_7ilDV_EV8s:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=HOXhXbdFR7A:_7ilDV_EV8s:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=HOXhXbdFR7A:_7ilDV_EV8s:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=HOXhXbdFR7A:_7ilDV_EV8s:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=HOXhXbdFR7A:_7ilDV_EV8s:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/HOXhXbdFR7A" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:19:"Benoît Catherineau";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wpfr.net/compte-rendu-reunion-10-juillet-2017/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:74:"Les résultats du grand sondage de la communauté francophone de WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/_z7qQytCHB8/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:89:"https://wpfr.net/resultats-grand-sondage-de-communaute-francophone-de-wordpress/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Jul 2017 12:52:28 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:4:{i:0;a:5:{s:4:"data";s:7:"Brèves";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:21:"WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:11:"communauté";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:7:"sondage";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=1647338";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1513:"Fin mai, un grand sondage était lancé par Maxime Bernard-Jacquet au nom de la communauté francophone de WordPress afin de mieux identifier comment elle se composait ! Aujourd&#8217;hui les résultats sont disponibles. La première statistique intéressante est la participation, puisque ce sont 1000 personnes qui ont répondues à ce questionnaire. Ceci permet donc d&#8217;avoir des<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_z7qQytCHB8:88mzRUJSvF0:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_z7qQytCHB8:88mzRUJSvF0:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=_z7qQytCHB8:88mzRUJSvF0:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_z7qQytCHB8:88mzRUJSvF0:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_z7qQytCHB8:88mzRUJSvF0:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=_z7qQytCHB8:88mzRUJSvF0:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/_z7qQytCHB8" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:19:"Benoît Catherineau";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:85:"https://wpfr.net/resultats-grand-sondage-de-communaute-francophone-de-wordpress/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:80:"https://wpfr.net/resultats-grand-sondage-de-communaute-francophone-de-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:37:"Cap des 200 adhérents WPFR franchi !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/dZ9emWhTWPc/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wpfr.net/cap-200-adherents-wpfr-franchi/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 13 Jun 2017 15:16:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=1642124";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1476:"C&#8217;est officiel, l&#8217;association WordPress Francophone compte 200 membres à jour de cotisation ! Ouvertes depuis septembre 2016, les adhésions en ligne remportent un vif succès et nous sommes heureux de voir que la communauté WordPress se porte bien. On se donne rendez-vous à Paris pour le WordCamp Europe du 16 et 17 juin prochain. Le<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=dZ9emWhTWPc:XRx8AZKI2zs:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=dZ9emWhTWPc:XRx8AZKI2zs:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=dZ9emWhTWPc:XRx8AZKI2zs:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=dZ9emWhTWPc:XRx8AZKI2zs:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=dZ9emWhTWPc:XRx8AZKI2zs:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=dZ9emWhTWPc:XRx8AZKI2zs:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/dZ9emWhTWPc" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wpfr.net/cap-200-adherents-wpfr-franchi/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wpfr.net/cap-200-adherents-wpfr-franchi/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:53:"Un grand sondage pour mieux connaître la communauté";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/ArHvRJvd55Y/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:67:"https://wpfr.net/grand-sondage-mieux-connaitre-communaute/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 23 May 2017 14:15:50 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:21:"WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:11:"communauté";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=1638548";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1516:"Maxime et Alexandre, les « chefs cuistot » de la communauté viennent de lancer un sondage à destination de la communauté francophone de WordPress. L&#8217;objectif est de mieux connaitre celles et ceux qui la composent. Alors que vous soyez débutant ou confirmé, simple utilisateur, bidouilleur passionné ou professionnel venez répondre à ce questionnaire qui permettra de mieux<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ArHvRJvd55Y:rW_1swugq14:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ArHvRJvd55Y:rW_1swugq14:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=ArHvRJvd55Y:rW_1swugq14:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ArHvRJvd55Y:rW_1swugq14:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=ArHvRJvd55Y:rW_1swugq14:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=ArHvRJvd55Y:rW_1swugq14:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/ArHvRJvd55Y" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:19:"Benoît Catherineau";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:63:"https://wpfr.net/grand-sondage-mieux-connaitre-communaute/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wpfr.net/grand-sondage-mieux-connaitre-communaute/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:52:"Compte rendu de la réunion du bureau du 9 mars 2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/scUWeRFptEQ/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:66:"https://wpfr.net/compte-rendu-reunion-bureau-9-mars-2017/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 03 Apr 2017 09:02:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:21:"WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:8:"Réunion";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=1629790";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1529:"Présent : Willy Bahuaud, Xavier, Borderie, Benoît Catherineau et Aurélien Denis L’élection du nouveau bureau a été clôturée le 4 mars 2017. Le résultat donne vainqueur les 3 candidats suivants : Benoît Catherineau, Xavier Borderie, Aurélien Denis. Cette réunion a pour objet l’installation du nouveau bureau de WPFR. L’ordre du jour Répartition des postes de Président, Secrétaire<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=scUWeRFptEQ:5gEow5Kjbq4:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=scUWeRFptEQ:5gEow5Kjbq4:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=scUWeRFptEQ:5gEow5Kjbq4:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=scUWeRFptEQ:5gEow5Kjbq4:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=scUWeRFptEQ:5gEow5Kjbq4:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=scUWeRFptEQ:5gEow5Kjbq4:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/scUWeRFptEQ" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:19:"Benoît Catherineau";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wpfr.net/compte-rendu-reunion-bureau-9-mars-2017/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"9";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wpfr.net/compte-rendu-reunion-bureau-9-mars-2017/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:40:"Résultats des élections du bureau 2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"http://feedproxy.google.com/~r/WordpressFrancophone/~3/_rNOgYbgrxk/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wpfr.net/resultats-elections-bureau-2017/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 13 Mar 2017 14:35:19 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:16:"Association WPFR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:27:"https://wpfr.net/?p=1625743";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1487:"Suite à la votation électronique qui s&#8217;est déroulée du 24 février au 3 mars 2017, nous vous communiquons les résultats pour l&#8217;élection du bureau 2017. Vous avez été 54% des adhérents à participer au vote, soit 87 suffrages exprimés. 5 candidatures étaient présentées pour 3 postes à pourvoir. Chaque candidat a reçu une majorité de<div class="btn btn-default read-more text-uppercase">Lire la suite <span class="meta-nav"><i class="fa fa-caret-right"></i></span></div><div class="feedflare">\n<a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_rNOgYbgrxk:qyaNilbMKjw:yIl2AUoC8zA"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_rNOgYbgrxk:qyaNilbMKjw:V_sGLiPBpWU"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=_rNOgYbgrxk:qyaNilbMKjw:V_sGLiPBpWU" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_rNOgYbgrxk:qyaNilbMKjw:qj6IDK7rITs"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs" border="0"></img></a> <a href="http://feeds.feedburner.com/~ff/WordpressFrancophone?a=_rNOgYbgrxk:qyaNilbMKjw:gIN9vFwOqvQ"><img src="http://feeds.feedburner.com/~ff/WordpressFrancophone?i=_rNOgYbgrxk:qyaNilbMKjw:gIN9vFwOqvQ" border="0"></img></a>\n</div><img src="http://feeds.feedburner.com/~r/WordpressFrancophone/~4/_rNOgYbgrxk" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Aurélien Denis";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wpfr.net/resultats-elections-bureau-2017/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:2:"11";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wpfr.net/resultats-elections-bureau-2017/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";s:4:"href";s:48:"http://feeds.feedburner.com/WordpressFrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:4:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:20:"wordpressfrancophone";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:14:"emailServiceId";a:1:{i:0;a:5:{s:4:"data";s:20:"WordpressFrancophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:18:"feedburnerHostname";a:1:{i:0;a:5:{s:4:"data";s:29:"https://feedburner.google.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"feedFlare";a:9:{i:0;a:5:{s:4:"data";s:24:"Subscribe with NewsGator";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:112:"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://www.newsgator.com/images/ngsub1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:24:"Subscribe with Bloglines";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:77:"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone";s:3:"src";s:48:"http://www.bloglines.com/images/sub_modern11.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:23:"Subscribe with Netvibes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:98:"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:39:"//www.netvibes.com/img/add2netvibes.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:21:"Subscribe with Google";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:93:"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:51:"http://buttons.googlesyndication.com/fusion/add.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:25:"Subscribe with Pageflakes";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:101:"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:87:"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:5;a:5:{s:4:"data";s:21:"Subscribe with Plusmo";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:86:"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:43:"http://plusmo.com/res/graphics/fbplusmo.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:6;a:5:{s:4:"data";s:23:"Subscribe with Live.com";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:81:"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:141:"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:7;a:5:{s:4:"data";s:25:"Subscribe with Mon Yahoo!";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:99:"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:60:"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:8;a:5:{s:4:"data";s:25:"Subscribe with Excite MIX";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:89:"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone";s:3:"src";s:42:"http://image.excite.co.uk/mix/addtomix.gif";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:52:"http://backend.userland.com/creativeCommonsRssModule";a:1:{s:7:"license";a:1:{i:0;a:5:{s:4:"data";s:49:"http://creativecommons.org/licenses/by-nc-sa/3.0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:10:{s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"etag";s:27:"gD1y5+oyOVOZakkm5NFe4F38tQI";s:13:"last-modified";s:29:"Sun, 29 Oct 2017 22:20:30 GMT";s:16:"content-encoding";s:4:"gzip";s:4:"date";s:29:"Sun, 29 Oct 2017 22:25:22 GMT";s:7:"expires";s:29:"Sun, 29 Oct 2017 22:25:22 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:6:"server";s:3:"GSE";}}s:5:"build";s:14:"20171011093754";}', 'no'),
(424, '_transient_timeout_feed_mod_66a70e9599b658d5cc038e8074597e7c', '1509359122', 'no'),
(425, '_transient_feed_mod_66a70e9599b658d5cc038e8074597e7c', '1509315922', 'no'),
(426, '_transient_timeout_feed_76f8d9281c01f21e505004d0986f50c6', '1509359122', 'no') ;
INSERT INTO `kygomusic_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(427, '_transient_feed_76f8d9281c01f21e505004d0986f50c6', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:5:"\n		\n	";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:79:"\n		\n		\n		\n		\n		\n		\n					\n						\n						\n						\n						\n						\n						\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Planète WordPress Francophone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:17:"https://wpfr.net/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Toute l’actualité de WordPress en français !";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"fr-FR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:8:{i:0;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"WP Maintenance Switch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/pyNHg9_VvK4/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:66:"https://www.echodesplugins.li-an.fr/plugins/wp-maintenance-switch/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 28 Oct 2017 08:49:40 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:76:"\n		        Une extension de maintenance très légère et pratique		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:146:"Une extension de maintenance très légère et pratique<img src="http://feeds.feedburner.com/~r/wpfr/~4/pyNHg9_VvK4" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:66:"https://www.echodesplugins.li-an.fr/plugins/wp-maintenance-switch/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:63:"Couleurs et Accessibilité, ma conférence au #BlendWebMix 2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:101:"http://feedproxy.google.com/~r/wpfr/~3/sFPmeEIHiP4/couleurs-accessibilite-blendwebmix-2017-42509.html";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:71:"https://boiteaweb.fr/couleurs-accessibilite-blendwebmix-2017-42509.html";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 26 Oct 2017 16:49:17 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:449:"\n		        Comment aider les designers quand on est pas designer ? Comment améliorer l&#8217;accessibilité visuelle quand on est pas dev front ? Soyez daltonien ! Non enfin je veux, je le suis, je vais vous faire un topo. Pourquoi cette conférence design Je ne suis pas designer, je ne suis pas dev front, mais un utilisateur&#160;…\nThe post Couleurs et Accessibilité, ma conférence au #BlendWebMix 2017 appeared first on BoiteAWeb.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:684:"<p>Comment aider les designers quand on est pas designer ? Comment améliorer l&#8217;accessibilité visuelle quand on est pas dev front ? Soyez daltonien ! Non enfin je veux, je le suis, je vais vous faire un topo. Pourquoi cette conférence design Je ne suis pas designer, je ne suis pas dev front, mais un utilisateur&#160;…</p>\n<p>The post <a rel="nofollow" href="https://boiteaweb.fr/couleurs-accessibilite-blendwebmix-2017-42509.html">Couleurs et Accessibilité, ma conférence au #BlendWebMix 2017</a> appeared first on <a rel="nofollow" href="https://boiteaweb.fr">BoiteAWeb</a>.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/sFPmeEIHiP4" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:71:"https://boiteaweb.fr/couleurs-accessibilite-blendwebmix-2017-42509.html";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"Article WordPress : Le Mode d’Emploi Complet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/40YBnjP1MsY/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"https://wpformation.com/article-wordpress/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 25 Oct 2017 06:35:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:584:"\n		        Un article WordPress, c\'est l\'ADN de votre blog ! L’élément fondamental qui fera son succès ou qui sera responsable de son échec. Dans cet article, je vous propose de (re)découvrir intégralement les articles WordPress, comment les utiliser au mieux, les options qu\'ils proposent, comment bien les rédiger et les optimiser. Vous êtes prêts ? Ok, alors c\'est [&#8230;]\n\n\nArticle WordPress : Le Mode d&#8217;Emploi Complet est un article de WP FormationFormation WordPress, SEO &amp; WooCommerce - Pour ne rien manquer : Abonnez-vous à la newsletter !\n		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WP Formation";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1418:"<p><img width="824" height="583" src="https://cdn.wpformation.com/wp-content/uploads/2017/10/ecrire-un-article-WordPress-2.jpg" class="attachment-Large size-Large wp-post-image" alt="ecrire-un-article-WordPress" style="margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px" />Un article WordPress, c\'est l\'ADN de votre blog ! L’élément fondamental qui fera son succès ou qui sera responsable de son échec. Dans cet article, je vous propose de (re)découvrir intégralement les articles WordPress, comment les utiliser au mieux, les options qu\'ils proposent, comment bien les rédiger et les optimiser. Vous êtes prêts ? Ok, alors c\'est [&#8230;]</p>\n<p></p>\n<hr>\n<a rel="nofollow" href="https://wpformation.com/article-wordpress/">Article WordPress : Le Mode d&#8217;Emploi Complet</a> est un article de <a title="Formation WordPress Ecommerce" href="https://wpformation.com">WP Formation</a><br /><a href="https://wpformation.com/formation-wordpress/">Formation WordPress</a>, <a href="https://wpformation.com/formation-wordpress-pro/">SEO</a> &amp; <a href="https://wpformation.com/formation-woocommerce-e-commerce/">WooCommerce</a> - Pour ne rien manquer : <a href="https://wpformation.com/abonnement-newsletter-wpf/">Abonnez-vous à la newsletter</a> !</p>\n<hr><img src="http://feeds.feedburner.com/~r/wpfr/~4/40YBnjP1MsY" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:42:"https://wpformation.com/article-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:51:"Give WP : Comment récolter des dons avec WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/ZSyykDrMhdU/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:44:"https://wpmarmite.com/plugin-dons-wordpress/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 24 Oct 2017 07:35:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:405:"\n		        \nEnvie de découvrir une extension qui vaut le détour ? Aujourd&rsquo;hui, je vais vous présenter un plugin de très bonne qualité. Vous avez en charge une association ou une petite...\nGive WP : Comment récolter des dons avec WordPress est un article de WP Marmite, le blog qui vous aide à tirer le meilleur de WordPress.\nAbonnez-vous à la newsletter pour recevoir les suivants.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"WP Marmite";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:850:"<p><img width="640" height="220" src="https://media-6d6e.kxcdn.com/wp-content/uploads/2017/10/give-wp-dons-wordpress.jpg" class="attachment-full size-full wp-post-image" alt="" /></p>\n<p>Envie de découvrir une extension qui vaut le détour ? Aujourd&rsquo;hui, je vais vous présenter un plugin de très bonne qualité. Vous avez en charge une association ou une petite...</p>\n<p><a rel="nofollow" href="https://wpmarmite.com/plugin-dons-wordpress/">Give WP : Comment récolter des dons avec WordPress</a> est un article de <a rel="nofollow" href="https://wpmarmite.com">WP Marmite</a>, le blog qui vous aide à tirer le meilleur de WordPress.<br />\n<a href="https://wpmarmite.com/newsletter">Abonnez-vous à la newsletter</a> pour recevoir les suivants.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/ZSyykDrMhdU" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:44:"https://wpmarmite.com/plugin-dons-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:62:"Refer.WordPress : Affiliation WordPress.com, JetPack &amp; Woo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/8C2ez9tLBIk/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wpformation.com/refer-wordpress/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 24 Oct 2017 05:51:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:631:"\n		        WordPress.com, Jetpack et WooCommerce se mettent à l\'affiliation et vous proposent désormais un programme affilié commun nommé Refer.WordPress afin de promouvoir leurs produits et services. Rappel : L\'affiliation sur Internet est une technique marketing permettant à un site web annonceur (affilieur) de promouvoir ses produits ou ses services en proposant une rémunération à d\'autres sites web [&#8230;]\n\n\nRefer.WordPress : Affiliation WordPress.com, JetPack &#038; Woo est un article de WP FormationFormation WordPress, SEO &amp; WooCommerce - Pour ne rien manquer : Abonnez-vous à la newsletter !\n		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WP Formation";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1430:"<p><img width="1111" height="437" src="https://cdn.wpformation.com/wp-content/uploads/2017/10/affiliation.jpg" class="attachment-Large size-Large wp-post-image" alt="affiliation" style="margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px" />WordPress.com, Jetpack et WooCommerce se mettent à l\'affiliation et vous proposent désormais un programme affilié commun nommé Refer.WordPress afin de promouvoir leurs produits et services. Rappel : L\'affiliation sur Internet est une technique marketing permettant à un site web annonceur (affilieur) de promouvoir ses produits ou ses services en proposant une rémunération à d\'autres sites web [&#8230;]</p>\n<p></p>\n<hr>\n<a rel="nofollow" href="https://wpformation.com/refer-wordpress/">Refer.WordPress : Affiliation WordPress.com, JetPack &#038; Woo</a> est un article de <a title="Formation WordPress Ecommerce" href="https://wpformation.com">WP Formation</a><br /><a href="https://wpformation.com/formation-wordpress/">Formation WordPress</a>, <a href="https://wpformation.com/formation-wordpress-pro/">SEO</a> &amp; <a href="https://wpformation.com/formation-woocommerce-e-commerce/">WooCommerce</a> - Pour ne rien manquer : <a href="https://wpformation.com/abonnement-newsletter-wpf/">Abonnez-vous à la newsletter</a> !</p>\n<hr><img src="http://feeds.feedburner.com/~r/wpfr/~4/8C2ez9tLBIk" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wpformation.com/refer-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:59:"Robots.txt WordPress : Définition, usages et mise en place";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/djwsuLrN76o/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wpformation.com/robots-txt-wordpress/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Oct 2017 06:30:13 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:579:"\n		        Le fichier “Robots.txt” utilise le “protocole d’exclusion des robots (bots)”. Il est situé à la racine de votre site WordPress et c\'est le premier fichier analysé par les robots des moteurs de recherches (tels que Google, Bing, Yahoo...). Il permet de donner des instructions sur l’indexation de vos pages et autres éléments de votre site [&#8230;]\n\n\nRobots.txt WordPress : Définition, usages et mise en place est un article de WP FormationFormation WordPress, SEO &amp; WooCommerce - Pour ne rien manquer : Abonnez-vous à la newsletter !\n		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"WP Formation";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1397:"<p><img width="1024" height="640" src="https://cdn.wpformation.com/wp-content/uploads/2017/10/robots-wordpress.jpg" class="attachment-Large size-Large wp-post-image" alt="robots-txt-wordpress" style="margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px" />Le fichier “Robots.txt” utilise le “protocole d’exclusion des robots (bots)”. Il est situé à la racine de votre site WordPress et c\'est le premier fichier analysé par les robots des moteurs de recherches (tels que Google, Bing, Yahoo...). Il permet de donner des instructions sur l’indexation de vos pages et autres éléments de votre site [&#8230;]</p>\n<p></p>\n<hr>\n<a rel="nofollow" href="https://wpformation.com/robots-txt-wordpress/">Robots.txt WordPress : Définition, usages et mise en place</a> est un article de <a title="Formation WordPress Ecommerce" href="https://wpformation.com">WP Formation</a><br /><a href="https://wpformation.com/formation-wordpress/">Formation WordPress</a>, <a href="https://wpformation.com/formation-wordpress-pro/">SEO</a> &amp; <a href="https://wpformation.com/formation-woocommerce-e-commerce/">WooCommerce</a> - Pour ne rien manquer : <a href="https://wpformation.com/abonnement-newsletter-wpf/">Abonnez-vous à la newsletter</a> !</p>\n<hr><img src="http://feeds.feedburner.com/~r/wpfr/~4/djwsuLrN76o" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wpformation.com/robots-txt-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:56:"Envoyer sa newsletter avec WordPress : Revue de Jackmail";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:91:"http://feedproxy.google.com/~r/wpfr/~3/aoXX0KtDSLE/newsletter-wordpress-jackmail-40030.html";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:61:"https://boiteaweb.fr/newsletter-wordpress-jackmail-40030.html";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Oct 2017 05:45:33 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:524:"\n		        Un blog WordPress sans newsletter est aujourd’hui impensable. Cela permet de générer du trafic, de fidéliser ses lecteurs, communiquer sur vos projets, produits, promotion. Bref, c’est l’outil obligatoire à qui veut faire évoluer son audience (et sa visibilité). Évidemment, sur WordPress, comme sur toute autre plateforme, il existe des solutions. Vous en connaissez surement plusieurs&#160;…\nThe post Envoyer sa newsletter avec WordPress : Revue de Jackmail appeared first on BoiteAWeb.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:749:"<p>Un blog WordPress sans newsletter est aujourd’hui impensable. Cela permet de générer du trafic, de fidéliser ses lecteurs, communiquer sur vos projets, produits, promotion. Bref, c’est l’outil obligatoire à qui veut faire évoluer son audience (et sa visibilité). Évidemment, sur WordPress, comme sur toute autre plateforme, il existe des solutions. Vous en connaissez surement plusieurs&#160;…</p>\n<p>The post <a rel="nofollow" href="https://boiteaweb.fr/newsletter-wordpress-jackmail-40030.html">Envoyer sa newsletter avec WordPress : Revue de Jackmail</a> appeared first on <a rel="nofollow" href="https://boiteaweb.fr">BoiteAWeb</a>.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/aoXX0KtDSLE" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:61:"https://boiteaweb.fr/newsletter-wordpress-jackmail-40030.html";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:84:"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:37:"La fonction WordPress add_query_arg()";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://feedproxy.google.com/~r/wpfr/~3/68zlhJCsiww/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:63:"https://www.maximeculea.fr/la-fonction-wordpress-add-query-arg/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 21 Oct 2017 07:30:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:289:"\n		        WordPress est constitué d\'une multitude de fonctions dites "Helpers" qui ont pour vocation de faciliter la vie des développeurs, comme la fonction add_query_arg().\nCet article La fonction WordPress add_query_arg() est apparu en premier sur WordPress by Maxime Culea.		        ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:522:"<p>WordPress est constitué d\'une multitude de fonctions dites "Helpers" qui ont pour vocation de faciliter la vie des développeurs, comme la fonction add_query_arg().</p>\n<p>Cet article <a rel="nofollow" href="https://www.maximeculea.fr/la-fonction-wordpress-add-query-arg/">La fonction WordPress add_query_arg()</a> est apparu en premier sur <a rel="nofollow" href="https://www.maximeculea.fr">WordPress by Maxime Culea</a>.</p><img src="http://feeds.feedburner.com/~r/wpfr/~4/68zlhJCsiww" height="1" width="1" alt=""/>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:8:"origLink";a:1:{i:0;a:5:{s:4:"data";s:63:"https://www.maximeculea.fr/la-fonction-wordpress-add-query-arg/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:52:"http://backend.userland.com/creativeCommonsRssModule";a:1:{s:7:"license";a:1:{i:0;a:5:{s:4:"data";s:49:"http://creativecommons.org/licenses/by-nc-sa/3.0/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";s:4:"href";s:32:"http://feeds.feedburner.com/wpfr";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:3:"rel";s:3:"hub";s:4:"href";s:32:"http://pubsubhubbub.appspot.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:42:"http://rssnamespace.org/feedburner/ext/1.0";a:1:{s:4:"info";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:4:"wpfr";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:11:{s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"etag";s:27:"8UIdg3H0xM050lUoZ+ASuwhOp44";s:13:"last-modified";s:29:"Sun, 29 Oct 2017 22:22:26 GMT";s:16:"content-encoding";s:4:"gzip";s:4:"date";s:29:"Sun, 29 Oct 2017 22:25:22 GMT";s:7:"expires";s:29:"Sun, 29 Oct 2017 22:25:22 GMT";s:13:"cache-control";s:18:"private, max-age=0";s:22:"x-content-type-options";s:7:"nosniff";s:16:"x-xss-protection";s:13:"1; mode=block";s:6:"server";s:3:"GSE";s:7:"alt-svc";s:43:"quic=":443"; ma=2592000; v="41,39,38,37,35"";}}s:5:"build";s:14:"20171011093754";}', 'no'),
(428, '_transient_timeout_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1509359122', 'no'),
(429, '_transient_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1509315922', 'no'),
(430, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1509359122', 'no'),
(431, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/WordpressFrancophone/~3/UUGDJmDzVjE/\'>Certification WordPress par WPFR, appel à contributions</a></li></ul></div><div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/pyNHg9_VvK4/\'>WP Maintenance Switch</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/sFPmeEIHiP4/couleurs-accessibilite-blendwebmix-2017-42509.html\'>Couleurs et Accessibilité, ma conférence au #BlendWebMix 2017</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/40YBnjP1MsY/\'>Article WordPress : Le Mode d’Emploi Complet</a></li></ul></div>', 'no'),
(432, '_site_transient_timeout_community-events-4501c091b0366d76ea3218b6cfdd8097', '1509359123', 'no'),
(433, '_site_transient_community-events-4501c091b0366d76ea3218b6cfdd8097', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:2:"::";}s:6:"events";a:2:{i:0;a:7:{s:4:"type";s:6:"meetup";s:5:"title";s:64:"Meetup WordPress Melun sur le thème du e-commerce (WooCommerce)";s:3:"url";s:63:"https://www.meetup.com/Meetup-WordPress-Melun/events/244376874/";s:6:"meetup";s:22:"Meetup WordPress Melun";s:10:"meetup_url";s:46:"https://www.meetup.com/Meetup-WordPress-Melun/";s:4:"date";s:19:"2017-11-16 18:00:00";s:8:"location";a:4:{s:8:"location";s:13:"Melun, France";s:7:"country";s:2:"fr";s:8:"latitude";d:48.5369189999999974816091707907617092132568359375;s:9:"longitude";d:2.655111000000000220921947402530349791049957275390625;}}i:1;a:7:{s:4:"type";s:8:"wordcamp";s:5:"title";s:14:"WordCamp Paris";s:3:"url";s:31:"https://2018.paris.wordcamp.org";s:6:"meetup";N;s:10:"meetup_url";N;s:4:"date";s:19:"2018-03-09 00:00:00";s:8:"location";a:4:{s:8:"location";s:5:"Paris";s:7:"country";s:2:"FR";s:8:"latitude";d:48.82406919999999672654666937887668609619140625;s:9:"longitude";d:2.372298900000000099197450253996066749095916748046875;}}}}', 'no') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=690 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `kygomusic_postmeta`
#
INSERT INTO `kygomusic_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_wp_trash_meta_status', 'publish'),
(3, 4, '_wp_trash_meta_time', '1507754095'),
(4, 2, '_wp_trash_meta_status', 'publish'),
(5, 2, '_wp_trash_meta_time', '1507755677'),
(6, 2, '_wp_desired_post_slug', 'page-d-exemple'),
(7, 7, '_edit_last', '1'),
(8, 7, '_edit_lock', '1509317015:1'),
(9, 9, '_edit_last', '1'),
(10, 9, '_edit_lock', '1508060308:1'),
(11, 11, '_edit_last', '1'),
(12, 11, '_edit_lock', '1507755838:1'),
(13, 13, '_edit_last', '1'),
(14, 13, '_edit_lock', '1507797339:1'),
(15, 15, '_edit_last', '1'),
(16, 15, '_edit_lock', '1507755860:1'),
(17, 17, '_menu_item_type', 'post_type'),
(18, 17, '_menu_item_menu_item_parent', '0'),
(19, 17, '_menu_item_object_id', '15'),
(20, 17, '_menu_item_object', 'page'),
(21, 17, '_menu_item_target', ''),
(22, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(23, 17, '_menu_item_xfn', ''),
(24, 17, '_menu_item_url', ''),
(26, 18, '_menu_item_type', 'post_type'),
(27, 18, '_menu_item_menu_item_parent', '0'),
(28, 18, '_menu_item_object_id', '13'),
(29, 18, '_menu_item_object', 'page'),
(30, 18, '_menu_item_target', ''),
(31, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(32, 18, '_menu_item_xfn', ''),
(33, 18, '_menu_item_url', ''),
(35, 19, '_menu_item_type', 'post_type'),
(36, 19, '_menu_item_menu_item_parent', '0'),
(37, 19, '_menu_item_object_id', '11'),
(38, 19, '_menu_item_object', 'page'),
(39, 19, '_menu_item_target', ''),
(40, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(41, 19, '_menu_item_xfn', ''),
(42, 19, '_menu_item_url', ''),
(44, 20, '_menu_item_type', 'post_type'),
(45, 20, '_menu_item_menu_item_parent', '0'),
(46, 20, '_menu_item_object_id', '9'),
(47, 20, '_menu_item_object', 'page'),
(48, 20, '_menu_item_target', ''),
(49, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(50, 20, '_menu_item_xfn', ''),
(51, 20, '_menu_item_url', ''),
(53, 21, '_menu_item_type', 'post_type'),
(54, 21, '_menu_item_menu_item_parent', '0'),
(55, 21, '_menu_item_object_id', '7'),
(56, 21, '_menu_item_object', 'page'),
(57, 21, '_menu_item_target', ''),
(58, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(59, 21, '_menu_item_xfn', ''),
(60, 21, '_menu_item_url', ''),
(62, 22, '_edit_last', '1'),
(63, 22, 'field_59de94ca9232e', 'a:12:{s:3:"key";s:19:"field_59de94ca9232e";s:5:"label";s:5:"Ville";s:4:"name";s:4:"city";s:4:"type";s:10:"google_map";s:12:"instructions";s:35:"Saisissez la ville du prochain tour";s:8:"required";s:1:"1";s:10:"center_lat";s:0:"";s:10:"center_lng";s:0:"";s:4:"zoom";s:0:"";s:6:"height";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(66, 22, 'position', 'normal'),
(67, 22, 'layout', 'no_box'),
(68, 22, 'hide_on_screen', ''),
(69, 22, '_edit_lock', '1507760208:1'),
(71, 23, ' address', 'a:3:{s:7:"address";s:13:"Paris, France";s:3:"lat";s:17:"48.85661400000001";s:3:"lng";s:18:"2.3522219000000177";}'),
(72, 23, '_ address', 'field_59de94ca9232e'),
(73, 23, '_', 'field_59de950e9232f'),
(74, 9, ' address', 'a:3:{s:7:"address";s:13:"Paris, France";s:3:"lat";s:17:"48.85661400000001";s:3:"lng";s:18:"2.3522219000000177";}'),
(75, 9, '_ address', 'field_59de94ca9232e'),
(76, 9, '_', 'field_59de950e9232f'),
(77, 22, 'field_59de97c69b63f', 'a:11:{s:3:"key";s:19:"field_59de97c69b63f";s:5:"label";s:15:"Date du concert";s:4:"name";s:4:"date";s:4:"type";s:11:"date_picker";s:12:"instructions";s:28:"Saisissez la date du concert";s:8:"required";s:1:"1";s:11:"date_format";s:6:"yymmdd";s:14:"display_format";s:8:"dd/mm/yy";s:9:"first_day";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(78, 22, 'field_59de98319b640', 'a:14:{s:3:"key";s:19:"field_59de98319b640";s:5:"label";s:16:"Salle de concert";s:4:"name";s:7:"theater";s:4:"type";s:4:"text";s:12:"instructions";s:29:"Saisissez la salle de concert";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(81, 22, 'field_59de988a1b464', 'a:8:{s:3:"key";s:19:"field_59de988a1b464";s:5:"label";s:25:"Ajouter une nouvelle date";s:4:"name";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(82, 22, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"9";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(83, 24, '_edit_lock', '1509316570:1'),
(84, 24, '_edit_last', '1'),
(89, 9, 'ajouter_une_nouvelle_date_0_theater', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(90, 9, '_ajouter_une_nouvelle_date_0_theater', 'field_59de9b90a70d7'),
(91, 9, 'ajouter_une_nouvelle_date', '1'),
(92, 9, '_ajouter_une_nouvelle_date', 'field_59de9b3ba70d3'),
(93, 35, ' address', 'a:3:{s:7:"address";s:13:"Paris, France";s:3:"lat";s:17:"48.85661400000001";s:3:"lng";s:18:"2.3522219000000177";}'),
(94, 35, '_ address', 'field_59de94ca9232e'),
(95, 35, 'ajouter_une_nouvelle_date_0_date', '20171019'),
(96, 35, '_ajouter_une_nouvelle_date_0_date', 'field_59de9b70a70d6'),
(97, 35, 'ajouter_une_nouvelle_date_0_billetterie', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:16:"http://google.fr";s:6:"target";s:0:"";}'),
(98, 35, '_ajouter_une_nouvelle_date_0_billetterie', 'field_59de9c8cf959d'),
(99, 35, 'ajouter_une_nouvelle_date_0_theater', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(100, 35, '_ajouter_une_nouvelle_date_0_theater', 'field_59de9b90a70d7'),
(101, 35, 'ajouter_une_nouvelle_date', '1'),
(102, 35, '_ajouter_une_nouvelle_date', 'field_59de9b3ba70d3'),
(103, 37, ' address', 'a:3:{s:7:"address";s:13:"Paris, France";s:3:"lat";s:17:"48.85661400000001";s:3:"lng";s:18:"2.3522219000000177";}'),
(104, 37, '_ address', 'field_59de94ca9232e'),
(105, 37, 'ajouter_une_nouvelle_date_0_theater', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(106, 37, '_ajouter_une_nouvelle_date_0_theater', 'field_59de9b90a70d7'),
(107, 37, 'ajouter_une_nouvelle_date', ''),
(108, 37, '_ajouter_une_nouvelle_date', 'field_59de9b3ba70d3'),
(109, 9, 'ajouter_une_nouvelle_date_0_date', '20171021'),
(110, 9, '_ajouter_une_nouvelle_date_0_date', 'field_59de9b70a70d6'),
(111, 9, 'ajouter_une_nouvelle_date_0_billetterie', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:24:"http://kygo.local/music/";s:6:"target";s:0:"";}'),
(112, 9, '_ajouter_une_nouvelle_date_0_billetterie', 'field_59de9c8cf959d'),
(113, 9, 'ajouter_une_nouvelle_date_0_location', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(114, 9, '_ajouter_une_nouvelle_date_0_location', 'field_59de9b90a70d7') ;
INSERT INTO `kygomusic_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(115, 38, ' address', 'a:3:{s:7:"address";s:13:"Paris, France";s:3:"lat";s:17:"48.85661400000001";s:3:"lng";s:18:"2.3522219000000177";}'),
(116, 38, '_ address', 'field_59de94ca9232e'),
(117, 38, 'ajouter_une_nouvelle_date_0_theater', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(118, 38, '_ajouter_une_nouvelle_date_0_theater', 'field_59de9b90a70d7'),
(119, 38, 'ajouter_une_nouvelle_date', '1'),
(120, 38, '_ajouter_une_nouvelle_date', 'field_59de9b3ba70d3'),
(121, 38, 'ajouter_une_nouvelle_date_0_date', '20171021'),
(122, 38, '_ajouter_une_nouvelle_date_0_date', 'field_59de9b70a70d6'),
(123, 38, 'ajouter_une_nouvelle_date_0_billetterie', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:24:"http://kygo.local/music/";s:6:"target";s:0:"";}'),
(124, 38, '_ajouter_une_nouvelle_date_0_billetterie', 'field_59de9c8cf959d'),
(125, 38, 'ajouter_une_nouvelle_date_0_location', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(126, 38, '_ajouter_une_nouvelle_date_0_location', 'field_59de9b90a70d7'),
(129, 9, 'locations_0_billetterie', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:23:"http://kygo.local/news/";s:6:"target";s:0:"";}'),
(130, 9, '_locations_0_billetterie', 'field_59de9c8cf959d'),
(131, 9, 'locations_0_location', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(132, 9, '_locations_0_location', 'field_59de9b90a70d7'),
(133, 9, 'locations', '2'),
(134, 9, '_locations', 'field_59de9b3ba70d3'),
(135, 39, ' address', 'a:3:{s:7:"address";s:13:"Paris, France";s:3:"lat";s:17:"48.85661400000001";s:3:"lng";s:18:"2.3522219000000177";}'),
(136, 39, '_ address', 'field_59de94ca9232e'),
(137, 39, 'ajouter_une_nouvelle_date_0_theater', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(138, 39, '_ajouter_une_nouvelle_date_0_theater', 'field_59de9b90a70d7'),
(139, 39, 'ajouter_une_nouvelle_date', '1'),
(140, 39, '_ajouter_une_nouvelle_date', 'field_59de9b3ba70d3'),
(141, 39, 'ajouter_une_nouvelle_date_0_date', '20171021'),
(142, 39, '_ajouter_une_nouvelle_date_0_date', 'field_59de9b70a70d6'),
(143, 39, 'ajouter_une_nouvelle_date_0_billetterie', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:24:"http://kygo.local/music/";s:6:"target";s:0:"";}'),
(144, 39, '_ajouter_une_nouvelle_date_0_billetterie', 'field_59de9c8cf959d'),
(145, 39, 'ajouter_une_nouvelle_date_0_location', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(146, 39, '_ajouter_une_nouvelle_date_0_location', 'field_59de9b90a70d7'),
(147, 39, 'locations_0_date', '20171021'),
(148, 39, '_locations_0_date', 'field_59de9b70a70d6'),
(149, 39, 'locations_0_billetterie', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:23:"http://kygo.local/news/";s:6:"target";s:0:"";}'),
(150, 39, '_locations_0_billetterie', 'field_59de9c8cf959d'),
(151, 39, 'locations_0_location', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(152, 39, '_locations_0_location', 'field_59de9b90a70d7'),
(153, 39, 'locations', '1'),
(154, 39, '_locations', 'field_59de9b3ba70d3'),
(157, 9, 'locations_1_billetterie', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:17:"http://google.com";s:6:"target";s:0:"";}'),
(158, 9, '_locations_1_billetterie', 'field_59de9c8cf959d'),
(159, 9, 'locations_1_location', 'a:3:{s:7:"address";s:31:"Le Zénith Paris, Paris, France";s:3:"lat";s:10:"48.8938119";s:3:"lng";s:18:"2.3931569999999738";}'),
(160, 9, '_locations_1_location', 'field_59de9b90a70d7'),
(161, 40, ' address', 'a:3:{s:7:"address";s:13:"Paris, France";s:3:"lat";s:17:"48.85661400000001";s:3:"lng";s:18:"2.3522219000000177";}'),
(162, 40, '_ address', 'field_59de94ca9232e'),
(163, 40, 'ajouter_une_nouvelle_date_0_theater', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(164, 40, '_ajouter_une_nouvelle_date_0_theater', 'field_59de9b90a70d7'),
(165, 40, 'ajouter_une_nouvelle_date', '1'),
(166, 40, '_ajouter_une_nouvelle_date', 'field_59de9b3ba70d3'),
(167, 40, 'ajouter_une_nouvelle_date_0_date', '20171021'),
(168, 40, '_ajouter_une_nouvelle_date_0_date', 'field_59de9b70a70d6'),
(169, 40, 'ajouter_une_nouvelle_date_0_billetterie', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:24:"http://kygo.local/music/";s:6:"target";s:0:"";}'),
(170, 40, '_ajouter_une_nouvelle_date_0_billetterie', 'field_59de9c8cf959d'),
(171, 40, 'ajouter_une_nouvelle_date_0_location', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(172, 40, '_ajouter_une_nouvelle_date_0_location', 'field_59de9b90a70d7'),
(173, 40, 'locations_0_date', '20171021'),
(174, 40, '_locations_0_date', 'field_59de9b70a70d6'),
(175, 40, 'locations_0_billetterie', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:23:"http://kygo.local/news/";s:6:"target";s:0:"";}'),
(176, 40, '_locations_0_billetterie', 'field_59de9c8cf959d'),
(177, 40, 'locations_0_location', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(178, 40, '_locations_0_location', 'field_59de9b90a70d7'),
(179, 40, 'locations', '2'),
(180, 40, '_locations', 'field_59de9b3ba70d3'),
(181, 40, 'locations_1_date', '20171026'),
(182, 40, '_locations_1_date', 'field_59de9b70a70d6'),
(183, 40, 'locations_1_billetterie', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:17:"http://google.com";s:6:"target";s:0:"";}'),
(184, 40, '_locations_1_billetterie', 'field_59de9c8cf959d'),
(185, 40, 'locations_1_location', 'a:3:{s:7:"address";s:53:"Zenith, Bourke Street, Melbourne, Victoria, Australie";s:3:"lat";s:11:"-37.8136263";s:3:"lng";s:18:"144.96660270000007";}'),
(186, 40, '_locations_1_location', 'field_59de9b90a70d7'),
(187, 41, ' address', 'a:3:{s:7:"address";s:13:"Paris, France";s:3:"lat";s:17:"48.85661400000001";s:3:"lng";s:18:"2.3522219000000177";}'),
(188, 41, '_ address', 'field_59de94ca9232e'),
(189, 41, 'ajouter_une_nouvelle_date_0_theater', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(190, 41, '_ajouter_une_nouvelle_date_0_theater', 'field_59de9b90a70d7'),
(191, 41, 'ajouter_une_nouvelle_date', '1'),
(192, 41, '_ajouter_une_nouvelle_date', 'field_59de9b3ba70d3'),
(193, 41, 'ajouter_une_nouvelle_date_0_date', '20171021'),
(194, 41, '_ajouter_une_nouvelle_date_0_date', 'field_59de9b70a70d6'),
(195, 41, 'ajouter_une_nouvelle_date_0_billetterie', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:24:"http://kygo.local/music/";s:6:"target";s:0:"";}'),
(196, 41, '_ajouter_une_nouvelle_date_0_billetterie', 'field_59de9c8cf959d'),
(197, 41, 'ajouter_une_nouvelle_date_0_location', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(198, 41, '_ajouter_une_nouvelle_date_0_location', 'field_59de9b90a70d7'),
(199, 41, 'locations_0_date', '20171021'),
(200, 41, '_locations_0_date', 'field_59de9b70a70d6'),
(201, 41, 'locations_0_billetterie', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:23:"http://kygo.local/news/";s:6:"target";s:0:"";}'),
(202, 41, '_locations_0_billetterie', 'field_59de9c8cf959d'),
(203, 41, 'locations_0_location', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(204, 41, '_locations_0_location', 'field_59de9b90a70d7'),
(205, 41, 'locations', '2'),
(206, 41, '_locations', 'field_59de9b3ba70d3'),
(207, 41, 'locations_1_date', '20171026'),
(208, 41, '_locations_1_date', 'field_59de9b70a70d6'),
(209, 41, 'locations_1_billetterie', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:17:"http://google.com";s:6:"target";s:0:"";}'),
(210, 41, '_locations_1_billetterie', 'field_59de9c8cf959d'),
(211, 41, 'locations_1_location', 'a:3:{s:7:"address";s:31:"Le Zénith Paris, Paris, France";s:3:"lat";s:10:"48.8938119";s:3:"lng";s:18:"2.3931569999999738";}'),
(212, 41, '_locations_1_location', 'field_59de9b90a70d7'),
(213, 43, ' address', 'a:3:{s:7:"address";s:13:"Paris, France";s:3:"lat";s:17:"48.85661400000001";s:3:"lng";s:18:"2.3522219000000177";}'),
(214, 43, '_ address', 'field_59de94ca9232e'),
(215, 43, 'ajouter_une_nouvelle_date_0_theater', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(216, 43, '_ajouter_une_nouvelle_date_0_theater', 'field_59de9b90a70d7'),
(217, 43, 'ajouter_une_nouvelle_date', '1'),
(218, 43, '_ajouter_une_nouvelle_date', 'field_59de9b3ba70d3') ;
INSERT INTO `kygomusic_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(219, 43, 'ajouter_une_nouvelle_date_0_date', '20171021'),
(220, 43, '_ajouter_une_nouvelle_date_0_date', 'field_59de9b70a70d6'),
(221, 43, 'ajouter_une_nouvelle_date_0_billetterie', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:24:"http://kygo.local/music/";s:6:"target";s:0:"";}'),
(222, 43, '_ajouter_une_nouvelle_date_0_billetterie', 'field_59de9c8cf959d'),
(223, 43, 'ajouter_une_nouvelle_date_0_location', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(224, 43, '_ajouter_une_nouvelle_date_0_location', 'field_59de9b90a70d7'),
(225, 43, 'locations_0_billetterie', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:23:"http://kygo.local/news/";s:6:"target";s:0:"";}'),
(226, 43, '_locations_0_billetterie', 'field_59de9c8cf959d'),
(227, 43, 'locations_0_location', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(228, 43, '_locations_0_location', 'field_59de9b90a70d7'),
(229, 43, 'locations', ''),
(230, 43, '_locations', 'field_59de9b3ba70d3'),
(231, 43, 'locations_1_billetterie', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:17:"http://google.com";s:6:"target";s:0:"";}'),
(232, 43, '_locations_1_billetterie', 'field_59de9c8cf959d'),
(233, 43, 'locations_1_location', 'a:3:{s:7:"address";s:31:"Le Zénith Paris, Paris, France";s:3:"lat";s:10:"48.8938119";s:3:"lng";s:18:"2.3931569999999738";}'),
(234, 43, '_locations_1_location', 'field_59de9b90a70d7'),
(235, 9, 'locations_0_date', '20171015'),
(236, 9, '_locations_0_date', 'field_59de9b70a70d6'),
(237, 9, 'locations_0_tickets', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:17:"http://google.com";s:6:"target";s:0:"";}'),
(238, 9, '_locations_0_tickets', 'field_59de9c8cf959d'),
(239, 9, 'locations_0_theater', 'Zenith de Paris'),
(240, 9, '_locations_0_theater', 'field_59df3a8a6d9b0'),
(241, 9, 'locations_0_city', 'a:3:{s:7:"address";s:13:"Paris, France";s:3:"lat";s:17:"48.85661400000001";s:3:"lng";s:18:"2.3522219000000177";}'),
(242, 9, '_locations_0_city', 'field_59de9b90a70d7'),
(243, 9, 'locations_1_date', '20171021'),
(244, 9, '_locations_1_date', 'field_59de9b70a70d6'),
(245, 9, 'locations_1_tickets', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:17:"http://google.com";s:6:"target";s:0:"";}'),
(246, 9, '_locations_1_tickets', 'field_59de9c8cf959d'),
(247, 9, 'locations_1_theater', 'Dôme de Marseille'),
(248, 9, '_locations_1_theater', 'field_59df3a8a6d9b0'),
(249, 9, 'locations_1_city', 'a:3:{s:7:"address";s:17:"Marseille, France";s:3:"lat";s:9:"43.296482";s:3:"lng";s:17:"5.369779999999992";}'),
(250, 9, '_locations_1_city', 'field_59de9b90a70d7'),
(251, 44, ' address', 'a:3:{s:7:"address";s:13:"Paris, France";s:3:"lat";s:17:"48.85661400000001";s:3:"lng";s:18:"2.3522219000000177";}'),
(252, 44, '_ address', 'field_59de94ca9232e'),
(253, 44, 'ajouter_une_nouvelle_date_0_theater', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(254, 44, '_ajouter_une_nouvelle_date_0_theater', 'field_59de9b90a70d7'),
(255, 44, 'ajouter_une_nouvelle_date', '1'),
(256, 44, '_ajouter_une_nouvelle_date', 'field_59de9b3ba70d3'),
(257, 44, 'ajouter_une_nouvelle_date_0_date', '20171021'),
(258, 44, '_ajouter_une_nouvelle_date_0_date', 'field_59de9b70a70d6'),
(259, 44, 'ajouter_une_nouvelle_date_0_billetterie', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:24:"http://kygo.local/music/";s:6:"target";s:0:"";}'),
(260, 44, '_ajouter_une_nouvelle_date_0_billetterie', 'field_59de9c8cf959d'),
(261, 44, 'ajouter_une_nouvelle_date_0_location', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(262, 44, '_ajouter_une_nouvelle_date_0_location', 'field_59de9b90a70d7'),
(263, 44, 'locations_0_billetterie', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:23:"http://kygo.local/news/";s:6:"target";s:0:"";}'),
(264, 44, '_locations_0_billetterie', 'field_59de9c8cf959d'),
(265, 44, 'locations_0_location', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(266, 44, '_locations_0_location', 'field_59de9b90a70d7'),
(267, 44, 'locations', '2'),
(268, 44, '_locations', 'field_59de9b3ba70d3'),
(269, 44, 'locations_1_billetterie', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:17:"http://google.com";s:6:"target";s:0:"";}'),
(270, 44, '_locations_1_billetterie', 'field_59de9c8cf959d'),
(271, 44, 'locations_1_location', 'a:3:{s:7:"address";s:31:"Le Zénith Paris, Paris, France";s:3:"lat";s:10:"48.8938119";s:3:"lng";s:18:"2.3931569999999738";}'),
(272, 44, '_locations_1_location', 'field_59de9b90a70d7'),
(273, 44, 'locations_0_date', '20171015'),
(274, 44, '_locations_0_date', 'field_59de9b70a70d6'),
(275, 44, 'locations_0_tickets', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:17:"http://google.com";s:6:"target";s:0:"";}'),
(276, 44, '_locations_0_tickets', 'field_59de9c8cf959d'),
(277, 44, 'locations_0_theater', 'Zenith de Paris'),
(278, 44, '_locations_0_theater', 'field_59df3a8a6d9b0'),
(279, 44, 'locations_0_city', 'a:3:{s:7:"address";s:13:"Paris, France";s:3:"lat";s:17:"48.85661400000001";s:3:"lng";s:18:"2.3522219000000177";}'),
(280, 44, '_locations_0_city', 'field_59de9b90a70d7'),
(281, 44, 'locations_1_date', '20171021'),
(282, 44, '_locations_1_date', 'field_59de9b70a70d6'),
(283, 44, 'locations_1_tickets', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:17:"http://google.com";s:6:"target";s:0:"";}'),
(284, 44, '_locations_1_tickets', 'field_59de9c8cf959d'),
(285, 44, 'locations_1_theater', 'Dôme de Marseille'),
(286, 44, '_locations_1_theater', 'field_59df3a8a6d9b0'),
(287, 44, 'locations_1_city', 'a:3:{s:7:"address";s:17:"Marseille, France";s:3:"lat";s:9:"43.296482";s:3:"lng";s:17:"5.369779999999992";}'),
(288, 44, '_locations_1_city', 'field_59de9b90a70d7'),
(289, 45, ' address', 'a:3:{s:7:"address";s:13:"Paris, France";s:3:"lat";s:17:"48.85661400000001";s:3:"lng";s:18:"2.3522219000000177";}'),
(290, 45, '_ address', 'field_59de94ca9232e'),
(291, 45, 'ajouter_une_nouvelle_date_0_theater', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(292, 45, '_ajouter_une_nouvelle_date_0_theater', 'field_59de9b90a70d7'),
(293, 45, 'ajouter_une_nouvelle_date', '1'),
(294, 45, '_ajouter_une_nouvelle_date', 'field_59de9b3ba70d3'),
(295, 45, 'ajouter_une_nouvelle_date_0_date', '20171021'),
(296, 45, '_ajouter_une_nouvelle_date_0_date', 'field_59de9b70a70d6'),
(297, 45, 'ajouter_une_nouvelle_date_0_billetterie', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:24:"http://kygo.local/music/";s:6:"target";s:0:"";}'),
(298, 45, '_ajouter_une_nouvelle_date_0_billetterie', 'field_59de9c8cf959d'),
(299, 45, 'ajouter_une_nouvelle_date_0_location', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(300, 45, '_ajouter_une_nouvelle_date_0_location', 'field_59de9b90a70d7'),
(301, 45, 'locations_0_billetterie', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:23:"http://kygo.local/news/";s:6:"target";s:0:"";}'),
(302, 45, '_locations_0_billetterie', 'field_59de9c8cf959d'),
(303, 45, 'locations_0_location', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(304, 45, '_locations_0_location', 'field_59de9b90a70d7'),
(305, 45, 'locations', '2'),
(306, 45, '_locations', 'field_59de9b3ba70d3'),
(307, 45, 'locations_1_billetterie', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:17:"http://google.com";s:6:"target";s:0:"";}'),
(308, 45, '_locations_1_billetterie', 'field_59de9c8cf959d'),
(309, 45, 'locations_1_location', 'a:3:{s:7:"address";s:31:"Le Zénith Paris, Paris, France";s:3:"lat";s:10:"48.8938119";s:3:"lng";s:18:"2.3931569999999738";}'),
(310, 45, '_locations_1_location', 'field_59de9b90a70d7'),
(311, 45, 'locations_0_date', '20171015'),
(312, 45, '_locations_0_date', 'field_59de9b70a70d6'),
(313, 45, 'locations_0_tickets', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:17:"http://google.com";s:6:"target";s:0:"";}'),
(314, 45, '_locations_0_tickets', 'field_59de9c8cf959d'),
(315, 45, 'locations_0_theater', 'Zenith de Paris'),
(316, 45, '_locations_0_theater', 'field_59df3a8a6d9b0'),
(317, 45, 'locations_0_city', 'a:3:{s:7:"address";s:37:"Zénith, Rue du Dragon, Paris, France";s:3:"lat";s:10:"48.8524576";s:3:"lng";s:16:"2.33023419999995";}'),
(318, 45, '_locations_0_city', 'field_59de9b90a70d7') ;
INSERT INTO `kygomusic_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(319, 45, 'locations_1_date', '20171021'),
(320, 45, '_locations_1_date', 'field_59de9b70a70d6'),
(321, 45, 'locations_1_tickets', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:17:"http://google.com";s:6:"target";s:0:"";}'),
(322, 45, '_locations_1_tickets', 'field_59de9c8cf959d'),
(323, 45, 'locations_1_theater', 'Dôme de Marseille'),
(324, 45, '_locations_1_theater', 'field_59df3a8a6d9b0'),
(325, 45, 'locations_1_city', 'a:3:{s:7:"address";s:17:"Marseille, France";s:3:"lat";s:9:"43.296482";s:3:"lng";s:17:"5.369779999999992";}'),
(326, 45, '_locations_1_city', 'field_59de9b90a70d7'),
(327, 46, ' address', 'a:3:{s:7:"address";s:13:"Paris, France";s:3:"lat";s:17:"48.85661400000001";s:3:"lng";s:18:"2.3522219000000177";}'),
(328, 46, '_ address', 'field_59de94ca9232e'),
(329, 46, 'ajouter_une_nouvelle_date_0_theater', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(330, 46, '_ajouter_une_nouvelle_date_0_theater', 'field_59de9b90a70d7'),
(331, 46, 'ajouter_une_nouvelle_date', '1'),
(332, 46, '_ajouter_une_nouvelle_date', 'field_59de9b3ba70d3'),
(333, 46, 'ajouter_une_nouvelle_date_0_date', '20171021'),
(334, 46, '_ajouter_une_nouvelle_date_0_date', 'field_59de9b70a70d6'),
(335, 46, 'ajouter_une_nouvelle_date_0_billetterie', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:24:"http://kygo.local/music/";s:6:"target";s:0:"";}'),
(336, 46, '_ajouter_une_nouvelle_date_0_billetterie', 'field_59de9c8cf959d'),
(337, 46, 'ajouter_une_nouvelle_date_0_location', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(338, 46, '_ajouter_une_nouvelle_date_0_location', 'field_59de9b90a70d7'),
(339, 46, 'locations_0_billetterie', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:23:"http://kygo.local/news/";s:6:"target";s:0:"";}'),
(340, 46, '_locations_0_billetterie', 'field_59de9c8cf959d'),
(341, 46, 'locations_0_location', 'a:3:{s:7:"address";s:65:"L\'Olympia Bruno Coquatrix, Boulevard des Capucines, Paris, France";s:3:"lat";s:10:"48.8702193";s:3:"lng";s:17:"2.328333499999985";}'),
(342, 46, '_locations_0_location', 'field_59de9b90a70d7'),
(343, 46, 'locations', '2'),
(344, 46, '_locations', 'field_59de9b3ba70d3'),
(345, 46, 'locations_1_billetterie', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:17:"http://google.com";s:6:"target";s:0:"";}'),
(346, 46, '_locations_1_billetterie', 'field_59de9c8cf959d'),
(347, 46, 'locations_1_location', 'a:3:{s:7:"address";s:31:"Le Zénith Paris, Paris, France";s:3:"lat";s:10:"48.8938119";s:3:"lng";s:18:"2.3931569999999738";}'),
(348, 46, '_locations_1_location', 'field_59de9b90a70d7'),
(349, 46, 'locations_0_date', '20171015'),
(350, 46, '_locations_0_date', 'field_59de9b70a70d6'),
(351, 46, 'locations_0_tickets', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:17:"http://google.com";s:6:"target";s:0:"";}'),
(352, 46, '_locations_0_tickets', 'field_59de9c8cf959d'),
(353, 46, 'locations_0_theater', 'Zenith de Paris'),
(354, 46, '_locations_0_theater', 'field_59df3a8a6d9b0'),
(355, 46, 'locations_0_city', 'a:3:{s:7:"address";s:13:"Paris, France";s:3:"lat";s:17:"48.85661400000001";s:3:"lng";s:18:"2.3522219000000177";}'),
(356, 46, '_locations_0_city', 'field_59de9b90a70d7'),
(357, 46, 'locations_1_date', '20171021'),
(358, 46, '_locations_1_date', 'field_59de9b70a70d6'),
(359, 46, 'locations_1_tickets', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:17:"http://google.com";s:6:"target";s:0:"";}'),
(360, 46, '_locations_1_tickets', 'field_59de9c8cf959d'),
(361, 46, 'locations_1_theater', 'Dôme de Marseille'),
(362, 46, '_locations_1_theater', 'field_59df3a8a6d9b0'),
(363, 46, 'locations_1_city', 'a:3:{s:7:"address";s:17:"Marseille, France";s:3:"lat";s:9:"43.296482";s:3:"lng";s:17:"5.369779999999992";}'),
(364, 46, '_locations_1_city', 'field_59de9b90a70d7'),
(367, 48, '_wp_trash_meta_status', 'publish'),
(368, 48, '_wp_trash_meta_time', '1508060178'),
(369, 49, '_wp_attached_file', '2017/10/Logo-1.png'),
(370, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:189;s:6:"height";i:189;s:4:"file";s:18:"2017/10/Logo-1.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"Logo-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(371, 50, '_wp_trash_meta_status', 'publish'),
(372, 50, '_wp_trash_meta_time', '1508062224'),
(383, 52, '_wp_attached_file', '2017/10/Facebook.svg'),
(384, 53, '_wp_attached_file', '2017/10/Instagram.svg'),
(385, 54, '_wp_attached_file', '2017/10/tumblr-logo.svg'),
(386, 55, '_wp_attached_file', '2017/10/Twitter.svg'),
(387, 56, '_wp_attached_file', '2017/10/Soundcloud.svg'),
(388, 57, '_menu_item_type', 'custom'),
(389, 57, '_menu_item_menu_item_parent', '0'),
(390, 57, '_menu_item_object_id', '57'),
(391, 57, '_menu_item_object', 'custom'),
(392, 57, '_menu_item_target', ''),
(393, 57, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(394, 57, '_menu_item_xfn', ''),
(395, 57, '_menu_item_url', 'https://soundcloud.com/kygo/'),
(397, 58, '_menu_item_type', 'custom'),
(398, 58, '_menu_item_menu_item_parent', '0'),
(399, 58, '_menu_item_object_id', '58'),
(400, 58, '_menu_item_object', 'custom'),
(401, 58, '_menu_item_target', ''),
(402, 58, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(403, 58, '_menu_item_xfn', ''),
(404, 58, '_menu_item_url', 'https://www.facebook.com/kygoofficial'),
(406, 59, '_menu_item_type', 'custom'),
(407, 59, '_menu_item_menu_item_parent', '0'),
(408, 59, '_menu_item_object_id', '59'),
(409, 59, '_menu_item_object', 'custom'),
(410, 59, '_menu_item_target', ''),
(411, 59, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(412, 59, '_menu_item_xfn', ''),
(413, 59, '_menu_item_url', 'https://twitter.com/KygoMusic'),
(415, 60, '_menu_item_type', 'custom'),
(416, 60, '_menu_item_menu_item_parent', '0'),
(417, 60, '_menu_item_object_id', '60'),
(418, 60, '_menu_item_object', 'custom'),
(419, 60, '_menu_item_target', ''),
(420, 60, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(421, 60, '_menu_item_xfn', ''),
(422, 60, '_menu_item_url', 'https://www.instagram.com/kygomusic/'),
(424, 61, '_menu_item_type', 'custom'),
(425, 61, '_menu_item_menu_item_parent', '0'),
(426, 61, '_menu_item_object_id', '61'),
(427, 61, '_menu_item_object', 'custom'),
(428, 61, '_menu_item_target', ''),
(429, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(430, 61, '_menu_item_xfn', ''),
(431, 61, '_menu_item_url', 'http://kygoofficial.tumblr.com/'),
(433, 57, 'menu-icons', 'a:8:{s:4:"type";s:3:"svg";s:4:"icon";s:2:"56";s:10:"hide_label";s:1:"1";s:8:"position";s:6:"before";s:14:"vertical_align";s:6:"middle";s:9:"font_size";s:3:"1.2";s:9:"svg_width";s:1:"1";s:10:"image_size";s:9:"thumbnail";}'),
(434, 61, 'menu-icons', 'a:8:{s:4:"type";s:3:"svg";s:4:"icon";s:2:"54";s:10:"hide_label";s:1:"1";s:8:"position";s:6:"before";s:14:"vertical_align";s:6:"middle";s:9:"font_size";s:3:"1.2";s:9:"svg_width";s:1:"1";s:10:"image_size";s:9:"thumbnail";}'),
(435, 58, 'menu-icons', 'a:8:{s:4:"type";s:3:"svg";s:4:"icon";s:2:"52";s:10:"hide_label";s:1:"1";s:8:"position";s:6:"before";s:14:"vertical_align";s:6:"middle";s:9:"font_size";s:3:"1.2";s:9:"svg_width";s:1:"1";s:10:"image_size";s:9:"thumbnail";}') ;
INSERT INTO `kygomusic_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(436, 59, 'menu-icons', 'a:8:{s:4:"type";s:3:"svg";s:4:"icon";s:2:"55";s:10:"hide_label";s:1:"1";s:8:"position";s:6:"before";s:14:"vertical_align";s:6:"middle";s:9:"font_size";s:3:"1.2";s:9:"svg_width";s:1:"1";s:10:"image_size";s:9:"thumbnail";}'),
(437, 60, 'menu-icons', 'a:8:{s:4:"type";s:3:"svg";s:4:"icon";s:2:"53";s:10:"hide_label";s:1:"1";s:8:"position";s:6:"before";s:14:"vertical_align";s:6:"middle";s:9:"font_size";s:3:"1.2";s:9:"svg_width";s:1:"1";s:10:"image_size";s:9:"thumbnail";}'),
(447, 71, '_edit_last', '1'),
(448, 71, '_edit_lock', '1509315930:1'),
(449, 83, '_edit_last', '1'),
(450, 83, '_edit_lock', '1508330853:1'),
(451, 83, 'description', 'When Kygo premiered “Stargazing”, this EP’s title track, at Norway\'s Jugendfest, its bright-eyed tropical house and subtle Justin Jesso vocal brought his native crowd to its feet. Ellie Goulding and Sasha Sloan lend the producer stellar vocals elsewhere, with “First Time” a gleaming pop dream and “This Town” blending soft-focus memories of home with pristine chillhouse.'),
(452, 83, '_description', 'field_59e5ba786acd3'),
(453, 83, 'tracks_0_title', 'Stargazing (feat. Justin Jesso)'),
(454, 83, '_tracks_0_title', 'field_59e5bb2d6680b'),
(455, 83, 'tracks_0_duration', '3:56'),
(456, 83, '_tracks_0_duration', 'field_59e5bb386680c'),
(457, 83, 'tracks_1_title', 'It Ain’t Me (feat. Selena Gomez)'),
(458, 83, '_tracks_1_title', 'field_59e5bb2d6680b'),
(459, 83, 'tracks_1_duration', '3:40'),
(460, 83, '_tracks_1_duration', 'field_59e5bb386680c'),
(461, 83, 'tracks_2_title', 'First Time (feat. Ellie Goulding)'),
(462, 83, '_tracks_2_title', 'field_59e5bb2d6680b'),
(463, 83, 'tracks_2_duration', '3:14'),
(464, 83, '_tracks_2_duration', 'field_59e5bb386680c'),
(465, 83, 'tracks', '5'),
(466, 83, '_tracks', 'field_59e5baef6680a'),
(467, 84, '_edit_last', '1'),
(468, 84, '_edit_lock', '1509316562:1'),
(469, 87, '_wp_attached_file', '2017/10/stargazing.jpeg'),
(470, 87, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:939;s:6:"height";i:939;s:4:"file";s:23:"2017/10/stargazing.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"stargazing-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"stargazing-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"stargazing-768x768.jpeg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(471, 83, 'picture', '87'),
(472, 83, '_picture', 'field_59e5bdd90a9b6'),
(473, 7, 'last_album', 'a:1:{i:0;s:2:"83";}'),
(474, 7, '_last_album', 'field_59e5bcd96638c'),
(475, 88, 'last_album', 'a:1:{i:0;s:2:"83";}'),
(476, 88, '_last_album', 'field_59e5bcd96638c'),
(477, 83, 'buy', 'https://itunes.apple.com/fr/album/stargazing-ep/id1287132900'),
(478, 83, '_buy', 'field_59e5c8a580355'),
(479, 83, 'tracks_3_title', 'This Town (feat. Sasha Sloan)'),
(480, 83, '_tracks_3_title', 'field_59e5bb2d6680b'),
(481, 83, 'tracks_3_duration', '3:22'),
(482, 83, '_tracks_3_duration', 'field_59e5bb386680c'),
(483, 83, 'tracks_4_title', 'You\'re the Best Thing About Me'),
(484, 83, '_tracks_4_title', 'field_59e5bb2d6680b'),
(485, 83, 'tracks_4_duration', '4:17'),
(486, 83, '_tracks_4_duration', 'field_59e5bb386680c'),
(487, 90, 'last_album', ''),
(488, 90, '_last_album', 'field_59e5bcd96638c'),
(489, 91, 'last_album', 'a:1:{i:0;s:2:"83";}'),
(490, 91, '_last_album', 'field_59e5bcd96638c'),
(491, 7, 'order', '1'),
(492, 7, '_order', 'field_59e5d18494136'),
(493, 95, 'last_album', 'a:1:{i:0;s:2:"83";}'),
(494, 95, '_last_album', 'field_59e5bcd96638c'),
(495, 95, 'order', 'Don\'t display'),
(496, 95, '_order', 'field_59e5d18494136'),
(497, 96, 'last_album', 'a:1:{i:0;s:2:"83";}'),
(498, 96, '_last_album', 'field_59e5bcd96638c'),
(499, 96, 'order', '2'),
(500, 96, '_order', 'field_59e5d18494136'),
(501, 97, 'last_album', 'a:1:{i:0;s:2:"83";}'),
(502, 97, '_last_album', 'field_59e5bcd96638c'),
(503, 97, 'order', 'Don\'t display'),
(504, 97, '_order', 'field_59e5d18494136'),
(505, 7, 'show-last-album', '1'),
(506, 7, '_show-last-album', 'field_59e5ee2eda0ad'),
(507, 99, 'last_album', 'a:1:{i:0;s:2:"83";}'),
(508, 99, '_last_album', 'field_59e5bcd96638c'),
(509, 99, 'order', 'Don\'t display'),
(510, 99, '_order', 'field_59e5d18494136'),
(511, 99, 'show-last-album', '1'),
(512, 99, '_show-last-album', 'field_59e5ee2eda0ad'),
(513, 100, 'last_album', 'a:1:{i:0;s:2:"83";}'),
(514, 100, '_last_album', 'field_59e5bcd96638c'),
(515, 100, 'order', '1'),
(516, 100, '_order', 'field_59e5d18494136'),
(517, 100, 'show-last-album', '0'),
(518, 100, '_show-last-album', 'field_59e5ee2eda0ad'),
(519, 101, 'last_album', 'a:1:{i:0;s:2:"83";}'),
(520, 101, '_last_album', 'field_59e5bcd96638c'),
(521, 101, 'order', '1'),
(522, 101, '_order', 'field_59e5d18494136'),
(523, 101, 'show-last-album', '1'),
(524, 101, '_show-last-album', 'field_59e5ee2eda0ad'),
(525, 7, 'title-section-3', 'truc'),
(526, 7, '_title-section-3', 'field_59e5f2e773334'),
(527, 105, 'last_album', 'a:1:{i:0;s:2:"83";}'),
(528, 105, '_last_album', 'field_59e5bcd96638c'),
(529, 105, 'order', '1'),
(530, 105, '_order', 'field_59e5d18494136'),
(531, 105, 'show-last-album', '0'),
(532, 105, '_show-last-album', 'field_59e5ee2eda0ad'),
(533, 105, 'title-section-3', 'Music'),
(534, 105, '_title-section-3', 'field_59e5f2e773334'),
(535, 106, 'last_album', 'a:1:{i:0;s:2:"83";}'),
(536, 106, '_last_album', 'field_59e5bcd96638c'),
(537, 106, 'order', '1'),
(538, 106, '_order', 'field_59e5d18494136'),
(539, 106, 'show-last-album', '1'),
(540, 106, '_show-last-album', 'field_59e5ee2eda0ad'),
(541, 106, 'title-section-3', 'Music'),
(542, 106, '_title-section-3', 'field_59e5f2e773334'),
(571, 111, '_edit_last', '1'),
(572, 111, '_edit_lock', '1509317122:1') ;
INSERT INTO `kygomusic_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(573, 111, 'locations_0_date', '20171018'),
(574, 111, '_locations_0_date', 'field_59de9b70a70d6'),
(575, 111, 'locations_0_tickets', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:17:"http://google.com";s:6:"target";s:0:"";}'),
(576, 111, '_locations_0_tickets', 'field_59de9c8cf959d'),
(577, 111, 'locations_0_theater', 'Paris'),
(578, 111, '_locations_0_theater', 'field_59df3a8a6d9b0'),
(579, 111, 'locations_0_city', 'a:3:{s:7:"address";s:13:"Paris, France";s:3:"lat";s:17:"48.85661400000001";s:3:"lng";s:18:"2.3522219000000177";}'),
(580, 111, '_locations_0_city', 'field_59de9b90a70d7'),
(581, 111, 'locations_1_date', '20171020'),
(582, 111, '_locations_1_date', 'field_59de9b70a70d6'),
(583, 111, 'locations_1_tickets', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:16:"http://google.fr";s:6:"target";s:0:"";}'),
(584, 111, '_locations_1_tickets', 'field_59de9c8cf959d'),
(585, 111, 'locations_1_theater', 'Dome'),
(586, 111, '_locations_1_theater', 'field_59df3a8a6d9b0'),
(587, 111, 'locations_1_city', 'a:3:{s:7:"address";s:17:"Marseille, France";s:3:"lat";s:9:"43.296482";s:3:"lng";s:17:"5.369779999999992";}'),
(588, 111, '_locations_1_city', 'field_59de9b90a70d7'),
(589, 111, 'locations_2_date', '20171026'),
(590, 111, '_locations_2_date', 'field_59de9b70a70d6'),
(591, 111, 'locations_2_tickets', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:23:"http://kygo.local/tour/";s:6:"target";s:0:"";}'),
(592, 111, '_locations_2_tickets', 'field_59de9c8cf959d'),
(593, 111, 'locations_2_theater', 'Aix'),
(594, 111, '_locations_2_theater', 'field_59df3a8a6d9b0'),
(595, 111, 'locations_2_city', 'a:3:{s:7:"address";s:23:"Aix-en-Provence, France";s:3:"lat";s:9:"43.529742";s:3:"lng";s:18:"5.4474270000000615";}'),
(596, 111, '_locations_2_city', 'field_59de9b90a70d7'),
(597, 111, 'locations', '6'),
(598, 111, '_locations', 'field_59de9b3ba70d3'),
(599, 112, '_edit_last', '1'),
(600, 112, '_edit_lock', '1508267231:1'),
(601, 112, 'locations_0_date', '20171020'),
(602, 112, '_locations_0_date', 'field_59de9b70a70d6'),
(603, 112, 'locations_0_tickets', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:23:"http://kygo.local/tour/";s:6:"target";s:0:"";}'),
(604, 112, '_locations_0_tickets', 'field_59de9c8cf959d'),
(605, 112, 'locations_0_theater', 'Test'),
(606, 112, '_locations_0_theater', 'field_59df3a8a6d9b0'),
(607, 112, 'locations_0_city', 'a:3:{s:7:"address";s:63:"Paris Go Bistro, Rathdowne Street, Carlton, Victoria, Australie";s:3:"lat";s:11:"-37.7969441";s:3:"lng";s:18:"144.97087039999997";}'),
(608, 112, '_locations_0_city', 'field_59de9b90a70d7'),
(609, 112, 'locations', '1'),
(610, 112, '_locations', 'field_59de9b3ba70d3'),
(611, 112, '_wp_trash_meta_status', 'publish'),
(612, 112, '_wp_trash_meta_time', '1508267791'),
(613, 112, '_wp_desired_post_slug', 'test-2'),
(614, 111, 'locations_3_date', '20171014'),
(615, 111, '_locations_3_date', 'field_59de9b70a70d6'),
(616, 111, 'locations_3_tickets', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:18:"http://kygo.local/";s:6:"target";s:0:"";}'),
(617, 111, '_locations_3_tickets', 'field_59de9c8cf959d'),
(618, 111, 'locations_3_theater', 'dazdazd'),
(619, 111, '_locations_3_theater', 'field_59df3a8a6d9b0'),
(620, 111, 'locations_3_city', 'a:3:{s:7:"address";s:15:"Avignon, France";s:3:"lat";s:9:"43.949317";s:3:"lng";s:17:"4.805527999999981";}'),
(621, 111, '_locations_3_city', 'field_59de9b90a70d7'),
(622, 111, 'locations_4_date', '20171022'),
(623, 111, '_locations_4_date', 'field_59de9b70a70d6'),
(624, 111, 'locations_4_tickets', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:24:"http://kygo.local/music/";s:6:"target";s:0:"";}'),
(625, 111, '_locations_4_tickets', 'field_59de9c8cf959d'),
(626, 111, 'locations_4_theater', 'dazdazdzadaz'),
(627, 111, '_locations_4_theater', 'field_59df3a8a6d9b0'),
(628, 111, 'locations_4_city', 'a:3:{s:7:"address";s:18:"Barcelone, Espagne";s:3:"lat";s:17:"41.38504770000001";s:3:"lng";s:17:"2.173313099999973";}'),
(629, 111, '_locations_4_city', 'field_59de9b90a70d7'),
(630, 111, 'locations_5_date', '20171014'),
(631, 111, '_locations_5_date', 'field_59de9b70a70d6'),
(632, 111, 'locations_5_tickets', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:16:"http://dazdazdaz";s:6:"target";s:0:"";}'),
(633, 111, '_locations_5_tickets', 'field_59de9c8cf959d'),
(634, 111, 'locations_5_theater', 'dazdzadazd'),
(635, 111, '_locations_5_theater', 'field_59df3a8a6d9b0'),
(636, 111, 'locations_5_city', 'a:3:{s:7:"address";s:20:"Londres, Royaume-Uni";s:3:"lat";s:10:"51.5073509";s:3:"lng";s:20:"-0.12775829999998223";}'),
(637, 111, '_locations_5_city', 'field_59de9b90a70d7'),
(638, 113, 'last_album', 'a:1:{i:0;s:2:"83";}'),
(639, 113, '_last_album', 'field_59e5bcd96638c'),
(640, 113, 'order', '1'),
(641, 113, '_order', 'field_59e5d18494136'),
(642, 113, 'show-last-album', '0'),
(643, 113, '_show-last-album', 'field_59e5ee2eda0ad'),
(644, 113, 'title-section-3', 'Music'),
(645, 113, '_title-section-3', 'field_59e5f2e773334'),
(646, 114, 'last_album', 'a:1:{i:0;s:2:"83";}'),
(647, 114, '_last_album', 'field_59e5bcd96638c'),
(648, 114, 'order', '1'),
(649, 114, '_order', 'field_59e5d18494136'),
(650, 114, 'show-last-album', '1'),
(651, 114, '_show-last-album', 'field_59e5ee2eda0ad'),
(652, 114, 'title-section-3', 'Music'),
(653, 114, '_title-section-3', 'field_59e5f2e773334'),
(654, 115, 'last_album', 'a:1:{i:0;s:2:"83";}'),
(655, 115, '_last_album', 'field_59e5bcd96638c'),
(656, 115, 'order', '1'),
(657, 115, '_order', 'field_59e5d18494136'),
(658, 115, 'show-last-album', '1'),
(659, 115, '_show-last-album', 'field_59e5ee2eda0ad'),
(660, 115, 'title-section-3', 'truc'),
(661, 115, '_title-section-3', 'field_59e5f2e773334'),
(662, 118, '_wp_attached_file', '2017/10/tour.png'),
(663, 118, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1080;s:6:"height";i:720;s:4:"file";s:16:"2017/10/tour.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"tour-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"tour-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:16:"tour-768x512.png";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:17:"tour-1024x683.png";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(664, 119, '_wp_attached_file', '2017/10/kygo-encore-photo-johanneslovund-8518.jpg'),
(665, 119, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1732;s:6:"height";i:1155;s:4:"file";s:49:"2017/10/kygo-encore-photo-johanneslovund-8518.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:49:"kygo-encore-photo-johanneslovund-8518-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:49:"kygo-encore-photo-johanneslovund-8518-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:49:"kygo-encore-photo-johanneslovund-8518-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:50:"kygo-encore-photo-johanneslovund-8518-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(666, 120, '_wp_attached_file', '2017/10/kygo-south-korea-photo-johanneslovund-7631.jpg'),
(667, 120, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1731;s:6:"height";i:1154;s:4:"file";s:54:"2017/10/kygo-south-korea-photo-johanneslovund-7631.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:54:"kygo-south-korea-photo-johanneslovund-7631-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:54:"kygo-south-korea-photo-johanneslovund-7631-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:54:"kygo-south-korea-photo-johanneslovund-7631-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:55:"kygo-south-korea-photo-johanneslovund-7631-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(668, 121, '_wp_attached_file', '2017/10/tokyo-photo-johanneslovund-0210.jpg'),
(669, 121, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1732;s:6:"height";i:1155;s:4:"file";s:43:"2017/10/tokyo-photo-johanneslovund-0210.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:43:"tokyo-photo-johanneslovund-0210-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"tokyo-photo-johanneslovund-0210-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:43:"tokyo-photo-johanneslovund-0210-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:44:"tokyo-photo-johanneslovund-0210-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(670, 7, 'slider', 'a:4:{i:0;s:3:"121";i:1;s:3:"120";i:2;s:3:"118";i:3;s:3:"119";}'),
(671, 7, '_slider', 'field_59e9b27d3b1a3'),
(672, 122, 'last_album', 'a:1:{i:0;s:2:"83";}') ;
INSERT INTO `kygomusic_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(673, 122, '_last_album', 'field_59e5bcd96638c'),
(674, 122, 'order', '1'),
(675, 122, '_order', 'field_59e5d18494136'),
(676, 122, 'show-last-album', '1'),
(677, 122, '_show-last-album', 'field_59e5ee2eda0ad'),
(678, 122, 'title-section-3', 'truc'),
(679, 122, '_title-section-3', 'field_59e5f2e773334'),
(680, 122, 'slider', 'a:4:{i:0;s:3:"121";i:1;s:3:"120";i:2;s:3:"118";i:3;s:3:"119";}'),
(681, 122, '_slider', 'field_59e9b27d3b1a3'),
(682, 123, '_menu_item_type', 'custom'),
(683, 123, '_menu_item_menu_item_parent', '0'),
(684, 123, '_menu_item_object_id', '123'),
(685, 123, '_menu_item_object', 'custom'),
(686, 123, '_menu_item_target', ''),
(687, 123, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(688, 123, '_menu_item_xfn', ''),
(689, 123, '_menu_item_url', 'http://kygolife.com/') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `kygomusic_posts`
#
INSERT INTO `kygomusic_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-10-11 22:17:14', '2017-10-11 20:17:14', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2017-10-11 22:17:14', '2017-10-11 20:17:14', '', 0, 'http://kygo.local/?p=1', 0, 'post', '', 0),
(2, 1, '2017-10-11 22:17:14', '2017-10-11 20:17:14', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme cela :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href="http://kygo.local/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'trash', 'closed', 'open', '', 'page-d-exemple__trashed', '', '', '2017-10-11 23:01:17', '2017-10-11 21:01:17', '', 0, 'http://kygo.local/?page_id=2', 0, 'page', '', 0),
(4, 1, '2017-10-11 22:34:55', '2017-10-11 20:34:55', '{\n    "old_sidebars_widgets_data": {\n        "value": {\n            "wp_inactive_widgets": [],\n            "sidebar-1": [\n                "search-2",\n                "recent-posts-2",\n                "recent-comments-2",\n                "archives-2",\n                "categories-2",\n                "meta-2"\n            ],\n            "sidebar-2": [],\n            "sidebar-3": []\n        },\n        "type": "global_variable",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd44c742b-630c-4801-8284-47891bc0ff7a', '', '', '2017-10-11 22:34:55', '2017-10-11 20:34:55', '', 0, 'http://kygo.local/2017/10/11/d44c742b-630c-4801-8284-47891bc0ff7a/', 0, 'customize_changeset', '', 0),
(5, 1, '2017-10-11 23:01:17', '2017-10-11 21:01:17', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme cela :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href="http://kygo.local/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-10-11 23:01:17', '2017-10-11 21:01:17', '', 2, 'http://kygo.local/2017/10/11/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2017-10-11 23:05:16', '2017-10-11 21:05:16', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-10-20 10:28:09', '2017-10-20 08:28:09', '', 0, 'http://kygo.local/?page_id=7', 1, 'page', '', 0),
(8, 1, '2017-10-11 23:05:16', '2017-10-11 21:05:16', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-10-11 23:05:16', '2017-10-11 21:05:16', '', 7, 'http://kygo.local/2017/10/11/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2017-10-11 23:06:07', '2017-10-11 21:06:07', '', 'Tour', '', 'publish', 'closed', 'closed', '', 'tour', '', '', '2017-10-12 11:59:20', '2017-10-12 09:59:20', '', 0, 'http://kygo.local/?page_id=9', 0, 'page', '', 0),
(10, 1, '2017-10-11 23:06:07', '2017-10-11 21:06:07', '', 'Tour', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-10-11 23:06:07', '2017-10-11 21:06:07', '', 9, 'http://kygo.local/2017/10/11/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2017-10-11 23:06:20', '2017-10-11 21:06:20', '', 'Music', '', 'publish', 'closed', 'closed', '', 'music', '', '', '2017-10-11 23:06:20', '2017-10-11 21:06:20', '', 0, 'http://kygo.local/?page_id=11', 0, 'page', '', 0),
(12, 1, '2017-10-11 23:06:20', '2017-10-11 21:06:20', '', 'Music', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-10-11 23:06:20', '2017-10-11 21:06:20', '', 11, 'http://kygo.local/2017/10/11/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2017-10-11 23:06:34', '2017-10-11 21:06:34', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2017-10-12 00:00:24', '2017-10-11 22:00:24', '', 0, 'http://kygo.local/?page_id=13', 3, 'page', '', 0),
(14, 1, '2017-10-11 23:06:34', '2017-10-11 21:06:34', '', 'News', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-10-11 23:06:34', '2017-10-11 21:06:34', '', 13, 'http://kygo.local/2017/10/11/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2017-10-11 23:06:41', '2017-10-11 21:06:41', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2017-10-11 23:06:41', '2017-10-11 21:06:41', '', 0, 'http://kygo.local/?page_id=15', 0, 'page', '', 0),
(16, 1, '2017-10-11 23:06:41', '2017-10-11 21:06:41', '', 'About', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2017-10-11 23:06:41', '2017-10-11 21:06:41', '', 15, 'http://kygo.local/2017/10/11/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2017-10-11 23:07:48', '2017-10-11 21:07:48', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2017-10-15 12:16:04', '2017-10-15 10:16:04', '', 0, 'http://kygo.local/?p=17', 4, 'nav_menu_item', '', 0),
(18, 1, '2017-10-11 23:07:48', '2017-10-11 21:07:48', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2017-10-15 12:16:04', '2017-10-15 10:16:04', '', 0, 'http://kygo.local/?p=18', 5, 'nav_menu_item', '', 0),
(19, 1, '2017-10-11 23:07:48', '2017-10-11 21:07:48', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2017-10-15 12:16:04', '2017-10-15 10:16:04', '', 0, 'http://kygo.local/?p=19', 3, 'nav_menu_item', '', 0),
(20, 1, '2017-10-11 23:07:48', '2017-10-11 21:07:48', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2017-10-15 12:16:04', '2017-10-15 10:16:04', '', 0, 'http://kygo.local/?p=20', 2, 'nav_menu_item', '', 0),
(21, 1, '2017-10-11 23:07:48', '2017-10-11 21:07:48', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2017-10-15 12:16:04', '2017-10-15 10:16:04', '', 0, 'http://kygo.local/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2017-10-12 00:03:03', '2017-10-11 22:03:03', '', 'Tour', '', 'publish', 'closed', 'closed', '', 'acf_tour', '', '', '2017-10-12 00:18:52', '2017-10-11 22:18:52', '', 0, 'http://kygo.local/?post_type=acf&#038;p=22', 0, 'acf', '', 0),
(23, 1, '2017-10-12 00:10:07', '2017-10-11 22:10:07', '', 'Tour', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-10-12 00:10:07', '2017-10-11 22:10:07', '', 9, 'http://kygo.local/2017/10/12/9-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2017-10-12 00:28:54', '2017-10-11 22:28:54', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"tour";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:15:{i:0;s:9:"permalink";i:1;s:11:"the_content";i:2;s:7:"excerpt";i:3;s:13:"custom_fields";i:4;s:10:"discussion";i:5;s:8:"comments";i:6;s:9:"revisions";i:7;s:4:"slug";i:8;s:6:"author";i:9;s:6:"format";i:10;s:15:"page_attributes";i:11;s:14:"featured_image";i:12;s:10:"categories";i:13;s:4:"tags";i:14;s:15:"send-trackbacks";}s:11:"description";s:0:"";}', 'Tour', 'tour', 'publish', 'closed', 'closed', '', 'group_59de9b26a29f4', '', '', '2017-10-29 23:38:31', '2017-10-29 22:38:31', '', 0, 'http://kygo.local/?post_type=acf-field-group&#038;p=24', 0, 'acf-field-group', '', 0),
(29, 1, '2017-10-12 00:31:17', '2017-10-11 22:31:17', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:22:"Add a new concert date";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:19:"field_59de9b90a70d7";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:3:"row";s:12:"button_label";s:14:"Add a new date";}', 'New date', 'locations', 'publish', 'closed', 'closed', '', 'field_59de9b3ba70d3', '', '', '2017-10-12 11:51:56', '2017-10-12 09:51:56', '', 24, 'http://kygo.local/?post_type=acf-field&#038;p=29', 0, 'acf-field', '', 0),
(30, 1, '2017-10-12 00:31:17', '2017-10-11 22:31:17', 'a:8:{s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:14:"display_format";s:5:"d/m/Y";s:13:"return_format";s:5:"d/m/Y";s:9:"first_day";i:1;}', 'Date', 'date', 'publish', 'closed', 'closed', '', 'field_59de9b70a70d6', '', '', '2017-10-12 11:50:11', '2017-10-12 09:50:11', '', 29, 'http://kygo.local/?post_type=acf-field&#038;p=30', 0, 'acf-field', '', 0),
(31, 1, '2017-10-12 00:31:17', '2017-10-11 22:31:17', 'a:9:{s:4:"type";s:10:"google_map";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:10:"center_lat";s:0:"";s:10:"center_lng";s:0:"";s:4:"zoom";s:0:"";s:6:"height";s:0:"";}', 'City', 'city', 'publish', 'closed', 'closed', '', 'field_59de9b90a70d7', '', '', '2017-10-12 11:50:34', '2017-10-12 09:50:34', '', 29, 'http://kygo.local/?post_type=acf-field&#038;p=31', 3, 'acf-field', '', 0),
(33, 1, '2017-10-12 00:35:20', '2017-10-11 22:35:20', 'a:6:{s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";}', 'Tickets', 'tickets', 'publish', 'closed', 'closed', '', 'field_59de9c8cf959d', '', '', '2017-10-12 11:50:11', '2017-10-12 09:50:11', '', 29, 'http://kygo.local/?post_type=acf-field&#038;p=33', 1, 'acf-field', '', 0),
(35, 1, '2017-10-12 00:38:35', '2017-10-11 22:38:35', '', 'Tour', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-10-12 00:38:35', '2017-10-11 22:38:35', '', 9, 'http://kygo.local/2017/10/12/9-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2017-10-12 11:14:49', '2017-10-12 09:14:49', '', 'Tour', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-10-12 11:14:49', '2017-10-12 09:14:49', '', 9, 'http://kygo.local/2017/10/12/9-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2017-10-12 11:15:10', '2017-10-12 09:15:10', '', 'Tour', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-10-12 11:15:10', '2017-10-12 09:15:10', '', 9, 'http://kygo.local/2017/10/12/9-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2017-10-12 11:26:01', '2017-10-12 09:26:01', '', 'Tour', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-10-12 11:26:01', '2017-10-12 09:26:01', '', 9, 'http://kygo.local/2017/10/12/9-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2017-10-12 11:29:51', '2017-10-12 09:29:51', '', 'Tour', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-10-12 11:29:51', '2017-10-12 09:29:51', '', 9, 'http://kygo.local/2017/10/12/9-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2017-10-12 11:30:02', '2017-10-12 09:30:02', '', 'Tour', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-10-12 11:30:02', '2017-10-12 09:30:02', '', 9, 'http://kygo.local/2017/10/12/9-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2017-10-12 11:50:11', '2017-10-12 09:50:11', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Theater', 'theater', 'publish', 'closed', 'closed', '', 'field_59df3a8a6d9b0', '', '', '2017-10-12 11:50:34', '2017-10-12 09:50:34', '', 29, 'http://kygo.local/?post_type=acf-field&#038;p=42', 2, 'acf-field', '', 0),
(43, 1, '2017-10-12 11:52:17', '2017-10-12 09:52:17', '', 'Tour', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-10-12 11:52:17', '2017-10-12 09:52:17', '', 9, 'http://kygo.local/2017/10/12/9-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2017-10-12 11:53:14', '2017-10-12 09:53:14', '', 'Tour', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-10-12 11:53:14', '2017-10-12 09:53:14', '', 9, 'http://kygo.local/2017/10/12/9-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2017-10-12 11:58:22', '2017-10-12 09:58:22', '', 'Tour', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-10-12 11:58:22', '2017-10-12 09:58:22', '', 9, 'http://kygo.local/2017/10/12/9-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2017-10-12 11:59:20', '2017-10-12 09:59:20', '', 'Tour', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-10-12 11:59:20', '2017-10-12 09:59:20', '', 9, 'http://kygo.local/2017/10/12/9-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2017-10-15 11:36:18', '2017-10-15 09:36:18', '{\n    "kygo::custom_logo": {\n        "value": 47,\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4a943db8-9fad-41f7-8796-d3ee7e932457', '', '', '2017-10-15 11:36:18', '2017-10-15 09:36:18', '', 0, 'http://kygo.local/2017/10/15/4a943db8-9fad-41f7-8796-d3ee7e932457/', 0, 'customize_changeset', '', 0),
(49, 1, '2017-10-15 12:10:09', '2017-10-15 10:10:09', '', 'Kygo', 'Logo', 'inherit', 'open', 'closed', '', 'logo-1', '', '', '2017-10-15 12:10:16', '2017-10-15 10:10:16', '', 0, 'http://kygo.local/wp-content/uploads/2017/10/Logo-1.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2017-10-15 12:10:24', '2017-10-15 10:10:24', '{\n    "kygo::custom_logo": {\n        "value": 49,\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e1a75aba-05de-449a-8eee-b708dfba0fc7', '', '', '2017-10-15 12:10:24', '2017-10-15 10:10:24', '', 0, 'http://kygo.local/2017/10/15/e1a75aba-05de-449a-8eee-b708dfba0fc7/', 0, 'customize_changeset', '', 0),
(52, 1, '2017-10-15 19:03:11', '2017-10-15 17:03:11', '', 'Facebook', '', 'inherit', 'open', 'closed', '', 'facebook', '', '', '2017-10-15 19:03:11', '2017-10-15 17:03:11', '', 0, 'http://kygo.local/wp-content/uploads/2017/10/Facebook.svg', 0, 'attachment', 'image/svg+xml', 0),
(53, 1, '2017-10-15 19:03:11', '2017-10-15 17:03:11', '', 'Instagram', '', 'inherit', 'open', 'closed', '', 'instagram', '', '', '2017-10-15 19:03:11', '2017-10-15 17:03:11', '', 0, 'http://kygo.local/wp-content/uploads/2017/10/Instagram.svg', 0, 'attachment', 'image/svg+xml', 0),
(54, 1, '2017-10-15 19:03:14', '2017-10-15 17:03:14', '', 'tumblr-logo', '', 'inherit', 'open', 'closed', '', 'tumblr-logo', '', '', '2017-10-15 19:03:14', '2017-10-15 17:03:14', '', 0, 'http://kygo.local/wp-content/uploads/2017/10/tumblr-logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(55, 1, '2017-10-15 19:03:15', '2017-10-15 17:03:15', '', 'Twitter', '', 'inherit', 'open', 'closed', '', 'twitter', '', '', '2017-10-15 19:03:15', '2017-10-15 17:03:15', '', 0, 'http://kygo.local/wp-content/uploads/2017/10/Twitter.svg', 0, 'attachment', 'image/svg+xml', 0),
(56, 1, '2017-10-15 19:03:21', '2017-10-15 17:03:21', '', 'Soundcloud', '', 'inherit', 'open', 'closed', '', 'soundcloud', '', '', '2017-10-15 19:03:21', '2017-10-15 17:03:21', '', 0, 'http://kygo.local/wp-content/uploads/2017/10/Soundcloud.svg', 0, 'attachment', 'image/svg+xml', 0),
(57, 1, '2017-10-15 19:05:49', '2017-10-15 17:05:49', '', 'Soundcloud', '', 'publish', 'closed', 'closed', '', 'soundcloud', '', '', '2017-10-21 15:58:03', '2017-10-21 13:58:03', '', 0, 'http://kygo.local/?p=57', 1, 'nav_menu_item', '', 0),
(58, 1, '2017-10-15 19:05:49', '2017-10-15 17:05:49', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2017-10-21 15:58:03', '2017-10-21 13:58:03', '', 0, 'http://kygo.local/?p=58', 3, 'nav_menu_item', '', 0),
(59, 1, '2017-10-15 19:05:49', '2017-10-15 17:05:49', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2017-10-21 15:58:03', '2017-10-21 13:58:03', '', 0, 'http://kygo.local/?p=59', 4, 'nav_menu_item', '', 0),
(60, 1, '2017-10-15 19:05:49', '2017-10-15 17:05:49', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2017-10-21 15:58:03', '2017-10-21 13:58:03', '', 0, 'http://kygo.local/?p=60', 5, 'nav_menu_item', '', 0),
(61, 1, '2017-10-15 19:05:49', '2017-10-15 17:05:49', '', 'Tumblr', '', 'publish', 'closed', 'closed', '', 'tumblr', '', '', '2017-10-21 15:58:03', '2017-10-21 13:58:03', '', 0, 'http://kygo.local/?p=61', 2, 'nav_menu_item', '', 0),
(71, 1, '2017-10-17 10:08:31', '2017-10-17 08:08:31', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:5:"album";}}}s:8:"position";s:6:"normal";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:1:{i:0;s:11:"the_content";}s:11:"description";s:0:"";}', 'Album', 'album', 'publish', 'closed', 'closed', '', 'group_59e5ba6408147', '', '', '2017-10-29 23:25:29', '2017-10-29 22:25:29', '', 0, 'http://kygo.local/?post_type=acf-field-group&#038;p=71', 0, 'acf-field-group', '', 0),
(73, 1, '2017-10-17 10:08:31', '2017-10-17 08:08:31', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:0:"";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_59e5ba786acd3', '', '', '2017-10-17 10:12:38', '2017-10-17 08:12:38', '', 71, 'http://kygo.local/?post_type=acf-field&#038;p=73', 0, 'acf-field', '', 0),
(77, 1, '2017-10-17 10:12:39', '2017-10-17 08:12:39', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:11:"Add a track";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:11:"Add a track";}', 'Tracks', 'tracks', 'publish', 'closed', 'closed', '', 'field_59e5baef6680a', '', '', '2017-10-17 10:23:33', '2017-10-17 08:23:33', '', 71, 'http://kygo.local/?post_type=acf-field&#038;p=77', 2, 'acf-field', '', 0),
(78, 1, '2017-10-17 10:12:39', '2017-10-17 08:12:39', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_59e5bb2d6680b', '', '', '2017-10-17 10:12:39', '2017-10-17 08:12:39', '', 77, 'http://kygo.local/?post_type=acf-field&p=78', 0, 'acf-field', '', 0),
(79, 1, '2017-10-17 10:12:39', '2017-10-17 08:12:39', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Duration', 'duration', 'publish', 'closed', 'closed', '', 'field_59e5bb386680c', '', '', '2017-10-17 10:12:39', '2017-10-17 08:12:39', '', 77, 'http://kygo.local/?post_type=acf-field&p=79', 1, 'acf-field', '', 0),
(83, 1, '2017-10-17 10:15:29', '2017-10-17 08:15:29', '', 'Stargazing', '', 'publish', 'closed', 'closed', '', 'stargazing', '', '', '2017-10-18 14:31:21', '2017-10-18 12:31:21', '', 0, 'http://kygo.local/?post_type=album&#038;p=83', 0, 'album', '', 0),
(84, 1, '2017-10-17 10:19:30', '2017-10-17 08:19:30', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"7";}}}s:8:"position";s:6:"normal";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:2:{i:0;s:11:"the_content";i:1;s:9:"revisions";}s:11:"description";s:0:"";}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_59e5bcd60a48b', '', '', '2017-10-29 23:38:19', '2017-10-29 22:38:19', '', 0, 'http://kygo.local/?post_type=acf-field-group&#038;p=84', 0, 'acf-field-group', '', 0),
(85, 1, '2017-10-17 10:19:30', '2017-10-17 08:19:30', 'a:12:{s:4:"type";s:12:"relationship";s:12:"instructions";s:41:"Select the last album to show in homepage";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"post_type";a:1:{i:0;s:5:"album";}s:8:"taxonomy";a:0:{}s:7:"filters";a:1:{i:0;s:6:"search";}s:8:"elements";s:0:"";s:3:"min";s:0:"";s:3:"max";i:1;s:13:"return_format";s:6:"object";}', 'Album', 'last_album', 'publish', 'closed', 'closed', '', 'field_59e5bcd96638c', '', '', '2017-10-17 13:49:21', '2017-10-17 11:49:21', '', 84, 'http://kygo.local/?post_type=acf-field&#038;p=85', 3, 'acf-field', '', 0),
(86, 1, '2017-10-17 10:23:33', '2017-10-17 08:23:33', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Picture', 'picture', 'publish', 'closed', 'closed', '', 'field_59e5bdd90a9b6', '', '', '2017-10-17 10:23:39', '2017-10-17 08:23:39', '', 71, 'http://kygo.local/?post_type=acf-field&#038;p=86', 1, 'acf-field', '', 0),
(87, 1, '2017-10-17 10:26:04', '2017-10-17 08:26:04', '', 'stargazing', '', 'inherit', 'open', 'closed', '', 'stargazing-2', '', '', '2017-10-17 10:26:15', '2017-10-17 08:26:15', '', 83, 'http://kygo.local/wp-content/uploads/2017/10/stargazing.jpeg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2017-10-17 10:36:49', '2017-10-17 08:36:49', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-10-17 10:36:49', '2017-10-17 08:36:49', '', 7, 'http://kygo.local/2017/10/17/7-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2017-10-17 11:09:13', '2017-10-17 09:09:13', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:34:"Add a Itunes link to buy the album";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Buy', 'buy', 'publish', 'closed', 'closed', '', 'field_59e5c8a580355', '', '', '2017-10-17 11:10:59', '2017-10-17 09:10:59', '', 71, 'http://kygo.local/?post_type=acf-field&#038;p=89', 3, 'acf-field', '', 0),
(90, 1, '2017-10-17 11:26:15', '2017-10-17 09:26:15', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-10-17 11:26:15', '2017-10-17 09:26:15', '', 7, 'http://kygo.local/2017/10/17/7-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2017-10-17 11:26:57', '2017-10-17 09:26:57', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-10-17 11:26:57', '2017-10-17 09:26:57', '', 7, 'http://kygo.local/2017/10/17/7-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2017-10-17 11:39:04', '2017-10-17 09:39:04', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Last album', '', 'publish', 'closed', 'closed', '', 'field_59e5cfa2d0624', '', '', '2017-10-17 13:54:12', '2017-10-17 11:54:12', '', 84, 'http://kygo.local/?post_type=acf-field&#038;p=92', 0, 'acf-field', '', 0),
(94, 1, '2017-10-17 11:48:14', '2017-10-17 09:48:14', 'a:13:{s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:3:{i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";}s:13:"default_value";a:1:{i:0;i:1;}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:0;s:4:"ajax";i:0;s:13:"return_format";s:5:"value";s:11:"placeholder";s:0:"";s:17:"conditional_logic";a:1:{i:0;a:1:{i:0;a:3:{s:5:"field";s:19:"field_59e5ee2eda0ad";s:8:"operator";s:2:"!=";s:5:"value";s:1:"1";}}}}', 'Order', 'order', 'publish', 'closed', 'closed', '', 'field_59e5d18494136', '', '', '2017-10-17 13:49:45', '2017-10-17 11:49:45', '', 84, 'http://kygo.local/?post_type=acf-field&#038;p=94', 2, 'acf-field', '', 0),
(95, 1, '2017-10-17 11:51:45', '2017-10-17 09:51:45', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-10-17 11:51:45', '2017-10-17 09:51:45', '', 7, 'http://kygo.local/2017/10/17/7-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2017-10-17 11:52:51', '2017-10-17 09:52:51', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-10-17 11:52:51', '2017-10-17 09:52:51', '', 7, 'http://kygo.local/2017/10/17/7-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2017-10-17 11:52:59', '2017-10-17 09:52:59', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-10-17 11:52:59', '2017-10-17 09:52:59', '', 7, 'http://kygo.local/2017/10/17/7-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2017-10-17 13:49:14', '2017-10-17 11:49:14', 'a:10:{s:4:"type";s:10:"true_false";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"message";s:0:"";s:13:"default_value";i:1;s:2:"ui";i:1;s:10:"ui_on_text";s:3:"Yes";s:11:"ui_off_text";s:3:"Non";}', 'Show', 'show-last-album', 'publish', 'closed', 'closed', '', 'field_59e5ee2eda0ad', '', '', '2017-10-17 13:56:02', '2017-10-17 11:56:02', '', 84, 'http://kygo.local/?post_type=acf-field&#038;p=98', 1, 'acf-field', '', 0),
(99, 1, '2017-10-17 13:54:48', '2017-10-17 11:54:48', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-10-17 13:54:48', '2017-10-17 11:54:48', '', 7, 'http://kygo.local/2017/10/17/7-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2017-10-17 13:56:15', '2017-10-17 11:56:15', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-10-17 13:56:15', '2017-10-17 11:56:15', '', 7, 'http://kygo.local/2017/10/17/7-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2017-10-17 13:56:27', '2017-10-17 11:56:27', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-10-17 13:56:27', '2017-10-17 11:56:27', '', 7, 'http://kygo.local/2017/10/17/7-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2017-10-17 13:57:07', '2017-10-17 11:57:07', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Tour', '', 'publish', 'closed', 'closed', '', 'field_59e5efff7ee2c', '', '', '2017-10-17 14:06:26', '2017-10-17 12:06:26', '', 84, 'http://kygo.local/?post_type=acf-field&#038;p=102', 4, 'acf-field', '', 0),
(103, 1, '2017-10-17 14:08:48', '2017-10-17 12:08:48', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Section 3', '', 'publish', 'closed', 'closed', '', 'field_59e5f2bf5f05f', '', '', '2017-10-20 10:24:50', '2017-10-20 08:24:50', '', 84, 'http://kygo.local/?post_type=acf-field&#038;p=103', 6, 'acf-field', '', 0),
(104, 1, '2017-10-17 14:09:35', '2017-10-17 12:09:35', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:5:"Music";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Title', 'title-section-3', 'publish', 'closed', 'closed', '', 'field_59e5f2e773334', '', '', '2017-10-20 10:24:50', '2017-10-20 08:24:50', '', 84, 'http://kygo.local/?post_type=acf-field&#038;p=104', 7, 'acf-field', '', 0),
(105, 1, '2017-10-17 15:18:23', '2017-10-17 13:18:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-10-17 15:18:23', '2017-10-17 13:18:23', '', 7, 'http://kygo.local/2017/10/17/7-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2017-10-17 15:18:31', '2017-10-17 13:18:31', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-10-17 15:18:31', '2017-10-17 13:18:31', '', 7, 'http://kygo.local/2017/10/17/7-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2017-10-17 19:34:55', '2017-10-17 17:34:55', '', 'French tour', '', 'publish', 'closed', 'closed', '', 'french-tour', '', '', '2017-10-17 22:14:28', '2017-10-17 20:14:28', '', 0, 'http://kygo.local/?post_type=tour&#038;p=111', 0, 'tour', '', 0),
(112, 1, '2017-10-17 21:05:49', '2017-10-17 19:05:49', '', 'Test 2', '', 'trash', 'closed', 'closed', '', 'test-2__trashed', '', '', '2017-10-17 21:16:31', '2017-10-17 19:16:31', '', 0, 'http://kygo.local/?post_type=tour&#038;p=112', 0, 'tour', '', 0),
(113, 1, '2017-10-18 14:25:00', '2017-10-18 12:25:00', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-10-18 14:25:00', '2017-10-18 12:25:00', '', 7, 'http://kygo.local/2017/10/18/7-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2017-10-18 14:28:31', '2017-10-18 12:28:31', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-10-18 14:28:31', '2017-10-18 12:28:31', '', 7, 'http://kygo.local/2017/10/18/7-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2017-10-18 15:03:52', '2017-10-18 13:03:52', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-10-18 15:03:52', '2017-10-18 13:03:52', '', 7, 'http://kygo.local/2017/10/18/7-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2017-10-20 10:24:50', '2017-10-20 08:24:50', 'a:16:{s:4:"type";s:7:"gallery";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:3:"min";i:4;s:3:"max";s:0:"";s:6:"insert";s:6:"append";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:17:".png, .jpg, .jpeg";}', 'Slider', 'slider', 'publish', 'closed', 'closed', '', 'field_59e9b27d3b1a3', '', '', '2017-10-20 10:24:50', '2017-10-20 08:24:50', '', 84, 'http://kygo.local/?post_type=acf-field&p=117', 5, 'acf-field', '', 0),
(118, 1, '2017-10-20 10:25:33', '2017-10-20 08:25:33', '', 'tour', '', 'inherit', 'open', 'closed', '', 'tour-2', '', '', '2017-10-20 10:27:45', '2017-10-20 08:27:45', '', 7, 'http://kygo.local/wp-content/uploads/2017/10/tour.png', 0, 'attachment', 'image/png', 0),
(119, 1, '2017-10-20 10:27:38', '2017-10-20 08:27:38', '', 'kygo-encore-photo-johanneslovund-8518', '', 'inherit', 'open', 'closed', '', 'kygo-encore-photo-johanneslovund-8518', '', '', '2017-10-20 10:27:38', '2017-10-20 08:27:38', '', 7, 'http://kygo.local/wp-content/uploads/2017/10/kygo-encore-photo-johanneslovund-8518.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2017-10-20 10:27:39', '2017-10-20 08:27:39', '', 'kygo-south-korea-photo-johanneslovund-7631', '', 'inherit', 'open', 'closed', '', 'kygo-south-korea-photo-johanneslovund-7631', '', '', '2017-10-20 10:27:39', '2017-10-20 08:27:39', '', 7, 'http://kygo.local/wp-content/uploads/2017/10/kygo-south-korea-photo-johanneslovund-7631.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2017-10-20 10:27:41', '2017-10-20 08:27:41', '', 'tokyo-photo-johanneslovund-0210', '', 'inherit', 'open', 'closed', '', 'tokyo-photo-johanneslovund-0210', '', '', '2017-10-20 10:27:41', '2017-10-20 08:27:41', '', 7, 'http://kygo.local/wp-content/uploads/2017/10/tokyo-photo-johanneslovund-0210.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2017-10-20 10:27:57', '2017-10-20 08:27:57', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-10-20 10:27:57', '2017-10-20 08:27:57', '', 7, 'http://kygo.local/2017/10/20/7-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2017-10-21 15:58:03', '2017-10-21 13:58:03', '', 'Store', '', 'publish', 'closed', 'closed', '', 'store', '', '', '2017-10-21 15:58:03', '2017-10-21 13:58:03', '', 0, 'http://kygo.local/?p=123', 6, 'nav_menu_item', '', 0),
(125, 1, '2017-10-29 23:25:21', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-10-29 23:25:21', '0000-00-00 00:00:00', '', 0, 'http://kygo.local/?p=125', 0, 'post', '', 0) ;

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
(1, 1, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0),
(57, 3, 0),
(58, 3, 0),
(59, 3, 0),
(60, 3, 0),
(61, 3, 0),
(123, 3, 0) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `kygomusic_term_taxonomy`
#
INSERT INTO `kygomusic_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'nav_menu', '', 0, 6) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `kygomusic_terms`
#
INSERT INTO `kygomusic_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'External link', 'external-link', 0) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


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
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:1:{s:64:"9fed8b7a9ae31661d22f0818152332f433e4e23c7a46865c8c44574356fbc830";a:4:{s:10:"expiration";i:1509488720;s:2:"ip";s:3:"::1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.75 Safari/537.36";s:5:"login";i:1509315920;}}'),
(16, 1, 'kygomusic_dashboard_quick_press_last_post_id', '125'),
(17, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(20, 1, 'nav_menu_recently_edited', '3'),
(21, 1, 'acf_user_settings', 'a:0:{}'),
(22, 1, 'closedpostboxes_page', 'a:0:{}'),
(23, 1, 'metaboxhidden_page', 'a:5:{i:0;s:23:"acf-group_59de9b26a29f4";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
(24, 1, 'kygomusic_user-settings', 'libraryContent=browse'),
(25, 1, 'kygomusic_user-settings-time', '1508060445'),
(26, 1, 'closedpostboxes_tour', 'a:0:{}'),
(27, 1, 'metaboxhidden_tour', 'a:3:{i:0;s:23:"acf-group_59e5ba6408147";i:1;s:23:"acf-group_59e5bcd60a48b";i:2;s:7:"slugdiv";}') ;

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
(1, 'root', '$P$BSDXFHFodHlzhwlGEp/8SlfNxP487a.', 'root', 'luc.dandrel@gmail.com', '', '2017-10-11 20:17:14', '', 0, 'root') ;

#
# End of data contents of table `kygomusic_users`
# --------------------------------------------------------

#
# Add constraints back in
#

