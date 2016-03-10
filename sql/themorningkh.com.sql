-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 10, 2016 at 09:27 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `themorningkh.com`
--
CREATE DATABASE IF NOT EXISTS `themorningkh.com` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `themorningkh.com`;

-- --------------------------------------------------------

--
-- Table structure for table `tmkh_commentmeta`
--

CREATE TABLE IF NOT EXISTS `tmkh_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tmkh_comments`
--

CREATE TABLE IF NOT EXISTS `tmkh_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `tmkh_links`
--

CREATE TABLE IF NOT EXISTS `tmkh_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tmkh_options`
--

CREATE TABLE IF NOT EXISTS `tmkh_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=279 ;

--
-- Dumping data for table `tmkh_options`
--

INSERT INTO `tmkh_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:82/themorningkh.com', 'yes'),
(2, 'home', 'http://localhost:82/themorningkh.com', 'yes'),
(3, 'blogname', 'The Morning', 'yes'),
(4, 'blogdescription', 'For Sport News, Health and Entertainment', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'chanthy.chv@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:2:{i:0;s:35:"cyclone-slider-2/cyclone-slider.php";i:1;s:25:"zopim-live-chat/zopim.php";}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '0', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', 'a:3:{i:0;s:67:"D:\\wamp\\www\\themorningkh.com/wp-content/themes/colornews/footer.php";i:2;s:66:"D:\\wamp\\www\\themorningkh.com/wp-content/themes/colornews/style.css";i:3;s:0:"";}', 'no'),
(39, 'template', 'colornews', 'yes'),
(40, 'stylesheet', 'colornews', 'yes'),
(41, 'comment_whitelist', '1', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '0', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '35700', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(49, 'upload_path', '', 'yes'),
(50, 'blog_public', '0', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'posts', 'yes'),
(53, 'tag_base', '', 'yes'),
(54, 'show_avatars', '1', 'yes'),
(55, 'avatar_rating', 'G', 'yes'),
(56, 'upload_url_path', '', 'yes'),
(57, 'thumbnail_size_w', '150', 'yes'),
(58, 'thumbnail_size_h', '150', 'yes'),
(59, 'thumbnail_crop', '1', 'yes'),
(60, 'medium_size_w', '300', 'yes'),
(61, 'medium_size_h', '300', 'yes'),
(62, 'avatar_default', 'mystery', 'yes'),
(63, 'large_size_w', '1024', 'yes'),
(64, 'large_size_h', '1024', 'yes'),
(65, 'image_default_link_type', 'none', 'yes'),
(66, 'image_default_size', '', 'yes'),
(67, 'image_default_align', '', 'yes'),
(68, 'close_comments_for_old_posts', '0', 'yes'),
(69, 'close_comments_days_old', '14', 'yes'),
(70, 'thread_comments', '1', 'yes'),
(71, 'thread_comments_depth', '5', 'yes'),
(72, 'page_comments', '0', 'yes'),
(73, 'comments_per_page', '50', 'yes'),
(74, 'default_comments_page', 'newest', 'yes'),
(75, 'comment_order', 'asc', 'yes'),
(76, 'sticky_posts', 'a:0:{}', 'yes'),
(77, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'uninstall_plugins', 'a:0:{}', 'no'),
(81, 'timezone_string', '', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '0', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '0', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'initial_db_version', '35700', 'yes'),
(91, 'tmkh_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:12:"access_zopim";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(92, 'widget_search', 'a:2:{i:4;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-posts', 'a:3:{i:2;a:3:{s:5:"title";s:4:"News";s:6:"number";i:5;s:9:"show_date";b:0;}i:4;a:3:{s:5:"title";s:4:"News";s:6:"number";i:1;s:9:"show_date";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'sidebars_widgets', 'a:16:{s:19:"wp_inactive_widgets";a:1:{i:0;s:40:"colornews_125x125_advertisement_widget-3";}s:23:"colornews_right_sidebar";a:4:{i:0;s:14:"recent-posts-2";i:1;s:17:"recent-comments-2";i:2;s:10:"archives-2";i:3;s:10:"calendar-2";}s:22:"colornews_left_sidebar";a:0:{}s:24:"colornews_header_sidebar";a:0:{}s:30:"colornews_contact_page_sidebar";a:0:{}s:32:"colornews_error_404_page_sidebar";a:0:{}s:27:"colornews_front_slider_area";a:0:{}s:35:"colornews_front_content_top_section";a:0:{}s:36:"colornews_front_content_left_section";a:1:{i:0;s:14:"recent-posts-4";}s:37:"colornews_front_content_right_section";a:0:{}s:38:"colornews_front_content_bottom_section";a:0:{}s:36:"colornews_advertisement_above_footer";a:0:{}s:28:"colornews_footer_sidebar_one";a:0:{}s:28:"colornews_footer_sidebar_two";a:0:{}s:30:"colornews_footer_sidebar_three";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:3:{i:3;a:0:{}i:5;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:2:{s:12:"_multiwidget";i:1;i:3;a:0:{}}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:5:{i:1457605062;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"4ab831df806c80761e34224b2a1499cc";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:63;}}}}i:1457623473;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1457666759;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1457667630;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(108, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:58:"http://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:58:"http://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:10:"no_content";s:69:"http://downloads.wordpress.org/release/wordpress-4.4.2-no-content.zip";s:11:"new_bundled";s:70:"http://downloads.wordpress.org/release/wordpress-4.4.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.4.2";s:7:"version";s:5:"4.4.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1457597864;s:15:"version_checked";s:5:"4.4.2";s:12:"translations";a:0:{}}', 'yes'),
(114, '_site_transient_timeout_browser_2f4695c5cc6685ac05e383fb7004c5b1', '1455161159', 'yes'),
(115, '_site_transient_browser_2f4695c5cc6685ac05e383fb7004c5b1', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"48.0.2564.97";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(121, 'can_compress_scripts', '1', 'yes'),
(123, '_transient_twentysixteen_categories', '1', 'yes'),
(124, 'recently_activated', 'a:0:{}', 'yes'),
(125, '_site_transient_timeout_wporg_theme_feature_list', '1454567542', 'yes'),
(126, '_site_transient_wporg_theme_feature_list', 'a:4:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:6:"Layout";a:9:{i:0;s:12:"fixed-layout";i:1;s:12:"fluid-layout";i:2;s:17:"responsive-layout";i:3;s:10:"one-column";i:4;s:11:"two-columns";i:5;s:13:"three-columns";i:6;s:12:"four-columns";i:7;s:12:"left-sidebar";i:8;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:8:"blavatar";i:2;s:10:"buddypress";i:3;s:17:"custom-background";i:4;s:13:"custom-colors";i:5;s:13:"custom-header";i:6;s:11:"custom-menu";i:7;s:12:"editor-style";i:8;s:21:"featured-image-header";i:9;s:15:"featured-images";i:10;s:15:"flexible-header";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(128, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1457597866;s:7:"checked";a:4:{s:9:"colornews";s:5:"1.0.4";s:13:"twentyfifteen";s:3:"1.4";s:14:"twentyfourteen";s:3:"1.6";s:13:"twentysixteen";s:3:"1.1";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(129, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1454556783;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(130, 'current_theme', 'ColorNews', 'yes'),
(131, 'theme_mods_colornews', 'a:23:{i:0;b:0;s:12:"header_image";s:13:"remove-header";s:14:"colornews_logo";s:77:"http://localhost:82/themorningkh.com/wp-content/uploads/2016/02/news_logo.png";s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:16:"background_color";s:6:"565759";s:23:"colornews_breaking_news";i:1;s:29:"colornews_search_icon_in_menu";i:1;s:33:"colornews_header_top_menu_display";i:1;s:42:"colornews_header_top_menu_category_display";i:1;s:22:"colornews_date_display";i:1;s:31:"colornews_header_logo_placement";s:9:"show_both";s:31:"colornews_header_image_position";s:12:"position_two";s:27:"colornews_home_icon_display";i:1;s:29:"colornews_random_post_in_menu";s:0:"";s:29:"colornews_primary_sticky_menu";s:0:"";s:25:"colornews_hide_blog_front";s:0:"";s:21:"colornews_site_layout";s:12:"boxed_layout";s:24:"colornews_default_layout";s:13:"right_sidebar";s:23:"colornews_primary_color";s:7:"#65a000";s:32:"colornews_related_posts_activate";s:0:"";s:30:"colornews_featured_image_popup";s:0:"";s:16:"background_image";s:0:"";s:17:"background_repeat";s:9:"no-repeat";}', 'yes'),
(132, 'theme_switched', '', 'yes'),
(133, 'widget_colornews_728x90_advertisement_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(134, 'widget_colornews_300x250_advertisement_widget', 'a:2:{s:12:"_multiwidget";i:1;i:3;a:0:{}}', 'yes'),
(135, 'widget_colornews_125x125_advertisement_widget', 'a:2:{s:12:"_multiwidget";i:1;i:3;a:13:{s:5:"title";s:3:"eee";s:20:"125x125_image_link_1";s:0:"";s:19:"125x125_image_url_1";s:0:"";s:20:"125x125_image_link_2";s:0:"";s:19:"125x125_image_url_2";s:0:"";s:20:"125x125_image_link_3";s:0:"";s:19:"125x125_image_url_3";s:0:"";s:20:"125x125_image_link_4";s:0:"";s:19:"125x125_image_url_4";s:0:"";s:20:"125x125_image_link_5";s:0:"";s:19:"125x125_image_url_5";s:0:"";s:20:"125x125_image_link_6";s:0:"";s:19:"125x125_image_url_6";s:0:"";}}', 'yes'),
(136, 'widget_colornews_featured_post_style_one_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(137, 'widget_colornews_featured_post_style_two_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(138, 'widget_colornews_featured_post_style_three_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(139, 'widget_colornews_featured_post_style_four_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(140, 'widget_colornews_random_posts_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(141, 'widget_colornews_popular_posts_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(142, 'widget_colornews_custom_tag_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(148, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(176, 'widget_cyclone-slider-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(180, 'category_children', 'a:0:{}', 'yes'),
(234, '_site_transient_timeout_browser_b2b3dba9c11a5bff2b6abe2b38145363', '1455501349', 'yes'),
(235, '_site_transient_browser_b2b3dba9c11a5bff2b6abe2b38145363', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"48.0.2564.103";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(240, '_site_transient_timeout_available_translations', '1454909029', 'yes'),
(241, '_site_transient_available_translations', 'a:73:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-07 13:09:53";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.4.2/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-12 10:15:45";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.4.2/ary.zip";s:3:"iso";a:2:{i:1;s:5:"ar_MA";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-07 20:53:51";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.4.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 08:50:29";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.3.3";s:7:"updated";s:19:"2015-09-16 05:09:40";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.3/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.3.3";s:7:"updated";s:19:"2015-08-18 21:20:44";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.3/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-16 13:48:03";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.4.2/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-26 16:01:40";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.4.2/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 22:48:20";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 14:19:21";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-21 14:06:26";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:70:"http://downloads.wordpress.org/translation/core/4.4.2/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-26 10:48:10";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-01 20:22:48";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.4.2/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 13:34:17";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-06 23:10:59";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-15 11:52:35";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-07 04:39:48";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-14 21:14:29";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-25 13:07:29";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.4.2/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-24 15:17:36";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.2.7";s:7:"updated";s:19:"2015-10-29 16:32:18";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.7/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-28 19:55:54";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-24 19:37:59";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-23 00:46:01";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-07 17:35:10";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"http://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-24 20:58:31";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.4.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-07 21:19:15";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.4.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-31 19:24:20";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-23 06:49:15";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.4.2/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-28 16:37:34";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 13:47:35";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 02:16:19";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.3.3";s:7:"updated";s:19:"2015-09-24 15:25:30";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.3/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-13 16:48:03";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:6:"4.1.10";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"http://downloads.wordpress.org/translation/core/4.1.10/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-07 13:33:42";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-06 14:16:56";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-26 11:21:04";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.4.2/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-03 14:37:42";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.3.3";s:7:"updated";s:19:"2015-08-17 13:36:47";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.3/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-21 16:17:50";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 00:20:24";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-30 18:58:39";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-15 13:41:43";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.4.2/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 07:35:25";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 20:07:24";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-28 05:41:39";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.10";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:64:"http://downloads.wordpress.org/translation/core/4.1.10/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-07 10:01:09";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-20 13:35:50";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:70:"http://downloads.wordpress.org/translation/core/4.4.2/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-07 10:12:04";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-14 12:19:44";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-02 07:53:33";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"http://downloads.wordpress.org/translation/core/4.3-RC/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-09 13:30:40";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.10";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.1.10/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-20 15:27:05";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-10 18:05:56";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-29 12:45:24";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-02 00:04:31";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-30 10:37:54";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.3.3";s:7:"updated";s:19:"2015-09-06 16:10:24";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.3/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-07 09:13:24";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.4.2/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 09:09:51";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 23:28:56";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-08 03:22:55";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.4.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.3.3";s:7:"updated";s:19:"2015-08-20 03:52:15";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.3/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-17 23:12:27";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:6:"4.1.10";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"http://downloads.wordpress.org/translation/core/4.1.10/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-03 22:04:41";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.4.2/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.3.3";s:7:"updated";s:19:"2015-11-27 09:19:03";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.3/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-12 22:55:08";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-11 18:51:41";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'yes');
INSERT INTO `tmkh_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(252, 'rewrite_rules', 'a:94:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:41:"cycloneslider/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:51:"cycloneslider/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:71:"cycloneslider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"cycloneslider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"cycloneslider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"cycloneslider/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:30:"cycloneslider/([^/]+)/embed/?$";s:46:"index.php?cycloneslider=$matches[1]&embed=true";s:34:"cycloneslider/([^/]+)/trackback/?$";s:40:"index.php?cycloneslider=$matches[1]&tb=1";s:42:"cycloneslider/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?cycloneslider=$matches[1]&paged=$matches[2]";s:49:"cycloneslider/([^/]+)/comment-page-([0-9]{1,})/?$";s:53:"index.php?cycloneslider=$matches[1]&cpage=$matches[2]";s:38:"cycloneslider/([^/]+)(?:/([0-9]+))?/?$";s:52:"index.php?cycloneslider=$matches[1]&page=$matches[2]";s:30:"cycloneslider/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:40:"cycloneslider/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:60:"cycloneslider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"cycloneslider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"cycloneslider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"cycloneslider/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(264, '_site_transient_timeout_theme_roots', '1457599590', 'yes'),
(265, '_site_transient_theme_roots', 'a:4:{s:9:"colornews";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'yes'),
(267, '_site_transient_timeout_browser_4f6496c61a087bc685085dc33952f925', '1458202606', 'yes'),
(268, '_site_transient_browser_4f6496c61a087bc685085dc33952f925', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"48.0.2564.109";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(269, '_transient_timeout_plugin_slugs', '1457684462', 'no'),
(270, '_transient_plugin_slugs', 'a:4:{i:0;s:19:"akismet/akismet.php";i:1;s:35:"cyclone-slider-2/cyclone-slider.php";i:2;s:9:"hello.php";i:3;s:25:"zopim-live-chat/zopim.php";}', 'no'),
(271, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1457641009', 'no'),
(272, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: There are no HTTP transports available which can complete the requested request.</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: There are no HTTP transports available which can complete the requested request.</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(273, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1457608633', 'yes'),
(274, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5703";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3563";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3517";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3018";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2749";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2246";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2172";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2019";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1970";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1955";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1952";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1904";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1805";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1608";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1521";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1504";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1477";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1318";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1267";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1256";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1158";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1075";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1053";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"984";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"948";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"904";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"900";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"888";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"881";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"872";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"864";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"814";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"767";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"766";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"752";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"735";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"730";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"729";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"726";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"721";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"710";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"709";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"680";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"678";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"662";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"657";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"656";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"645";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"640";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"631";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"617";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"610";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"599";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"593";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"591";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"583";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"577";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"576";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"570";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"560";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"549";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"541";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"541";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"526";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"526";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"515";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"507";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"503";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"502";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"500";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"483";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"483";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"477";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"468";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"458";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"457";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"432";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"432";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"426";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"426";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"425";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"418";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"413";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"411";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"409";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"406";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"401";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"400";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"398";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"393";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"391";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"389";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"388";}s:4:"text";a:3:{s:4:"name";s:4:"text";s:4:"slug";s:4:"text";s:5:"count";s:3:"384";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"381";}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";s:3:"381";}s:9:"automatic";a:3:{s:4:"name";s:9:"automatic";s:4:"slug";s:9:"automatic";s:5:"count";s:3:"378";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"376";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"375";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"374";}}', 'yes'),
(276, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1457597868;s:7:"checked";a:4:{s:19:"akismet/akismet.php";s:5:"3.1.7";s:35:"cyclone-slider-2/cyclone-slider.php";s:6:"2.10.1";s:9:"hello.php";s:3:"1.6";s:25:"zopim-live-chat/zopim.php";s:5:"1.4.2";}s:8:"response";a:1:{s:35:"cyclone-slider-2/cyclone-slider.php";O:8:"stdClass":6:{s:2:"id";s:5:"35847";s:4:"slug";s:16:"cyclone-slider-2";s:6:"plugin";s:35:"cyclone-slider-2/cyclone-slider.php";s:11:"new_version";s:6:"2.10.3";s:3:"url";s:47:"https://wordpress.org/plugins/cyclone-slider-2/";s:7:"package";s:65:"http://downloads.wordpress.org/plugin/cyclone-slider-2.2.10.3.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.7";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:55:"http://downloads.wordpress.org/plugin/akismet.3.1.7.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:57:"http://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:25:"zopim-live-chat/zopim.php";O:8:"stdClass":6:{s:2:"id";s:5:"12426";s:4:"slug";s:15:"zopim-live-chat";s:6:"plugin";s:25:"zopim-live-chat/zopim.php";s:11:"new_version";s:5:"1.4.2";s:3:"url";s:46:"https://wordpress.org/plugins/zopim-live-chat/";s:7:"package";s:63:"http://downloads.wordpress.org/plugin/zopim-live-chat.1.4.2.zip";}}}', 'yes'),
(277, '_transient_is_multi_author', '0', 'yes'),
(278, 'zopimSalt', '', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `tmkh_postmeta`
--

CREATE TABLE IF NOT EXISTS `tmkh_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=214 ;

--
-- Dumping data for table `tmkh_postmeta`
--

INSERT INTO `tmkh_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(4, 5, '_wp_attached_file', '2016/02/s1.jpg'),
(5, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:920;s:6:"height";i:300;s:4:"file";s:14:"2016/02/s1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"s1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"s1-300x98.jpg";s:5:"width";i:300;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:14:"s1-768x250.jpg";s:5:"width";i:768;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:26:"colornews-big-slider-thumb";a:4:{s:4:"file";s:14:"s1-184x109.jpg";s:5:"width";i:184;s:6:"height";i:109;s:9:"mime-type";s:10:"image/jpeg";}s:30:"colornews-featured-post-medium";a:4:{s:4:"file";s:14:"s1-345x265.jpg";s:5:"width";i:345;s:6:"height";i:265;s:9:"mime-type";s:10:"image/jpeg";}s:29:"colornews-featured-post-small";a:4:{s:4:"file";s:13:"s1-115x73.jpg";s:5:"width";i:115;s:6:"height";i:73;s:9:"mime-type";s:10:"image/jpeg";}s:22:"colornews-random-posts";a:4:{s:4:"file";s:14:"s1-215x215.jpg";s:5:"width";i:215;s:6:"height";i:215;s:9:"mime-type";s:10:"image/jpeg";}s:24:"colornews-featured-image";a:4:{s:4:"file";s:14:"s1-715x300.jpg";s:5:"width";i:715;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(6, 6, '_wp_attached_file', '2016/02/cropped-s1.jpg'),
(7, 6, '_wp_attachment_context', 'custom-header'),
(8, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:920;s:6:"height";i:263;s:4:"file";s:22:"2016/02/cropped-s1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"cropped-s1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"cropped-s1-300x86.jpg";s:5:"width";i:300;s:6:"height";i:86;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"cropped-s1-768x220.jpg";s:5:"width";i:768;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}s:26:"colornews-big-slider-thumb";a:4:{s:4:"file";s:22:"cropped-s1-184x109.jpg";s:5:"width";i:184;s:6:"height";i:109;s:9:"mime-type";s:10:"image/jpeg";}s:30:"colornews-featured-post-medium";a:4:{s:4:"file";s:22:"cropped-s1-345x263.jpg";s:5:"width";i:345;s:6:"height";i:263;s:9:"mime-type";s:10:"image/jpeg";}s:29:"colornews-featured-post-small";a:4:{s:4:"file";s:21:"cropped-s1-115x73.jpg";s:5:"width";i:115;s:6:"height";i:73;s:9:"mime-type";s:10:"image/jpeg";}s:22:"colornews-random-posts";a:4:{s:4:"file";s:22:"cropped-s1-215x215.jpg";s:5:"width";i:215;s:6:"height";i:215;s:9:"mime-type";s:10:"image/jpeg";}s:24:"colornews-featured-image";a:4:{s:4:"file";s:22:"cropped-s1-715x263.jpg";s:5:"width";i:715;s:6:"height";i:263;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(11, 7, '_edit_last', '1'),
(12, 7, 'colornews_page_layout', 'default_layout'),
(13, 7, '_wp_page_template', 'default'),
(14, 7, '_edit_lock', '1454661465:1'),
(35, 12, '_edit_last', '1'),
(36, 12, 'colornews_page_layout', 'default_layout'),
(37, 12, '_wp_page_template', 'default'),
(38, 12, '_edit_lock', '1454660615:1'),
(39, 14, '_edit_last', '1'),
(40, 14, '_edit_lock', '1454660578:1'),
(41, 14, 'colornews_page_layout', 'default_layout'),
(42, 14, '_wp_page_template', 'default'),
(43, 16, '_menu_item_type', 'post_type'),
(44, 16, '_menu_item_menu_item_parent', '55'),
(45, 16, '_menu_item_object_id', '14'),
(46, 16, '_menu_item_object', 'page'),
(47, 16, '_menu_item_target', ''),
(48, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(49, 16, '_menu_item_xfn', ''),
(50, 16, '_menu_item_url', ''),
(52, 17, '_menu_item_type', 'post_type'),
(53, 17, '_menu_item_menu_item_parent', '55'),
(54, 17, '_menu_item_object_id', '12'),
(55, 17, '_menu_item_object', 'page'),
(56, 17, '_menu_item_target', ''),
(57, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(58, 17, '_menu_item_xfn', ''),
(59, 17, '_menu_item_url', ''),
(61, 18, '_menu_item_type', 'custom'),
(62, 18, '_menu_item_menu_item_parent', '0'),
(63, 18, '_menu_item_object_id', '18'),
(64, 18, '_menu_item_object', 'custom'),
(65, 18, '_menu_item_target', ''),
(66, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(67, 18, '_menu_item_xfn', ''),
(68, 18, '_menu_item_url', 'http://localhost:82/themorningkh.com/'),
(70, 20, '_edit_last', '1'),
(71, 20, 'colornews_page_layout', 'default_layout'),
(72, 20, '_wp_page_template', 'default'),
(73, 20, '_edit_lock', '1454660244:1'),
(74, 22, '_edit_last', '1'),
(75, 22, 'colornews_page_layout', 'default_layout'),
(76, 22, '_wp_page_template', 'default'),
(77, 22, '_edit_lock', '1454660287:1'),
(78, 24, '_menu_item_type', 'post_type'),
(79, 24, '_menu_item_menu_item_parent', '0'),
(80, 24, '_menu_item_object_id', '22'),
(81, 24, '_menu_item_object', 'page'),
(82, 24, '_menu_item_target', ''),
(83, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(84, 24, '_menu_item_xfn', ''),
(85, 24, '_menu_item_url', ''),
(87, 25, '_menu_item_type', 'post_type'),
(88, 25, '_menu_item_menu_item_parent', '0'),
(89, 25, '_menu_item_object_id', '20'),
(90, 25, '_menu_item_object', 'page'),
(91, 25, '_menu_item_target', ''),
(92, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(93, 25, '_menu_item_xfn', ''),
(94, 25, '_menu_item_url', ''),
(102, 29, '_wp_attached_file', '2016/02/news_logo.png'),
(103, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:65;s:6:"height";i:74;s:4:"file";s:21:"2016/02/news_logo.png";s:5:"sizes";a:1:{s:29:"colornews-featured-post-small";a:4:{s:4:"file";s:19:"news_logo-65x73.png";s:5:"width";i:65;s:6:"height";i:73;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(106, 32, '_wp_attached_file', '2016/02/p6.jpg'),
(107, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:920;s:6:"height";i:300;s:4:"file";s:14:"2016/02/p6.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"p6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"p6-300x98.jpg";s:5:"width";i:300;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:14:"p6-768x250.jpg";s:5:"width";i:768;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:26:"colornews-big-slider-thumb";a:4:{s:4:"file";s:14:"p6-184x109.jpg";s:5:"width";i:184;s:6:"height";i:109;s:9:"mime-type";s:10:"image/jpeg";}s:30:"colornews-featured-post-medium";a:4:{s:4:"file";s:14:"p6-345x265.jpg";s:5:"width";i:345;s:6:"height";i:265;s:9:"mime-type";s:10:"image/jpeg";}s:29:"colornews-featured-post-small";a:4:{s:4:"file";s:13:"p6-115x73.jpg";s:5:"width";i:115;s:6:"height";i:73;s:9:"mime-type";s:10:"image/jpeg";}s:22:"colornews-random-posts";a:4:{s:4:"file";s:14:"p6-215x215.jpg";s:5:"width";i:215;s:6:"height";i:215;s:9:"mime-type";s:10:"image/jpeg";}s:24:"colornews-featured-image";a:4:{s:4:"file";s:14:"p6-715x300.jpg";s:5:"width";i:715;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:27:"(c) Udra11 | Dreamstime.com";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(108, 33, '_wp_attached_file', '2016/02/p7.png'),
(109, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:920;s:6:"height";i:300;s:4:"file";s:14:"2016/02/p7.png";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"p7-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:13:"p7-300x98.png";s:5:"width";i:300;s:6:"height";i:98;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:14:"p7-768x250.png";s:5:"width";i:768;s:6:"height";i:250;s:9:"mime-type";s:9:"image/png";}s:26:"colornews-big-slider-thumb";a:4:{s:4:"file";s:14:"p7-184x109.png";s:5:"width";i:184;s:6:"height";i:109;s:9:"mime-type";s:9:"image/png";}s:30:"colornews-featured-post-medium";a:4:{s:4:"file";s:14:"p7-345x265.png";s:5:"width";i:345;s:6:"height";i:265;s:9:"mime-type";s:9:"image/png";}s:29:"colornews-featured-post-small";a:4:{s:4:"file";s:13:"p7-115x73.png";s:5:"width";i:115;s:6:"height";i:73;s:9:"mime-type";s:9:"image/png";}s:22:"colornews-random-posts";a:4:{s:4:"file";s:14:"p7-215x215.png";s:5:"width";i:215;s:6:"height";i:215;s:9:"mime-type";s:9:"image/png";}s:24:"colornews-featured-image";a:4:{s:4:"file";s:14:"p7-715x300.png";s:5:"width";i:715;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(110, 34, '_wp_attached_file', '2016/02/s1-1.jpg'),
(111, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:920;s:6:"height";i:300;s:4:"file";s:16:"2016/02/s1-1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"s1-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"s1-1-300x98.jpg";s:5:"width";i:300;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"s1-1-768x250.jpg";s:5:"width";i:768;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:26:"colornews-big-slider-thumb";a:4:{s:4:"file";s:16:"s1-1-184x109.jpg";s:5:"width";i:184;s:6:"height";i:109;s:9:"mime-type";s:10:"image/jpeg";}s:30:"colornews-featured-post-medium";a:4:{s:4:"file";s:16:"s1-1-345x265.jpg";s:5:"width";i:345;s:6:"height";i:265;s:9:"mime-type";s:10:"image/jpeg";}s:29:"colornews-featured-post-small";a:4:{s:4:"file";s:15:"s1-1-115x73.jpg";s:5:"width";i:115;s:6:"height";i:73;s:9:"mime-type";s:10:"image/jpeg";}s:22:"colornews-random-posts";a:4:{s:4:"file";s:16:"s1-1-215x215.jpg";s:5:"width";i:215;s:6:"height";i:215;s:9:"mime-type";s:10:"image/jpeg";}s:24:"colornews-featured-image";a:4:{s:4:"file";s:16:"s1-1-715x300.jpg";s:5:"width";i:715;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(112, 31, '_edit_last', '1'),
(115, 31, '_edit_lock', '1454581064:1'),
(137, 29, '_wp_attachment_is_custom_background', 'colornews'),
(144, 37, '_edit_last', '1'),
(145, 37, '_edit_lock', '1454578364:1'),
(146, 37, 'colornews_page_layout', 'default_layout'),
(148, 39, '_edit_last', '1'),
(149, 39, '_edit_lock', '1454579820:1'),
(150, 39, 'colornews_page_layout', 'default_layout'),
(152, 41, '_wp_attached_file', '2016/02/slider1.jpg'),
(153, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:920;s:6:"height";i:300;s:4:"file";s:19:"2016/02/slider1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"slider1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"slider1-300x98.jpg";s:5:"width";i:300;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"slider1-768x250.jpg";s:5:"width";i:768;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:26:"colornews-big-slider-thumb";a:4:{s:4:"file";s:19:"slider1-184x109.jpg";s:5:"width";i:184;s:6:"height";i:109;s:9:"mime-type";s:10:"image/jpeg";}s:30:"colornews-featured-post-medium";a:4:{s:4:"file";s:19:"slider1-345x265.jpg";s:5:"width";i:345;s:6:"height";i:265;s:9:"mime-type";s:10:"image/jpeg";}s:29:"colornews-featured-post-small";a:4:{s:4:"file";s:18:"slider1-115x73.jpg";s:5:"width";i:115;s:6:"height";i:73;s:9:"mime-type";s:10:"image/jpeg";}s:22:"colornews-random-posts";a:4:{s:4:"file";s:19:"slider1-215x215.jpg";s:5:"width";i:215;s:6:"height";i:215;s:9:"mime-type";s:10:"image/jpeg";}s:24:"colornews-featured-image";a:4:{s:4:"file";s:19:"slider1-715x300.jpg";s:5:"width";i:715;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(154, 42, '_wp_attached_file', '2016/02/slider2.jpg'),
(155, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:920;s:6:"height";i:300;s:4:"file";s:19:"2016/02/slider2.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"slider2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"slider2-300x98.jpg";s:5:"width";i:300;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"slider2-768x250.jpg";s:5:"width";i:768;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:26:"colornews-big-slider-thumb";a:4:{s:4:"file";s:19:"slider2-184x109.jpg";s:5:"width";i:184;s:6:"height";i:109;s:9:"mime-type";s:10:"image/jpeg";}s:30:"colornews-featured-post-medium";a:4:{s:4:"file";s:19:"slider2-345x265.jpg";s:5:"width";i:345;s:6:"height";i:265;s:9:"mime-type";s:10:"image/jpeg";}s:29:"colornews-featured-post-small";a:4:{s:4:"file";s:18:"slider2-115x73.jpg";s:5:"width";i:115;s:6:"height";i:73;s:9:"mime-type";s:10:"image/jpeg";}s:22:"colornews-random-posts";a:4:{s:4:"file";s:19:"slider2-215x215.jpg";s:5:"width";i:215;s:6:"height";i:215;s:9:"mime-type";s:10:"image/jpeg";}s:24:"colornews-featured-image";a:4:{s:4:"file";s:19:"slider2-715x300.jpg";s:5:"width";i:715;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(156, 43, '_wp_attached_file', '2016/02/slider3.jpg'),
(157, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:920;s:6:"height";i:300;s:4:"file";s:19:"2016/02/slider3.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"slider3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"slider3-300x98.jpg";s:5:"width";i:300;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"slider3-768x250.jpg";s:5:"width";i:768;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:26:"colornews-big-slider-thumb";a:4:{s:4:"file";s:19:"slider3-184x109.jpg";s:5:"width";i:184;s:6:"height";i:109;s:9:"mime-type";s:10:"image/jpeg";}s:30:"colornews-featured-post-medium";a:4:{s:4:"file";s:19:"slider3-345x265.jpg";s:5:"width";i:345;s:6:"height";i:265;s:9:"mime-type";s:10:"image/jpeg";}s:29:"colornews-featured-post-small";a:4:{s:4:"file";s:18:"slider3-115x73.jpg";s:5:"width";i:115;s:6:"height";i:73;s:9:"mime-type";s:10:"image/jpeg";}s:22:"colornews-random-posts";a:4:{s:4:"file";s:19:"slider3-215x215.jpg";s:5:"width";i:215;s:6:"height";i:215;s:9:"mime-type";s:10:"image/jpeg";}s:24:"colornews-featured-image";a:4:{s:4:"file";s:19:"slider3-715x300.jpg";s:5:"width";i:715;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(158, 44, '_wp_attached_file', '2016/02/slider4.jpg'),
(159, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:920;s:6:"height";i:300;s:4:"file";s:19:"2016/02/slider4.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"slider4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"slider4-300x98.jpg";s:5:"width";i:300;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"slider4-768x250.jpg";s:5:"width";i:768;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:26:"colornews-big-slider-thumb";a:4:{s:4:"file";s:19:"slider4-184x109.jpg";s:5:"width";i:184;s:6:"height";i:109;s:9:"mime-type";s:10:"image/jpeg";}s:30:"colornews-featured-post-medium";a:4:{s:4:"file";s:19:"slider4-345x265.jpg";s:5:"width";i:345;s:6:"height";i:265;s:9:"mime-type";s:10:"image/jpeg";}s:29:"colornews-featured-post-small";a:4:{s:4:"file";s:18:"slider4-115x73.jpg";s:5:"width";i:115;s:6:"height";i:73;s:9:"mime-type";s:10:"image/jpeg";}s:22:"colornews-random-posts";a:4:{s:4:"file";s:19:"slider4-215x215.jpg";s:5:"width";i:215;s:6:"height";i:215;s:9:"mime-type";s:10:"image/jpeg";}s:24:"colornews-featured-image";a:4:{s:4:"file";s:19:"slider4-715x300.jpg";s:5:"width";i:715;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(160, 45, '_wp_attached_file', '2016/02/slider5.jpg'),
(161, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:920;s:6:"height";i:300;s:4:"file";s:19:"2016/02/slider5.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"slider5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"slider5-300x98.jpg";s:5:"width";i:300;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"slider5-768x250.jpg";s:5:"width";i:768;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:26:"colornews-big-slider-thumb";a:4:{s:4:"file";s:19:"slider5-184x109.jpg";s:5:"width";i:184;s:6:"height";i:109;s:9:"mime-type";s:10:"image/jpeg";}s:30:"colornews-featured-post-medium";a:4:{s:4:"file";s:19:"slider5-345x265.jpg";s:5:"width";i:345;s:6:"height";i:265;s:9:"mime-type";s:10:"image/jpeg";}s:29:"colornews-featured-post-small";a:4:{s:4:"file";s:18:"slider5-115x73.jpg";s:5:"width";i:115;s:6:"height";i:73;s:9:"mime-type";s:10:"image/jpeg";}s:22:"colornews-random-posts";a:4:{s:4:"file";s:19:"slider5-215x215.jpg";s:5:"width";i:215;s:6:"height";i:215;s:9:"mime-type";s:10:"image/jpeg";}s:24:"colornews-featured-image";a:4:{s:4:"file";s:19:"slider5-715x300.jpg";s:5:"width";i:715;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(162, 46, '_wp_attached_file', '2016/02/slider6.jpg'),
(163, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:920;s:6:"height";i:300;s:4:"file";s:19:"2016/02/slider6.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"slider6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"slider6-300x98.jpg";s:5:"width";i:300;s:6:"height";i:98;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"slider6-768x250.jpg";s:5:"width";i:768;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:26:"colornews-big-slider-thumb";a:4:{s:4:"file";s:19:"slider6-184x109.jpg";s:5:"width";i:184;s:6:"height";i:109;s:9:"mime-type";s:10:"image/jpeg";}s:30:"colornews-featured-post-medium";a:4:{s:4:"file";s:19:"slider6-345x265.jpg";s:5:"width";i:345;s:6:"height";i:265;s:9:"mime-type";s:10:"image/jpeg";}s:29:"colornews-featured-post-small";a:4:{s:4:"file";s:18:"slider6-115x73.jpg";s:5:"width";i:115;s:6:"height";i:73;s:9:"mime-type";s:10:"image/jpeg";}s:22:"colornews-random-posts";a:4:{s:4:"file";s:19:"slider6-215x215.jpg";s:5:"width";i:215;s:6:"height";i:215;s:9:"mime-type";s:10:"image/jpeg";}s:24:"colornews-featured-image";a:4:{s:4:"file";s:19:"slider6-715x300.jpg";s:5:"width";i:715;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(176, 31, '_cycloneslider_metas', 'a:6:{i:0;a:27:{s:2:"id";i:46;s:4:"type";s:5:"image";s:6:"hidden";i:0;s:4:"link";s:0:"";s:5:"title";s:0:"";s:11:"description";s:84:"People in the would, they need the entertainment to reduce the stress during a week.";s:11:"link_target";s:5:"_self";s:7:"img_alt";s:0:"";s:9:"img_title";s:0:"";s:20:"enable_slide_effects";i:0;s:2:"fx";s:7:"default";s:5:"speed";s:0:"";s:7:"timeout";s:0:"";s:10:"tile_count";s:1:"7";s:10:"tile_delay";s:3:"100";s:13:"tile_vertical";s:4:"true";s:11:"video_thumb";s:0:"";s:9:"video_url";s:0:"";s:5:"video";s:0:"";s:6:"custom";s:0:"";s:11:"youtube_url";s:0:"";s:15:"youtube_related";s:5:"false";s:9:"vimeo_url";s:0:"";s:11:"testimonial";s:0:"";s:18:"testimonial_author";s:0:"";s:16:"testimonial_link";s:0:"";s:23:"testimonial_link_target";s:5:"_self";}i:1;a:27:{s:2:"id";i:41;s:4:"type";s:5:"image";s:6:"hidden";i:0;s:4:"link";s:0:"";s:5:"title";s:0:"";s:11:"description";s:88:"The football sport, it is the most popular sport in the would like to play it everyday. ";s:11:"link_target";s:5:"_self";s:7:"img_alt";s:0:"";s:9:"img_title";s:0:"";s:20:"enable_slide_effects";i:0;s:2:"fx";s:7:"default";s:5:"speed";s:0:"";s:7:"timeout";s:0:"";s:10:"tile_count";s:1:"7";s:10:"tile_delay";s:3:"100";s:13:"tile_vertical";s:4:"true";s:11:"video_thumb";s:0:"";s:9:"video_url";s:0:"";s:5:"video";s:0:"";s:6:"custom";s:0:"";s:11:"youtube_url";s:0:"";s:15:"youtube_related";s:5:"false";s:9:"vimeo_url";s:0:"";s:11:"testimonial";s:0:"";s:18:"testimonial_author";s:0:"";s:16:"testimonial_link";s:0:"";s:23:"testimonial_link_target";s:5:"_self";}i:2;a:27:{s:2:"id";i:43;s:4:"type";s:5:"image";s:6:"hidden";i:0;s:4:"link";s:0:"";s:5:"title";s:0:"";s:11:"description";s:0:"";s:11:"link_target";s:5:"_self";s:7:"img_alt";s:0:"";s:9:"img_title";s:0:"";s:20:"enable_slide_effects";i:0;s:2:"fx";s:7:"default";s:5:"speed";s:0:"";s:7:"timeout";s:0:"";s:10:"tile_count";s:1:"7";s:10:"tile_delay";s:3:"100";s:13:"tile_vertical";s:4:"true";s:11:"video_thumb";s:0:"";s:9:"video_url";s:0:"";s:5:"video";s:0:"";s:6:"custom";s:0:"";s:11:"youtube_url";s:0:"";s:15:"youtube_related";s:5:"false";s:9:"vimeo_url";s:0:"";s:11:"testimonial";s:0:"";s:18:"testimonial_author";s:0:"";s:16:"testimonial_link";s:0:"";s:23:"testimonial_link_target";s:5:"_self";}i:3;a:27:{s:2:"id";i:42;s:4:"type";s:5:"image";s:6:"hidden";i:0;s:4:"link";s:0:"";s:5:"title";s:0:"";s:11:"description";s:0:"";s:11:"link_target";s:5:"_self";s:7:"img_alt";s:0:"";s:9:"img_title";s:0:"";s:20:"enable_slide_effects";i:0;s:2:"fx";s:7:"default";s:5:"speed";s:0:"";s:7:"timeout";s:0:"";s:10:"tile_count";s:1:"7";s:10:"tile_delay";s:3:"100";s:13:"tile_vertical";s:4:"true";s:11:"video_thumb";s:0:"";s:9:"video_url";s:0:"";s:5:"video";s:0:"";s:6:"custom";s:0:"";s:11:"youtube_url";s:0:"";s:15:"youtube_related";s:5:"false";s:9:"vimeo_url";s:0:"";s:11:"testimonial";s:0:"";s:18:"testimonial_author";s:0:"";s:16:"testimonial_link";s:0:"";s:23:"testimonial_link_target";s:5:"_self";}i:4;a:27:{s:2:"id";i:44;s:4:"type";s:5:"image";s:6:"hidden";i:0;s:4:"link";s:0:"";s:5:"title";s:0:"";s:11:"description";s:0:"";s:11:"link_target";s:5:"_self";s:7:"img_alt";s:0:"";s:9:"img_title";s:0:"";s:20:"enable_slide_effects";i:0;s:2:"fx";s:7:"default";s:5:"speed";s:0:"";s:7:"timeout";s:0:"";s:10:"tile_count";s:1:"7";s:10:"tile_delay";s:3:"100";s:13:"tile_vertical";s:4:"true";s:11:"video_thumb";s:0:"";s:9:"video_url";s:0:"";s:5:"video";s:0:"";s:6:"custom";s:0:"";s:11:"youtube_url";s:0:"";s:15:"youtube_related";s:5:"false";s:9:"vimeo_url";s:0:"";s:11:"testimonial";s:0:"";s:18:"testimonial_author";s:0:"";s:16:"testimonial_link";s:0:"";s:23:"testimonial_link_target";s:5:"_self";}i:5;a:27:{s:2:"id";i:45;s:4:"type";s:5:"image";s:6:"hidden";i:0;s:4:"link";s:0:"";s:5:"title";s:0:"";s:11:"description";s:0:"";s:11:"link_target";s:5:"_self";s:7:"img_alt";s:0:"";s:9:"img_title";s:0:"";s:20:"enable_slide_effects";i:0;s:2:"fx";s:7:"default";s:5:"speed";s:0:"";s:7:"timeout";s:0:"";s:10:"tile_count";s:1:"7";s:10:"tile_delay";s:3:"100";s:13:"tile_vertical";s:4:"true";s:11:"video_thumb";s:0:"";s:9:"video_url";s:0:"";s:5:"video";s:0:"";s:6:"custom";s:0:"";s:11:"youtube_url";s:0:"";s:15:"youtube_related";s:5:"false";s:9:"vimeo_url";s:0:"";s:11:"testimonial";s:0:"";s:18:"testimonial_author";s:0:"";s:16:"testimonial_link";s:0:"";s:23:"testimonial_link_target";s:5:"_self";}}'),
(177, 31, '_cycloneslider_settings', 'a:21:{s:8:"template";s:8:"standard";s:2:"fx";s:4:"fade";s:7:"timeout";i:4000;s:5:"speed";i:1000;s:5:"width";i:1100;s:6:"height";i:400;s:11:"hover_pause";s:4:"true";s:14:"show_prev_next";i:1;s:8:"show_nav";i:1;s:10:"tile_count";i:7;s:10:"tile_delay";i:100;s:13:"tile_vertical";s:4:"true";s:6:"random";i:0;s:6:"resize";i:1;s:16:"width_management";s:10:"responsive";s:6:"easing";s:0:"";s:13:"resize_option";s:4:"auto";s:10:"allow_wrap";s:4:"true";s:14:"dynamic_height";s:3:"off";s:5:"delay";i:0;s:5:"swipe";s:5:"false";}'),
(178, 55, '_menu_item_type', 'post_type'),
(179, 55, '_menu_item_menu_item_parent', '0'),
(180, 55, '_menu_item_object_id', '7'),
(181, 55, '_menu_item_object', 'page'),
(182, 55, '_menu_item_target', ''),
(183, 55, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(184, 55, '_menu_item_xfn', ''),
(185, 55, '_menu_item_url', ''),
(187, 56, '_edit_last', '1'),
(188, 56, 'colornews_page_layout', 'default_layout'),
(189, 56, '_wp_page_template', 'default'),
(190, 56, '_edit_lock', '1454661659:1'),
(191, 58, '_edit_last', '1'),
(192, 58, 'colornews_page_layout', 'default_layout'),
(193, 58, '_wp_page_template', 'default'),
(194, 58, '_edit_lock', '1454661690:1'),
(195, 60, '_menu_item_type', 'post_type'),
(196, 60, '_menu_item_menu_item_parent', '0'),
(197, 60, '_menu_item_object_id', '58'),
(198, 60, '_menu_item_object', 'page'),
(199, 60, '_menu_item_target', ''),
(200, 60, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(201, 60, '_menu_item_xfn', ''),
(202, 60, '_menu_item_url', ''),
(204, 61, '_menu_item_type', 'post_type'),
(205, 61, '_menu_item_menu_item_parent', '0'),
(206, 61, '_menu_item_object_id', '56'),
(207, 61, '_menu_item_object', 'page'),
(208, 61, '_menu_item_target', ''),
(209, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(210, 61, '_menu_item_xfn', ''),
(211, 61, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `tmkh_posts`
--

CREATE TABLE IF NOT EXISTS `tmkh_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=64 ;

--
-- Dumping data for table `tmkh_posts`
--

INSERT INTO `tmkh_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(5, 1, '2016-02-04 03:34:35', '2016-02-04 03:34:35', '', 's1', '', 'inherit', 'open', 'closed', '', 's1', '', '', '2016-02-04 03:34:35', '2016-02-04 03:34:35', '', 0, 'http://localhost:82/themorningkh.com/wp-content/uploads/2016/02/s1.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2016-02-04 03:34:40', '2016-02-04 03:34:40', '', 'cropped-s1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-s1-jpg', '', '', '2016-02-04 03:34:40', '2016-02-04 03:34:40', '', 0, 'http://localhost:82/themorningkh.com/wp-content/uploads/2016/02/cropped-s1.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2016-02-04 03:40:45', '2016-02-04 03:40:45', '', 'កីឡា', '', 'publish', 'closed', 'closed', '', 'spot-news', '', '', '2016-02-05 08:38:45', '2016-02-05 08:38:45', '', 0, 'http://localhost:82/themorningkh.com/?page_id=7', 0, 'page', '', 0),
(8, 1, '2016-02-04 03:40:45', '2016-02-04 03:40:45', '', 'Spot News', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-02-04 03:40:45', '2016-02-04 03:40:45', '', 7, 'http://localhost:82/themorningkh.com/2016/02/04/7-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2016-02-04 03:44:41', '2016-02-04 03:44:41', '', 'ពត៍មានកីឡាក្រៅស្រុក', '', 'publish', 'closed', 'closed', '', 'international', '', '', '2016-02-05 08:25:45', '2016-02-05 08:25:45', '', 7, 'http://localhost:82/themorningkh.com/?page_id=12', 0, 'page', '', 0),
(13, 1, '2016-02-04 03:44:41', '2016-02-04 03:44:41', '', 'International', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-02-04 03:44:41', '2016-02-04 03:44:41', '', 12, 'http://localhost:82/themorningkh.com/2016/02/04/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2016-02-04 03:45:04', '2016-02-04 03:45:04', '', 'ពត៍មានកីឡាក្នុងស្រុក', '', 'publish', 'closed', 'closed', '', 'local', '', '', '2016-02-05 08:24:53', '2016-02-05 08:24:53', '', 7, 'http://localhost:82/themorningkh.com/?page_id=14', 0, 'page', '', 0),
(15, 1, '2016-02-04 03:45:04', '2016-02-04 03:45:04', '', 'Local', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2016-02-04 03:45:04', '2016-02-04 03:45:04', '', 14, 'http://localhost:82/themorningkh.com/2016/02/04/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2016-02-04 03:45:50', '2016-02-04 03:45:50', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2016-02-05 08:44:11', '2016-02-05 08:44:11', '', 7, 'http://localhost:82/themorningkh.com/?p=16', 3, 'nav_menu_item', '', 0),
(17, 1, '2016-02-04 03:45:50', '2016-02-04 03:45:50', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2016-02-05 08:44:11', '2016-02-05 08:44:11', '', 7, 'http://localhost:82/themorningkh.com/?p=17', 4, 'nav_menu_item', '', 0),
(18, 1, '2016-02-04 03:46:23', '2016-02-04 03:46:23', '', 'គេហទំព័រ', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-02-05 08:44:11', '2016-02-05 08:44:11', '', 0, 'http://localhost:82/themorningkh.com/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2016-02-04 03:50:45', '2016-02-04 03:50:45', '', 'Sport News', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-02-04 03:50:45', '2016-02-04 03:50:45', '', 7, 'http://localhost:82/themorningkh.com/2016/02/04/7-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2016-02-04 03:51:43', '2016-02-04 03:51:43', '', 'ការកំសាន្ត', '', 'publish', 'closed', 'closed', '', 'entertainment', '', '', '2016-02-05 08:19:41', '2016-02-05 08:19:41', '', 0, 'http://localhost:82/themorningkh.com/?page_id=20', 0, 'page', '', 0),
(21, 1, '2016-02-04 03:51:43', '2016-02-04 03:51:43', '', 'Entertainment', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2016-02-04 03:51:43', '2016-02-04 03:51:43', '', 20, 'http://localhost:82/themorningkh.com/2016/02/04/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2016-02-04 03:51:54', '2016-02-04 03:51:54', '', 'សុខភាព', '', 'publish', 'closed', 'closed', '', 'health', '', '', '2016-02-05 08:20:05', '2016-02-05 08:20:05', '', 0, 'http://localhost:82/themorningkh.com/?page_id=22', 0, 'page', '', 0),
(23, 1, '2016-02-04 03:51:54', '2016-02-04 03:51:54', '', 'Health', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2016-02-04 03:51:54', '2016-02-04 03:51:54', '', 22, 'http://localhost:82/themorningkh.com/2016/02/04/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2016-02-04 03:52:28', '2016-02-04 03:52:28', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2016-02-05 08:44:12', '2016-02-05 08:44:12', '', 0, 'http://localhost:82/themorningkh.com/?p=24', 5, 'nav_menu_item', '', 0),
(25, 1, '2016-02-04 03:52:28', '2016-02-04 03:52:28', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2016-02-05 08:44:12', '2016-02-05 08:44:12', '', 0, 'http://localhost:82/themorningkh.com/?p=25', 6, 'nav_menu_item', '', 0),
(29, 1, '2016-02-04 07:02:55', '2016-02-04 07:02:55', '', 'news_logo', '', 'inherit', 'open', 'closed', '', 'news_logo', '', '', '2016-02-04 07:02:55', '2016-02-04 07:02:55', '', 0, 'http://localhost:82/themorningkh.com/wp-content/uploads/2016/02/news_logo.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2016-02-04 08:24:59', '2016-02-04 08:24:59', '', 'slideshow', '', 'publish', 'closed', 'closed', '', '31', '', '', '2016-02-04 10:19:17', '2016-02-04 10:19:17', '', 0, 'http://localhost:82/themorningkh.com/?post_type=cycloneslider&#038;p=31', 0, 'cycloneslider', '', 0),
(32, 1, '2016-02-04 08:24:23', '2016-02-04 08:24:23', '', 'p6', '', 'inherit', 'open', 'closed', '', 'p6', '', '', '2016-02-04 08:24:23', '2016-02-04 08:24:23', '', 0, 'http://localhost:82/themorningkh.com/wp-content/uploads/2016/02/p6.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2016-02-04 08:24:25', '2016-02-04 08:24:25', '', 'p7', '', 'inherit', 'open', 'closed', '', 'p7', '', '', '2016-02-04 08:24:25', '2016-02-04 08:24:25', '', 0, 'http://localhost:82/themorningkh.com/wp-content/uploads/2016/02/p7.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2016-02-04 08:24:27', '2016-02-04 08:24:27', '', 's1', '', 'inherit', 'open', 'closed', '', 's1-2', '', '', '2016-02-04 08:24:27', '2016-02-04 08:24:27', '', 0, 'http://localhost:82/themorningkh.com/wp-content/uploads/2016/02/s1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2016-02-04 09:16:21', '2016-02-04 09:16:21', 'Hello Would!.....................', 'Hello Would!', '', 'publish', 'open', 'open', '', 'hello-would', '', '', '2016-02-04 09:16:21', '2016-02-04 09:16:21', '', 0, 'http://localhost:82/themorningkh.com/?p=37', 0, 'post', '', 0),
(38, 1, '2016-02-04 09:16:21', '2016-02-04 09:16:21', 'Hello Would!.....................', 'Hello Would!', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2016-02-04 09:16:21', '2016-02-04 09:16:21', '', 37, 'http://localhost:82/themorningkh.com/2016/02/04/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2016-02-04 09:35:30', '2016-02-04 09:35:30', 'Hello Site..................', 'Hello Site', '', 'publish', 'open', 'open', '', 'hello-site', '', '', '2016-02-04 09:35:30', '2016-02-04 09:35:30', '', 0, 'http://localhost:82/themorningkh.com/?p=39', 0, 'post', '', 0),
(40, 1, '2016-02-04 09:35:30', '2016-02-04 09:35:30', 'Hello Site..................', 'Hello Site', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2016-02-04 09:35:30', '2016-02-04 09:35:30', '', 39, 'http://localhost:82/themorningkh.com/2016/02/04/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2016-02-04 09:59:41', '2016-02-04 09:59:41', '', 'slider1', '', 'inherit', 'open', 'closed', '', 'slider1', '', '', '2016-02-04 09:59:41', '2016-02-04 09:59:41', '', 0, 'http://localhost:82/themorningkh.com/wp-content/uploads/2016/02/slider1.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2016-02-04 09:59:42', '2016-02-04 09:59:42', '', 'slider2', '', 'inherit', 'open', 'closed', '', 'slider2', '', '', '2016-02-04 09:59:42', '2016-02-04 09:59:42', '', 0, 'http://localhost:82/themorningkh.com/wp-content/uploads/2016/02/slider2.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2016-02-04 09:59:44', '2016-02-04 09:59:44', '', 'slider3', '', 'inherit', 'open', 'closed', '', 'slider3', '', '', '2016-02-04 09:59:44', '2016-02-04 09:59:44', '', 0, 'http://localhost:82/themorningkh.com/wp-content/uploads/2016/02/slider3.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2016-02-04 09:59:45', '2016-02-04 09:59:45', '', 'slider4', '', 'inherit', 'open', 'closed', '', 'slider4', '', '', '2016-02-04 09:59:45', '2016-02-04 09:59:45', '', 0, 'http://localhost:82/themorningkh.com/wp-content/uploads/2016/02/slider4.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2016-02-04 09:59:46', '2016-02-04 09:59:46', '', 'slider5', '', 'inherit', 'open', 'closed', '', 'slider5', '', '', '2016-02-04 09:59:46', '2016-02-04 09:59:46', '', 0, 'http://localhost:82/themorningkh.com/wp-content/uploads/2016/02/slider5.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2016-02-04 09:59:47', '2016-02-04 09:59:47', '', 'slider6', '', 'inherit', 'open', 'closed', '', 'slider6', '', '', '2016-02-04 09:59:47', '2016-02-04 09:59:47', '', 0, 'http://localhost:82/themorningkh.com/wp-content/uploads/2016/02/slider6.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2016-02-05 08:18:45', '2016-02-05 08:18:45', '', 'កីឡា', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-02-05 08:18:45', '2016-02-05 08:18:45', '', 7, 'http://localhost:82/themorningkh.com/2016/02/05/7-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2016-02-05 08:19:41', '2016-02-05 08:19:41', '', 'ការកំសាន្ត', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2016-02-05 08:19:41', '2016-02-05 08:19:41', '', 20, 'http://localhost:82/themorningkh.com/2016/02/05/20-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2016-02-05 08:20:05', '2016-02-05 08:20:05', '', 'សុខភាព', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2016-02-05 08:20:05', '2016-02-05 08:20:05', '', 22, 'http://localhost:82/themorningkh.com/2016/02/05/22-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2016-02-05 08:23:52', '2016-02-05 08:23:52', '', 'ពត', '', 'inherit', 'closed', 'closed', '', '14-autosave-v1', '', '', '2016-02-05 08:23:52', '2016-02-05 08:23:52', '', 14, 'http://localhost:82/themorningkh.com/2016/02/05/14-autosave-v1/', 0, 'revision', '', 0),
(51, 1, '2016-02-05 08:24:53', '2016-02-05 08:24:53', '', 'ពត៍មានកីឡាក្នុងស្រុក', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2016-02-05 08:24:53', '2016-02-05 08:24:53', '', 14, 'http://localhost:82/themorningkh.com/2016/02/05/14-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2016-02-05 08:25:45', '2016-02-05 08:25:45', '', 'ពត៍មានកីឡាក្រៅស្រុក', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-02-05 08:25:45', '2016-02-05 08:25:45', '', 12, 'http://localhost:82/themorningkh.com/2016/02/05/12-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2016-02-05 08:28:40', '2016-02-05 08:28:40', '', 'ថសដថកថ្សកថ្ថក', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-02-05 08:28:40', '2016-02-05 08:28:40', '', 7, 'http://localhost:82/themorningkh.com/2016/02/05/7-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2016-02-05 08:37:43', '2016-02-05 08:37:43', '', 'កីឡា', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2016-02-05 08:37:43', '2016-02-05 08:37:43', '', 7, 'http://localhost:82/themorningkh.com/2016/02/05/7-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2016-02-05 08:40:39', '2016-02-05 08:40:39', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2016-02-05 08:44:11', '2016-02-05 08:44:11', '', 0, 'http://localhost:82/themorningkh.com/?p=55', 2, 'nav_menu_item', '', 0),
(56, 1, '2016-02-05 08:43:19', '2016-02-05 08:43:19', '', 'អំពីយើង', '', 'publish', 'closed', 'closed', '', '%e1%9e%a2%e1%9f%86%e1%9e%96%e1%9e%b8%e1%9e%99%e1%9e%be%e1%9e%84', '', '', '2016-02-05 08:43:19', '2016-02-05 08:43:19', '', 0, 'http://localhost:82/themorningkh.com/?page_id=56', 0, 'page', '', 0),
(57, 1, '2016-02-05 08:43:19', '2016-02-05 08:43:19', '', 'អំពីយើង', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2016-02-05 08:43:19', '2016-02-05 08:43:19', '', 56, 'http://localhost:82/themorningkh.com/2016/02/05/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2016-02-05 08:43:43', '2016-02-05 08:43:43', '', 'ទំនាក់ទំនង', '', 'publish', 'closed', 'closed', '', '%e1%9e%91%e1%9f%86%e1%9e%93%e1%9e%b6%e1%9e%80%e1%9f%8b%e1%9e%91%e1%9f%86%e1%9e%93%e1%9e%84', '', '', '2016-02-05 08:43:43', '2016-02-05 08:43:43', '', 0, 'http://localhost:82/themorningkh.com/?page_id=58', 0, 'page', '', 0),
(59, 1, '2016-02-05 08:43:43', '2016-02-05 08:43:43', '', 'ទំនាក់ទំនង', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2016-02-05 08:43:43', '2016-02-05 08:43:43', '', 58, 'http://localhost:82/themorningkh.com/2016/02/05/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2016-02-05 08:44:12', '2016-02-05 08:44:12', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2016-02-05 08:44:12', '2016-02-05 08:44:12', '', 0, 'http://localhost:82/themorningkh.com/?p=60', 8, 'nav_menu_item', '', 0),
(61, 1, '2016-02-05 08:44:12', '2016-02-05 08:44:12', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2016-02-05 08:44:12', '2016-02-05 08:44:12', '', 0, 'http://localhost:82/themorningkh.com/?p=61', 7, 'nav_menu_item', '', 0),
(62, 1, '2016-03-10 08:16:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-03-10 08:16:46', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/themorningkh.com/?p=62', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tmkh_term_relationships`
--

CREATE TABLE IF NOT EXISTS `tmkh_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tmkh_term_relationships`
--

INSERT INTO `tmkh_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(24, 2, 0),
(25, 2, 0),
(37, 1, 0),
(39, 1, 0),
(55, 2, 0),
(60, 2, 0),
(61, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tmkh_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `tmkh_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tmkh_term_taxonomy`
--

INSERT INTO `tmkh_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tmkh_termmeta`
--

CREATE TABLE IF NOT EXISTS `tmkh_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tmkh_terms`
--

CREATE TABLE IF NOT EXISTS `tmkh_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tmkh_terms`
--

INSERT INTO `tmkh_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tmkh_usermeta`
--

CREATE TABLE IF NOT EXISTS `tmkh_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=27 ;

--
-- Dumping data for table `tmkh_usermeta`
--

INSERT INTO `tmkh_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'tmkh_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'tmkh_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'tmkh_dashboard_quick_press_last_post_id', '62'),
(16, 1, 'wporg_favorites', ''),
(17, 1, 'tmkh_user-settings', 'libraryContent=browse'),
(18, 1, 'tmkh_user-settings-time', '1454557209'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(26, 1, 'session_tokens', 'a:1:{s:64:"c397deeaf025b24080cd276532eca0795dd203b1d6f8065758d55dd7c24cbb22";a:4:{s:10:"expiration";i:1457770605;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.109 Safari/537.36";s:5:"login";i:1457597805;}}');

-- --------------------------------------------------------

--
-- Table structure for table `tmkh_users`
--

CREATE TABLE IF NOT EXISTS `tmkh_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tmkh_users`
--

INSERT INTO `tmkh_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Admin', '$P$B.thmd7APjIC68C/JAG5v8nQniLX770', 'admin', 'chanthy.chv@gmail.com', '', '2016-02-04 03:24:32', '', 0, 'Admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
