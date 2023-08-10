-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 23/07/2023 às 13:48
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `casar-na-ilha`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://br.wordpress.org/', '', '2023-06-09 15:31:33', '2023-06-09 18:31:33', 'Oi, isto é um comentário.\nPara iniciar a moderar, editar e excluir comentários, visite a tela Comentários no painel.\nOs avatares dos comentaristas vêm do <a href=\"https://br.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/casar_na_ilha', 'yes'),
(2, 'home', 'http://localhost/casar_na_ilha', 'yes'),
(3, 'blogname', 'Casar na Ilha', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'gabrielrrtolkien@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:114:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:45:\"tipo/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?tipo=$matches[1]&feed=$matches[2]\";s:40:\"tipo/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?tipo=$matches[1]&feed=$matches[2]\";s:21:\"tipo/([^/]+)/embed/?$\";s:37:\"index.php?tipo=$matches[1]&embed=true\";s:33:\"tipo/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?tipo=$matches[1]&paged=$matches[2]\";s:15:\"tipo/([^/]+)/?$\";s:26:\"index.php?tipo=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:38:\"fornecedor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"fornecedor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"fornecedor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"fornecedor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"fornecedor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"fornecedor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"fornecedor/([^/]+)/embed/?$\";s:43:\"index.php?fornecedor=$matches[1]&embed=true\";s:31:\"fornecedor/([^/]+)/trackback/?$\";s:37:\"index.php?fornecedor=$matches[1]&tb=1\";s:39:\"fornecedor/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?fornecedor=$matches[1]&paged=$matches[2]\";s:46:\"fornecedor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?fornecedor=$matches[1]&cpage=$matches[2]\";s:35:\"fornecedor/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?fornecedor=$matches[1]&page=$matches[2]\";s:27:\"fornecedor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"fornecedor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"fornecedor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"fornecedor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"fornecedor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"fornecedor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=16&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'casar_na_ilha', 'yes'),
(41, 'stylesheet', 'casar_na_ilha', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '16', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1701887492', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'pt_BR', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:156:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Posts recentes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:224:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Arquivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorias</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:10:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"topoesquerda\";a:0:{}s:7:\"sidebar\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:11:\"topodireita\";a:0:{}s:7:\"footer1\";a:0:{}s:7:\"footer2\";a:0:{}s:7:\"footer3\";a:0:{}s:7:\"footer4\";a:1:{i:0;s:17:\"recent-comments-2\";}s:6:\"search\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:5:{i:1690039893;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1690050693;a:6:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1690050706;a:3:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1690050707;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'yes'),
(123, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1686335761;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(124, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:25:\"Verificação SSL falhou.\";}}', 'yes'),
(148, 'can_compress_scripts', '1', 'no'),
(157, 'finished_updating_comment_type', '1', 'yes'),
(158, 'current_theme', 'Casar na Ilha theme', 'yes'),
(159, 'theme_mods_casar_na_ilha', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(160, 'theme_switched', '', 'yes'),
(161, 'recently_activated', 'a:0:{}', 'yes'),
(162, 'acf_version', '5.9.5', 'yes'),
(195, 'category_children', 'a:0:{}', 'yes'),
(208, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":6,\"critical\":1}', 'yes'),
(255, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(409, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(645, '_site_transient_timeout_php_check_f9b25a35946393ab2b3328e72e3e778a', '1690117260', 'no'),
(646, '_site_transient_php_check_f9b25a35946393ab2b3328e72e3e778a', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(710, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.2.2.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.2.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1690031020;s:15:\"version_checked\";s:5:\"6.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(711, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1690031022;s:7:\"checked\";a:1:{s:13:\"casar_na_ilha\";s:5:\"0.0.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(712, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1690031074;s:8:\"response\";a:9:{s:56:\"advanced-custom-fields-font-awesome/acf-font-awesome.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:49:\"w.org/plugins/advanced-custom-fields-font-awesome\";s:4:\"slug\";s:35:\"advanced-custom-fields-font-awesome\";s:6:\"plugin\";s:56:\"advanced-custom-fields-font-awesome/acf-font-awesome.php\";s:11:\"new_version\";s:5:\"4.0.5\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/advanced-custom-fields-font-awesome/\";s:7:\"package\";s:84:\"https://downloads.wordpress.org/plugin/advanced-custom-fields-font-awesome.4.0.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:88:\"https://ps.w.org/advanced-custom-fields-font-awesome/assets/icon-256x256.jpg?rev=1016227\";s:2:\"1x\";s:88:\"https://ps.w.org/advanced-custom-fields-font-awesome/assets/icon-128x128.jpg?rev=1016227\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:89:\"https://ps.w.org/advanced-custom-fields-font-awesome/assets/banner-772x250.jpg?rev=859936\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";b:0;s:14:\"upgrade_notice\";s:234:\"<ul>\n<li>Fixed compatibility issue with ACF 6.1+ causing this plugins settings page to break</li>\n<li>Fixed bug with logic for theme &#039;bundling&#039; of this plugin that caused issues loading assets in some environments</li>\n</ul>\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:6:\"5.6.20\";}s:29:\"antispam-bee/antispam_bee.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:26:\"w.org/plugins/antispam-bee\";s:4:\"slug\";s:12:\"antispam-bee\";s:6:\"plugin\";s:29:\"antispam-bee/antispam_bee.php\";s:11:\"new_version\";s:6:\"2.11.3\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/antispam-bee/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/antispam-bee.2.11.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/antispam-bee/assets/icon-256x256.png?rev=2898402\";s:2:\"1x\";s:65:\"https://ps.w.org/antispam-bee/assets/icon-128x128.png?rev=2898402\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/antispam-bee/assets/banner-1544x500.png?rev=2898402\";s:2:\"1x\";s:67:\"https://ps.w.org/antispam-bee/assets/banner-772x250.png?rev=2898402\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.5\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:3:\"5.2\";s:14:\"upgrade_notice\";s:166:\"<p>The multiselect field for &quot;Delete comments by spam reasons&quot; did not store any values in the last version - please check the setting after the update!</p>\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.7.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.7.7.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";b:0;}s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:32:\"w.org/plugins/contact-form-cfdb7\";s:4:\"slug\";s:18:\"contact-form-cfdb7\";s:6:\"plugin\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:11:\"new_version\";s:7:\"1.2.6.6\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/contact-form-cfdb7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-cfdb7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-256x256.png?rev=1619878\";s:2:\"1x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-128x128.png?rev=1619878\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/contact-form-cfdb7/assets/banner-772x250.png?rev=1619902\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.8\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:3:\"5.6\";}s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:31:\"w.org/plugins/really-simple-ssl\";s:4:\"slug\";s:17:\"really-simple-ssl\";s:6:\"plugin\";s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";s:11:\"new_version\";s:5:\"7.0.6\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/really-simple-ssl/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/really-simple-ssl.7.0.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/really-simple-ssl/assets/icon-256x256.png?rev=2839720\";s:2:\"1x\";s:70:\"https://ps.w.org/really-simple-ssl/assets/icon-128x128.png?rev=2839720\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/really-simple-ssl/assets/banner-1544x500.png?rev=2810049\";s:2:\"1x\";s:72:\"https://ps.w.org/really-simple-ssl/assets/banner-772x250.png?rev=2810049\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:3:\"7.2\";}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"3.8.2\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.3.8.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.jpg?rev=2811094\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.jpg?rev=2811094\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:3:\"7.2\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:5:\"20.11\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/wordpress-seo.20.11.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"6.1\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:5:\"7.2.5\";}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.1.7\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.2.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:5:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"contact-form-7\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.6.3\";s:7:\"updated\";s:19:\"2022-10-03 20:24:44\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/contact-form-7/5.6.3/pt_BR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"1.7.2\";s:7:\"updated\";s:19:\"2019-08-13 18:09:11\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/pt_BR.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:17:\"really-simple-ssl\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.3.5\";s:7:\"updated\";s:19:\"2022-03-21 15:50:20\";s:7:\"package\";s:84:\"https://downloads.wordpress.org/translation/plugin/really-simple-ssl/5.3.5/pt_BR.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"3.6.1\";s:7:\"updated\";s:19:\"2022-02-07 21:24:57\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/wp-mail-smtp/3.6.1/pt_BR.zip\";s:10:\"autoupdate\";b:1;}i:4;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:13:\"wordpress-seo\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:6:\"19.7.2\";s:7:\"updated\";s:19:\"2022-09-20 08:29:35\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/wordpress-seo/19.7.2/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:2:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:35:\"wp-featherlight/wp-featherlight.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/wp-featherlight\";s:4:\"slug\";s:15:\"wp-featherlight\";s:6:\"plugin\";s:35:\"wp-featherlight/wp-featherlight.php\";s:11:\"new_version\";s:5:\"1.3.4\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/wp-featherlight/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/wp-featherlight.1.3.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-featherlight/assets/icon-256x256.png?rev=1930247\";s:2:\"1x\";s:68:\"https://ps.w.org/wp-featherlight/assets/icon-256x256.png?rev=1930247\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/wp-featherlight/assets/banner-1544x500.jpg?rev=1930249\";s:2:\"1x\";s:70:\"https://ps.w.org/wp-featherlight/assets/banner-772x250.png?rev=1930248\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}}s:7:\"checked\";a:11:{s:56:\"advanced-custom-fields-font-awesome/acf-font-awesome.php\";s:5:\"4.0.3\";s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.5\";s:19:\"akismet/akismet.php\";s:3:\"5.1\";s:29:\"antispam-bee/antispam_bee.php\";s:6:\"2.11.1\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.6.3\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:7:\"1.2.6.4\";s:9:\"hello.php\";s:5:\"1.7.2\";s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";s:5:\"5.3.5\";s:35:\"wp-featherlight/wp-featherlight.php\";s:5:\"1.3.4\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"3.6.1\";s:24:\"wordpress-seo/wp-seo.php\";s:6:\"19.7.2\";}}', 'no'),
(714, '_site_transient_timeout_available_translations', '1690041812', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(715, '_site_transient_available_translations', 'a:131:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.0.5/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-18 08:25:23\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.22/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-17 14:44:15\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.23/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-23 11:21:55\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-15 14:46:58\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:28:\"চালিয়ে যান\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-19 09:32:17\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 09:37:21\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-10 08:48:02\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-14 12:12:09\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-28 07:37:41\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 12:57:54\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 14:37:33\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.2.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-28 07:33:50\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/6.2.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-29 21:14:35\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-22 15:41:41\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-07 21:00:17\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-11 07:12:43\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-04 17:36:42\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2021-12-24 12:36:39\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2022-04-01 22:35:34\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-17 04:31:21\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-14 22:16:37\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-20 17:07:49\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-12 14:36:10\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 14:08:08\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.7/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.7/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-14 16:02:22\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.13/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.18\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.18/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-19 05:08:30\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-08-12 08:38:59\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-24 16:21:45\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-02 10:08:01\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-30 23:46:23\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-17 05:20:27\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-30 14:40:46\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-25 15:00:05\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2023-04-30 13:56:46\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.22/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-12-25 12:53:23\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-21 12:21:18\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2023-07-03 04:50:49\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.23/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ચાલુ રાખો\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.30\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.30/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-28 22:06:16\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-11-06 12:34:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.13/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-28 10:18:51\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-18 09:11:00\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-07 13:57:04\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.23/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-17 21:01:33\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-07 19:56:16\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.23/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2023-05-19 07:40:56\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-05 11:40:39\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.23/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.18\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.18/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.1.3\";s:7:\"updated\";s:19:\"2022-10-20 17:15:28\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.3/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-30 08:24:13\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-15 01:34:39\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:3:\"kir\";a:8:{s:8:\"language\";s:3:\"kir\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-11 18:16:48\";s:12:\"english_name\";s:6:\"Kyrgyz\";s:11:\"native_name\";s:16:\"Кыргызча\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/kir.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ky\";i:2;s:3:\"kir\";i:3;s:3:\"kir\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Улантуу\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.1.3\";s:7:\"updated\";s:19:\"2022-11-24 03:51:58\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.3/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-25 02:26:43\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-21 13:23:01\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.23/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.12\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.12/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.35\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.35/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-16 21:46:57\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-16 03:30:29\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-08 07:12:34\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-18 17:21:22\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 21:20:14\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.2.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.22/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-21 05:50:44\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.31\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.31/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-10-01 12:16:29\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-01 16:49:15\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-21 11:29:08\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-30 23:24:56\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.2.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-22 04:48:25\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-03 12:16:31\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.13/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-23 12:06:50\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-03 08:30:58\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-17 12:03:21\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-10 11:33:13\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2021-08-01 21:21:06\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.7/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-11 17:06:50\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:6:\"5.3.15\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.15/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.35\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.35/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.7/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.22/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 10:14:53\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2021-07-03 18:41:33\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.23/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.1.3\";s:7:\"updated\";s:19:\"2023-03-04 10:46:30\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.3/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.13/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-15 15:30:50\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-16 19:47:32\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-24 10:05:05\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(716, '_transient_timeout_acf_plugin_updates', '1690203821', 'no'),
(717, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.1.7\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.2.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.5\";}}', 'no'),
(718, '_site_transient_timeout_theme_roots', '1690032821', 'no'),
(719, '_site_transient_theme_roots', 'a:1:{s:13:\"casar_na_ilha\";s:7:\"/themes\";}', 'no'),
(720, 'tipo_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1686335669:1'),
(4, 7, '_edit_last', '1'),
(5, 7, '_edit_lock', '1689636447:1'),
(6, 16, '_edit_lock', '1689789684:1'),
(7, 16, '_wp_page_template', 'template-elements.php'),
(8, 16, '_edit_last', '1'),
(9, 16, 'slider', '2'),
(10, 16, '_slider', 'field_64837346d0df7'),
(11, 17, 'slider', ''),
(12, 17, '_slider', 'field_64837346d0df7'),
(13, 18, '_wp_attached_file', '2023/06/casamento.jpg'),
(14, 18, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1300;s:6:\"height\";i:858;s:4:\"file\";s:21:\"2023/06/casamento.jpg\";s:8:\"filesize\";i:141359;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"casamento-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11782;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"casamento-1024x676.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:676;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:88301;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"casamento-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6016;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"casamento-768x507.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:507;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:55619;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 19, '_wp_attached_file', '2023/06/casamento-scaled.jpeg'),
(16, 19, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1882;s:4:\"file\";s:29:\"2023/06/casamento-scaled.jpeg\";s:8:\"filesize\";i:695935;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"casamento-300x221.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18249;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"casamento-1024x753.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:753;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:145942;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"casamento-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7410;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"casamento-768x565.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:565;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:89173;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:24:\"casamento-1536x1129.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1129;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:289831;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:24:\"casamento-2048x1506.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1506;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:473148;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:14:\"casamento.jpeg\";}'),
(17, 16, 'slider_0_image_desktop_image', '18'),
(18, 16, '_slider_0_image_desktop_image', 'field_6483747605140'),
(19, 16, 'slider_0_image_mobile_image', ''),
(20, 16, '_slider_0_image_mobile_image', 'field_648374e805142'),
(21, 16, 'slider_0_image', ''),
(22, 16, '_slider_0_image', 'field_648374c705141'),
(23, 16, 'slider_0_description', 'A <strong>Eternal Love Cerimônias</strong> é uma empresa especializada em criar cerimônias matrimoniais únicas e emocionantes. Com uma equipe experiente e dedicada, oferecemos serviços personalizados para tornar o seu casamento uma experiência inesquecível. Celebre o amor com a Eternal Love Cerimônias.'),
(24, 16, '_slider_0_description', 'field_6483751005143'),
(25, 16, 'slider_0_button_text', 'Saiba mais'),
(26, 16, '_slider_0_button_text', 'field_6483755605145'),
(27, 16, 'slider_0_button_link', 'https://google.com/'),
(28, 16, '_slider_0_button_link', 'field_6483756605146'),
(29, 16, 'slider_0_button', ''),
(30, 16, '_slider_0_button', 'field_6483753605144'),
(31, 16, 'slider_1_image_desktop_image', '19'),
(32, 16, '_slider_1_image_desktop_image', 'field_6483747605140'),
(33, 16, 'slider_1_image_mobile_image', ''),
(34, 16, '_slider_1_image_mobile_image', 'field_648374e805142'),
(35, 16, 'slider_1_image', ''),
(36, 16, '_slider_1_image', 'field_648374c705141'),
(37, 16, 'slider_1_description', 'A <strong>Blissful Vows Wedding Planners</strong> é uma renomada empresa de planejamento de casamentos, comprometida em transformar sonhos em realidade. Nossa equipe altamente qualificada oferece serviços abrangentes, desde a concepção até a execução impecável do seu dia especial. Confie em nós para criar uma experiência perfeita e memorável.'),
(38, 16, '_slider_1_description', 'field_6483751005143'),
(39, 16, 'slider_1_button_text', 'Saiba mais'),
(40, 16, '_slider_1_button_text', 'field_6483755605145'),
(41, 16, 'slider_1_button_link', 'https://www.google.com.br'),
(42, 16, '_slider_1_button_link', 'field_6483756605146'),
(43, 16, 'slider_1_button', ''),
(44, 16, '_slider_1_button', 'field_6483753605144'),
(45, 20, 'slider', '2'),
(46, 20, '_slider', 'field_64837346d0df7'),
(47, 20, 'slider_0_image_desktop_image', '18'),
(48, 20, '_slider_0_image_desktop_image', 'field_6483747605140'),
(49, 20, 'slider_0_image_mobile_image', ''),
(50, 20, '_slider_0_image_mobile_image', 'field_648374e805142'),
(51, 20, 'slider_0_image', ''),
(52, 20, '_slider_0_image', 'field_648374c705141'),
(53, 20, 'slider_0_description', 'A <strong>Eternal Love Cerimônias</strong> é uma empresa especializada em criar cerimônias matrimoniais únicas e emocionantes. Com uma equipe experiente e dedicada, oferecemos serviços personalizados para tornar o seu casamento uma experiência inesquecível. Celebre o amor com a Eternal Love Cerimônias.'),
(54, 20, '_slider_0_description', 'field_6483751005143'),
(55, 20, 'slider_0_button_text', 'Saiba mais'),
(56, 20, '_slider_0_button_text', 'field_6483755605145'),
(57, 20, 'slider_0_button_link', 'https://google.com/'),
(58, 20, '_slider_0_button_link', 'field_6483756605146'),
(59, 20, 'slider_0_button', ''),
(60, 20, '_slider_0_button', 'field_6483753605144'),
(61, 20, 'slider_1_image_desktop_image', '19'),
(62, 20, '_slider_1_image_desktop_image', 'field_6483747605140'),
(63, 20, 'slider_1_image_mobile_image', ''),
(64, 20, '_slider_1_image_mobile_image', 'field_648374e805142'),
(65, 20, 'slider_1_image', ''),
(66, 20, '_slider_1_image', 'field_648374c705141'),
(67, 20, 'slider_1_description', 'A <strong>Blissful Vows Wedding Planners</strong> é uma renomada empresa de planejamento de casamentos, comprometida em transformar sonhos em realidade. Nossa equipe altamente qualificada oferece serviços abrangentes, desde a concepção até a execução impecável do seu dia especial. Confie em nós para criar uma experiência perfeita e memorável.'),
(68, 20, '_slider_1_description', 'field_6483751005143'),
(69, 20, 'slider_1_button_text', 'Saiba mais'),
(70, 20, '_slider_1_button_text', 'field_6483755605145'),
(71, 20, 'slider_1_button_link', 'https://www.google.com.br'),
(72, 20, '_slider_1_button_link', 'field_6483756605146'),
(73, 20, 'slider_1_button', ''),
(74, 20, '_slider_1_button', 'field_6483753605144'),
(75, 16, 'elements_0_slider_0_image_desktop_image', '19'),
(76, 16, '_elements_0_slider_0_image_desktop_image', 'field_6483747605140'),
(77, 16, 'elements_0_slider_0_image_mobile_image', ''),
(78, 16, '_elements_0_slider_0_image_mobile_image', 'field_648374e805142'),
(79, 16, 'elements_0_slider_0_image', ''),
(80, 16, '_elements_0_slider_0_image', 'field_648374c705141'),
(81, 16, 'elements_0_slider_0_description', 'A <strong>Eternal Love Cerimônias</strong> é uma empresa especializada em criar cerimônias matrimoniais únicas e emocionantes. Com uma equipe experiente e dedicada, oferecemos serviços personalizados para tornar o seu casamento uma experiência inesquecível. Celebre o amor com a Eternal Love Cerimônias.\"'),
(82, 16, '_elements_0_slider_0_description', 'field_6483751005143'),
(83, 16, 'elements_0_slider_0_button_text', 'Saiba mais'),
(84, 16, '_elements_0_slider_0_button_text', 'field_6483755605145'),
(85, 16, 'elements_0_slider_0_button_link', 'https://www.google.com'),
(86, 16, '_elements_0_slider_0_button_link', 'field_6483756605146'),
(87, 16, 'elements_0_slider_0_button', ''),
(88, 16, '_elements_0_slider_0_button', 'field_6483753605144'),
(89, 16, 'elements_0_slider_1_image_desktop_image', '18'),
(90, 16, '_elements_0_slider_1_image_desktop_image', 'field_6483747605140'),
(91, 16, 'elements_0_slider_1_image_mobile_image', ''),
(92, 16, '_elements_0_slider_1_image_mobile_image', 'field_648374e805142'),
(93, 16, 'elements_0_slider_1_image', ''),
(94, 16, '_elements_0_slider_1_image', 'field_648374c705141'),
(95, 16, 'elements_0_slider_1_description', 'A <strong>Blissful Vows Wedding Planners</strong> é uma renomada empresa de planejamento de casamentos, comprometida em transformar sonhos em realidade. Nossa equipe altamente qualificada oferece serviços abrangentes, desde a concepção até a execução impecável do seu dia especial. Confie em nós para criar uma experiência perfeita e memorável.'),
(96, 16, '_elements_0_slider_1_description', 'field_6483751005143'),
(97, 16, 'elements_0_slider_1_button_text', 'Saiba mais'),
(98, 16, '_elements_0_slider_1_button_text', 'field_6483755605145'),
(99, 16, 'elements_0_slider_1_button_link', 'https://www.google.com'),
(100, 16, '_elements_0_slider_1_button_link', 'field_6483756605146'),
(101, 16, 'elements_0_slider_1_button', ''),
(102, 16, '_elements_0_slider_1_button', 'field_6483753605144'),
(103, 16, 'elements_0_slider', '2'),
(104, 16, '_elements_0_slider', 'field_64837346d0df7'),
(105, 16, 'elements', 'a:4:{i:0;s:11:\"main-slider\";i:1;s:10:\"highlights\";i:2;s:10:\"blog-posts\";i:3;s:10:\"categories\";}'),
(106, 16, '_elements', 'field_6484862b945d6'),
(107, 22, 'slider', '2'),
(108, 22, '_slider', 'field_64837346d0df7'),
(109, 22, 'slider_0_image_desktop_image', '18'),
(110, 22, '_slider_0_image_desktop_image', 'field_6483747605140'),
(111, 22, 'slider_0_image_mobile_image', ''),
(112, 22, '_slider_0_image_mobile_image', 'field_648374e805142'),
(113, 22, 'slider_0_image', ''),
(114, 22, '_slider_0_image', 'field_648374c705141'),
(115, 22, 'slider_0_description', 'A <strong>Eternal Love Cerimônias</strong> é uma empresa especializada em criar cerimônias matrimoniais únicas e emocionantes. Com uma equipe experiente e dedicada, oferecemos serviços personalizados para tornar o seu casamento uma experiência inesquecível. Celebre o amor com a Eternal Love Cerimônias.'),
(116, 22, '_slider_0_description', 'field_6483751005143'),
(117, 22, 'slider_0_button_text', 'Saiba mais'),
(118, 22, '_slider_0_button_text', 'field_6483755605145'),
(119, 22, 'slider_0_button_link', 'https://google.com/'),
(120, 22, '_slider_0_button_link', 'field_6483756605146'),
(121, 22, 'slider_0_button', ''),
(122, 22, '_slider_0_button', 'field_6483753605144'),
(123, 22, 'slider_1_image_desktop_image', '19'),
(124, 22, '_slider_1_image_desktop_image', 'field_6483747605140'),
(125, 22, 'slider_1_image_mobile_image', ''),
(126, 22, '_slider_1_image_mobile_image', 'field_648374e805142'),
(127, 22, 'slider_1_image', ''),
(128, 22, '_slider_1_image', 'field_648374c705141'),
(129, 22, 'slider_1_description', 'A <strong>Blissful Vows Wedding Planners</strong> é uma renomada empresa de planejamento de casamentos, comprometida em transformar sonhos em realidade. Nossa equipe altamente qualificada oferece serviços abrangentes, desde a concepção até a execução impecável do seu dia especial. Confie em nós para criar uma experiência perfeita e memorável.'),
(130, 22, '_slider_1_description', 'field_6483751005143'),
(131, 22, 'slider_1_button_text', 'Saiba mais'),
(132, 22, '_slider_1_button_text', 'field_6483755605145'),
(133, 22, 'slider_1_button_link', 'https://www.google.com.br'),
(134, 22, '_slider_1_button_link', 'field_6483756605146'),
(135, 22, 'slider_1_button', ''),
(136, 22, '_slider_1_button', 'field_6483753605144'),
(137, 22, 'elements_0_slider_0_image_desktop_image', '19'),
(138, 22, '_elements_0_slider_0_image_desktop_image', 'field_6483747605140'),
(139, 22, 'elements_0_slider_0_image_mobile_image', ''),
(140, 22, '_elements_0_slider_0_image_mobile_image', 'field_648374e805142'),
(141, 22, 'elements_0_slider_0_image', ''),
(142, 22, '_elements_0_slider_0_image', 'field_648374c705141'),
(143, 22, 'elements_0_slider_0_description', 'A Blissful Vows Wedding Planners é uma renomada empresa de planejamento de casamentos, comprometida em transformar sonhos em realidade. Nossa equipe altamente qualificada oferece serviços abrangentes, desde a concepção até a execução impecável do seu dia especial. Confie em nós para criar uma experiência perfeita e memorável.'),
(144, 22, '_elements_0_slider_0_description', 'field_6483751005143'),
(145, 22, 'elements_0_slider_0_button_text', 'Saiba mais'),
(146, 22, '_elements_0_slider_0_button_text', 'field_6483755605145'),
(147, 22, 'elements_0_slider_0_button_link', 'https://www.google.com'),
(148, 22, '_elements_0_slider_0_button_link', 'field_6483756605146'),
(149, 22, 'elements_0_slider_0_button', ''),
(150, 22, '_elements_0_slider_0_button', 'field_6483753605144'),
(151, 22, 'elements_0_slider_1_image_desktop_image', '18'),
(152, 22, '_elements_0_slider_1_image_desktop_image', 'field_6483747605140'),
(153, 22, 'elements_0_slider_1_image_mobile_image', ''),
(154, 22, '_elements_0_slider_1_image_mobile_image', 'field_648374e805142'),
(155, 22, 'elements_0_slider_1_image', ''),
(156, 22, '_elements_0_slider_1_image', 'field_648374c705141'),
(157, 22, 'elements_0_slider_1_description', 'A Eternal Love Cerimônias é uma empresa especializada em criar cerimônias matrimoniais únicas e emocionantes. Com uma equipe experiente e dedicada, oferecemos serviços personalizados para tornar o seu casamento uma experiência inesquecível. Celebre o amor com a Eternal Love Cerimônias.\"'),
(158, 22, '_elements_0_slider_1_description', 'field_6483751005143'),
(159, 22, 'elements_0_slider_1_button_text', 'Saiba mais'),
(160, 22, '_elements_0_slider_1_button_text', 'field_6483755605145'),
(161, 22, 'elements_0_slider_1_button_link', 'https://www.google.com'),
(162, 22, '_elements_0_slider_1_button_link', 'field_6483756605146'),
(163, 22, 'elements_0_slider_1_button', ''),
(164, 22, '_elements_0_slider_1_button', 'field_6483753605144'),
(165, 22, 'elements_0_slider', '2'),
(166, 22, '_elements_0_slider', 'field_64837346d0df7'),
(167, 22, 'elements', 'a:1:{i:0;s:0:\"\";}'),
(168, 22, '_elements', 'field_6484862b945d6'),
(169, 23, 'slider', '2'),
(170, 23, '_slider', 'field_64837346d0df7'),
(171, 23, 'slider_0_image_desktop_image', '18'),
(172, 23, '_slider_0_image_desktop_image', 'field_6483747605140'),
(173, 23, 'slider_0_image_mobile_image', ''),
(174, 23, '_slider_0_image_mobile_image', 'field_648374e805142'),
(175, 23, 'slider_0_image', ''),
(176, 23, '_slider_0_image', 'field_648374c705141'),
(177, 23, 'slider_0_description', 'A <strong>Eternal Love Cerimônias</strong> é uma empresa especializada em criar cerimônias matrimoniais únicas e emocionantes. Com uma equipe experiente e dedicada, oferecemos serviços personalizados para tornar o seu casamento uma experiência inesquecível. Celebre o amor com a Eternal Love Cerimônias.'),
(178, 23, '_slider_0_description', 'field_6483751005143'),
(179, 23, 'slider_0_button_text', 'Saiba mais'),
(180, 23, '_slider_0_button_text', 'field_6483755605145'),
(181, 23, 'slider_0_button_link', 'https://google.com/'),
(182, 23, '_slider_0_button_link', 'field_6483756605146'),
(183, 23, 'slider_0_button', ''),
(184, 23, '_slider_0_button', 'field_6483753605144'),
(185, 23, 'slider_1_image_desktop_image', '19'),
(186, 23, '_slider_1_image_desktop_image', 'field_6483747605140'),
(187, 23, 'slider_1_image_mobile_image', ''),
(188, 23, '_slider_1_image_mobile_image', 'field_648374e805142'),
(189, 23, 'slider_1_image', ''),
(190, 23, '_slider_1_image', 'field_648374c705141'),
(191, 23, 'slider_1_description', 'A <strong>Blissful Vows Wedding Planners</strong> é uma renomada empresa de planejamento de casamentos, comprometida em transformar sonhos em realidade. Nossa equipe altamente qualificada oferece serviços abrangentes, desde a concepção até a execução impecável do seu dia especial. Confie em nós para criar uma experiência perfeita e memorável.'),
(192, 23, '_slider_1_description', 'field_6483751005143'),
(193, 23, 'slider_1_button_text', 'Saiba mais'),
(194, 23, '_slider_1_button_text', 'field_6483755605145'),
(195, 23, 'slider_1_button_link', 'https://www.google.com.br'),
(196, 23, '_slider_1_button_link', 'field_6483756605146'),
(197, 23, 'slider_1_button', ''),
(198, 23, '_slider_1_button', 'field_6483753605144'),
(199, 23, 'elements_0_slider_0_image_desktop_image', '19'),
(200, 23, '_elements_0_slider_0_image_desktop_image', 'field_6483747605140'),
(201, 23, 'elements_0_slider_0_image_mobile_image', ''),
(202, 23, '_elements_0_slider_0_image_mobile_image', 'field_648374e805142'),
(203, 23, 'elements_0_slider_0_image', ''),
(204, 23, '_elements_0_slider_0_image', 'field_648374c705141'),
(205, 23, 'elements_0_slider_0_description', 'A Eternal Love Cerimônias é uma empresa especializada em criar cerimônias matrimoniais únicas e emocionantes. Com uma equipe experiente e dedicada, oferecemos serviços personalizados para tornar o seu casamento uma experiência inesquecível. Celebre o amor com a Eternal Love Cerimônias.\"'),
(206, 23, '_elements_0_slider_0_description', 'field_6483751005143'),
(207, 23, 'elements_0_slider_0_button_text', 'Saiba mais'),
(208, 23, '_elements_0_slider_0_button_text', 'field_6483755605145'),
(209, 23, 'elements_0_slider_0_button_link', 'https://www.google.com'),
(210, 23, '_elements_0_slider_0_button_link', 'field_6483756605146'),
(211, 23, 'elements_0_slider_0_button', ''),
(212, 23, '_elements_0_slider_0_button', 'field_6483753605144'),
(213, 23, 'elements_0_slider_1_image_desktop_image', '18'),
(214, 23, '_elements_0_slider_1_image_desktop_image', 'field_6483747605140'),
(215, 23, 'elements_0_slider_1_image_mobile_image', ''),
(216, 23, '_elements_0_slider_1_image_mobile_image', 'field_648374e805142'),
(217, 23, 'elements_0_slider_1_image', ''),
(218, 23, '_elements_0_slider_1_image', 'field_648374c705141'),
(219, 23, 'elements_0_slider_1_description', 'A Blissful Vows Wedding Planners é uma renomada empresa de planejamento de casamentos, comprometida em transformar sonhos em realidade. Nossa equipe altamente qualificada oferece serviços abrangentes, desde a concepção até a execução impecável do seu dia especial. Confie em nós para criar uma experiência perfeita e memorável.'),
(220, 23, '_elements_0_slider_1_description', 'field_6483751005143'),
(221, 23, 'elements_0_slider_1_button_text', 'Saiba mais'),
(222, 23, '_elements_0_slider_1_button_text', 'field_6483755605145'),
(223, 23, 'elements_0_slider_1_button_link', 'https://www.google.com'),
(224, 23, '_elements_0_slider_1_button_link', 'field_6483756605146'),
(225, 23, 'elements_0_slider_1_button', ''),
(226, 23, '_elements_0_slider_1_button', 'field_6483753605144'),
(227, 23, 'elements_0_slider', '2'),
(228, 23, '_elements_0_slider', 'field_64837346d0df7'),
(229, 23, 'elements', 'a:1:{i:0;s:11:\"main-slider\";}'),
(230, 23, '_elements', 'field_6484862b945d6'),
(231, 24, 'slider', '2'),
(232, 24, '_slider', 'field_64837346d0df7'),
(233, 24, 'slider_0_image_desktop_image', '18'),
(234, 24, '_slider_0_image_desktop_image', 'field_6483747605140'),
(235, 24, 'slider_0_image_mobile_image', ''),
(236, 24, '_slider_0_image_mobile_image', 'field_648374e805142'),
(237, 24, 'slider_0_image', ''),
(238, 24, '_slider_0_image', 'field_648374c705141'),
(239, 24, 'slider_0_description', 'A <strong>Eternal Love Cerimônias</strong> é uma empresa especializada em criar cerimônias matrimoniais únicas e emocionantes. Com uma equipe experiente e dedicada, oferecemos serviços personalizados para tornar o seu casamento uma experiência inesquecível. Celebre o amor com a Eternal Love Cerimônias.'),
(240, 24, '_slider_0_description', 'field_6483751005143'),
(241, 24, 'slider_0_button_text', 'Saiba mais'),
(242, 24, '_slider_0_button_text', 'field_6483755605145'),
(243, 24, 'slider_0_button_link', 'https://google.com/'),
(244, 24, '_slider_0_button_link', 'field_6483756605146'),
(245, 24, 'slider_0_button', ''),
(246, 24, '_slider_0_button', 'field_6483753605144'),
(247, 24, 'slider_1_image_desktop_image', '19'),
(248, 24, '_slider_1_image_desktop_image', 'field_6483747605140'),
(249, 24, 'slider_1_image_mobile_image', ''),
(250, 24, '_slider_1_image_mobile_image', 'field_648374e805142'),
(251, 24, 'slider_1_image', ''),
(252, 24, '_slider_1_image', 'field_648374c705141'),
(253, 24, 'slider_1_description', 'A <strong>Blissful Vows Wedding Planners</strong> é uma renomada empresa de planejamento de casamentos, comprometida em transformar sonhos em realidade. Nossa equipe altamente qualificada oferece serviços abrangentes, desde a concepção até a execução impecável do seu dia especial. Confie em nós para criar uma experiência perfeita e memorável.'),
(254, 24, '_slider_1_description', 'field_6483751005143'),
(255, 24, 'slider_1_button_text', 'Saiba mais'),
(256, 24, '_slider_1_button_text', 'field_6483755605145'),
(257, 24, 'slider_1_button_link', 'https://www.google.com.br'),
(258, 24, '_slider_1_button_link', 'field_6483756605146'),
(259, 24, 'slider_1_button', ''),
(260, 24, '_slider_1_button', 'field_6483753605144'),
(261, 24, 'elements_0_slider_0_image_desktop_image', '19'),
(262, 24, '_elements_0_slider_0_image_desktop_image', 'field_6483747605140'),
(263, 24, 'elements_0_slider_0_image_mobile_image', ''),
(264, 24, '_elements_0_slider_0_image_mobile_image', 'field_648374e805142'),
(265, 24, 'elements_0_slider_0_image', ''),
(266, 24, '_elements_0_slider_0_image', 'field_648374c705141'),
(267, 24, 'elements_0_slider_0_description', 'A <strong>Eternal Love Cerimônias</strong> é uma empresa especializada em criar cerimônias matrimoniais únicas e emocionantes. Com uma equipe experiente e dedicada, oferecemos serviços personalizados para tornar o seu casamento uma experiência inesquecível. Celebre o amor com a Eternal Love Cerimônias.\"'),
(268, 24, '_elements_0_slider_0_description', 'field_6483751005143'),
(269, 24, 'elements_0_slider_0_button_text', 'Saiba mais'),
(270, 24, '_elements_0_slider_0_button_text', 'field_6483755605145'),
(271, 24, 'elements_0_slider_0_button_link', 'https://www.google.com'),
(272, 24, '_elements_0_slider_0_button_link', 'field_6483756605146'),
(273, 24, 'elements_0_slider_0_button', ''),
(274, 24, '_elements_0_slider_0_button', 'field_6483753605144'),
(275, 24, 'elements_0_slider_1_image_desktop_image', '18'),
(276, 24, '_elements_0_slider_1_image_desktop_image', 'field_6483747605140'),
(277, 24, 'elements_0_slider_1_image_mobile_image', ''),
(278, 24, '_elements_0_slider_1_image_mobile_image', 'field_648374e805142'),
(279, 24, 'elements_0_slider_1_image', ''),
(280, 24, '_elements_0_slider_1_image', 'field_648374c705141'),
(281, 24, 'elements_0_slider_1_description', 'A <strong>Blissful Vows Wedding Planners</strong> é uma renomada empresa de planejamento de casamentos, comprometida em transformar sonhos em realidade. Nossa equipe altamente qualificada oferece serviços abrangentes, desde a concepção até a execução impecável do seu dia especial. Confie em nós para criar uma experiência perfeita e memorável.'),
(282, 24, '_elements_0_slider_1_description', 'field_6483751005143'),
(283, 24, 'elements_0_slider_1_button_text', 'Saiba mais'),
(284, 24, '_elements_0_slider_1_button_text', 'field_6483755605145'),
(285, 24, 'elements_0_slider_1_button_link', 'https://www.google.com'),
(286, 24, '_elements_0_slider_1_button_link', 'field_6483756605146'),
(287, 24, 'elements_0_slider_1_button', ''),
(288, 24, '_elements_0_slider_1_button', 'field_6483753605144'),
(289, 24, 'elements_0_slider', '2'),
(290, 24, '_elements_0_slider', 'field_64837346d0df7'),
(291, 24, 'elements', 'a:1:{i:0;s:11:\"main-slider\";}'),
(292, 24, '_elements', 'field_6484862b945d6'),
(293, 25, '_edit_last', '1'),
(294, 25, '_edit_lock', '1686494157:1'),
(295, 27, '_wp_attached_file', '2023/06/buffet-scaled.jpeg'),
(296, 27, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:26:\"2023/06/buffet-scaled.jpeg\";s:8:\"filesize\";i:373164;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"buffet-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16118;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"buffet-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:95264;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"buffet-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7375;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"buffet-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:62621;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:21:\"buffet-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:171708;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:21:\"buffet-2048x1365.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:264792;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:11:\"buffet.jpeg\";}'),
(297, 28, 'slider', '2'),
(298, 28, '_slider', 'field_64837346d0df7'),
(299, 28, 'slider_0_image_desktop_image', '18'),
(300, 28, '_slider_0_image_desktop_image', 'field_6483747605140'),
(301, 28, 'slider_0_image_mobile_image', ''),
(302, 28, '_slider_0_image_mobile_image', 'field_648374e805142'),
(303, 28, 'slider_0_image', ''),
(304, 28, '_slider_0_image', 'field_648374c705141'),
(305, 28, 'slider_0_description', 'A <strong>Eternal Love Cerimônias</strong> é uma empresa especializada em criar cerimônias matrimoniais únicas e emocionantes. Com uma equipe experiente e dedicada, oferecemos serviços personalizados para tornar o seu casamento uma experiência inesquecível. Celebre o amor com a Eternal Love Cerimônias.'),
(306, 28, '_slider_0_description', 'field_6483751005143'),
(307, 28, 'slider_0_button_text', 'Saiba mais'),
(308, 28, '_slider_0_button_text', 'field_6483755605145'),
(309, 28, 'slider_0_button_link', 'https://google.com/'),
(310, 28, '_slider_0_button_link', 'field_6483756605146'),
(311, 28, 'slider_0_button', ''),
(312, 28, '_slider_0_button', 'field_6483753605144'),
(313, 28, 'slider_1_image_desktop_image', '19'),
(314, 28, '_slider_1_image_desktop_image', 'field_6483747605140'),
(315, 28, 'slider_1_image_mobile_image', ''),
(316, 28, '_slider_1_image_mobile_image', 'field_648374e805142'),
(317, 28, 'slider_1_image', ''),
(318, 28, '_slider_1_image', 'field_648374c705141'),
(319, 28, 'slider_1_description', 'A <strong>Blissful Vows Wedding Planners</strong> é uma renomada empresa de planejamento de casamentos, comprometida em transformar sonhos em realidade. Nossa equipe altamente qualificada oferece serviços abrangentes, desde a concepção até a execução impecável do seu dia especial. Confie em nós para criar uma experiência perfeita e memorável.'),
(320, 28, '_slider_1_description', 'field_6483751005143'),
(321, 28, 'slider_1_button_text', 'Saiba mais'),
(322, 28, '_slider_1_button_text', 'field_6483755605145'),
(323, 28, 'slider_1_button_link', 'https://www.google.com.br'),
(324, 28, '_slider_1_button_link', 'field_6483756605146'),
(325, 28, 'slider_1_button', ''),
(326, 28, '_slider_1_button', 'field_6483753605144'),
(327, 28, 'elements_0_slider_0_image_desktop_image', '19'),
(328, 28, '_elements_0_slider_0_image_desktop_image', 'field_6483747605140'),
(329, 28, 'elements_0_slider_0_image_mobile_image', ''),
(330, 28, '_elements_0_slider_0_image_mobile_image', 'field_648374e805142'),
(331, 28, 'elements_0_slider_0_image', ''),
(332, 28, '_elements_0_slider_0_image', 'field_648374c705141'),
(333, 28, 'elements_0_slider_0_description', 'A <strong>Eternal Love Cerimônias</strong> é uma empresa especializada em criar cerimônias matrimoniais únicas e emocionantes. Com uma equipe experiente e dedicada, oferecemos serviços personalizados para tornar o seu casamento uma experiência inesquecível. Celebre o amor com a Eternal Love Cerimônias.\"'),
(334, 28, '_elements_0_slider_0_description', 'field_6483751005143'),
(335, 28, 'elements_0_slider_0_button_text', 'Saiba mais'),
(336, 28, '_elements_0_slider_0_button_text', 'field_6483755605145'),
(337, 28, 'elements_0_slider_0_button_link', 'https://www.google.com'),
(338, 28, '_elements_0_slider_0_button_link', 'field_6483756605146'),
(339, 28, 'elements_0_slider_0_button', ''),
(340, 28, '_elements_0_slider_0_button', 'field_6483753605144'),
(341, 28, 'elements_0_slider_1_image_desktop_image', '18'),
(342, 28, '_elements_0_slider_1_image_desktop_image', 'field_6483747605140'),
(343, 28, 'elements_0_slider_1_image_mobile_image', ''),
(344, 28, '_elements_0_slider_1_image_mobile_image', 'field_648374e805142'),
(345, 28, 'elements_0_slider_1_image', ''),
(346, 28, '_elements_0_slider_1_image', 'field_648374c705141'),
(347, 28, 'elements_0_slider_1_description', 'A <strong>Blissful Vows Wedding Planners</strong> é uma renomada empresa de planejamento de casamentos, comprometida em transformar sonhos em realidade. Nossa equipe altamente qualificada oferece serviços abrangentes, desde a concepção até a execução impecável do seu dia especial. Confie em nós para criar uma experiência perfeita e memorável.'),
(348, 28, '_elements_0_slider_1_description', 'field_6483751005143'),
(349, 28, 'elements_0_slider_1_button_text', 'Saiba mais'),
(350, 28, '_elements_0_slider_1_button_text', 'field_6483755605145'),
(351, 28, 'elements_0_slider_1_button_link', 'https://www.google.com'),
(352, 28, '_elements_0_slider_1_button_link', 'field_6483756605146'),
(353, 28, 'elements_0_slider_1_button', ''),
(354, 28, '_elements_0_slider_1_button', 'field_6483753605144'),
(355, 28, 'elements_0_slider', '2'),
(356, 28, '_elements_0_slider', 'field_64837346d0df7'),
(357, 28, 'elements', 'a:2:{i:0;s:11:\"main-slider\";i:1;s:8:\"partners\";}'),
(358, 28, '_elements', 'field_6484862b945d6'),
(359, 29, '_edit_last', '1'),
(360, 29, '_edit_lock', '1687713837:1'),
(361, 31, '_edit_last', '1'),
(362, 31, '_edit_lock', '1689512373:1'),
(363, 45, '_edit_last', '1'),
(364, 45, '_edit_lock', '1687717386:1'),
(365, 45, 'value', 'Entre R$1000,00 e R$50000,00'),
(366, 45, '_value', 'field_6485d10f7654f'),
(367, 45, 'capacity', '400'),
(368, 45, '_capacity', 'field_6485d1b576550'),
(369, 45, 'info', 'Lorem ipsum dolor sit amet consectetur adipiscing elit nam risus, enim dictum hac egestas varius arcu aliquet mi, curabitur rhoncus porta laoreet sed maecenas erat taciti. Dictumst egestas suspendisse conubia quis montes imperdiet quam habitant commodo fames dignissim ad, mattis facilisi proin magna rutrum leo nunc et eu a. Sagittis semper tempus senectus viverra massa augue hendrerit molestie rhoncus, laoreet mollis nisl justo scelerisque eget donec vestibulum, fringilla velit gravida accumsan nunc dis morbi eros. Eros sapien curae urna conubia turpis sociis dapibus fames habitasse, congue potenti elementum suscipit eget cras ac luctus. Vitae sociis duis varius morbi fusce est proin aptent suscipit malesuada facilisis, commodo nascetur senectus pharetra aliquet condimentum enim tellus urna convallis taciti, faucibus penatibus vulputate interdum nullam hendrerit et non leo facilisi. Venenatis scelerisque congue risus tempor eros, class id ornare neque vitae, nascetur dictumst facilisis ad. Dignissim morbi parturient justo a montes nullam sollicitudin, nascetur vehicula erat magnis rutrum tempus quis ante, arcu nulla odio vel cras pharetra.'),
(370, 45, '_info', 'field_6485d1f476551'),
(371, 45, 'services', '<ul>\r\n 	<li>Suíte presidencial</li>\r\n 	<li>Café da manhã</li>\r\n 	<li>Piscina</li>\r\n 	<li>Churrasqueira</li>\r\n 	<li>Área gourmet</li>\r\n 	<li>Camareira 24h</li>\r\n</ul>'),
(372, 45, '_services', 'field_6485d21e76552'),
(373, 45, 'map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14608.908085869829!2d-45.3462303!3d-23.7392825!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94d2992e007a47a3%3A0x2210353f2faae63a!2sVila%20Salga!5e0!3m2!1spt-BR!2sbr!4v1687701453025!5m2!1spt-BR!2sbr\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(374, 45, '_map', 'field_6485d25676553'),
(375, 45, 'contact_instagram', ''),
(376, 45, '_contact_instagram', 'field_6485d2ab76555'),
(377, 45, 'contact_whatsapp_ddd', '12'),
(378, 45, '_contact_whatsapp_ddd', 'field_6485d30976557'),
(379, 45, 'contact_whatsapp_number', '99999999'),
(380, 45, '_contact_whatsapp_number', 'field_6485d32e76558'),
(381, 45, 'contact_whatsapp_message', 'Olá, vim através do Casar na Ilha e gostaria de saber mais sobre seus serviços!'),
(382, 45, '_contact_whatsapp_message', 'field_6485d34676559'),
(383, 45, 'contact_whatsapp', ''),
(384, 45, '_contact_whatsapp', 'field_6485d2dc76556'),
(385, 45, 'contact_facebook', ''),
(386, 45, '_contact_facebook', 'field_6485d3a77655a'),
(387, 45, 'contact', ''),
(388, 45, '_contact', 'field_6485d29e76554'),
(389, 45, 'gallery', ''),
(390, 45, '_gallery', 'field_6485d3d03beb1'),
(427, 51, '_edit_lock', '1687118039:1'),
(428, 45, '_thumbnail_id', '18'),
(429, 45, 'advertising-type', 'a:3:{i:0;s:16:\"Banner principal\";i:1;s:19:\"Fornecedor destaque\";i:2;s:21:\"Destaque da categoria\";}'),
(430, 45, '_advertising-type', 'field_6498427b42a1c'),
(431, 45, 'local_city', 'Ilhabela'),
(432, 45, '_local_city', 'field_649846889e8d0'),
(433, 45, 'local_neighborhood', 'Armação'),
(434, 45, '_local_neighborhood', 'field_649846929e8d1'),
(435, 45, 'local', ''),
(436, 45, '_local', 'field_649846709e8cf'),
(437, 57, '_edit_last', '1'),
(438, 57, '_edit_lock', '1689860539:1'),
(439, 57, 'value', 'Entre R$1000,00 e R$50000,00'),
(440, 57, '_value', 'field_6485d10f7654f'),
(441, 57, 'capacity', '8000'),
(442, 57, '_capacity', 'field_6485d1b576550'),
(443, 57, 'info', ''),
(444, 57, '_info', 'field_6485d1f476551'),
(445, 57, 'services', ''),
(446, 57, '_services', 'field_6485d21e76552'),
(447, 57, 'map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3771.114762580135!2d-45.348805224434145!3d-23.739277568153277!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94d2992e007a47a3%3A0x2210353f2faae63a!2sVila%20Salga!5e1!3m2!1spt-BR!2sbr!4v1689273357123!5m2!1spt-BR!2sbr\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(448, 57, '_map', 'field_6485d25676553'),
(449, 57, 'contact_instagram', 'vilasalga'),
(450, 57, '_contact_instagram', 'field_6485d2ab76555'),
(451, 57, 'contact_whatsapp_ddd', '12'),
(452, 57, '_contact_whatsapp_ddd', 'field_6485d30976557'),
(453, 57, 'contact_whatsapp_number', '978132819'),
(454, 57, '_contact_whatsapp_number', 'field_6485d32e76558'),
(455, 57, 'contact_whatsapp_message', 'Olá, vim através do Casar na Ilha e gostaria de saber mais sobre seus serviços!'),
(456, 57, '_contact_whatsapp_message', 'field_6485d34676559'),
(457, 57, 'contact_whatsapp', ''),
(458, 57, '_contact_whatsapp', 'field_6485d2dc76556'),
(459, 57, 'contact_facebook', 'https://www.facebook.com/vilasalga'),
(460, 57, '_contact_facebook', 'field_6485d3a77655a'),
(461, 57, 'contact', ''),
(462, 57, '_contact', 'field_6485d29e76554'),
(463, 57, 'gallery', 'a:3:{i:0;s:2:\"27\";i:1;s:2:\"19\";i:2;s:2:\"18\";}'),
(464, 57, '_gallery', 'field_6485d3d03beb1'),
(465, 57, 'advertising-type', 'a:1:{i:0;s:19:\"Fornecedor destaque\";}'),
(466, 57, '_advertising-type', 'field_6498427b42a1c'),
(467, 57, 'local_city', 'Ilhabela'),
(468, 57, '_local_city', 'field_649846889e8d0'),
(469, 57, 'local_neighborhood', 'Armação'),
(470, 57, '_local_neighborhood', 'field_649846929e8d1'),
(471, 57, 'local', ''),
(472, 57, '_local', 'field_649846709e8cf'),
(473, 29, 'value', 'Entre R$1000,00 e R$50000,00'),
(474, 29, '_value', 'field_6485d10f7654f'),
(475, 29, 'capacity', ''),
(476, 29, '_capacity', 'field_6485d1b576550'),
(477, 29, 'info', ''),
(478, 29, '_info', 'field_6485d1f476551'),
(479, 29, 'services', ''),
(480, 29, '_services', 'field_6485d21e76552'),
(481, 29, 'map', ''),
(482, 29, '_map', 'field_6485d25676553'),
(483, 29, 'contact_instagram', ''),
(484, 29, '_contact_instagram', 'field_6485d2ab76555'),
(485, 29, 'contact_whatsapp_ddd', '12'),
(486, 29, '_contact_whatsapp_ddd', 'field_6485d30976557'),
(487, 29, 'contact_whatsapp_number', '19837168471'),
(488, 29, '_contact_whatsapp_number', 'field_6485d32e76558'),
(489, 29, 'contact_whatsapp_message', 'Olá, vim através do Casar na Ilha e gostaria de saber mais sobre seus serviços!'),
(490, 29, '_contact_whatsapp_message', 'field_6485d34676559'),
(491, 29, 'contact_whatsapp', ''),
(492, 29, '_contact_whatsapp', 'field_6485d2dc76556'),
(493, 29, 'contact_facebook', ''),
(494, 29, '_contact_facebook', 'field_6485d3a77655a'),
(495, 29, 'contact', ''),
(496, 29, '_contact', 'field_6485d29e76554'),
(497, 29, 'gallery', ''),
(498, 29, '_gallery', 'field_6485d3d03beb1'),
(499, 29, 'advertising-type', 'a:1:{i:0;s:21:\"Destaque da categoria\";}'),
(500, 29, '_advertising-type', 'field_6498427b42a1c'),
(501, 29, 'local_city', 'Ilhabela'),
(502, 29, '_local_city', 'field_649846889e8d0'),
(503, 29, 'local_neighborhood', 'Armação'),
(504, 29, '_local_neighborhood', 'field_649846929e8d1'),
(505, 29, 'local', ''),
(506, 29, '_local', 'field_649846709e8cf'),
(507, 1, '_edit_lock', '1687801225:1'),
(510, 1, '_thumbnail_id', '27'),
(511, 59, '_edit_lock', '1687801206:1'),
(514, 59, '_thumbnail_id', '19'),
(515, 61, '_edit_lock', '1687801212:1'),
(519, 64, '_edit_lock', '1687800106:1'),
(520, 64, '_wp_trash_meta_status', 'draft'),
(521, 64, '_wp_trash_meta_time', '1687800165'),
(522, 64, '_wp_desired_post_slug', ''),
(523, 66, '_edit_lock', '1687801216:1'),
(528, 66, '_thumbnail_id', '18'),
(529, 69, 'slider', '2'),
(530, 69, '_slider', 'field_64837346d0df7'),
(531, 69, 'slider_0_image_desktop_image', '18'),
(532, 69, '_slider_0_image_desktop_image', 'field_6483747605140'),
(533, 69, 'slider_0_image_mobile_image', ''),
(534, 69, '_slider_0_image_mobile_image', 'field_648374e805142'),
(535, 69, 'slider_0_image', ''),
(536, 69, '_slider_0_image', 'field_648374c705141'),
(537, 69, 'slider_0_description', 'A <strong>Eternal Love Cerimônias</strong> é uma empresa especializada em criar cerimônias matrimoniais únicas e emocionantes. Com uma equipe experiente e dedicada, oferecemos serviços personalizados para tornar o seu casamento uma experiência inesquecível. Celebre o amor com a Eternal Love Cerimônias.'),
(538, 69, '_slider_0_description', 'field_6483751005143'),
(539, 69, 'slider_0_button_text', 'Saiba mais'),
(540, 69, '_slider_0_button_text', 'field_6483755605145'),
(541, 69, 'slider_0_button_link', 'https://google.com/'),
(542, 69, '_slider_0_button_link', 'field_6483756605146'),
(543, 69, 'slider_0_button', ''),
(544, 69, '_slider_0_button', 'field_6483753605144'),
(545, 69, 'slider_1_image_desktop_image', '19'),
(546, 69, '_slider_1_image_desktop_image', 'field_6483747605140'),
(547, 69, 'slider_1_image_mobile_image', ''),
(548, 69, '_slider_1_image_mobile_image', 'field_648374e805142'),
(549, 69, 'slider_1_image', ''),
(550, 69, '_slider_1_image', 'field_648374c705141'),
(551, 69, 'slider_1_description', 'A <strong>Blissful Vows Wedding Planners</strong> é uma renomada empresa de planejamento de casamentos, comprometida em transformar sonhos em realidade. Nossa equipe altamente qualificada oferece serviços abrangentes, desde a concepção até a execução impecável do seu dia especial. Confie em nós para criar uma experiência perfeita e memorável.'),
(552, 69, '_slider_1_description', 'field_6483751005143'),
(553, 69, 'slider_1_button_text', 'Saiba mais'),
(554, 69, '_slider_1_button_text', 'field_6483755605145'),
(555, 69, 'slider_1_button_link', 'https://www.google.com.br'),
(556, 69, '_slider_1_button_link', 'field_6483756605146'),
(557, 69, 'slider_1_button', ''),
(558, 69, '_slider_1_button', 'field_6483753605144'),
(559, 69, 'elements_0_slider_0_image_desktop_image', '19'),
(560, 69, '_elements_0_slider_0_image_desktop_image', 'field_6483747605140'),
(561, 69, 'elements_0_slider_0_image_mobile_image', ''),
(562, 69, '_elements_0_slider_0_image_mobile_image', 'field_648374e805142'),
(563, 69, 'elements_0_slider_0_image', ''),
(564, 69, '_elements_0_slider_0_image', 'field_648374c705141'),
(565, 69, 'elements_0_slider_0_description', 'A <strong>Eternal Love Cerimônias</strong> é uma empresa especializada em criar cerimônias matrimoniais únicas e emocionantes. Com uma equipe experiente e dedicada, oferecemos serviços personalizados para tornar o seu casamento uma experiência inesquecível. Celebre o amor com a Eternal Love Cerimônias.\"'),
(566, 69, '_elements_0_slider_0_description', 'field_6483751005143'),
(567, 69, 'elements_0_slider_0_button_text', 'Saiba mais'),
(568, 69, '_elements_0_slider_0_button_text', 'field_6483755605145'),
(569, 69, 'elements_0_slider_0_button_link', 'https://www.google.com'),
(570, 69, '_elements_0_slider_0_button_link', 'field_6483756605146'),
(571, 69, 'elements_0_slider_0_button', ''),
(572, 69, '_elements_0_slider_0_button', 'field_6483753605144'),
(573, 69, 'elements_0_slider_1_image_desktop_image', '18'),
(574, 69, '_elements_0_slider_1_image_desktop_image', 'field_6483747605140'),
(575, 69, 'elements_0_slider_1_image_mobile_image', ''),
(576, 69, '_elements_0_slider_1_image_mobile_image', 'field_648374e805142'),
(577, 69, 'elements_0_slider_1_image', ''),
(578, 69, '_elements_0_slider_1_image', 'field_648374c705141'),
(579, 69, 'elements_0_slider_1_description', 'A <strong>Blissful Vows Wedding Planners</strong> é uma renomada empresa de planejamento de casamentos, comprometida em transformar sonhos em realidade. Nossa equipe altamente qualificada oferece serviços abrangentes, desde a concepção até a execução impecável do seu dia especial. Confie em nós para criar uma experiência perfeita e memorável.'),
(580, 69, '_elements_0_slider_1_description', 'field_6483751005143'),
(581, 69, 'elements_0_slider_1_button_text', 'Saiba mais'),
(582, 69, '_elements_0_slider_1_button_text', 'field_6483755605145'),
(583, 69, 'elements_0_slider_1_button_link', 'https://www.google.com'),
(584, 69, '_elements_0_slider_1_button_link', 'field_6483756605146'),
(585, 69, 'elements_0_slider_1_button', ''),
(586, 69, '_elements_0_slider_1_button', 'field_6483753605144'),
(587, 69, 'elements_0_slider', '2'),
(588, 69, '_elements_0_slider', 'field_64837346d0df7'),
(589, 69, 'elements', 'a:2:{i:0;s:11:\"main-slider\";i:1;s:10:\"highlights\";}'),
(590, 69, '_elements', 'field_6484862b945d6'),
(591, 70, 'slider', '2'),
(592, 70, '_slider', 'field_64837346d0df7'),
(593, 70, 'slider_0_image_desktop_image', '18'),
(594, 70, '_slider_0_image_desktop_image', 'field_6483747605140'),
(595, 70, 'slider_0_image_mobile_image', ''),
(596, 70, '_slider_0_image_mobile_image', 'field_648374e805142'),
(597, 70, 'slider_0_image', ''),
(598, 70, '_slider_0_image', 'field_648374c705141'),
(599, 70, 'slider_0_description', 'A <strong>Eternal Love Cerimônias</strong> é uma empresa especializada em criar cerimônias matrimoniais únicas e emocionantes. Com uma equipe experiente e dedicada, oferecemos serviços personalizados para tornar o seu casamento uma experiência inesquecível. Celebre o amor com a Eternal Love Cerimônias.'),
(600, 70, '_slider_0_description', 'field_6483751005143'),
(601, 70, 'slider_0_button_text', 'Saiba mais'),
(602, 70, '_slider_0_button_text', 'field_6483755605145'),
(603, 70, 'slider_0_button_link', 'https://google.com/'),
(604, 70, '_slider_0_button_link', 'field_6483756605146'),
(605, 70, 'slider_0_button', ''),
(606, 70, '_slider_0_button', 'field_6483753605144'),
(607, 70, 'slider_1_image_desktop_image', '19'),
(608, 70, '_slider_1_image_desktop_image', 'field_6483747605140'),
(609, 70, 'slider_1_image_mobile_image', ''),
(610, 70, '_slider_1_image_mobile_image', 'field_648374e805142'),
(611, 70, 'slider_1_image', ''),
(612, 70, '_slider_1_image', 'field_648374c705141'),
(613, 70, 'slider_1_description', 'A <strong>Blissful Vows Wedding Planners</strong> é uma renomada empresa de planejamento de casamentos, comprometida em transformar sonhos em realidade. Nossa equipe altamente qualificada oferece serviços abrangentes, desde a concepção até a execução impecável do seu dia especial. Confie em nós para criar uma experiência perfeita e memorável.'),
(614, 70, '_slider_1_description', 'field_6483751005143'),
(615, 70, 'slider_1_button_text', 'Saiba mais'),
(616, 70, '_slider_1_button_text', 'field_6483755605145'),
(617, 70, 'slider_1_button_link', 'https://www.google.com.br'),
(618, 70, '_slider_1_button_link', 'field_6483756605146'),
(619, 70, 'slider_1_button', ''),
(620, 70, '_slider_1_button', 'field_6483753605144'),
(621, 70, 'elements_0_slider_0_image_desktop_image', '19'),
(622, 70, '_elements_0_slider_0_image_desktop_image', 'field_6483747605140'),
(623, 70, 'elements_0_slider_0_image_mobile_image', ''),
(624, 70, '_elements_0_slider_0_image_mobile_image', 'field_648374e805142'),
(625, 70, 'elements_0_slider_0_image', ''),
(626, 70, '_elements_0_slider_0_image', 'field_648374c705141'),
(627, 70, 'elements_0_slider_0_description', 'A <strong>Eternal Love Cerimônias</strong> é uma empresa especializada em criar cerimônias matrimoniais únicas e emocionantes. Com uma equipe experiente e dedicada, oferecemos serviços personalizados para tornar o seu casamento uma experiência inesquecível. Celebre o amor com a Eternal Love Cerimônias.\"'),
(628, 70, '_elements_0_slider_0_description', 'field_6483751005143'),
(629, 70, 'elements_0_slider_0_button_text', 'Saiba mais'),
(630, 70, '_elements_0_slider_0_button_text', 'field_6483755605145'),
(631, 70, 'elements_0_slider_0_button_link', 'https://www.google.com'),
(632, 70, '_elements_0_slider_0_button_link', 'field_6483756605146'),
(633, 70, 'elements_0_slider_0_button', ''),
(634, 70, '_elements_0_slider_0_button', 'field_6483753605144'),
(635, 70, 'elements_0_slider_1_image_desktop_image', '18'),
(636, 70, '_elements_0_slider_1_image_desktop_image', 'field_6483747605140'),
(637, 70, 'elements_0_slider_1_image_mobile_image', ''),
(638, 70, '_elements_0_slider_1_image_mobile_image', 'field_648374e805142'),
(639, 70, 'elements_0_slider_1_image', ''),
(640, 70, '_elements_0_slider_1_image', 'field_648374c705141'),
(641, 70, 'elements_0_slider_1_description', 'A <strong>Blissful Vows Wedding Planners</strong> é uma renomada empresa de planejamento de casamentos, comprometida em transformar sonhos em realidade. Nossa equipe altamente qualificada oferece serviços abrangentes, desde a concepção até a execução impecável do seu dia especial. Confie em nós para criar uma experiência perfeita e memorável.'),
(642, 70, '_elements_0_slider_1_description', 'field_6483751005143'),
(643, 70, 'elements_0_slider_1_button_text', 'Saiba mais'),
(644, 70, '_elements_0_slider_1_button_text', 'field_6483755605145'),
(645, 70, 'elements_0_slider_1_button_link', 'https://www.google.com'),
(646, 70, '_elements_0_slider_1_button_link', 'field_6483756605146'),
(647, 70, 'elements_0_slider_1_button', ''),
(648, 70, '_elements_0_slider_1_button', 'field_6483753605144'),
(649, 70, 'elements_0_slider', '2'),
(650, 70, '_elements_0_slider', 'field_64837346d0df7'),
(651, 70, 'elements', 'a:4:{i:0;s:11:\"main-slider\";i:1;s:10:\"highlights\";i:2;s:10:\"blog-posts\";i:3;s:10:\"categories\";}'),
(652, 70, '_elements', 'field_6484862b945d6'),
(653, 71, 'slider', '2'),
(654, 71, '_slider', 'field_64837346d0df7'),
(655, 71, 'slider_0_image_desktop_image', '18'),
(656, 71, '_slider_0_image_desktop_image', 'field_6483747605140'),
(657, 71, 'slider_0_image_mobile_image', ''),
(658, 71, '_slider_0_image_mobile_image', 'field_648374e805142'),
(659, 71, 'slider_0_image', ''),
(660, 71, '_slider_0_image', 'field_648374c705141'),
(661, 71, 'slider_0_description', 'A <strong>Eternal Love Cerimônias</strong> é uma empresa especializada em criar cerimônias matrimoniais únicas e emocionantes. Com uma equipe experiente e dedicada, oferecemos serviços personalizados para tornar o seu casamento uma experiência inesquecível. Celebre o amor com a Eternal Love Cerimônias.'),
(662, 71, '_slider_0_description', 'field_6483751005143'),
(663, 71, 'slider_0_button_text', 'Saiba mais'),
(664, 71, '_slider_0_button_text', 'field_6483755605145'),
(665, 71, 'slider_0_button_link', 'https://google.com/'),
(666, 71, '_slider_0_button_link', 'field_6483756605146'),
(667, 71, 'slider_0_button', ''),
(668, 71, '_slider_0_button', 'field_6483753605144'),
(669, 71, 'slider_1_image_desktop_image', '19'),
(670, 71, '_slider_1_image_desktop_image', 'field_6483747605140'),
(671, 71, 'slider_1_image_mobile_image', ''),
(672, 71, '_slider_1_image_mobile_image', 'field_648374e805142'),
(673, 71, 'slider_1_image', ''),
(674, 71, '_slider_1_image', 'field_648374c705141'),
(675, 71, 'slider_1_description', 'A <strong>Blissful Vows Wedding Planners</strong> é uma renomada empresa de planejamento de casamentos, comprometida em transformar sonhos em realidade. Nossa equipe altamente qualificada oferece serviços abrangentes, desde a concepção até a execução impecável do seu dia especial. Confie em nós para criar uma experiência perfeita e memorável.'),
(676, 71, '_slider_1_description', 'field_6483751005143'),
(677, 71, 'slider_1_button_text', 'Saiba mais'),
(678, 71, '_slider_1_button_text', 'field_6483755605145'),
(679, 71, 'slider_1_button_link', 'https://www.google.com.br'),
(680, 71, '_slider_1_button_link', 'field_6483756605146'),
(681, 71, 'slider_1_button', ''),
(682, 71, '_slider_1_button', 'field_6483753605144'),
(683, 71, 'elements_0_slider_0_image_desktop_image', '19'),
(684, 71, '_elements_0_slider_0_image_desktop_image', 'field_6483747605140'),
(685, 71, 'elements_0_slider_0_image_mobile_image', ''),
(686, 71, '_elements_0_slider_0_image_mobile_image', 'field_648374e805142'),
(687, 71, 'elements_0_slider_0_image', ''),
(688, 71, '_elements_0_slider_0_image', 'field_648374c705141');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(689, 71, 'elements_0_slider_0_description', 'A <strong>Eternal Love Cerimônias</strong> é uma empresa especializada em criar cerimônias matrimoniais únicas e emocionantes. Com uma equipe experiente e dedicada, oferecemos serviços personalizados para tornar o seu casamento uma experiência inesquecível. Celebre o amor com a Eternal Love Cerimônias.\"'),
(690, 71, '_elements_0_slider_0_description', 'field_6483751005143'),
(691, 71, 'elements_0_slider_0_button_text', 'Saiba mais'),
(692, 71, '_elements_0_slider_0_button_text', 'field_6483755605145'),
(693, 71, 'elements_0_slider_0_button_link', 'https://www.google.com'),
(694, 71, '_elements_0_slider_0_button_link', 'field_6483756605146'),
(695, 71, 'elements_0_slider_0_button', ''),
(696, 71, '_elements_0_slider_0_button', 'field_6483753605144'),
(697, 71, 'elements_0_slider_1_image_desktop_image', '18'),
(698, 71, '_elements_0_slider_1_image_desktop_image', 'field_6483747605140'),
(699, 71, 'elements_0_slider_1_image_mobile_image', ''),
(700, 71, '_elements_0_slider_1_image_mobile_image', 'field_648374e805142'),
(701, 71, 'elements_0_slider_1_image', ''),
(702, 71, '_elements_0_slider_1_image', 'field_648374c705141'),
(703, 71, 'elements_0_slider_1_description', 'A <strong>Blissful Vows Wedding Planners</strong> é uma renomada empresa de planejamento de casamentos, comprometida em transformar sonhos em realidade. Nossa equipe altamente qualificada oferece serviços abrangentes, desde a concepção até a execução impecável do seu dia especial. Confie em nós para criar uma experiência perfeita e memorável.'),
(704, 71, '_elements_0_slider_1_description', 'field_6483751005143'),
(705, 71, 'elements_0_slider_1_button_text', 'Saiba mais'),
(706, 71, '_elements_0_slider_1_button_text', 'field_6483755605145'),
(707, 71, 'elements_0_slider_1_button_link', 'https://www.google.com'),
(708, 71, '_elements_0_slider_1_button_link', 'field_6483756605146'),
(709, 71, 'elements_0_slider_1_button', ''),
(710, 71, '_elements_0_slider_1_button', 'field_6483753605144'),
(711, 71, 'elements_0_slider', '2'),
(712, 71, '_elements_0_slider', 'field_64837346d0df7'),
(713, 71, 'elements', 'a:4:{i:0;s:11:\"main-slider\";i:1;s:10:\"highlights\";i:2;s:10:\"blog-posts\";i:3;s:10:\"categories\";}'),
(714, 71, '_elements', 'field_6484862b945d6'),
(715, 73, 'slider', '2'),
(716, 73, '_slider', 'field_64837346d0df7'),
(717, 73, 'slider_0_image_desktop_image', '18'),
(718, 73, '_slider_0_image_desktop_image', 'field_6483747605140'),
(719, 73, 'slider_0_image_mobile_image', ''),
(720, 73, '_slider_0_image_mobile_image', 'field_648374e805142'),
(721, 73, 'slider_0_image', ''),
(722, 73, '_slider_0_image', 'field_648374c705141'),
(723, 73, 'slider_0_description', 'A <strong>Eternal Love Cerimônias</strong> é uma empresa especializada em criar cerimônias matrimoniais únicas e emocionantes. Com uma equipe experiente e dedicada, oferecemos serviços personalizados para tornar o seu casamento uma experiência inesquecível. Celebre o amor com a Eternal Love Cerimônias.'),
(724, 73, '_slider_0_description', 'field_6483751005143'),
(725, 73, 'slider_0_button_text', 'Saiba mais'),
(726, 73, '_slider_0_button_text', 'field_6483755605145'),
(727, 73, 'slider_0_button_link', 'https://google.com/'),
(728, 73, '_slider_0_button_link', 'field_6483756605146'),
(729, 73, 'slider_0_button', ''),
(730, 73, '_slider_0_button', 'field_6483753605144'),
(731, 73, 'slider_1_image_desktop_image', '19'),
(732, 73, '_slider_1_image_desktop_image', 'field_6483747605140'),
(733, 73, 'slider_1_image_mobile_image', ''),
(734, 73, '_slider_1_image_mobile_image', 'field_648374e805142'),
(735, 73, 'slider_1_image', ''),
(736, 73, '_slider_1_image', 'field_648374c705141'),
(737, 73, 'slider_1_description', 'A <strong>Blissful Vows Wedding Planners</strong> é uma renomada empresa de planejamento de casamentos, comprometida em transformar sonhos em realidade. Nossa equipe altamente qualificada oferece serviços abrangentes, desde a concepção até a execução impecável do seu dia especial. Confie em nós para criar uma experiência perfeita e memorável.'),
(738, 73, '_slider_1_description', 'field_6483751005143'),
(739, 73, 'slider_1_button_text', 'Saiba mais'),
(740, 73, '_slider_1_button_text', 'field_6483755605145'),
(741, 73, 'slider_1_button_link', 'https://www.google.com.br'),
(742, 73, '_slider_1_button_link', 'field_6483756605146'),
(743, 73, 'slider_1_button', ''),
(744, 73, '_slider_1_button', 'field_6483753605144'),
(745, 73, 'elements_0_slider_0_image_desktop_image', '19'),
(746, 73, '_elements_0_slider_0_image_desktop_image', 'field_6483747605140'),
(747, 73, 'elements_0_slider_0_image_mobile_image', ''),
(748, 73, '_elements_0_slider_0_image_mobile_image', 'field_648374e805142'),
(749, 73, 'elements_0_slider_0_image', ''),
(750, 73, '_elements_0_slider_0_image', 'field_648374c705141'),
(751, 73, 'elements_0_slider_0_description', 'A <strong>Eternal Love Cerimônias</strong> é uma empresa especializada em criar cerimônias matrimoniais únicas e emocionantes. Com uma equipe experiente e dedicada, oferecemos serviços personalizados para tornar o seu casamento uma experiência inesquecível. Celebre o amor com a Eternal Love Cerimônias.\"'),
(752, 73, '_elements_0_slider_0_description', 'field_6483751005143'),
(753, 73, 'elements_0_slider_0_button_text', 'Saiba mais'),
(754, 73, '_elements_0_slider_0_button_text', 'field_6483755605145'),
(755, 73, 'elements_0_slider_0_button_link', 'https://www.google.com'),
(756, 73, '_elements_0_slider_0_button_link', 'field_6483756605146'),
(757, 73, 'elements_0_slider_0_button', ''),
(758, 73, '_elements_0_slider_0_button', 'field_6483753605144'),
(759, 73, 'elements_0_slider_1_image_desktop_image', '18'),
(760, 73, '_elements_0_slider_1_image_desktop_image', 'field_6483747605140'),
(761, 73, 'elements_0_slider_1_image_mobile_image', ''),
(762, 73, '_elements_0_slider_1_image_mobile_image', 'field_648374e805142'),
(763, 73, 'elements_0_slider_1_image', ''),
(764, 73, '_elements_0_slider_1_image', 'field_648374c705141'),
(765, 73, 'elements_0_slider_1_description', 'A <strong>Blissful Vows Wedding Planners</strong> é uma renomada empresa de planejamento de casamentos, comprometida em transformar sonhos em realidade. Nossa equipe altamente qualificada oferece serviços abrangentes, desde a concepção até a execução impecável do seu dia especial. Confie em nós para criar uma experiência perfeita e memorável.'),
(766, 73, '_elements_0_slider_1_description', 'field_6483751005143'),
(767, 73, 'elements_0_slider_1_button_text', 'Saiba mais'),
(768, 73, '_elements_0_slider_1_button_text', 'field_6483755605145'),
(769, 73, 'elements_0_slider_1_button_link', 'https://www.google.com'),
(770, 73, '_elements_0_slider_1_button_link', 'field_6483756605146'),
(771, 73, 'elements_0_slider_1_button', ''),
(772, 73, '_elements_0_slider_1_button', 'field_6483753605144'),
(773, 73, 'elements_0_slider', '2'),
(774, 73, '_elements_0_slider', 'field_64837346d0df7'),
(775, 73, 'elements', 'a:4:{i:0;s:10:\"highlights\";i:1;s:11:\"main-slider\";i:2;s:10:\"categories\";i:3;s:10:\"blog-posts\";}'),
(776, 73, '_elements', 'field_6484862b945d6'),
(777, 74, 'slider', '2'),
(778, 74, '_slider', 'field_64837346d0df7'),
(779, 74, 'slider_0_image_desktop_image', '18'),
(780, 74, '_slider_0_image_desktop_image', 'field_6483747605140'),
(781, 74, 'slider_0_image_mobile_image', ''),
(782, 74, '_slider_0_image_mobile_image', 'field_648374e805142'),
(783, 74, 'slider_0_image', ''),
(784, 74, '_slider_0_image', 'field_648374c705141'),
(785, 74, 'slider_0_description', 'A <strong>Eternal Love Cerimônias</strong> é uma empresa especializada em criar cerimônias matrimoniais únicas e emocionantes. Com uma equipe experiente e dedicada, oferecemos serviços personalizados para tornar o seu casamento uma experiência inesquecível. Celebre o amor com a Eternal Love Cerimônias.'),
(786, 74, '_slider_0_description', 'field_6483751005143'),
(787, 74, 'slider_0_button_text', 'Saiba mais'),
(788, 74, '_slider_0_button_text', 'field_6483755605145'),
(789, 74, 'slider_0_button_link', 'https://google.com/'),
(790, 74, '_slider_0_button_link', 'field_6483756605146'),
(791, 74, 'slider_0_button', ''),
(792, 74, '_slider_0_button', 'field_6483753605144'),
(793, 74, 'slider_1_image_desktop_image', '19'),
(794, 74, '_slider_1_image_desktop_image', 'field_6483747605140'),
(795, 74, 'slider_1_image_mobile_image', ''),
(796, 74, '_slider_1_image_mobile_image', 'field_648374e805142'),
(797, 74, 'slider_1_image', ''),
(798, 74, '_slider_1_image', 'field_648374c705141'),
(799, 74, 'slider_1_description', 'A <strong>Blissful Vows Wedding Planners</strong> é uma renomada empresa de planejamento de casamentos, comprometida em transformar sonhos em realidade. Nossa equipe altamente qualificada oferece serviços abrangentes, desde a concepção até a execução impecável do seu dia especial. Confie em nós para criar uma experiência perfeita e memorável.'),
(800, 74, '_slider_1_description', 'field_6483751005143'),
(801, 74, 'slider_1_button_text', 'Saiba mais'),
(802, 74, '_slider_1_button_text', 'field_6483755605145'),
(803, 74, 'slider_1_button_link', 'https://www.google.com.br'),
(804, 74, '_slider_1_button_link', 'field_6483756605146'),
(805, 74, 'slider_1_button', ''),
(806, 74, '_slider_1_button', 'field_6483753605144'),
(807, 74, 'elements_0_slider_0_image_desktop_image', '19'),
(808, 74, '_elements_0_slider_0_image_desktop_image', 'field_6483747605140'),
(809, 74, 'elements_0_slider_0_image_mobile_image', ''),
(810, 74, '_elements_0_slider_0_image_mobile_image', 'field_648374e805142'),
(811, 74, 'elements_0_slider_0_image', ''),
(812, 74, '_elements_0_slider_0_image', 'field_648374c705141'),
(813, 74, 'elements_0_slider_0_description', 'A <strong>Eternal Love Cerimônias</strong> é uma empresa especializada em criar cerimônias matrimoniais únicas e emocionantes. Com uma equipe experiente e dedicada, oferecemos serviços personalizados para tornar o seu casamento uma experiência inesquecível. Celebre o amor com a Eternal Love Cerimônias.\"'),
(814, 74, '_elements_0_slider_0_description', 'field_6483751005143'),
(815, 74, 'elements_0_slider_0_button_text', 'Saiba mais'),
(816, 74, '_elements_0_slider_0_button_text', 'field_6483755605145'),
(817, 74, 'elements_0_slider_0_button_link', 'https://www.google.com'),
(818, 74, '_elements_0_slider_0_button_link', 'field_6483756605146'),
(819, 74, 'elements_0_slider_0_button', ''),
(820, 74, '_elements_0_slider_0_button', 'field_6483753605144'),
(821, 74, 'elements_0_slider_1_image_desktop_image', '18'),
(822, 74, '_elements_0_slider_1_image_desktop_image', 'field_6483747605140'),
(823, 74, 'elements_0_slider_1_image_mobile_image', ''),
(824, 74, '_elements_0_slider_1_image_mobile_image', 'field_648374e805142'),
(825, 74, 'elements_0_slider_1_image', ''),
(826, 74, '_elements_0_slider_1_image', 'field_648374c705141'),
(827, 74, 'elements_0_slider_1_description', 'A <strong>Blissful Vows Wedding Planners</strong> é uma renomada empresa de planejamento de casamentos, comprometida em transformar sonhos em realidade. Nossa equipe altamente qualificada oferece serviços abrangentes, desde a concepção até a execução impecável do seu dia especial. Confie em nós para criar uma experiência perfeita e memorável.'),
(828, 74, '_elements_0_slider_1_description', 'field_6483751005143'),
(829, 74, 'elements_0_slider_1_button_text', 'Saiba mais'),
(830, 74, '_elements_0_slider_1_button_text', 'field_6483755605145'),
(831, 74, 'elements_0_slider_1_button_link', 'https://www.google.com'),
(832, 74, '_elements_0_slider_1_button_link', 'field_6483756605146'),
(833, 74, 'elements_0_slider_1_button', ''),
(834, 74, '_elements_0_slider_1_button', 'field_6483753605144'),
(835, 74, 'elements_0_slider', '2'),
(836, 74, '_elements_0_slider', 'field_64837346d0df7'),
(837, 74, 'elements', 'a:4:{i:0;s:11:\"main-slider\";i:1;s:10:\"highlights\";i:2;s:10:\"blog-posts\";i:3;s:10:\"categories\";}'),
(838, 74, '_elements', 'field_6484862b945d6'),
(839, 75, 'slider', '2'),
(840, 75, '_slider', 'field_64837346d0df7'),
(841, 75, 'slider_0_image_desktop_image', '18'),
(842, 75, '_slider_0_image_desktop_image', 'field_6483747605140'),
(843, 75, 'slider_0_image_mobile_image', ''),
(844, 75, '_slider_0_image_mobile_image', 'field_648374e805142'),
(845, 75, 'slider_0_image', ''),
(846, 75, '_slider_0_image', 'field_648374c705141'),
(847, 75, 'slider_0_description', 'A <strong>Eternal Love Cerimônias</strong> é uma empresa especializada em criar cerimônias matrimoniais únicas e emocionantes. Com uma equipe experiente e dedicada, oferecemos serviços personalizados para tornar o seu casamento uma experiência inesquecível. Celebre o amor com a Eternal Love Cerimônias.'),
(848, 75, '_slider_0_description', 'field_6483751005143'),
(849, 75, 'slider_0_button_text', 'Saiba mais'),
(850, 75, '_slider_0_button_text', 'field_6483755605145'),
(851, 75, 'slider_0_button_link', 'https://google.com/'),
(852, 75, '_slider_0_button_link', 'field_6483756605146'),
(853, 75, 'slider_0_button', ''),
(854, 75, '_slider_0_button', 'field_6483753605144'),
(855, 75, 'slider_1_image_desktop_image', '19'),
(856, 75, '_slider_1_image_desktop_image', 'field_6483747605140'),
(857, 75, 'slider_1_image_mobile_image', ''),
(858, 75, '_slider_1_image_mobile_image', 'field_648374e805142'),
(859, 75, 'slider_1_image', ''),
(860, 75, '_slider_1_image', 'field_648374c705141'),
(861, 75, 'slider_1_description', 'A <strong>Blissful Vows Wedding Planners</strong> é uma renomada empresa de planejamento de casamentos, comprometida em transformar sonhos em realidade. Nossa equipe altamente qualificada oferece serviços abrangentes, desde a concepção até a execução impecável do seu dia especial. Confie em nós para criar uma experiência perfeita e memorável.'),
(862, 75, '_slider_1_description', 'field_6483751005143'),
(863, 75, 'slider_1_button_text', 'Saiba mais'),
(864, 75, '_slider_1_button_text', 'field_6483755605145'),
(865, 75, 'slider_1_button_link', 'https://www.google.com.br'),
(866, 75, '_slider_1_button_link', 'field_6483756605146'),
(867, 75, 'slider_1_button', ''),
(868, 75, '_slider_1_button', 'field_6483753605144'),
(869, 75, 'elements_0_slider_0_image_desktop_image', '19'),
(870, 75, '_elements_0_slider_0_image_desktop_image', 'field_6483747605140'),
(871, 75, 'elements_0_slider_0_image_mobile_image', ''),
(872, 75, '_elements_0_slider_0_image_mobile_image', 'field_648374e805142'),
(873, 75, 'elements_0_slider_0_image', ''),
(874, 75, '_elements_0_slider_0_image', 'field_648374c705141'),
(875, 75, 'elements_0_slider_0_description', 'A <strong>Eternal Love Cerimônias</strong> é uma empresa especializada em criar cerimônias matrimoniais únicas e emocionantes. Com uma equipe experiente e dedicada, oferecemos serviços personalizados para tornar o seu casamento uma experiência inesquecível. Celebre o amor com a Eternal Love Cerimônias.\"'),
(876, 75, '_elements_0_slider_0_description', 'field_6483751005143'),
(877, 75, 'elements_0_slider_0_button_text', 'Saiba mais'),
(878, 75, '_elements_0_slider_0_button_text', 'field_6483755605145'),
(879, 75, 'elements_0_slider_0_button_link', 'https://www.google.com'),
(880, 75, '_elements_0_slider_0_button_link', 'field_6483756605146'),
(881, 75, 'elements_0_slider_0_button', ''),
(882, 75, '_elements_0_slider_0_button', 'field_6483753605144'),
(883, 75, 'elements_0_slider_1_image_desktop_image', '18'),
(884, 75, '_elements_0_slider_1_image_desktop_image', 'field_6483747605140'),
(885, 75, 'elements_0_slider_1_image_mobile_image', ''),
(886, 75, '_elements_0_slider_1_image_mobile_image', 'field_648374e805142'),
(887, 75, 'elements_0_slider_1_image', ''),
(888, 75, '_elements_0_slider_1_image', 'field_648374c705141'),
(889, 75, 'elements_0_slider_1_description', 'A <strong>Blissful Vows Wedding Planners</strong> é uma renomada empresa de planejamento de casamentos, comprometida em transformar sonhos em realidade. Nossa equipe altamente qualificada oferece serviços abrangentes, desde a concepção até a execução impecável do seu dia especial. Confie em nós para criar uma experiência perfeita e memorável.'),
(890, 75, '_elements_0_slider_1_description', 'field_6483751005143'),
(891, 75, 'elements_0_slider_1_button_text', 'Saiba mais'),
(892, 75, '_elements_0_slider_1_button_text', 'field_6483755605145'),
(893, 75, 'elements_0_slider_1_button_link', 'https://www.google.com'),
(894, 75, '_elements_0_slider_1_button_link', 'field_6483756605146'),
(895, 75, 'elements_0_slider_1_button', ''),
(896, 75, '_elements_0_slider_1_button', 'field_6483753605144'),
(897, 75, 'elements_0_slider', '2'),
(898, 75, '_elements_0_slider', 'field_64837346d0df7'),
(899, 75, 'elements', 'a:4:{i:0;s:11:\"main-slider\";i:1;s:10:\"highlights\";i:2;s:10:\"blog-posts\";i:3;s:10:\"categories\";}'),
(900, 75, '_elements', 'field_6484862b945d6'),
(901, 80, 'slider', '2'),
(902, 80, '_slider', 'field_64837346d0df7'),
(903, 80, 'slider_0_image_desktop_image', '18'),
(904, 80, '_slider_0_image_desktop_image', 'field_6483747605140'),
(905, 80, 'slider_0_image_mobile_image', ''),
(906, 80, '_slider_0_image_mobile_image', 'field_648374e805142'),
(907, 80, 'slider_0_image', ''),
(908, 80, '_slider_0_image', 'field_648374c705141'),
(909, 80, 'slider_0_description', 'A <strong>Eternal Love Cerimônias</strong> é uma empresa especializada em criar cerimônias matrimoniais únicas e emocionantes. Com uma equipe experiente e dedicada, oferecemos serviços personalizados para tornar o seu casamento uma experiência inesquecível. Celebre o amor com a Eternal Love Cerimônias.'),
(910, 80, '_slider_0_description', 'field_6483751005143'),
(911, 80, 'slider_0_button_text', 'Saiba mais'),
(912, 80, '_slider_0_button_text', 'field_6483755605145'),
(913, 80, 'slider_0_button_link', 'https://google.com/'),
(914, 80, '_slider_0_button_link', 'field_6483756605146'),
(915, 80, 'slider_0_button', ''),
(916, 80, '_slider_0_button', 'field_6483753605144'),
(917, 80, 'slider_1_image_desktop_image', '19'),
(918, 80, '_slider_1_image_desktop_image', 'field_6483747605140'),
(919, 80, 'slider_1_image_mobile_image', ''),
(920, 80, '_slider_1_image_mobile_image', 'field_648374e805142'),
(921, 80, 'slider_1_image', ''),
(922, 80, '_slider_1_image', 'field_648374c705141'),
(923, 80, 'slider_1_description', 'A <strong>Blissful Vows Wedding Planners</strong> é uma renomada empresa de planejamento de casamentos, comprometida em transformar sonhos em realidade. Nossa equipe altamente qualificada oferece serviços abrangentes, desde a concepção até a execução impecável do seu dia especial. Confie em nós para criar uma experiência perfeita e memorável.'),
(924, 80, '_slider_1_description', 'field_6483751005143'),
(925, 80, 'slider_1_button_text', 'Saiba mais'),
(926, 80, '_slider_1_button_text', 'field_6483755605145'),
(927, 80, 'slider_1_button_link', 'https://www.google.com.br'),
(928, 80, '_slider_1_button_link', 'field_6483756605146'),
(929, 80, 'slider_1_button', ''),
(930, 80, '_slider_1_button', 'field_6483753605144'),
(931, 80, 'elements_0_slider_0_image_desktop_image', '19'),
(932, 80, '_elements_0_slider_0_image_desktop_image', 'field_6483747605140'),
(933, 80, 'elements_0_slider_0_image_mobile_image', ''),
(934, 80, '_elements_0_slider_0_image_mobile_image', 'field_648374e805142'),
(935, 80, 'elements_0_slider_0_image', ''),
(936, 80, '_elements_0_slider_0_image', 'field_648374c705141'),
(937, 80, 'elements_0_slider_0_description', 'A <strong>Eternal Love Cerimônias</strong> é uma empresa especializada em criar cerimônias matrimoniais únicas e emocionantes. Com uma equipe experiente e dedicada, oferecemos serviços personalizados para tornar o seu casamento uma experiência inesquecível. Celebre o amor com a Eternal Love Cerimônias.\"'),
(938, 80, '_elements_0_slider_0_description', 'field_6483751005143'),
(939, 80, 'elements_0_slider_0_button_text', 'Saiba mais'),
(940, 80, '_elements_0_slider_0_button_text', 'field_6483755605145'),
(941, 80, 'elements_0_slider_0_button_link', 'https://www.google.com'),
(942, 80, '_elements_0_slider_0_button_link', 'field_6483756605146'),
(943, 80, 'elements_0_slider_0_button', ''),
(944, 80, '_elements_0_slider_0_button', 'field_6483753605144'),
(945, 80, 'elements_0_slider_1_image_desktop_image', '18'),
(946, 80, '_elements_0_slider_1_image_desktop_image', 'field_6483747605140'),
(947, 80, 'elements_0_slider_1_image_mobile_image', ''),
(948, 80, '_elements_0_slider_1_image_mobile_image', 'field_648374e805142'),
(949, 80, 'elements_0_slider_1_image', ''),
(950, 80, '_elements_0_slider_1_image', 'field_648374c705141'),
(951, 80, 'elements_0_slider_1_description', 'A <strong>Blissful Vows Wedding Planners</strong> é uma renomada empresa de planejamento de casamentos, comprometida em transformar sonhos em realidade. Nossa equipe altamente qualificada oferece serviços abrangentes, desde a concepção até a execução impecável do seu dia especial. Confie em nós para criar uma experiência perfeita e memorável.'),
(952, 80, '_elements_0_slider_1_description', 'field_6483751005143'),
(953, 80, 'elements_0_slider_1_button_text', 'Saiba mais'),
(954, 80, '_elements_0_slider_1_button_text', 'field_6483755605145'),
(955, 80, 'elements_0_slider_1_button_link', 'https://www.google.com'),
(956, 80, '_elements_0_slider_1_button_link', 'field_6483756605146'),
(957, 80, 'elements_0_slider_1_button', ''),
(958, 80, '_elements_0_slider_1_button', 'field_6483753605144'),
(959, 80, 'elements_0_slider', '2'),
(960, 80, '_elements_0_slider', 'field_64837346d0df7'),
(961, 80, 'elements', 'a:5:{i:0;s:11:\"main-slider\";i:1;s:6:\"search\";i:2;s:10:\"highlights\";i:3;s:10:\"blog-posts\";i:4;s:10:\"categories\";}'),
(962, 80, '_elements', 'field_6484862b945d6'),
(963, 81, '_edit_last', '1'),
(964, 81, '_edit_lock', '1689860544:1'),
(965, 82, '_wp_attached_file', '2023/07/item4-scaled.jpg'),
(966, 82, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:24:\"2023/07/item4-scaled.jpg\";s:8:\"filesize\";i:294581;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"item4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13041;}s:5:\"large\";a:5:{s:4:\"file\";s:18:\"item4-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:74362;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"item4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6128;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"item4-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:49149;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:19:\"item4-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:133630;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:19:\"item4-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:206008;}s:7:\"thumb_1\";a:5:{s:4:\"file\";s:17:\"item4-235x160.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9412;}s:12:\"thumb_banner\";a:5:{s:4:\"file\";s:19:\"item4-1920x1080.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:164926;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:9:\"item4.jpg\";}'),
(967, 81, '_thumbnail_id', '27'),
(968, 81, 'value', 'Entre R$1000,00 e R$50000,00'),
(969, 81, '_value', 'field_6485d10f7654f'),
(970, 81, 'capacity', '50'),
(971, 81, '_capacity', 'field_6485d1b576550'),
(972, 81, 'services', '<ul>\r\n 	<li>Wifi gratuitpo</li>\r\n 	<li>-Piscina</li>\r\n</ul>'),
(973, 81, '_services', 'field_6485d21e76552'),
(974, 81, 'map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14608.908085869829!2d-45.3462303!3d-23.7392825!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94d2992e007a47a3%3A0x2210353f2faae63a!2sVila%20Salga!5e0!3m2!1spt-BR!2sbr!4v1687701453025!5m2!1spt-BR!2sbr\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
(975, 81, '_map', 'field_6485d25676553'),
(976, 81, 'contact_instagram', 'vilasalga'),
(977, 81, '_contact_instagram', 'field_6485d2ab76555'),
(978, 81, 'contact_whatsapp_ddd', '12'),
(979, 81, '_contact_whatsapp_ddd', 'field_6485d30976557'),
(980, 81, 'contact_whatsapp_number', '47285812'),
(981, 81, '_contact_whatsapp_number', 'field_6485d32e76558'),
(982, 81, 'contact_whatsapp_message', 'Olá, vim através do Casar na Ilha e gostaria de saber mais sobre seus serviços!'),
(983, 81, '_contact_whatsapp_message', 'field_6485d34676559'),
(984, 81, 'contact_whatsapp', ''),
(985, 81, '_contact_whatsapp', 'field_6485d2dc76556'),
(986, 81, 'contact_facebook', ''),
(987, 81, '_contact_facebook', 'field_6485d3a77655a'),
(988, 81, 'contact', ''),
(989, 81, '_contact', 'field_6485d29e76554'),
(990, 81, 'gallery', ''),
(991, 81, '_gallery', 'field_6485d3d03beb1'),
(992, 81, 'advertising-type', 'a:3:{i:0;s:16:\"Banner principal\";i:1;s:19:\"Fornecedor destaque\";i:2;s:21:\"Destaque da categoria\";}'),
(993, 81, '_advertising-type', 'field_6498427b42a1c'),
(994, 81, 'local_city', 'Ilhabela'),
(995, 81, '_local_city', 'field_649846889e8d0'),
(996, 81, 'local_neighborhood', 'Perequê'),
(997, 81, '_local_neighborhood', 'field_649846929e8d1'),
(998, 81, 'local', ''),
(999, 81, '_local', 'field_649846709e8cf'),
(1000, 83, 'slider', '2'),
(1001, 83, '_slider', 'field_64837346d0df7'),
(1002, 83, 'slider_0_image_desktop_image', '18'),
(1003, 83, '_slider_0_image_desktop_image', 'field_6483747605140'),
(1004, 83, 'slider_0_image_mobile_image', ''),
(1005, 83, '_slider_0_image_mobile_image', 'field_648374e805142'),
(1006, 83, 'slider_0_image', ''),
(1007, 83, '_slider_0_image', 'field_648374c705141'),
(1008, 83, 'slider_0_description', 'A <strong>Eternal Love Cerimônias</strong> é uma empresa especializada em criar cerimônias matrimoniais únicas e emocionantes. Com uma equipe experiente e dedicada, oferecemos serviços personalizados para tornar o seu casamento uma experiência inesquecível. Celebre o amor com a Eternal Love Cerimônias.'),
(1009, 83, '_slider_0_description', 'field_6483751005143'),
(1010, 83, 'slider_0_button_text', 'Saiba mais'),
(1011, 83, '_slider_0_button_text', 'field_6483755605145'),
(1012, 83, 'slider_0_button_link', 'https://google.com/'),
(1013, 83, '_slider_0_button_link', 'field_6483756605146'),
(1014, 83, 'slider_0_button', ''),
(1015, 83, '_slider_0_button', 'field_6483753605144'),
(1016, 83, 'slider_1_image_desktop_image', '19'),
(1017, 83, '_slider_1_image_desktop_image', 'field_6483747605140'),
(1018, 83, 'slider_1_image_mobile_image', ''),
(1019, 83, '_slider_1_image_mobile_image', 'field_648374e805142'),
(1020, 83, 'slider_1_image', ''),
(1021, 83, '_slider_1_image', 'field_648374c705141'),
(1022, 83, 'slider_1_description', 'A <strong>Blissful Vows Wedding Planners</strong> é uma renomada empresa de planejamento de casamentos, comprometida em transformar sonhos em realidade. Nossa equipe altamente qualificada oferece serviços abrangentes, desde a concepção até a execução impecável do seu dia especial. Confie em nós para criar uma experiência perfeita e memorável.'),
(1023, 83, '_slider_1_description', 'field_6483751005143'),
(1024, 83, 'slider_1_button_text', 'Saiba mais'),
(1025, 83, '_slider_1_button_text', 'field_6483755605145'),
(1026, 83, 'slider_1_button_link', 'https://www.google.com.br'),
(1027, 83, '_slider_1_button_link', 'field_6483756605146'),
(1028, 83, 'slider_1_button', ''),
(1029, 83, '_slider_1_button', 'field_6483753605144'),
(1030, 83, 'elements_0_slider_0_image_desktop_image', '19'),
(1031, 83, '_elements_0_slider_0_image_desktop_image', 'field_6483747605140'),
(1032, 83, 'elements_0_slider_0_image_mobile_image', ''),
(1033, 83, '_elements_0_slider_0_image_mobile_image', 'field_648374e805142'),
(1034, 83, 'elements_0_slider_0_image', ''),
(1035, 83, '_elements_0_slider_0_image', 'field_648374c705141'),
(1036, 83, 'elements_0_slider_0_description', 'A <strong>Eternal Love Cerimônias</strong> é uma empresa especializada em criar cerimônias matrimoniais únicas e emocionantes. Com uma equipe experiente e dedicada, oferecemos serviços personalizados para tornar o seu casamento uma experiência inesquecível. Celebre o amor com a Eternal Love Cerimônias.\"'),
(1037, 83, '_elements_0_slider_0_description', 'field_6483751005143'),
(1038, 83, 'elements_0_slider_0_button_text', 'Saiba mais'),
(1039, 83, '_elements_0_slider_0_button_text', 'field_6483755605145'),
(1040, 83, 'elements_0_slider_0_button_link', 'https://www.google.com'),
(1041, 83, '_elements_0_slider_0_button_link', 'field_6483756605146'),
(1042, 83, 'elements_0_slider_0_button', ''),
(1043, 83, '_elements_0_slider_0_button', 'field_6483753605144'),
(1044, 83, 'elements_0_slider_1_image_desktop_image', '18'),
(1045, 83, '_elements_0_slider_1_image_desktop_image', 'field_6483747605140'),
(1046, 83, 'elements_0_slider_1_image_mobile_image', ''),
(1047, 83, '_elements_0_slider_1_image_mobile_image', 'field_648374e805142'),
(1048, 83, 'elements_0_slider_1_image', ''),
(1049, 83, '_elements_0_slider_1_image', 'field_648374c705141'),
(1050, 83, 'elements_0_slider_1_description', 'A <strong>Blissful Vows Wedding Planners</strong> é uma renomada empresa de planejamento de casamentos, comprometida em transformar sonhos em realidade. Nossa equipe altamente qualificada oferece serviços abrangentes, desde a concepção até a execução impecável do seu dia especial. Confie em nós para criar uma experiência perfeita e memorável.'),
(1051, 83, '_elements_0_slider_1_description', 'field_6483751005143'),
(1052, 83, 'elements_0_slider_1_button_text', 'Saiba mais'),
(1053, 83, '_elements_0_slider_1_button_text', 'field_6483755605145'),
(1054, 83, 'elements_0_slider_1_button_link', 'https://www.google.com'),
(1055, 83, '_elements_0_slider_1_button_link', 'field_6483756605146'),
(1056, 83, 'elements_0_slider_1_button', ''),
(1057, 83, '_elements_0_slider_1_button', 'field_6483753605144'),
(1058, 83, 'elements_0_slider', '2'),
(1059, 83, '_elements_0_slider', 'field_64837346d0df7'),
(1060, 83, 'elements', 'a:4:{i:0;s:11:\"main-slider\";i:1;s:10:\"highlights\";i:2;s:10:\"blog-posts\";i:3;s:10:\"categories\";}'),
(1061, 83, '_elements', 'field_6484862b945d6'),
(1062, 84, '_menu_item_type', 'taxonomy'),
(1063, 84, '_menu_item_menu_item_parent', '0'),
(1064, 84, '_menu_item_object_id', '5'),
(1065, 84, '_menu_item_object', 'tipo'),
(1066, 84, '_menu_item_target', ''),
(1067, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1068, 84, '_menu_item_xfn', ''),
(1069, 84, '_menu_item_url', ''),
(1071, 85, '_menu_item_type', 'taxonomy'),
(1072, 85, '_menu_item_menu_item_parent', '0'),
(1073, 85, '_menu_item_object_id', '2'),
(1074, 85, '_menu_item_object', 'tipo'),
(1075, 85, '_menu_item_target', ''),
(1076, 85, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1077, 85, '_menu_item_xfn', ''),
(1078, 85, '_menu_item_url', ''),
(1080, 86, '_menu_item_type', 'taxonomy'),
(1081, 86, '_menu_item_menu_item_parent', '0'),
(1082, 86, '_menu_item_object_id', '3'),
(1083, 86, '_menu_item_object', 'tipo'),
(1084, 86, '_menu_item_target', ''),
(1085, 86, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1086, 86, '_menu_item_xfn', ''),
(1087, 86, '_menu_item_url', ''),
(1089, 87, '_menu_item_type', 'taxonomy'),
(1090, 87, '_menu_item_menu_item_parent', '0'),
(1091, 87, '_menu_item_object_id', '4'),
(1092, 87, '_menu_item_object', 'tipo'),
(1093, 87, '_menu_item_target', ''),
(1094, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1095, 87, '_menu_item_xfn', ''),
(1096, 87, '_menu_item_url', ''),
(1098, 88, '_menu_item_type', 'taxonomy'),
(1099, 88, '_menu_item_menu_item_parent', '0'),
(1100, 88, '_menu_item_object_id', '6'),
(1101, 88, '_menu_item_object', 'tipo'),
(1102, 88, '_menu_item_target', ''),
(1103, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1104, 88, '_menu_item_xfn', ''),
(1105, 88, '_menu_item_url', ''),
(1107, 89, '_menu_item_type', 'taxonomy'),
(1108, 89, '_menu_item_menu_item_parent', '0'),
(1109, 89, '_menu_item_object_id', '7'),
(1110, 89, '_menu_item_object', 'tipo'),
(1111, 89, '_menu_item_target', ''),
(1112, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1113, 89, '_menu_item_xfn', ''),
(1114, 89, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-06-09 15:31:33', '2023-06-09 18:31:33', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2023-06-25 15:29:33', '2023-06-25 18:29:33', '', 0, 'http://localhost/casar_na_ilha/?p=1', 0, 'post', '', 1),
(2, 1, '2023-06-09 15:31:33', '2023-06-09 18:31:33', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/casar_na_ilha/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'publish', 'closed', 'open', '', 'pagina-exemplo', '', '', '2023-06-09 15:31:33', '2023-06-09 18:31:33', '', 0, 'http://localhost/casar_na_ilha/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-06-09 15:31:33', '2023-06-09 18:31:33', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: http://localhost/casar_na_ilha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia incorporada de outros sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Com quem compartilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde seus dados são enviados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph -->', 'Política de privacidade', '', 'draft', 'closed', 'open', '', 'politica-de-privacidade', '', '', '2023-06-09 15:31:33', '2023-06-09 18:31:33', '', 0, 'http://localhost/casar_na_ilha/?page_id=3', 0, 'page', '', 0),
(5, 1, '2023-06-09 15:36:43', '2023-06-09 18:36:43', '', 'test', '', 'publish', 'closed', 'closed', '', 'test', '', '', '2023-06-09 15:36:43', '2023-06-09 18:36:43', '', 0, 'http://localhost/casar_na_ilha/?page_id=5', 0, 'page', '', 0),
(6, 1, '2023-06-09 15:36:43', '2023-06-09 18:36:43', '', 'test', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-06-09 15:36:43', '2023-06-09 18:36:43', '', 5, 'http://localhost/casar_na_ilha/?p=6', 0, 'revision', '', 0),
(7, 1, '2023-06-09 15:45:04', '2023-06-09 18:45:04', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:21:\"template-elements.php\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Elementos', 'elementos', 'publish', 'closed', 'closed', '', 'group_6483730e6c46e', '', '', '2023-07-17 20:29:49', '2023-07-17 23:29:49', '', 0, 'http://localhost/casar_na_ilha/?post_type=acf-field-group&#038;p=7', 0, 'acf-field-group', '', 0),
(16, 1, '2023-06-10 10:49:24', '2023-06-10 13:49:24', '', 'Casar na Ilha', '', 'publish', 'closed', 'closed', '', 'casar-na-ilha', '', '', '2023-07-19 14:12:06', '2023-07-19 17:12:06', '', 0, 'http://localhost/casar_na_ilha/?page_id=16', 0, 'page', '', 0),
(17, 1, '2023-06-10 10:49:24', '2023-06-10 13:49:24', '', 'Casar na Ilha', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2023-06-10 10:49:24', '2023-06-10 13:49:24', '', 16, 'http://localhost/casar_na_ilha/?p=17', 0, 'revision', '', 0),
(18, 1, '2023-06-10 11:13:02', '2023-06-10 14:13:02', '', 'casamento', '', 'inherit', 'open', 'closed', '', 'casamento', '', '', '2023-07-13 15:59:28', '2023-07-13 18:59:28', '', 16, 'http://localhost/casar_na_ilha/wp-content/uploads/2023/06/casamento.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2023-06-10 11:14:28', '2023-06-10 14:14:28', '', 'casamento', '', 'inherit', 'open', 'closed', '', 'casamento-2', '', '', '2023-06-10 11:14:28', '2023-06-10 14:14:28', '', 16, 'http://localhost/casar_na_ilha/wp-content/uploads/2023/06/casamento.jpeg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2023-06-10 11:15:31', '2023-06-10 14:15:31', '', 'Casar na Ilha', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2023-06-10 11:15:31', '2023-06-10 14:15:31', '', 16, 'http://localhost/casar_na_ilha/?p=20', 0, 'revision', '', 0),
(21, 1, '2023-06-10 11:19:20', '2023-06-10 14:19:20', 'a:9:{s:4:\"type\";s:16:\"flexible_content\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"layouts\";a:5:{s:20:\"layout_6484863ea6a0d\";a:6:{s:3:\"key\";s:20:\"layout_6484863ea6a0d\";s:5:\"label\";s:16:\"Slider principal\";s:4:\"name\";s:11:\"main-slider\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}s:20:\"layout_6484b654eb79a\";a:6:{s:3:\"key\";s:20:\"layout_6484b654eb79a\";s:5:\"label\";s:19:\"Fornecedor destaque\";s:4:\"name\";s:10:\"highlights\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}s:20:\"layout_649ed02d7f013\";a:6:{s:3:\"key\";s:20:\"layout_649ed02d7f013\";s:5:\"label\";s:10:\"Categorias\";s:4:\"name\";s:10:\"categories\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}s:20:\"layout_649ed03ee69be\";a:6:{s:3:\"key\";s:20:\"layout_649ed03ee69be\";s:5:\"label\";s:14:\"Posts recentes\";s:4:\"name\";s:10:\"blog-posts\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}s:20:\"layout_64b5cee49f624\";a:6:{s:3:\"key\";s:20:\"layout_64b5cee49f624\";s:5:\"label\";s:8:\"Pesquisa\";s:4:\"name\";s:6:\"search\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}}s:12:\"button_label\";s:15:\"Adicionar Linha\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}', 'Elements', 'elements', 'publish', 'closed', 'closed', '', 'field_6484862b945d6', '', '', '2023-07-17 20:29:49', '2023-07-17 23:29:49', '', 7, 'http://localhost/casar_na_ilha/?post_type=acf-field&#038;p=21', 0, 'acf-field', '', 0),
(22, 1, '2023-06-10 11:21:48', '2023-06-10 14:21:48', '', 'Casar na Ilha', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2023-06-10 11:21:48', '2023-06-10 14:21:48', '', 16, 'http://localhost/casar_na_ilha/?p=22', 0, 'revision', '', 0),
(23, 1, '2023-06-10 11:30:27', '2023-06-10 14:30:27', '', 'Casar na Ilha', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2023-06-10 11:30:27', '2023-06-10 14:30:27', '', 16, 'http://localhost/casar_na_ilha/?p=23', 0, 'revision', '', 0),
(24, 1, '2023-06-10 12:33:33', '2023-06-10 15:33:33', '', 'Casar na Ilha', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2023-06-10 12:33:33', '2023-06-10 15:33:33', '', 16, 'http://localhost/casar_na_ilha/?p=24', 0, 'revision', '', 0),
(25, 1, '2023-06-10 13:01:45', '2023-06-10 16:01:45', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"tipo\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Category info', 'category-info', 'publish', 'closed', 'closed', '', 'group_64849e0cbb113', '', '', '2023-06-11 11:38:18', '2023-06-11 14:38:18', '', 0, 'http://localhost/casar_na_ilha/?post_type=acf-field-group&#038;p=25', 0, 'acf-field-group', '', 0),
(26, 1, '2023-06-10 13:01:45', '2023-06-10 16:01:45', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";i:400;s:10:\"max_height\";i:400;s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Category image', 'category_image', 'publish', 'closed', 'closed', '', 'field_64849e53eb0d1', '', '', '2023-06-11 11:38:18', '2023-06-11 14:38:18', '', 25, 'http://localhost/casar_na_ilha/?post_type=acf-field&#038;p=26', 0, 'acf-field', '', 0),
(27, 1, '2023-06-10 14:35:40', '2023-06-10 17:35:40', '', 'buffet', '', 'inherit', 'open', 'closed', '', 'buffet', '', '', '2023-06-10 14:35:40', '2023-06-10 17:35:40', '', 0, 'http://localhost/casar_na_ilha/wp-content/uploads/2023/06/buffet.jpeg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2023-06-10 14:48:57', '2023-06-10 17:48:57', '', 'Casar na Ilha', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2023-06-10 14:48:57', '2023-06-10 17:48:57', '', 16, 'http://localhost/casar_na_ilha/?p=28', 0, 'revision', '', 0),
(29, 1, '2023-06-10 15:12:48', '2023-06-10 18:12:48', '', 'Teste buffet', '', 'publish', 'closed', 'closed', '', 'teste-buffet', '', '', '2023-06-25 14:26:20', '2023-06-25 17:26:20', '', 0, 'http://localhost/casar_na_ilha/?post_type=fornecedor&#038;p=29', 0, 'fornecedor', '', 0),
(31, 1, '2023-06-11 11:01:37', '2023-06-11 14:01:37', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"fornecedor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Partners info', 'partners-info', 'publish', 'closed', 'closed', '', 'group_6485d0ec50b51', '', '', '2023-07-16 10:01:48', '2023-07-16 13:01:48', '', 0, 'http://localhost/casar_na_ilha/?post_type=acf-field-group&#038;p=31', 0, 'acf-field-group', '', 0),
(32, 1, '2023-06-11 11:01:37', '2023-06-11 14:01:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:89:\"Digite a o intervalo aproximado do custo do servico.\r\nEx: Entre R$10.000,00 e R$25.000,00\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Valor', 'value', 'publish', 'closed', 'closed', '', 'field_6485d10f7654f', '', '', '2023-06-11 11:01:37', '2023-06-11 14:01:37', '', 31, 'http://localhost/casar_na_ilha/?post_type=acf-field&p=32', 0, 'acf-field', '', 0),
(33, 1, '2023-06-11 11:01:37', '2023-06-11 14:01:37', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:7:\"Ex: 200\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Capacidade', 'capacity', 'publish', 'closed', 'closed', '', 'field_6485d1b576550', '', '', '2023-06-11 11:01:37', '2023-06-11 14:01:37', '', 31, 'http://localhost/casar_na_ilha/?post_type=acf-field&p=33', 1, 'acf-field', '', 0),
(35, 1, '2023-06-11 11:01:37', '2023-06-11 14:01:37', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:29:\"Quais servicos voes oferecem?\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Servicos', 'services', 'publish', 'closed', 'closed', '', 'field_6485d21e76552', '', '', '2023-07-16 10:01:48', '2023-07-16 13:01:48', '', 31, 'http://localhost/casar_na_ilha/?post_type=acf-field&#038;p=35', 2, 'acf-field', '', 0),
(36, 1, '2023-06-11 11:01:37', '2023-06-11 14:01:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:21:\"Cole o iframe do maps\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Mapa de localizacao', 'map', 'publish', 'closed', 'closed', '', 'field_6485d25676553', '', '', '2023-07-16 10:01:48', '2023-07-16 13:01:48', '', 31, 'http://localhost/casar_na_ilha/?post_type=acf-field&#038;p=36', 3, 'acf-field', '', 0),
(37, 1, '2023-06-11 11:01:37', '2023-06-11 14:01:37', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Contato', 'contact', 'publish', 'closed', 'closed', '', 'field_6485d29e76554', '', '', '2023-07-16 10:01:48', '2023-07-16 13:01:48', '', 31, 'http://localhost/casar_na_ilha/?post_type=acf-field&#038;p=37', 4, 'acf-field', '', 0),
(38, 1, '2023-06-11 11:01:37', '2023-06-11 14:01:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:10:\"@instagram\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Instagram', 'instagram', 'publish', 'closed', 'closed', '', 'field_6485d2ab76555', '', '', '2023-06-11 11:01:37', '2023-06-11 14:01:37', '', 37, 'http://localhost/casar_na_ilha/?post_type=acf-field&p=38', 0, 'acf-field', '', 0),
(39, 1, '2023-06-11 11:01:37', '2023-06-11 14:01:37', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Whatsapp', 'whatsapp', 'publish', 'closed', 'closed', '', 'field_6485d2dc76556', '', '', '2023-06-11 11:01:37', '2023-06-11 14:01:37', '', 37, 'http://localhost/casar_na_ilha/?post_type=acf-field&p=39', 1, 'acf-field', '', 0),
(40, 1, '2023-06-11 11:01:37', '2023-06-11 14:01:37', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:6:\"ex: 12\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'DDD', 'ddd', 'publish', 'closed', 'closed', '', 'field_6485d30976557', '', '', '2023-06-11 11:01:37', '2023-06-11 14:01:37', '', 39, 'http://localhost/casar_na_ilha/?post_type=acf-field&p=40', 0, 'acf-field', '', 0),
(41, 1, '2023-06-11 11:01:37', '2023-06-11 14:01:37', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:13:\"ex: 999999999\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Numero', 'number', 'publish', 'closed', 'closed', '', 'field_6485d32e76558', '', '', '2023-06-11 11:01:37', '2023-06-11 14:01:37', '', 39, 'http://localhost/casar_na_ilha/?post_type=acf-field&p=41', 1, 'acf-field', '', 0),
(42, 1, '2023-06-11 11:01:37', '2023-06-11 14:01:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:82:\"Olá, vim através do Casar na Ilha e gostaria de saber mais sobre seus serviços!\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Mensagem', 'message', 'publish', 'closed', 'closed', '', 'field_6485d34676559', '', '', '2023-06-11 11:01:37', '2023-06-11 14:01:37', '', 39, 'http://localhost/casar_na_ilha/?post_type=acf-field&p=42', 2, 'acf-field', '', 0),
(43, 1, '2023-06-11 11:01:37', '2023-06-11 14:01:37', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Facebook', 'facebook', 'publish', 'closed', 'closed', '', 'field_6485d3a77655a', '', '', '2023-06-11 11:01:37', '2023-06-11 14:01:37', '', 37, 'http://localhost/casar_na_ilha/?post_type=acf-field&p=43', 2, 'acf-field', '', 0),
(44, 1, '2023-06-11 11:04:54', '2023-06-11 14:04:54', 'a:18:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:5:\"large\";s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Galeria de fotos', 'gallery', 'publish', 'closed', 'closed', '', 'field_6485d3d03beb1', '', '', '2023-07-16 10:01:48', '2023-07-16 13:01:48', '', 31, 'http://localhost/casar_na_ilha/?post_type=acf-field&#038;p=44', 5, 'acf-field', '', 0),
(45, 1, '2023-06-14 21:38:15', '2023-06-15 00:38:15', 'Lorem ipsum dolor sit amet consectetur adipiscing elit nam risus, enim dictum hac egestas varius arcu aliquet mi, curabitur rhoncus porta laoreet sed maecenas erat taciti. Dictumst egestas suspendisse conubia quis montes imperdiet quam habitant commodo fames dignissim ad, mattis facilisi proin magna rutrum leo nunc et eu a. Sagittis semper tempus senectus viverra massa augue hendrerit molestie rhoncus, laoreet mollis nisl justo scelerisque eget donec vestibulum, fringilla velit gravida accumsan nunc dis morbi eros. Eros sapien curae urna conubia turpis sociis dapibus fames habitasse, congue potenti elementum suscipit eget cras ac luctus. Vitae sociis duis varius morbi fusce est proin aptent suscipit malesuada facilisis, commodo nascetur senectus pharetra aliquet condimentum enim tellus urna convallis taciti, faucibus penatibus vulputate interdum nullam hendrerit et non leo facilisi. Venenatis scelerisque congue risus tempor eros, class id ornare neque vitae, nascetur dictumst facilisis ad. Dignissim morbi parturient justo a montes nullam sollicitudin, nascetur vehicula erat magnis rutrum tempus quis ante, arcu nulla odio vel cras pharetra.', 'teste hospedagem', '', 'publish', 'closed', 'closed', '', 'teste-hospedagem', '', '', '2023-06-25 15:09:45', '2023-06-25 18:09:45', '', 0, 'http://localhost/casar_na_ilha/?post_type=fornecedor&#038;p=45', 0, 'fornecedor', '', 0),
(51, 1, '2023-06-18 16:50:25', '2023-06-18 19:50:25', '', 'teste', '', 'publish', 'closed', 'closed', '', 'teste', '', '', '2023-06-18 16:50:25', '2023-06-18 19:50:25', '', 0, 'http://localhost/casar_na_ilha/?page_id=51', 0, 'page', '', 0),
(52, 1, '2023-06-18 16:50:25', '2023-06-18 19:50:25', '', 'teste', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2023-06-18 16:50:25', '2023-06-18 19:50:25', '', 51, 'http://localhost/casar_na_ilha/?p=52', 0, 'revision', '', 0),
(53, 1, '2023-06-25 10:37:07', '2023-06-25 13:37:07', 'a:12:{s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:28:\"Selecione o tipo de anúncio\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:16:\"Banner principal\";s:16:\"Banner principal\";s:19:\"Fornecedor destaque\";s:19:\"Fornecedor destaque\";s:21:\"Destaque da categoria\";s:21:\"Destaque da categoria\";}s:12:\"allow_custom\";i:0;s:13:\"default_value\";a:0:{}s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"save_custom\";i:0;}', 'Tipo de anúncio', 'advertising-type', 'publish', 'closed', 'closed', '', 'field_6498427b42a1c', '', '', '2023-07-16 10:01:48', '2023-07-16 13:01:48', '', 31, 'http://localhost/casar_na_ilha/?post_type=acf-field&#038;p=53', 6, 'acf-field', '', 0),
(54, 1, '2023-06-25 10:52:41', '2023-06-25 13:52:41', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Localização', 'local', 'publish', 'closed', 'closed', '', 'field_649846709e8cf', '', '', '2023-07-16 10:01:48', '2023-07-16 13:01:48', '', 31, 'http://localhost/casar_na_ilha/?post_type=acf-field&#038;p=54', 7, 'acf-field', '', 0),
(55, 1, '2023-06-25 10:52:41', '2023-06-25 13:52:41', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Cidade', 'city', 'publish', 'closed', 'closed', '', 'field_649846889e8d0', '', '', '2023-06-25 10:52:41', '2023-06-25 13:52:41', '', 54, 'http://localhost/casar_na_ilha/?post_type=acf-field&p=55', 0, 'acf-field', '', 0),
(56, 1, '2023-06-25 10:52:41', '2023-06-25 13:52:41', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Bairro', 'neighborhood', 'publish', 'closed', 'closed', '', 'field_649846929e8d1', '', '', '2023-06-25 10:52:41', '2023-06-25 13:52:41', '', 54, 'http://localhost/casar_na_ilha/?post_type=acf-field&p=56', 1, 'acf-field', '', 0),
(57, 1, '2023-06-25 11:42:09', '2023-06-25 14:42:09', 'Lorem ipsum dolor sit amet consectetur adipiscing elit eleifend, euismod turpis gravida iaculis primis risus. Tincidunt nisl curabitur ullamcorper sapien risus elementum vitae, ultrices habitasse et ultricies habitant condimentum mus, suscipit velit eget sed facilisis sociosqu. Vitae at ligula libero quam vestibulum phasellus, rutrum scelerisque erat taciti euismod, montes natoque cum fames turpis. Metus dictum rhoncus odio a suscipit facilisis himenaeos praesent, ultricies pellentesque lobortis nibh dapibus nam blandit malesuada aenean, porta purus vulputate ridiculus hac at bibendum. Lacus sociis habitant platea per pretium nulla, mus scelerisque ante gravida accumsan. Diam posuere sed aliquam ligula urna curabitur nullam integer blandit, rhoncus lacinia ante id commodo dictumst pulvinar sapien ultrices, metus taciti donec laoreet rutrum et leo natoque. Placerat ullamcorper accumsan vel rhoncus hendrerit duis sodales conubia malesuada, phasellus cum laoreet tincidunt sapien primis pulvinar senectus sed, non orci ultrices vitae tellus parturient facilisis elementum. Sed nec dignissim montes maecenas metus purus erat suscipit himenaeos, habitant class risus ac turpis proin lacus sagittis malesuada ridiculus, dictumst faucibus habitasse praesent iaculis inceptos vehicula viverra. Torquent nam eros donec praesent vulputate gravida quam accumsan odio dapibus, class neque sagittis dis at porttitor aptent venenatis purus leo, litora habitant ultrices erat habitasse elementum phasellus nunc hendrerit. Nulla dictum vel accumsan pellentesque litora feugiat at id mi massa diam condimentum erat suscipit augue duis, fames morbi lacinia tortor rhoncus iaculis facilisis a magnis ut placerat primis natoque eros.', 'Salga', '', 'publish', 'closed', 'closed', '', 'salga', '', '', '2023-07-16 10:08:52', '2023-07-16 13:08:52', '', 0, 'http://localhost/casar_na_ilha/?post_type=fornecedor&#038;p=57', 0, 'fornecedor', '', 0),
(58, 1, '2023-06-25 15:29:33', '2023-06-25 18:29:33', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-06-25 15:29:33', '2023-06-25 18:29:33', '', 1, 'http://localhost/casar_na_ilha/?p=58', 0, 'revision', '', 0),
(59, 1, '2023-06-25 15:32:12', '2023-06-25 18:32:12', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipiscing elit nulla, sociis augue risus eget iaculis parturient porttitor rhoncus, auctor sollicitudin enim commodo nisi scelerisque egestas. Inceptos interdum convallis dis parturient pharetra class odio dictumst hendrerit nisi conubia, ante eget varius duis urna habitant id proin sociosqu risus rhoncus nec, nostra purus orci venenatis mauris cursus facilisis quis elementum egestas. Euismod at pellentesque suscipit ullamcorper mattis inceptos himenaeos, molestie sociis tincidunt laoreet cum congue per, sagittis tempus interdum fusce faucibus diam. Tristique porta nunc ullamcorper felis morbi sociis rutrum laoreet cursus dapibus scelerisque senectus, sociosqu viverra torquent enim donec est congue molestie pulvinar habitant mollis. Ligula euismod integer magnis odio elementum, nullam turpis sociosqu sollicitudin nostra nisi, porta habitasse felis egestas. Risus enim odio ornare et viverra ad ligula eu malesuada, diam nisi congue bibendum libero non egestas rutrum parturient, ut sollicitudin pretium vivamus commodo habitant praesent lacinia. Pharetra egestas velit aptent congue nisi duis integer dui tellus scelerisque per cum, mauris venenatis montes feugiat inceptos commodo tristique posuere fermentum nunc sapien. Dapibus commodo bibendum leo netus lobortis congue, condimentum nam faucibus nisl at, gravida diam pretium feugiat posuere. Ante enim pharetra sem luctus metus ultricies morbi aliquet, hendrerit sociosqu montes aptent viverra phasellus varius molestie, venenatis potenti facilisis malesuada vivamus aenean per.</p>\n<!-- /wp:paragraph -->', 'casar na ilha', '', 'publish', 'open', 'open', '', 'casar-na-ilha', '', '', '2023-06-25 15:32:12', '2023-06-25 18:32:12', '', 0, 'http://localhost/casar_na_ilha/?p=59', 0, 'post', '', 0),
(60, 1, '2023-06-25 15:32:12', '2023-06-25 18:32:12', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipiscing elit nulla, sociis augue risus eget iaculis parturient porttitor rhoncus, auctor sollicitudin enim commodo nisi scelerisque egestas. Inceptos interdum convallis dis parturient pharetra class odio dictumst hendrerit nisi conubia, ante eget varius duis urna habitant id proin sociosqu risus rhoncus nec, nostra purus orci venenatis mauris cursus facilisis quis elementum egestas. Euismod at pellentesque suscipit ullamcorper mattis inceptos himenaeos, molestie sociis tincidunt laoreet cum congue per, sagittis tempus interdum fusce faucibus diam. Tristique porta nunc ullamcorper felis morbi sociis rutrum laoreet cursus dapibus scelerisque senectus, sociosqu viverra torquent enim donec est congue molestie pulvinar habitant mollis. Ligula euismod integer magnis odio elementum, nullam turpis sociosqu sollicitudin nostra nisi, porta habitasse felis egestas. Risus enim odio ornare et viverra ad ligula eu malesuada, diam nisi congue bibendum libero non egestas rutrum parturient, ut sollicitudin pretium vivamus commodo habitant praesent lacinia. Pharetra egestas velit aptent congue nisi duis integer dui tellus scelerisque per cum, mauris venenatis montes feugiat inceptos commodo tristique posuere fermentum nunc sapien. Dapibus commodo bibendum leo netus lobortis congue, condimentum nam faucibus nisl at, gravida diam pretium feugiat posuere. Ante enim pharetra sem luctus metus ultricies morbi aliquet, hendrerit sociosqu montes aptent viverra phasellus varius molestie, venenatis potenti facilisis malesuada vivamus aenean per.</p>\n<!-- /wp:paragraph -->', 'casar na ilha', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2023-06-25 15:32:12', '2023-06-25 18:32:12', '', 59, 'http://localhost/casar_na_ilha/?p=60', 0, 'revision', '', 0),
(61, 1, '2023-06-26 14:17:59', '2023-06-26 17:17:59', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipiscing elit aenean, curabitur maecenas conubia integer semper cras vitae, viverra accumsan consequat pharetra justo velit sem. Sagittis iaculis sollicitudin venenatis luctus congue leo eleifend tellus vivamus, vehicula quam est turpis a curae metus natoque convallis, mus commodo dictumst auctor dis velit porttitor tempor. Varius laoreet nisi litora iaculis feugiat condimentum molestie accumsan aenean nunc aptent sapien egestas, himenaeos montes senectus lobortis ridiculus ac consequat tempor a primis euismod. Velit interdum tellus id mollis phasellus cubilia arcu lacinia felis, primis et viverra pretium neque magnis vitae quis quisque a, rutrum class sem sagittis malesuada orci risus aptent. Eget vulputate maecenas nullam augue sagittis sodales dictum nascetur placerat arcu quisque porta, nisi magnis integer viverra id nunc felis rhoncus per orci parturient. Sociosqu enim nullam libero urna praesent morbi ullamcorper eu ultrices consequat vel dis, sagittis mollis vulputate nunc semper feugiat id ad sollicitudin porttitor.</p>\n<!-- /wp:paragraph -->', 'Como agendar uma visita', '', 'publish', 'open', 'open', '', 'como-agendar-uma-visita', '', '', '2023-06-26 14:17:59', '2023-06-26 17:17:59', '', 0, 'http://localhost/casar_na_ilha/?p=61', 0, 'post', '', 0),
(62, 1, '2023-06-26 14:17:59', '2023-06-26 17:17:59', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipiscing elit aenean, curabitur maecenas conubia integer semper cras vitae, viverra accumsan consequat pharetra justo velit sem. Sagittis iaculis sollicitudin venenatis luctus congue leo eleifend tellus vivamus, vehicula quam est turpis a curae metus natoque convallis, mus commodo dictumst auctor dis velit porttitor tempor. Varius laoreet nisi litora iaculis feugiat condimentum molestie accumsan aenean nunc aptent sapien egestas, himenaeos montes senectus lobortis ridiculus ac consequat tempor a primis euismod. Velit interdum tellus id mollis phasellus cubilia arcu lacinia felis, primis et viverra pretium neque magnis vitae quis quisque a, rutrum class sem sagittis malesuada orci risus aptent. Eget vulputate maecenas nullam augue sagittis sodales dictum nascetur placerat arcu quisque porta, nisi magnis integer viverra id nunc felis rhoncus per orci parturient. Sociosqu enim nullam libero urna praesent morbi ullamcorper eu ultrices consequat vel dis, sagittis mollis vulputate nunc semper feugiat id ad sollicitudin porttitor.</p>\n<!-- /wp:paragraph -->', 'Como agendar uma visita', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2023-06-26 14:17:59', '2023-06-26 17:17:59', '', 61, 'http://localhost/casar_na_ilha/?p=62', 0, 'revision', '', 0),
(64, 1, '2023-06-26 14:22:45', '2023-06-26 17:22:45', '', 'Teste blog', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2023-06-26 14:22:45', '2023-06-26 17:22:45', '', 0, 'http://localhost/casar_na_ilha/?p=64', 0, 'post', '', 0),
(65, 1, '2023-06-26 14:22:45', '2023-06-26 17:22:45', '', 'Teste blog', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2023-06-26 14:22:45', '2023-06-26 17:22:45', '', 64, 'http://localhost/casar_na_ilha/?p=65', 0, 'revision', '', 0),
(66, 1, '2023-06-26 14:25:12', '2023-06-26 17:25:12', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipiscing, elit taciti nostra cum dis phasellus, luctus laoreet diam facilisis dignissim. Sociosqu sollicitudin consequat nec ultrices iaculis fringilla feugiat, penatibus himenaeos malesuada fusce lobortis vel molestie, non interdum erat morbi porta orci. Cras lectus pellentesque natoque turpis sollicitudin accumsan auctor habitant ad, id lacinia molestie integer feugiat dictumst litora augue purus, nascetur erat a commodo varius iaculis velit conubia. Quisque arcu ultrices molestie risus netus justo at mi mus semper, consequat bibendum aenean pretium leo morbi faucibus convallis egestas, enim habitant eros fames gravida eget ullamcorper nam per. Ornare vel nullam diam ultrices torquent ante nec quam sodales nostra tempus, commodo mauris aliquam faucibus blandit nunc feugiat pellentesque auctor. Purus aliquam proin magna class rutrum lobortis, integer euismod phasellus sem non sociosqu, urna turpis natoque a vel. Mus taciti interdum etiam tempus nam eros vestibulum phasellus aliquet ac a ad montes, hac parturient id diam tellus lacus fringilla aptent habitant nunc maecenas.</p>\n<!-- /wp:paragraph -->', 'testando', '', 'publish', 'open', 'open', '', 'testando', '', '', '2023-06-26 14:26:33', '2023-06-26 17:26:33', '', 0, 'http://localhost/casar_na_ilha/?p=66', 0, 'post', '', 0),
(67, 1, '2023-06-26 14:25:12', '2023-06-26 17:25:12', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipiscing, elit taciti nostra cum dis phasellus, luctus laoreet diam facilisis dignissim. Sociosqu sollicitudin consequat nec ultrices iaculis fringilla feugiat, penatibus himenaeos malesuada fusce lobortis vel molestie, non interdum erat morbi porta orci. Cras lectus pellentesque natoque turpis sollicitudin accumsan auctor habitant ad, id lacinia molestie integer feugiat dictumst litora augue purus, nascetur erat a commodo varius iaculis velit conubia. Quisque arcu ultrices molestie risus netus justo at mi mus semper, consequat bibendum aenean pretium leo morbi faucibus convallis egestas, enim habitant eros fames gravida eget ullamcorper nam per. Ornare vel nullam diam ultrices torquent ante nec quam sodales nostra tempus, commodo mauris aliquam faucibus blandit nunc feugiat pellentesque auctor. Purus aliquam proin magna class rutrum lobortis, integer euismod phasellus sem non sociosqu, urna turpis natoque a vel. Mus taciti interdum etiam tempus nam eros vestibulum phasellus aliquet ac a ad montes, hac parturient id diam tellus lacus fringilla aptent habitant nunc maecenas.</p>\n<!-- /wp:paragraph -->', 'testando', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2023-06-26 14:25:12', '2023-06-26 17:25:12', '', 66, 'http://localhost/casar_na_ilha/?p=67', 0, 'revision', '', 0),
(69, 1, '2023-06-30 09:50:25', '2023-06-30 12:50:25', '', 'Casar na Ilha', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2023-06-30 09:50:25', '2023-06-30 12:50:25', '', 16, 'http://localhost/casar_na_ilha/?p=69', 0, 'revision', '', 0),
(70, 1, '2023-06-30 09:54:27', '2023-06-30 12:54:27', '', 'Casar na Ilha', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2023-06-30 09:54:27', '2023-06-30 12:54:27', '', 16, 'http://localhost/casar_na_ilha/?p=70', 0, 'revision', '', 0),
(71, 1, '2023-06-30 09:55:29', '2023-06-30 12:55:29', '', 'Casar na Ilha', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2023-06-30 09:55:29', '2023-06-30 12:55:29', '', 16, 'http://localhost/casar_na_ilha/?p=71', 0, 'revision', '', 0),
(73, 1, '2023-07-08 21:50:51', '2023-07-09 00:50:51', '', 'Casar na Ilha', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2023-07-08 21:50:51', '2023-07-09 00:50:51', '', 16, 'http://localhost/casar_na_ilha/?p=73', 0, 'revision', '', 0),
(74, 1, '2023-07-08 21:51:14', '2023-07-09 00:51:14', '', 'Casar na Ilha', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2023-07-08 21:51:14', '2023-07-09 00:51:14', '', 16, 'http://localhost/casar_na_ilha/?p=74', 0, 'revision', '', 0),
(75, 1, '2023-07-08 21:51:28', '2023-07-09 00:51:28', '', 'Casar na Ilha', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2023-07-08 21:51:28', '2023-07-09 00:51:28', '', 16, 'http://localhost/casar_na_ilha/?p=75', 0, 'revision', '', 0),
(80, 1, '2023-07-17 20:30:39', '2023-07-17 23:30:39', '', 'Casar na Ilha', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2023-07-17 20:30:39', '2023-07-17 23:30:39', '', 16, 'http://localhost/casar_na_ilha/?p=80', 0, 'revision', '', 0),
(81, 1, '2023-07-18 18:52:00', '2023-07-18 21:52:00', 'Lorem ipsum dolor sit amet consectetur adipiscing elit purus facilisi bibendum, blandit fames ultricies dapibus fusce potenti scelerisque accumsan donec, luctus odio senectus habitant sem nam proin mi gravida. Pulvinar lacinia velit dictum ante quam, placerat lacus facilisis auctor. Nunc leo habitasse lacinia praesent montes sem potenti tempor est erat orci, congue tortor ornare aptent id fames curabitur integer nibh fusce blandit, ligula inceptos molestie venenatis ultrices pellentesque eget nulla interdum aenean. Blandit malesuada odio lacus neque hac sociis inceptos, senectus tristique class nullam volutpat eleifend, platea sodales orci sociosqu metus facilisi. Vulputate turpis lacus varius augue litora curae fringilla natoque scelerisque, curabitur sodales venenatis condimentum senectus ante dictum nisl posuere risus, leo convallis montes ac sagittis congue parturient mattis. Pulvinar magna leo potenti justo magnis aenean in primis rutrum laoreet tellus, senectus platea nisi fermentum ligula taciti ultrices a enim tempor sed euismod, non sodales per morbi vehicula consequat habitasse mus neque torquent.', 'Pouso da Vó Vilma', '', 'publish', 'closed', 'closed', '', 'pouso-da-vo-vilma', '', '', '2023-07-19 15:03:15', '2023-07-19 18:03:15', '', 0, 'http://localhost/casar_na_ilha/?post_type=fornecedor&#038;p=81', 0, 'fornecedor', '', 0),
(82, 1, '2023-07-18 18:51:50', '2023-07-18 21:51:50', '', 'item4', '', 'inherit', 'open', 'closed', '', 'item4', '', '', '2023-07-18 18:51:50', '2023-07-18 21:51:50', '', 81, 'http://localhost/casar_na_ilha/wp-content/uploads/2023/07/item4.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2023-07-19 14:12:06', '2023-07-19 17:12:06', '', 'Casar na Ilha', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2023-07-19 14:12:06', '2023-07-19 17:12:06', '', 16, 'http://localhost/casar_na_ilha/?p=83', 0, 'revision', '', 0),
(84, 1, '2023-07-20 10:46:45', '2023-07-20 13:46:40', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2023-07-20 10:46:45', '2023-07-20 13:46:45', '', 0, 'http://localhost/casar_na_ilha/?p=84', 1, 'nav_menu_item', '', 0),
(85, 1, '2023-07-20 10:46:45', '2023-07-20 13:46:40', ' ', '', '', 'publish', 'closed', 'closed', '', '85', '', '', '2023-07-20 10:46:45', '2023-07-20 13:46:45', '', 0, 'http://localhost/casar_na_ilha/?p=85', 2, 'nav_menu_item', '', 0),
(86, 1, '2023-07-20 10:46:45', '2023-07-20 13:46:40', ' ', '', '', 'publish', 'closed', 'closed', '', '86', '', '', '2023-07-20 10:46:45', '2023-07-20 13:46:45', '', 0, 'http://localhost/casar_na_ilha/?p=86', 3, 'nav_menu_item', '', 0),
(87, 1, '2023-07-20 10:46:45', '2023-07-20 13:46:40', ' ', '', '', 'publish', 'closed', 'closed', '', '87', '', '', '2023-07-20 10:46:45', '2023-07-20 13:46:45', '', 0, 'http://localhost/casar_na_ilha/?p=87', 4, 'nav_menu_item', '', 0),
(88, 1, '2023-07-20 10:46:45', '2023-07-20 13:46:40', ' ', '', '', 'publish', 'closed', 'closed', '', '88', '', '', '2023-07-20 10:46:45', '2023-07-20 13:46:45', '', 0, 'http://localhost/casar_na_ilha/?p=88', 5, 'nav_menu_item', '', 0),
(89, 1, '2023-07-20 10:46:45', '2023-07-20 13:46:40', ' ', '', '', 'publish', 'closed', 'closed', '', '89', '', '', '2023-07-20 10:46:45', '2023-07-20 13:46:45', '', 0, 'http://localhost/casar_na_ilha/?p=89', 6, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'category_image', '27'),
(2, 2, '_category_image', 'field_64849e53eb0d1'),
(3, 3, 'category_image', ''),
(4, 3, '_category_image', 'field_64849e53eb0d1'),
(5, 4, 'category_image', ''),
(6, 4, '_category_image', 'field_64849e53eb0d1'),
(7, 5, 'category_image', ''),
(8, 5, '_category_image', 'field_64849e53eb0d1'),
(9, 6, 'category_image', ''),
(10, 6, '_category_image', 'field_64849e53eb0d1'),
(11, 7, 'category_image', ''),
(12, 7, '_category_image', 'field_64849e53eb0d1');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'Buffet', 'buffet', 0),
(3, 'Vallet', 'vallet', 0),
(4, 'Decoracao', 'decoracao', 0),
(5, 'Hospedagem', 'hospedagem', 0),
(6, 'Doceria', 'doceria', 0),
(7, 'Filmagem', 'filmagem', 0),
(8, 'menu-principal', 'menu-principal', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(29, 2, 0),
(29, 3, 0),
(29, 4, 0),
(29, 5, 0),
(29, 6, 0),
(29, 7, 0),
(45, 2, 0),
(45, 3, 0),
(45, 4, 0),
(45, 5, 0),
(45, 6, 0),
(45, 7, 0),
(57, 2, 0),
(57, 3, 0),
(57, 4, 0),
(57, 5, 0),
(57, 6, 0),
(57, 7, 0),
(59, 1, 0),
(61, 1, 0),
(64, 1, 0),
(66, 1, 0),
(81, 5, 0),
(84, 8, 0),
(85, 8, 0),
(86, 8, 0),
(87, 8, 0),
(88, 8, 0),
(89, 8, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'tipo', '', 0, 3),
(3, 3, 'tipo', '', 0, 3),
(4, 4, 'tipo', '', 0, 3),
(5, 5, 'tipo', '', 0, 4),
(6, 6, 'tipo', '', 0, 3),
(7, 7, 'tipo', 'Lorem ipsum dolor sit amet consectetur adipiscing elit dapibus class, a montes est pharetra purus nunc libero pulvinar. In ridiculus orci curabitur quis consequat ullamcorper sagittis vivamus curae feugiat, mattis ligula purus suscipit lectus erat non nostra nulla, viverra placerat netus ultricies arcu euismod conubia ac imperdiet. Molestie risus integer habitasse dictum class at maecenas euismod fames auctor urna facilisi, torquent posuere pellentesque nibh pharetra non tortor iaculis nunc quis. Condimentum ac proin porttitor ornare feugiat netus, facilisis suspendisse vestibulum mollis inceptos, fringilla platea neque elementum justo. Cras sodales cum tellus facilisi molestie mauris egestas torquent fringilla curabitur pellentesque vehicula, tristique cursus iaculis condimentum litora et a etiam nunc mollis. Velit sociosqu integer vivamus inceptos ante habitant convallis, elementum nunc quisque eu vel risus aliquet viverra, penatibus blandit himenaeos ultrices sem nec. Maecenas nascetur turpis eu imperdiet dis eget sociosqu ridiculus arcu, vel justo libero metus dui nec curae commodo ornare ultrices, natoque inceptos cubilia velit praesent orci sodales nisi.', 0, 3),
(8, 8, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'developer'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"862a9eff98a72fa1fd68005cff1efc499bda996b7abf148401dd7faa449404a4\";a:4:{s:10:\"expiration\";i:1690203819;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1690031019;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '77'),
(18, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:4:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:14:\"fullscreenMode\";b:0;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:14:\"featured-image\";}}s:9:\"_modified\";s:24:\"2023-06-25T18:29:27.729Z\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o'),
(20, 1, 'wp_user-settings-time', '1686422840'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:24:\"add-post-type-fornecedor\";i:1;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '8'),
(24, 1, 'closedpostboxes_nav-menus', 'a:0:{}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'developer', '$P$BD.KMl6Axl/IVpPzGNhnwEnU1ueTDp/', 'developer', 'gabrielrrtolkien@gmail.com', 'http://localhost/casar_na_ilha', '2023-06-09 18:31:32', '', 0, 'developer');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices de tabela `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices de tabela `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices de tabela `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=747;

--
-- AUTO_INCREMENT de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1116;

--
-- AUTO_INCREMENT de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
