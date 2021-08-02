-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2021 at 03:03 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_actiondom`
--

CREATE TABLE `modx_access_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_actions`
--

CREATE TABLE `modx_access_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_category`
--

CREATE TABLE `modx_access_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_context`
--

CREATE TABLE `modx_access_context` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_access_context`
--

INSERT INTO `modx_access_context` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`) VALUES
(1, 'web', 'modUserGroup', 0, 9999, 3),
(2, 'mgr', 'modUserGroup', 1, 0, 2),
(3, 'web', 'modUserGroup', 1, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_elements`
--

CREATE TABLE `modx_access_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_media_source`
--

CREATE TABLE `modx_access_media_source` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_menus`
--

CREATE TABLE `modx_access_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_namespace`
--

CREATE TABLE `modx_access_namespace` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_permissions`
--

CREATE TABLE `modx_access_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `value` tinyint(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_access_permissions`
--

INSERT INTO `modx_access_permissions` (`id`, `template`, `name`, `description`, `value`) VALUES
(1, 1, 'about', 'perm.about_desc', 1),
(2, 1, 'access_permissions', 'perm.access_permissions_desc', 1),
(3, 1, 'actions', 'perm.actions_desc', 1),
(4, 1, 'change_password', 'perm.change_password_desc', 1),
(5, 1, 'change_profile', 'perm.change_profile_desc', 1),
(6, 1, 'charsets', 'perm.charsets_desc', 1),
(7, 1, 'class_map', 'perm.class_map_desc', 1),
(8, 1, 'components', 'perm.components_desc', 1),
(9, 1, 'content_types', 'perm.content_types_desc', 1),
(10, 1, 'countries', 'perm.countries_desc', 1),
(11, 1, 'create', 'perm.create_desc', 1),
(12, 1, 'credits', 'perm.credits_desc', 1),
(13, 1, 'customize_forms', 'perm.customize_forms_desc', 1),
(14, 1, 'dashboards', 'perm.dashboards_desc', 1),
(15, 1, 'database', 'perm.database_desc', 1),
(16, 1, 'database_truncate', 'perm.database_truncate_desc', 1),
(17, 1, 'delete_category', 'perm.delete_category_desc', 1),
(18, 1, 'delete_chunk', 'perm.delete_chunk_desc', 1),
(19, 1, 'delete_context', 'perm.delete_context_desc', 1),
(20, 1, 'delete_document', 'perm.delete_document_desc', 1),
(21, 1, 'delete_weblink', 'perm.delete_weblink_desc', 1),
(22, 1, 'delete_symlink', 'perm.delete_symlink_desc', 1),
(23, 1, 'delete_static_resource', 'perm.delete_static_resource_desc', 1),
(24, 1, 'delete_eventlog', 'perm.delete_eventlog_desc', 1),
(25, 1, 'delete_plugin', 'perm.delete_plugin_desc', 1),
(26, 1, 'delete_propertyset', 'perm.delete_propertyset_desc', 1),
(27, 1, 'delete_snippet', 'perm.delete_snippet_desc', 1),
(28, 1, 'delete_template', 'perm.delete_template_desc', 1),
(29, 1, 'delete_tv', 'perm.delete_tv_desc', 1),
(30, 1, 'delete_role', 'perm.delete_role_desc', 1),
(31, 1, 'delete_user', 'perm.delete_user_desc', 1),
(32, 1, 'directory_chmod', 'perm.directory_chmod_desc', 1),
(33, 1, 'directory_create', 'perm.directory_create_desc', 1),
(34, 1, 'directory_list', 'perm.directory_list_desc', 1),
(35, 1, 'directory_remove', 'perm.directory_remove_desc', 1),
(36, 1, 'directory_update', 'perm.directory_update_desc', 1),
(37, 1, 'edit_category', 'perm.edit_category_desc', 1),
(38, 1, 'edit_chunk', 'perm.edit_chunk_desc', 1),
(39, 1, 'edit_context', 'perm.edit_context_desc', 1),
(40, 1, 'edit_document', 'perm.edit_document_desc', 1),
(41, 1, 'edit_weblink', 'perm.edit_weblink_desc', 1),
(42, 1, 'edit_symlink', 'perm.edit_symlink_desc', 1),
(43, 1, 'edit_static_resource', 'perm.edit_static_resource_desc', 1),
(44, 1, 'edit_locked', 'perm.edit_locked_desc', 1),
(45, 1, 'edit_plugin', 'perm.edit_plugin_desc', 1),
(46, 1, 'edit_propertyset', 'perm.edit_propertyset_desc', 1),
(47, 1, 'edit_role', 'perm.edit_role_desc', 1),
(48, 1, 'edit_snippet', 'perm.edit_snippet_desc', 1),
(49, 1, 'edit_template', 'perm.edit_template_desc', 1),
(50, 1, 'edit_tv', 'perm.edit_tv_desc', 1),
(51, 1, 'edit_user', 'perm.edit_user_desc', 1),
(52, 1, 'element_tree', 'perm.element_tree_desc', 1),
(53, 1, 'empty_cache', 'perm.empty_cache_desc', 1),
(54, 1, 'error_log_erase', 'perm.error_log_erase_desc', 1),
(55, 1, 'error_log_view', 'perm.error_log_view_desc', 1),
(56, 1, 'export_static', 'perm.export_static_desc', 1),
(57, 1, 'file_create', 'perm.file_create_desc', 1),
(58, 1, 'file_list', 'perm.file_list_desc', 1),
(59, 1, 'file_manager', 'perm.file_manager_desc', 1),
(60, 1, 'file_remove', 'perm.file_remove_desc', 1),
(61, 1, 'file_tree', 'perm.file_tree_desc', 1),
(62, 1, 'file_update', 'perm.file_update_desc', 1),
(63, 1, 'file_upload', 'perm.file_upload_desc', 1),
(64, 1, 'file_unpack', 'perm.file_unpack_desc', 1),
(65, 1, 'file_view', 'perm.file_view_desc', 1),
(66, 1, 'flush_sessions', 'perm.flush_sessions_desc', 1),
(67, 1, 'frames', 'perm.frames_desc', 1),
(68, 1, 'help', 'perm.help_desc', 1),
(69, 1, 'home', 'perm.home_desc', 1),
(70, 1, 'import_static', 'perm.import_static_desc', 1),
(71, 1, 'languages', 'perm.languages_desc', 1),
(72, 1, 'lexicons', 'perm.lexicons_desc', 1),
(73, 1, 'list', 'perm.list_desc', 1),
(74, 1, 'load', 'perm.load_desc', 1),
(75, 1, 'logout', 'perm.logout_desc', 1),
(76, 1, 'logs', 'perm.logs_desc', 1),
(77, 1, 'menu_reports', 'perm.menu_reports_desc', 1),
(78, 1, 'menu_security', 'perm.menu_security_desc', 1),
(79, 1, 'menu_site', 'perm.menu_site_desc', 1),
(80, 1, 'menu_support', 'perm.menu_support_desc', 1),
(81, 1, 'menu_system', 'perm.menu_system_desc', 1),
(82, 1, 'menu_tools', 'perm.menu_tools_desc', 1),
(83, 1, 'menu_trash', 'perm.menu_trash_desc', 1),
(84, 1, 'menu_user', 'perm.menu_user_desc', 1),
(85, 1, 'menus', 'perm.menus_desc', 1),
(86, 1, 'messages', 'perm.messages_desc', 1),
(87, 1, 'namespaces', 'perm.namespaces_desc', 1),
(88, 1, 'new_category', 'perm.new_category_desc', 1),
(89, 1, 'new_chunk', 'perm.new_chunk_desc', 1),
(90, 1, 'new_context', 'perm.new_context_desc', 1),
(91, 1, 'new_document', 'perm.new_document_desc', 1),
(92, 1, 'new_static_resource', 'perm.new_static_resource_desc', 1),
(93, 1, 'new_symlink', 'perm.new_symlink_desc', 1),
(94, 1, 'new_weblink', 'perm.new_weblink_desc', 1),
(95, 1, 'new_document_in_root', 'perm.new_document_in_root_desc', 1),
(96, 1, 'new_plugin', 'perm.new_plugin_desc', 1),
(97, 1, 'new_propertyset', 'perm.new_propertyset_desc', 1),
(98, 1, 'new_role', 'perm.new_role_desc', 1),
(99, 1, 'new_snippet', 'perm.new_snippet_desc', 1),
(100, 1, 'new_template', 'perm.new_template_desc', 1),
(101, 1, 'new_tv', 'perm.new_tv_desc', 1),
(102, 1, 'new_user', 'perm.new_user_desc', 1),
(103, 1, 'packages', 'perm.packages_desc', 1),
(104, 1, 'policy_delete', 'perm.policy_delete_desc', 1),
(105, 1, 'policy_edit', 'perm.policy_edit_desc', 1),
(106, 1, 'policy_new', 'perm.policy_new_desc', 1),
(107, 1, 'policy_save', 'perm.policy_save_desc', 1),
(108, 1, 'policy_view', 'perm.policy_view_desc', 1),
(109, 1, 'policy_template_delete', 'perm.policy_template_delete_desc', 1),
(110, 1, 'policy_template_edit', 'perm.policy_template_edit_desc', 1),
(111, 1, 'policy_template_new', 'perm.policy_template_new_desc', 1),
(112, 1, 'policy_template_save', 'perm.policy_template_save_desc', 1),
(113, 1, 'policy_template_view', 'perm.policy_template_view_desc', 1),
(114, 1, 'property_sets', 'perm.property_sets_desc', 1),
(115, 1, 'providers', 'perm.providers_desc', 1),
(116, 1, 'publish_document', 'perm.publish_document_desc', 1),
(117, 1, 'purge_deleted', 'perm.purge_deleted_desc', 1),
(118, 1, 'remove', 'perm.remove_desc', 1),
(119, 1, 'remove_locks', 'perm.remove_locks_desc', 1),
(120, 1, 'resource_duplicate', 'perm.resource_duplicate_desc', 1),
(121, 1, 'resourcegroup_delete', 'perm.resourcegroup_delete_desc', 1),
(122, 1, 'resourcegroup_edit', 'perm.resourcegroup_edit_desc', 1),
(123, 1, 'resourcegroup_new', 'perm.resourcegroup_new_desc', 1),
(124, 1, 'resourcegroup_resource_edit', 'perm.resourcegroup_resource_edit_desc', 1),
(125, 1, 'resourcegroup_resource_list', 'perm.resourcegroup_resource_list_desc', 1),
(126, 1, 'resourcegroup_save', 'perm.resourcegroup_save_desc', 1),
(127, 1, 'resourcegroup_view', 'perm.resourcegroup_view_desc', 1),
(128, 1, 'resource_quick_create', 'perm.resource_quick_create_desc', 1),
(129, 1, 'resource_quick_update', 'perm.resource_quick_update_desc', 1),
(130, 1, 'resource_tree', 'perm.resource_tree_desc', 1),
(131, 1, 'save', 'perm.save_desc', 1),
(132, 1, 'save_category', 'perm.save_category_desc', 1),
(133, 1, 'save_chunk', 'perm.save_chunk_desc', 1),
(134, 1, 'save_context', 'perm.save_context_desc', 1),
(135, 1, 'save_document', 'perm.save_document_desc', 1),
(136, 1, 'save_plugin', 'perm.save_plugin_desc', 1),
(137, 1, 'save_propertyset', 'perm.save_propertyset_desc', 1),
(138, 1, 'save_role', 'perm.save_role_desc', 1),
(139, 1, 'save_snippet', 'perm.save_snippet_desc', 1),
(140, 1, 'save_template', 'perm.save_template_desc', 1),
(141, 1, 'save_tv', 'perm.save_tv_desc', 1),
(142, 1, 'save_user', 'perm.save_user_desc', 1),
(143, 1, 'search', 'perm.search_desc', 1),
(144, 1, 'set_sudo', 'perm.set_sudo_desc', 1),
(145, 1, 'settings', 'perm.settings_desc', 1),
(146, 1, 'events', 'perm.events_desc', 1),
(147, 1, 'source_save', 'perm.source_save_desc', 1),
(148, 1, 'source_delete', 'perm.source_delete_desc', 1),
(149, 1, 'source_edit', 'perm.source_edit_desc', 1),
(150, 1, 'source_view', 'perm.source_view_desc', 1),
(151, 1, 'sources', 'perm.sources_desc', 1),
(152, 1, 'steal_locks', 'perm.steal_locks_desc', 1),
(153, 1, 'tree_show_element_ids', 'perm.tree_show_element_ids_desc', 1),
(154, 1, 'tree_show_resource_ids', 'perm.tree_show_resource_ids_desc', 1),
(155, 1, 'undelete_document', 'perm.undelete_document_desc', 1),
(156, 1, 'unpublish_document', 'perm.unpublish_document_desc', 1),
(157, 1, 'unlock_element_properties', 'perm.unlock_element_properties_desc', 1),
(158, 1, 'usergroup_delete', 'perm.usergroup_delete_desc', 1),
(159, 1, 'usergroup_edit', 'perm.usergroup_edit_desc', 1),
(160, 1, 'usergroup_new', 'perm.usergroup_new_desc', 1),
(161, 1, 'usergroup_save', 'perm.usergroup_save_desc', 1),
(162, 1, 'usergroup_user_edit', 'perm.usergroup_user_edit_desc', 1),
(163, 1, 'usergroup_user_list', 'perm.usergroup_user_list_desc', 1),
(164, 1, 'usergroup_view', 'perm.usergroup_view_desc', 1),
(165, 1, 'view', 'perm.view_desc', 1),
(166, 1, 'view_category', 'perm.view_category_desc', 1),
(167, 1, 'view_chunk', 'perm.view_chunk_desc', 1),
(168, 1, 'view_context', 'perm.view_context_desc', 1),
(169, 1, 'view_document', 'perm.view_document_desc', 1),
(170, 1, 'view_element', 'perm.view_element_desc', 1),
(171, 1, 'view_eventlog', 'perm.view_eventlog_desc', 1),
(172, 1, 'view_offline', 'perm.view_offline_desc', 1),
(173, 1, 'view_plugin', 'perm.view_plugin_desc', 1),
(174, 1, 'view_propertyset', 'perm.view_propertyset_desc', 1),
(175, 1, 'view_role', 'perm.view_role_desc', 1),
(176, 1, 'view_snippet', 'perm.view_snippet_desc', 1),
(177, 1, 'view_sysinfo', 'perm.view_sysinfo_desc', 1),
(178, 1, 'view_template', 'perm.view_template_desc', 1),
(179, 1, 'view_tv', 'perm.view_tv_desc', 1),
(180, 1, 'view_user', 'perm.view_user_desc', 1),
(181, 1, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(182, 1, 'workspaces', 'perm.workspaces_desc', 1),
(183, 2, 'add_children', 'perm.add_children_desc', 1),
(184, 2, 'copy', 'perm.copy_desc', 1),
(185, 2, 'create', 'perm.create_desc', 1),
(186, 2, 'delete', 'perm.delete_desc', 1),
(187, 2, 'list', 'perm.list_desc', 1),
(188, 2, 'load', 'perm.load_desc', 1),
(189, 2, 'move', 'perm.move_desc', 1),
(190, 2, 'publish', 'perm.publish_desc', 1),
(191, 2, 'remove', 'perm.remove_desc', 1),
(192, 2, 'save', 'perm.save_desc', 1),
(193, 2, 'steal_lock', 'perm.steal_lock_desc', 1),
(194, 2, 'undelete', 'perm.undelete_desc', 1),
(195, 2, 'unpublish', 'perm.unpublish_desc', 1),
(196, 2, 'view', 'perm.view_desc', 1),
(197, 3, 'load', 'perm.load_desc', 1),
(198, 3, 'list', 'perm.list_desc', 1),
(199, 3, 'view', 'perm.view_desc', 1),
(200, 3, 'save', 'perm.save_desc', 1),
(201, 3, 'remove', 'perm.remove_desc', 1),
(202, 4, 'add_children', 'perm.add_children_desc', 1),
(203, 4, 'create', 'perm.create_desc', 1),
(204, 4, 'copy', 'perm.copy_desc', 1),
(205, 4, 'delete', 'perm.delete_desc', 1),
(206, 4, 'list', 'perm.list_desc', 1),
(207, 4, 'load', 'perm.load_desc', 1),
(208, 4, 'remove', 'perm.remove_desc', 1),
(209, 4, 'save', 'perm.save_desc', 1),
(210, 4, 'view', 'perm.view_desc', 1),
(211, 5, 'create', 'perm.create_desc', 1),
(212, 5, 'copy', 'perm.copy_desc', 1),
(213, 5, 'list', 'perm.list_desc', 1),
(214, 5, 'load', 'perm.load_desc', 1),
(215, 5, 'remove', 'perm.remove_desc', 1),
(216, 5, 'save', 'perm.save_desc', 1),
(217, 5, 'view', 'perm.view_desc', 1),
(218, 6, 'load', 'perm.load_desc', 1),
(219, 6, 'list', 'perm.list_desc', 1),
(220, 6, 'view', 'perm.view_desc', 1),
(221, 6, 'save', 'perm.save_desc', 1),
(222, 6, 'remove', 'perm.remove_desc', 1),
(223, 6, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(224, 6, 'copy', 'perm.copy_desc', 1),
(225, 7, 'list', 'perm.list_desc', 1),
(226, 7, 'load', 'perm.load_desc', 1),
(227, 7, 'view', 'perm.view_desc', 1),
(228, 1, 'formit', 'To view the formit package.', 1),
(229, 1, 'formit_encryptions', 'To view the formit package, encriptions part.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_policies`
--

CREATE TABLE `modx_access_policies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `template` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `class` varchar(191) NOT NULL DEFAULT '',
  `data` text DEFAULT NULL,
  `lexicon` varchar(191) NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_access_policies`
--

INSERT INTO `modx_access_policies` (`id`, `name`, `description`, `parent`, `template`, `class`, `data`, `lexicon`) VALUES
(1, 'Resource', 'MODX Resource Policy with all attributes.', 0, 2, '', '{\"add_children\":true,\"create\":true,\"copy\":true,\"delete\":true,\"list\":true,\"load\":true,\"move\":true,\"publish\":true,\"remove\":true,\"save\":true,\"steal_lock\":true,\"undelete\":true,\"unpublish\":true,\"view\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(2, 'Administrator', 'Context administration policy with all permissions.', 0, 1, '', '{\"about\":true,\"access_permissions\":true,\"actions\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"database_truncate\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_weblink\":true,\"delete_symlink\":true,\"delete_static_resource\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_weblink\":true,\"edit_symlink\":true,\"edit_static_resource\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"events\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_unpack\":true,\"file_view\":true,\"flush_sessions\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menus\":true,\"menu_reports\":true,\"menu_security\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"policy_delete\":true,\"policy_edit\":true,\"policy_new\":true,\"policy_save\":true,\"policy_template_delete\":true,\"policy_template_edit\":true,\"policy_template_new\":true,\"policy_template_save\":true,\"policy_template_view\":true,\"policy_view\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"remove_locks\":true,\"resource_duplicate\":true,\"resourcegroup_delete\":true,\"resourcegroup_edit\":true,\"resourcegroup_new\":true,\"resourcegroup_resource_edit\":true,\"resourcegroup_resource_list\":true,\"resourcegroup_save\":true,\"resourcegroup_view\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_role\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"set_sudo\":true,\"settings\":true,\"sources\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"steal_locks\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"usergroup_delete\":true,\"usergroup_edit\":true,\"usergroup_new\":true,\"usergroup_save\":true,\"usergroup_user_edit\":true,\"usergroup_user_list\":true,\"usergroup_view\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true,\"formit\":true,\"formit_encryptions\":true}', 'permissions'),
(3, 'Load Only', 'A minimal policy with permission to load an object.', 0, 3, '', '{\"load\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(4, 'Load, List and View', 'Provides load, list and view permissions only.', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(5, 'Object', 'An Object policy with all permissions.', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(6, 'Element', 'MODX Element policy with all attributes.', 0, 4, '', '{\"add_children\":true,\"create\":true,\"delete\":true,\"list\":true,\"load\":true,\"remove\":true,\"save\":true,\"view\":true,\"copy\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(7, 'Content Editor', 'Context administration policy with limited, content-editing related Permissions, but no publishing.', 0, 1, '', '{\"change_profile\":true,\"class_map\":true,\"countries\":true,\"edit_document\":true,\"edit_weblink\":true,\"edit_symlink\":true,\"edit_static_resource\":true,\"frames\":true,\"help\":true,\"home\":true,\"load\":true,\"list\":true,\"logout\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_tools\":true,\"menu_user\":true,\"resource_duplicate\":true,\"resource_tree\":true,\"save_document\":true,\"source_view\":true,\"tree_show_resource_ids\":true,\"view\":true,\"view_document\":true,\"view_template\":true,\"new_document\":true,\"new_weblink\":true,\"new_symlink\":true,\"new_static_resource\":true,\"delete_document\":true,\"delete_weblink\":true,\"delete_symlink\":true,\"delete_static_resource\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(8, 'Media Source Admin', 'Media Source administration policy.', 0, 5, '', '{\"create\":true,\"copy\":true,\"load\":true,\"list\":true,\"save\":true,\"remove\":true,\"view\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(9, 'Media Source User', 'Media Source user policy, with basic viewing and using - but no editing - of Media Sources.', 0, 5, '', '{\"load\":true,\"list\":true,\"view\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(10, 'Developer', 'Context administration policy with most Permissions except Administrator and Security functions.', 0, 0, '', '{\"about\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_role\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_weblink\":true,\"edit_symlink\":true,\"edit_static_resource\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_unpack\":true,\"file_view\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_weblink\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"packages\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unpublish_document\":true,\"unlock_element_properties\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_user\":true,\"view_unpublished\":true,\"workspaces\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(11, 'Context', 'A standard Context policy that you can apply when creating Context ACLs for basic read/write and view_unpublished access within a Context.', 0, 6, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true,\"copy\":true,\"view_unpublished\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(12, 'Hidden Namespace', 'Hidden Namespace policy, will not show Namespace in lists.', 0, 7, '', '{\"load\":false,\"list\":false,\"view\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions');

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_policy_templates`
--

CREATE TABLE `modx_access_policy_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `template_group` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `lexicon` varchar(191) NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_access_policy_templates`
--

INSERT INTO `modx_access_policy_templates` (`id`, `template_group`, `name`, `description`, `lexicon`) VALUES
(1, 1, 'AdministratorTemplate', 'Context administration policy template with all permissions.', 'permissions'),
(2, 3, 'ResourceTemplate', 'Resource Policy Template with all attributes.', 'permissions'),
(3, 2, 'ObjectTemplate', 'Object Policy Template with all attributes.', 'permissions'),
(4, 4, 'ElementTemplate', 'Element Policy Template with all attributes.', 'permissions'),
(5, 5, 'MediaSourceTemplate', 'Media Source Policy Template with all attributes.', 'permissions'),
(6, 2, 'ContextTemplate', 'Context Policy Template with all attributes.', 'permissions'),
(7, 6, 'NamespaceTemplate', 'Namespace Policy Template with all attributes.', 'permissions');

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_policy_template_groups`
--

CREATE TABLE `modx_access_policy_template_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_access_policy_template_groups`
--

INSERT INTO `modx_access_policy_template_groups` (`id`, `name`, `description`) VALUES
(1, 'Admin', 'All admin policy templates.'),
(2, 'Object', 'All Object-based policy templates.'),
(3, 'Resource', 'All Resource-based policy templates.'),
(4, 'Element', 'All Element-based policy templates.'),
(5, 'MediaSource', 'All Media Source-based policy templates.'),
(6, 'Namespace', 'All Namespace based policy templates.');

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_resources`
--

CREATE TABLE `modx_access_resources` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_resource_groups`
--

CREATE TABLE `modx_access_resource_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_templatevars`
--

CREATE TABLE `modx_access_templatevars` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999,
  `policy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_actiondom`
--

CREATE TABLE `modx_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `set` int(11) NOT NULL DEFAULT 0,
  `action` varchar(191) NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `xtype` varchar(100) NOT NULL DEFAULT '',
  `container` varchar(191) NOT NULL DEFAULT '',
  `rule` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `constraint` varchar(191) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `for_parent` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_actions`
--

CREATE TABLE `modx_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  `controller` varchar(191) NOT NULL,
  `haslayout` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `lang_topics` text NOT NULL,
  `assets` text NOT NULL,
  `help_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_actions_fields`
--

CREATE TABLE `modx_actions_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(191) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'field',
  `tab` varchar(191) NOT NULL DEFAULT '',
  `form` varchar(191) NOT NULL DEFAULT '',
  `other` varchar(191) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_actions_fields`
--

INSERT INTO `modx_actions_fields` (`id`, `action`, `name`, `type`, `tab`, `form`, `other`, `rank`) VALUES
(1, 'resource/update', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(2, 'resource/update', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(3, 'resource/update', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(4, 'resource/update', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(5, 'resource/update', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(6, 'resource/update', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(7, 'resource/update', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(8, 'resource/update', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(9, 'resource/update', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(10, 'resource/update', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(11, 'resource/update', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(12, 'resource/update', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(13, 'resource/update', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(14, 'resource/update', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(15, 'resource/update', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(16, 'resource/update', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(17, 'resource/update', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(18, 'resource/update', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(19, 'resource/update', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(20, 'resource/update', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(21, 'resource/update', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(22, 'resource/update', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(23, 'resource/update', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(24, 'resource/update', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(25, 'resource/update', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(26, 'resource/update', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(27, 'resource/update', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(28, 'resource/update', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(29, 'resource/update', 'alias_visible', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(30, 'resource/update', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(31, 'resource/update', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(32, 'resource/update', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 5),
(33, 'resource/update', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(34, 'resource/update', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(35, 'resource/update', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(36, 'resource/update', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(37, 'resource/update', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(38, 'resource/update', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(39, 'resource/update', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(40, 'resource/update', 'modx-symlink-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 1),
(41, 'resource/update', 'modx-weblink-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 2),
(42, 'resource/create', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(43, 'resource/create', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(44, 'resource/create', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(45, 'resource/create', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(46, 'resource/create', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(47, 'resource/create', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(48, 'resource/create', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(49, 'resource/create', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(50, 'resource/create', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(51, 'resource/create', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(52, 'resource/create', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(53, 'resource/create', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(54, 'resource/create', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(55, 'resource/create', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(56, 'resource/create', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(57, 'resource/create', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(58, 'resource/create', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(59, 'resource/create', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(60, 'resource/create', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(61, 'resource/create', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(62, 'resource/create', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(63, 'resource/create', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(64, 'resource/create', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(65, 'resource/create', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(66, 'resource/create', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(67, 'resource/create', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(68, 'resource/create', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(69, 'resource/create', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(70, 'resource/create', 'alias_visible', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(71, 'resource/create', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(72, 'resource/create', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(73, 'resource/create', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 5),
(74, 'resource/create', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(75, 'resource/create', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(76, 'resource/create', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(77, 'resource/create', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(78, 'resource/create', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(79, 'resource/create', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(80, 'resource/create', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_active_users`
--

CREATE TABLE `modx_active_users` (
  `internalKey` int(9) NOT NULL DEFAULT 0,
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT 0,
  `id` int(10) DEFAULT NULL,
  `action` varchar(191) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_categories`
--

CREATE TABLE `modx_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(10) UNSIGNED DEFAULT 0,
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_categories`
--

INSERT INTO `modx_categories` (`id`, `parent`, `category`, `rank`) VALUES
(2, 0, 'FormIt', 0),
(3, 0, 'pdoTools', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_categories_closure`
--

CREATE TABLE `modx_categories_closure` (
  `ancestor` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `descendant` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `depth` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_categories_closure`
--

INSERT INTO `modx_categories_closure` (`ancestor`, `descendant`, `depth`) VALUES
(0, 2, 0),
(0, 3, 0),
(2, 2, 0),
(3, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_class_map`
--

CREATE TABLE `modx_class_map` (
  `id` int(10) UNSIGNED NOT NULL,
  `class` varchar(120) NOT NULL DEFAULT '',
  `parent_class` varchar(120) NOT NULL DEFAULT '',
  `name_field` varchar(191) NOT NULL DEFAULT 'name',
  `path` tinytext DEFAULT NULL,
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:resource'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_class_map`
--

INSERT INTO `modx_class_map` (`id`, `class`, `parent_class`, `name_field`, `path`, `lexicon`) VALUES
(1, 'modDocument', 'modResource', 'pagetitle', '', 'core:resource'),
(2, 'modWebLink', 'modResource', 'pagetitle', '', 'core:resource'),
(3, 'modSymLink', 'modResource', 'pagetitle', '', 'core:resource'),
(4, 'modStaticResource', 'modResource', 'pagetitle', '', 'core:resource'),
(5, 'modTemplate', 'modElement', 'templatename', '', 'core:resource'),
(6, 'modTemplateVar', 'modElement', 'name', '', 'core:resource'),
(7, 'modChunk', 'modElement', 'name', '', 'core:resource'),
(8, 'modSnippet', 'modElement', 'name', '', 'core:resource'),
(9, 'modPlugin', 'modElement', 'name', '', 'core:resource');

-- --------------------------------------------------------

--
-- Table structure for table `modx_content_type`
--

CREATE TABLE `modx_content_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` tinytext DEFAULT NULL,
  `mime_type` tinytext DEFAULT NULL,
  `file_extensions` tinytext DEFAULT NULL,
  `headers` mediumtext DEFAULT NULL,
  `binary` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_content_type`
--

INSERT INTO `modx_content_type` (`id`, `name`, `description`, `mime_type`, `file_extensions`, `headers`, `binary`) VALUES
(1, 'HTML', 'HTML content', 'text/html', '.html', NULL, 0),
(2, 'XML', 'XML content', 'text/xml', '.xml', NULL, 0),
(3, 'text', 'plain text content', 'text/plain', '.txt', NULL, 0),
(4, 'CSS', 'CSS content', 'text/css', '.css', NULL, 0),
(5, 'javascript', 'javascript content', 'text/javascript', '.js', NULL, 0),
(6, 'RSS', 'For RSS feeds', 'application/rss+xml', '.rss', NULL, 0),
(7, 'JSON', 'JSON', 'application/json', '.json', NULL, 0),
(8, 'PDF', 'PDF Files', 'application/pdf', '.pdf', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_context`
--

CREATE TABLE `modx_context` (
  `key` varchar(100) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` tinytext DEFAULT NULL,
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_context`
--

INSERT INTO `modx_context` (`key`, `name`, `description`, `rank`) VALUES
('mgr', 'Manager', 'The default manager or administration context for content management activity.', 0),
('web', 'Website', 'The default front-end context for your web site.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_context_resource`
--

CREATE TABLE `modx_context_resource` (
  `context_key` varchar(191) NOT NULL,
  `resource` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_context_setting`
--

CREATE TABLE `modx_context_setting` (
  `context_key` varchar(191) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext DEFAULT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_context_setting`
--

INSERT INTO `modx_context_setting` (`context_key`, `key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('mgr', 'allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', NULL),
('mgr', 'modRequest.class', 'modManagerRequest', 'textfield', 'core', 'system', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_dashboard`
--

CREATE TABLE `modx_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `hide_trees` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_dashboard`
--

INSERT INTO `modx_dashboard` (`id`, `name`, `description`, `hide_trees`) VALUES
(1, 'Default', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_dashboard_widget`
--

CREATE TABLE `modx_dashboard_widget` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `content` mediumtext DEFAULT NULL,
  `namespace` varchar(191) NOT NULL DEFAULT '',
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:dashboards',
  `size` varchar(191) NOT NULL DEFAULT 'half'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_dashboard_widget`
--

INSERT INTO `modx_dashboard_widget` (`id`, `name`, `description`, `type`, `content`, `namespace`, `lexicon`, `size`) VALUES
(1, 'w_newsfeed', 'w_newsfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-news.php', 'core', 'core:dashboards', 'half'),
(2, 'w_securityfeed', 'w_securityfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-security.php', 'core', 'core:dashboards', 'half'),
(3, 'w_whosonline', 'w_whosonline_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-online.php', 'core', 'core:dashboards', 'half'),
(4, 'w_recentlyeditedresources', 'w_recentlyeditedresources_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php', 'core', 'core:dashboards', 'half'),
(5, 'w_configcheck', 'w_configcheck_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.configcheck.php', 'core', 'core:dashboards', 'full');

-- --------------------------------------------------------

--
-- Table structure for table `modx_dashboard_widget_placement`
--

CREATE TABLE `modx_dashboard_widget_placement` (
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `widget` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rank` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_dashboard_widget_placement`
--

INSERT INTO `modx_dashboard_widget_placement` (`dashboard`, `widget`, `rank`) VALUES
(1, 5, 0),
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(1, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `modx_documentgroup_names`
--

CREATE TABLE `modx_documentgroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `private_webgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_document_groups`
--

CREATE TABLE `modx_document_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_group` int(10) NOT NULL DEFAULT 0,
  `document` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_element_property_sets`
--

CREATE TABLE `modx_element_property_sets` (
  `element` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `element_class` varchar(100) NOT NULL DEFAULT '',
  `property_set` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_extension_packages`
--

CREATE TABLE `modx_extension_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `name` varchar(100) NOT NULL DEFAULT 'core',
  `path` text DEFAULT NULL,
  `table_prefix` varchar(191) NOT NULL DEFAULT '',
  `service_class` varchar(191) NOT NULL DEFAULT '',
  `service_name` varchar(191) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_fc_profiles`
--

CREATE TABLE `modx_fc_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_fc_profiles_usergroups`
--

CREATE TABLE `modx_fc_profiles_usergroups` (
  `usergroup` int(11) NOT NULL DEFAULT 0,
  `profile` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_fc_sets`
--

CREATE TABLE `modx_fc_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile` int(11) NOT NULL DEFAULT 0,
  `action` varchar(191) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `template` int(11) NOT NULL DEFAULT 0,
  `constraint` varchar(191) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_formit_forms`
--

CREATE TABLE `modx_formit_forms` (
  `id` int(10) UNSIGNED NOT NULL,
  `form` varchar(255) NOT NULL DEFAULT '',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  `values` text NOT NULL,
  `ip` varchar(100) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT 0,
  `encrypted` tinyint(1) NOT NULL DEFAULT 0,
  `encryption_type` int(2) NOT NULL DEFAULT 1,
  `hash` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_lexicon_entries`
--

CREATE TABLE `modx_lexicon_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `topic` varchar(191) NOT NULL DEFAULT 'default',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `language` varchar(20) NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_manager_log`
--

CREATE TABLE `modx_manager_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `occurred` datetime DEFAULT NULL,
  `action` varchar(100) NOT NULL DEFAULT '',
  `classKey` varchar(100) NOT NULL DEFAULT '',
  `item` varchar(191) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_manager_log`
--

INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(1, 1, '2021-07-19 10:58:07', 'login', 'modContext', 'mgr'),
(2, 1, '2021-07-19 11:22:29', 'resource_create', 'modDocument', '2'),
(3, 1, '2021-07-19 11:30:35', 'resource_update', 'modResource', '2'),
(4, 1, '2021-07-19 11:35:45', 'resource_update', 'modResource', '2'),
(5, 1, '2021-07-19 11:49:23', 'delete_resource', 'modDocument', '2'),
(6, 1, '2021-07-19 12:11:46', 'login', 'modContext', 'mgr'),
(7, 1, '2021-07-19 13:30:46', 'undelete_resource', 'modResource', '2'),
(8, 1, '2021-07-19 13:48:08', 'resource_update', 'modResource', '2'),
(9, 1, '2021-07-19 13:49:01', 'resource_update', 'modResource', '2'),
(10, 1, '2021-07-19 14:13:57', 'chunk_create', 'modChunk', '1'),
(11, 1, '2021-07-19 14:14:07', 'chunk_delete', 'modChunk', '1'),
(12, 1, '2021-07-19 14:14:36', 'category_create', 'modCategory', '1'),
(13, 1, '2021-07-19 14:14:56', 'category_delete', 'modCategory', '1'),
(14, 1, '2021-07-20 07:19:52', 'login', 'modContext', 'mgr'),
(15, 1, '2021-07-20 08:14:06', 'template_update', 'modTemplate', '1'),
(16, 1, '2021-07-20 08:14:06', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(17, 1, '2021-07-20 08:15:00', 'template_update', 'modTemplate', '1'),
(18, 1, '2021-07-20 08:15:00', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(19, 1, '2021-07-20 08:16:00', 'template_update', 'modTemplate', '1'),
(20, 1, '2021-07-20 08:16:00', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(21, 1, '2021-07-20 08:16:26', 'template_update', 'modTemplate', '1'),
(22, 1, '2021-07-20 08:16:26', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(23, 1, '2021-07-20 08:17:00', 'template_update', 'modTemplate', '1'),
(24, 1, '2021-07-20 08:17:01', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(25, 1, '2021-07-20 08:17:17', 'template_update', 'modTemplate', '1'),
(26, 1, '2021-07-20 08:17:17', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(27, 1, '2021-07-20 08:17:52', 'template_update', 'modTemplate', '1'),
(28, 1, '2021-07-20 08:17:52', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(29, 1, '2021-07-20 08:18:09', 'template_update', 'modTemplate', '1'),
(30, 1, '2021-07-20 08:18:10', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(31, 1, '2021-07-20 08:18:21', 'resource_update', 'modResource', '2'),
(32, 1, '2021-07-20 08:18:35', 'resource_update', 'modResource', '2'),
(33, 1, '2021-07-20 08:21:09', 'resource_update', 'modResource', '2'),
(34, 1, '2021-07-20 08:27:15', 'resource_update', 'modResource', '2'),
(35, 1, '2021-07-20 09:33:27', 'snippet_create', 'modSnippet', '18'),
(36, 1, '2021-07-20 09:33:42', 'resource_update', 'modResource', '2'),
(37, 1, '2021-07-20 09:54:01', 'resource_update', 'modResource', '2'),
(38, 1, '2021-07-20 09:55:29', 'snippet_update', 'modSnippet', '18'),
(39, 1, '2021-07-20 09:55:29', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(40, 1, '2021-07-20 10:01:45', 'snippet_update', 'modSnippet', '18'),
(41, 1, '2021-07-20 10:01:45', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(42, 1, '2021-07-20 10:02:26', 'snippet_update', 'modSnippet', '18'),
(43, 1, '2021-07-20 10:02:26', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(44, 1, '2021-07-20 11:15:21', 'snippet_update', 'modSnippet', '18'),
(45, 1, '2021-07-20 11:15:21', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(46, 1, '2021-07-20 11:16:23', 'snippet_update', 'modSnippet', '18'),
(47, 1, '2021-07-20 11:16:24', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(48, 1, '2021-07-20 11:17:18', 'snippet_update', 'modSnippet', '18'),
(49, 1, '2021-07-20 11:17:18', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(50, 1, '2021-07-20 11:17:33', 'snippet_update', 'modSnippet', '18'),
(51, 1, '2021-07-20 11:17:33', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(52, 1, '2021-07-20 11:47:48', 'snippet_update', 'modSnippet', '18'),
(53, 1, '2021-07-20 11:47:48', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(54, 1, '2021-07-20 11:49:06', 'snippet_update', 'modSnippet', '18'),
(55, 1, '2021-07-20 11:49:07', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(56, 1, '2021-07-20 11:55:03', 'snippet_update', 'modSnippet', '18'),
(57, 1, '2021-07-20 11:55:04', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(58, 1, '2021-07-20 12:02:55', 'snippet_update', 'modSnippet', '18'),
(59, 1, '2021-07-20 12:02:56', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(60, 1, '2021-07-20 12:06:23', 'snippet_update', 'modSnippet', '18'),
(61, 1, '2021-07-20 12:06:24', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(62, 1, '2021-07-20 12:31:02', 'snippet_update', 'modSnippet', '18'),
(63, 1, '2021-07-20 12:31:02', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(64, 1, '2021-07-20 12:31:55', 'resource_update', 'modResource', '2'),
(65, 1, '2021-07-20 12:32:00', 'resource_update', 'modResource', '2'),
(66, 1, '2021-07-20 12:32:05', 'snippet_update', 'modSnippet', '18'),
(67, 1, '2021-07-20 12:32:05', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(68, 1, '2021-07-20 12:33:00', 'snippet_update', 'modSnippet', '18'),
(69, 1, '2021-07-20 12:33:00', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(70, 1, '2021-07-20 12:33:34', 'snippet_update', 'modSnippet', '18'),
(71, 1, '2021-07-20 12:33:35', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(72, 1, '2021-07-20 12:43:53', 'snippet_update', 'modSnippet', '18'),
(73, 1, '2021-07-20 12:43:54', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(74, 1, '2021-07-20 12:44:11', 'resource_update', 'modResource', '2'),
(75, 1, '2021-07-20 12:47:09', 'snippet_update', 'modSnippet', '18'),
(76, 1, '2021-07-20 12:47:09', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(77, 1, '2021-07-20 12:47:20', 'resource_update', 'modResource', '2'),
(78, 1, '2021-07-20 12:49:03', 'resource_update', 'modResource', '2'),
(79, 1, '2021-07-20 12:49:17', 'snippet_update', 'modSnippet', '18'),
(80, 1, '2021-07-20 12:49:17', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(81, 1, '2021-07-20 12:51:09', 'resource_update', 'modResource', '2'),
(82, 1, '2021-07-20 12:52:03', 'resource_update', 'modResource', '2'),
(83, 1, '2021-07-20 12:52:44', 'snippet_update', 'modSnippet', '18'),
(84, 1, '2021-07-20 12:52:44', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(85, 1, '2021-07-20 12:53:02', 'snippet_update', 'modSnippet', '18'),
(86, 1, '2021-07-20 12:53:02', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(87, 1, '2021-07-20 12:53:11', 'resource_update', 'modResource', '2'),
(88, 1, '2021-07-20 12:53:20', 'resource_update', 'modResource', '2'),
(89, 1, '2021-07-20 13:00:14', 'resource_create', 'modDocument', '3'),
(90, 1, '2021-07-20 13:00:22', 'resource_update', 'modResource', '2'),
(91, 1, '2021-07-20 13:00:34', 'resource_update', 'modResource', '2'),
(92, 1, '2021-07-20 13:04:57', 'snippet_update', 'modSnippet', '18'),
(93, 1, '2021-07-20 13:04:57', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(94, 1, '2021-07-20 13:05:18', 'snippet_update', 'modSnippet', '18'),
(95, 1, '2021-07-20 13:05:18', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(96, 1, '2021-07-20 13:06:27', 'snippet_update', 'modSnippet', '18'),
(97, 1, '2021-07-20 13:06:27', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(98, 1, '2021-07-20 13:06:54', 'snippet_update', 'modSnippet', '18'),
(99, 1, '2021-07-20 13:06:55', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(100, 1, '2021-07-20 13:07:40', 'snippet_update', 'modSnippet', '18'),
(101, 1, '2021-07-20 13:07:40', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(102, 1, '2021-07-20 13:09:18', 'snippet_update', 'modSnippet', '18'),
(103, 1, '2021-07-20 13:09:18', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(104, 1, '2021-07-20 13:10:02', 'snippet_update', 'modSnippet', '18'),
(105, 1, '2021-07-20 13:10:03', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(106, 1, '2021-07-20 13:10:20', 'snippet_update', 'modSnippet', '18'),
(107, 1, '2021-07-20 13:10:20', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(108, 1, '2021-07-20 13:10:43', 'snippet_update', 'modSnippet', '18'),
(109, 1, '2021-07-20 13:10:43', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(110, 1, '2021-07-20 13:25:54', 'snippet_update', 'modSnippet', '18'),
(111, 1, '2021-07-20 13:25:54', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(112, 1, '2021-07-20 13:41:42', 'snippet_create', 'modSnippet', '19'),
(113, 1, '2021-07-20 13:42:26', 'resource_update', 'modResource', '3'),
(114, 1, '2021-07-20 13:43:28', 'snippet_update', 'modSnippet', '19'),
(115, 1, '2021-07-20 13:43:29', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 19 Default'),
(116, 1, '2021-07-20 13:43:49', 'snippet_update', 'modSnippet', '19'),
(117, 1, '2021-07-20 13:43:50', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 19 Default'),
(118, 1, '2021-07-20 13:44:10', 'snippet_update', 'modSnippet', '19'),
(119, 1, '2021-07-20 13:44:10', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 19 Default'),
(120, 1, '2021-07-20 13:44:32', 'snippet_update', 'modSnippet', '19'),
(121, 1, '2021-07-20 13:44:33', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 19 Default'),
(122, 1, '2021-07-20 13:56:38', 'snippet_update', 'modSnippet', '19'),
(123, 1, '2021-07-20 13:56:38', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 19 Default'),
(124, 1, '2021-07-20 14:00:43', 'snippet_update', 'modSnippet', '19'),
(125, 1, '2021-07-20 14:00:44', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 19 Default'),
(126, 1, '2021-07-20 14:01:12', 'snippet_update', 'modSnippet', '19'),
(127, 1, '2021-07-20 14:01:12', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 19 Default'),
(128, 1, '2021-07-20 15:19:04', 'snippet_update', 'modSnippet', '19'),
(129, 1, '2021-07-20 15:19:04', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 19 Default'),
(130, 1, '2021-07-20 15:19:52', 'snippet_update', 'modSnippet', '19'),
(131, 1, '2021-07-20 15:19:52', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 19 Default'),
(132, 1, '2021-07-20 15:20:07', 'snippet_update', 'modSnippet', '19'),
(133, 1, '2021-07-20 15:20:07', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 19 Default'),
(134, 1, '2021-07-20 15:22:15', 'resource_create', 'modDocument', '4'),
(135, 1, '2021-07-20 15:26:10', 'snippet_create', 'modSnippet', '20'),
(136, 1, '2021-07-20 15:26:45', 'snippet_update', 'modSnippet', '20'),
(137, 1, '2021-07-20 15:26:46', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 20 Default'),
(138, 1, '2021-07-20 15:27:47', 'snippet_update', 'modSnippet', '20'),
(139, 1, '2021-07-20 15:27:47', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 20 Default'),
(140, 1, '2021-07-20 15:28:27', 'clear_cache', '', 'mgr'),
(141, 1, '2021-07-20 15:31:15', 'snippet_update', 'modSnippet', '19'),
(142, 1, '2021-07-20 15:31:15', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 19 Default'),
(143, 1, '2021-07-20 15:31:26', 'snippet_update', 'modSnippet', '19'),
(144, 1, '2021-07-20 15:31:26', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 19 Default'),
(145, 1, '2021-07-20 15:33:07', 'snippet_update', 'modSnippet', '20'),
(146, 1, '2021-07-20 15:33:07', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 20 Default'),
(147, 1, '2021-07-20 15:39:40', 'clear_cache', '', 'mgr'),
(148, 1, '2021-07-20 15:40:12', 'snippet_update', 'modSnippet', '18'),
(149, 1, '2021-07-20 15:40:12', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(150, 1, '2021-07-20 15:40:50', 'snippet_update', 'modSnippet', '18'),
(151, 1, '2021-07-20 15:40:50', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(152, 1, '2021-07-20 15:41:05', 'snippet_update', 'modSnippet', '18'),
(153, 1, '2021-07-20 15:41:05', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(154, 1, '2021-07-20 15:41:54', 'snippet_update', 'modSnippet', '19'),
(155, 1, '2021-07-20 15:41:54', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 19 Default'),
(156, 1, '2021-07-20 15:42:23', 'snippet_update', 'modSnippet', '19'),
(157, 1, '2021-07-20 15:42:23', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 19 Default'),
(158, 1, '2021-07-20 15:47:54', 'snippet_update', 'modSnippet', '19'),
(159, 1, '2021-07-20 15:47:54', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 19 Default'),
(160, 1, '2021-07-20 15:48:11', 'snippet_update', 'modSnippet', '20'),
(161, 1, '2021-07-20 15:48:11', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 20 Default'),
(162, 1, '2021-07-20 15:48:16', 'snippet_update', 'modSnippet', '18'),
(163, 1, '2021-07-20 15:48:16', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(164, 1, '2021-07-20 15:51:43', 'snippet_update', 'modSnippet', '18'),
(165, 1, '2021-07-20 15:51:43', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(166, 1, '2021-07-20 15:52:05', 'snippet_update', 'modSnippet', '18'),
(167, 1, '2021-07-20 15:52:05', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(168, 1, '2021-07-20 15:54:27', 'snippet_update', 'modSnippet', '18'),
(169, 1, '2021-07-20 15:54:28', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(170, 1, '2021-07-20 15:54:38', 'snippet_update', 'modSnippet', '19'),
(171, 1, '2021-07-20 15:54:38', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 19 Default'),
(172, 1, '2021-07-20 15:54:46', 'snippet_update', 'modSnippet', '20'),
(173, 1, '2021-07-20 15:54:47', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 20 Default'),
(174, 1, '2021-07-20 16:03:10', 'snippet_update', 'modSnippet', '19'),
(175, 1, '2021-07-20 16:03:10', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 19 Default'),
(176, 1, '2021-07-20 16:09:36', 'snippet_update', 'modSnippet', '18'),
(177, 1, '2021-07-20 16:09:36', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(178, 1, '2021-07-20 16:10:01', 'snippet_update', 'modSnippet', '19'),
(179, 1, '2021-07-20 16:10:02', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 19 Default'),
(180, 1, '2021-07-21 06:28:46', 'login', 'modContext', 'mgr'),
(181, 1, '2021-07-21 06:29:11', 'login', 'modContext', 'mgr'),
(182, 1, '2021-07-21 06:41:24', 'resource_update', 'modResource', '1'),
(183, 1, '2021-07-21 06:44:56', 'resource_update', 'modResource', '1'),
(184, 1, '2021-07-21 06:48:23', 'snippet_update', 'modSnippet', '19'),
(185, 1, '2021-07-21 06:48:23', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 19 Default'),
(186, 1, '2021-07-21 06:48:56', 'resource_update', 'modResource', '1'),
(187, 1, '2021-07-21 06:49:41', 'resource_update', 'modResource', '1'),
(188, 1, '2021-07-21 06:50:22', 'resource_update', 'modResource', '1'),
(189, 1, '2021-07-21 06:53:52', 'snippet_update', 'modSnippet', '18'),
(190, 1, '2021-07-21 06:53:52', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(191, 1, '2021-07-21 06:54:10', 'resource_update', 'modResource', '1'),
(192, 1, '2021-07-21 06:56:30', 'resource_update', 'modResource', '2'),
(193, 1, '2021-07-21 06:56:59', 'resource_update', 'modResource', '2'),
(194, 1, '2021-07-21 06:57:12', 'snippet_update', 'modSnippet', '19'),
(195, 1, '2021-07-21 06:57:13', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 19 Default'),
(196, 1, '2021-07-21 06:57:54', 'snippet_update', 'modSnippet', '19'),
(197, 1, '2021-07-21 06:57:54', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 19 Default'),
(198, 1, '2021-07-21 07:06:39', 'snippet_create', 'modSnippet', '21'),
(199, 1, '2021-07-21 07:07:14', 'resource_create', 'modDocument', '5'),
(200, 1, '2021-07-21 07:07:43', 'snippet_update', 'modSnippet', '21'),
(201, 1, '2021-07-21 07:07:43', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 21 Default'),
(202, 1, '2021-07-21 07:34:50', 'snippet_update', 'modSnippet', '21'),
(203, 1, '2021-07-21 07:34:50', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 21 Default'),
(204, 1, '2021-07-21 07:36:42', 'snippet_update', 'modSnippet', '21'),
(205, 1, '2021-07-21 07:36:43', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 21 Default'),
(206, 1, '2021-07-21 07:37:07', 'snippet_update', 'modSnippet', '21'),
(207, 1, '2021-07-21 07:37:07', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 21 Default'),
(208, 1, '2021-07-21 07:37:34', 'snippet_update', 'modSnippet', '21'),
(209, 1, '2021-07-21 07:37:34', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 21 Default'),
(210, 1, '2021-07-21 07:37:59', 'snippet_update', 'modSnippet', '21'),
(211, 1, '2021-07-21 07:37:59', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 21 Default'),
(212, 1, '2021-07-21 07:43:21', 'snippet_update', 'modSnippet', '21'),
(213, 1, '2021-07-21 07:43:22', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 21 Default'),
(214, 1, '2021-07-21 07:43:57', 'snippet_update', 'modSnippet', '21'),
(215, 1, '2021-07-21 07:43:57', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 21 Default'),
(216, 1, '2021-07-21 07:44:38', 'snippet_update', 'modSnippet', '21'),
(217, 1, '2021-07-21 07:44:38', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 21 Default'),
(218, 1, '2021-07-21 07:45:13', 'snippet_update', 'modSnippet', '21'),
(219, 1, '2021-07-21 07:45:13', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 21 Default'),
(220, 1, '2021-07-21 07:59:42', 'snippet_update', 'modSnippet', '21'),
(221, 1, '2021-07-21 07:59:42', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 21 Default'),
(222, 1, '2021-07-21 10:16:51', 'snippet_create', 'modSnippet', '22'),
(223, 1, '2021-07-21 10:17:00', 'snippet_update', 'modSnippet', '21'),
(224, 1, '2021-07-21 10:17:01', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 21 Default'),
(225, 1, '2021-07-21 10:17:11', 'snippet_update', 'modSnippet', '18'),
(226, 1, '2021-07-21 10:17:11', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(227, 1, '2021-07-21 10:17:14', 'snippet_update', 'modSnippet', '18'),
(228, 1, '2021-07-21 10:17:14', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(229, 1, '2021-07-21 10:17:40', 'resource_update', 'modResource', '1'),
(230, 1, '2021-07-21 10:17:49', 'resource_update', 'modResource', '2'),
(231, 1, '2021-07-21 10:17:56', 'resource_update', 'modResource', '3'),
(232, 1, '2021-07-21 10:18:03', 'resource_update', 'modResource', '4'),
(233, 1, '2021-07-21 10:59:19', 'resource_update', 'modResource', '3'),
(234, 1, '2021-07-21 10:59:29', 'resource_update', 'modResource', '5'),
(235, 1, '2021-07-21 11:13:58', 'snippet_update', 'modSnippet', '22'),
(236, 1, '2021-07-21 11:13:58', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(237, 1, '2021-07-21 11:19:57', 'snippet_update', 'modSnippet', '22'),
(238, 1, '2021-07-21 11:19:57', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 22 Default'),
(239, 1, '2021-07-21 11:29:02', 'snippet_update', 'modSnippet', '20'),
(240, 1, '2021-07-21 11:29:03', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 20 Default'),
(241, 1, '2021-07-21 11:29:10', 'snippet_update', 'modSnippet', '19'),
(242, 1, '2021-07-21 11:29:10', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 19 Default'),
(243, 1, '2021-07-21 11:29:29', 'resource_update', 'modResource', '2'),
(244, 1, '2021-07-21 11:29:36', 'resource_update', 'modResource', '3'),
(245, 1, '2021-07-21 11:29:43', 'resource_update', 'modResource', '4'),
(246, 1, '2021-07-21 11:29:50', 'resource_update', 'modResource', '5'),
(247, 1, '2021-07-21 11:29:57', 'resource_update', 'modResource', '1'),
(248, 1, '2021-07-21 11:34:15', 'snippet_update', 'modSnippet', '18'),
(249, 1, '2021-07-21 11:34:15', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(250, 1, '2021-07-21 11:34:34', 'resource_update', 'modResource', '3'),
(251, 1, '2021-07-21 11:35:33', 'snippet_update', 'modSnippet', '18'),
(252, 1, '2021-07-21 11:35:34', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(253, 1, '2021-07-21 11:39:42', 'snippet_update', 'modSnippet', '18'),
(254, 1, '2021-07-21 11:39:42', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(255, 1, '2021-07-21 11:40:23', 'snippet_update', 'modSnippet', '18'),
(256, 1, '2021-07-21 11:40:23', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(257, 1, '2021-07-21 11:41:20', 'snippet_update', 'modSnippet', '18'),
(258, 1, '2021-07-21 11:41:20', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(259, 1, '2021-07-21 11:41:37', 'snippet_update', 'modSnippet', '18'),
(260, 1, '2021-07-21 11:41:38', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(261, 1, '2021-07-21 11:42:05', 'snippet_update', 'modSnippet', '18'),
(262, 1, '2021-07-21 11:42:05', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(263, 1, '2021-07-21 11:47:09', 'snippet_update', 'modSnippet', '18'),
(264, 1, '2021-07-21 11:47:09', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(265, 1, '2021-07-21 11:48:48', 'snippet_update', 'modSnippet', '18'),
(266, 1, '2021-07-21 11:48:48', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(267, 1, '2021-07-21 11:52:34', 'resource_create', 'modDocument', '6'),
(268, 1, '2021-07-21 11:53:54', 'resource_update', 'modResource', '5'),
(269, 1, '2021-07-21 11:55:16', 'snippet_create', 'modSnippet', '23'),
(270, 1, '2021-07-21 11:55:55', 'snippet_update', 'modSnippet', '23'),
(271, 1, '2021-07-21 11:55:55', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 23 Default'),
(272, 1, '2021-07-21 11:56:26', 'resource_update', 'modResource', '6'),
(273, 1, '2021-07-21 11:57:46', 'snippet_update', 'modSnippet', '19'),
(274, 1, '2021-07-21 11:57:47', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 19 Default'),
(275, 1, '2021-07-21 11:59:06', 'resource_update', 'modResource', '2'),
(276, 1, '2021-07-21 11:59:29', 'resource_update', 'modResource', '2'),
(277, 1, '2021-07-21 11:59:58', 'resource_update', 'modResource', '2'),
(278, 1, '2021-07-21 12:00:15', 'resource_update', 'modResource', '3'),
(279, 1, '2021-07-21 13:10:43', 'setting_update', 'modSystemSetting', 'mail_smtp_auth'),
(280, 1, '2021-07-21 13:24:02', 'setting_update', 'modSystemSetting', 'mail_smtp_hosts'),
(281, 1, '2021-07-21 13:24:20', 'setting_update', 'modSystemSetting', 'mail_smtp_auth'),
(282, 1, '2021-07-21 13:24:37', 'setting_update', 'modSystemSetting', 'mail_use_smtp'),
(283, 1, '2021-07-21 13:25:02', 'setting_update', 'modSystemSetting', 'mail_smtp_helo'),
(284, 1, '2021-07-21 13:25:24', 'setting_update', 'modSystemSetting', 'mail_smtp_pass'),
(285, 1, '2021-07-21 13:25:44', 'setting_update', 'modSystemSetting', 'mail_smtp_user'),
(286, 1, '2021-07-21 13:26:19', 'setting_update', 'modSystemSetting', 'mail_smtp_auth'),
(287, 1, '2021-07-21 13:33:36', 'snippet_update', 'modSnippet', '18'),
(288, 1, '2021-07-21 13:33:37', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(289, 1, '2021-07-21 13:34:46', 'snippet_update', 'modSnippet', '18'),
(290, 1, '2021-07-21 13:34:47', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(291, 1, '2021-07-21 13:34:57', 'snippet_update', 'modSnippet', '18'),
(292, 1, '2021-07-21 13:34:57', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(293, 1, '2021-07-21 13:43:47', 'snippet_update', 'modSnippet', '18'),
(294, 1, '2021-07-21 13:43:48', 'propertyset_update_from_element', 'modPropertySet', 'modSnippet 18 Default'),
(295, 1, '2021-07-21 13:48:38', 'resource_update', 'modResource', '1');

-- --------------------------------------------------------

--
-- Table structure for table `modx_media_sources`
--

CREATE TABLE `modx_media_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `class_key` varchar(100) NOT NULL DEFAULT 'sources.modFileMediaSource',
  `properties` mediumtext DEFAULT NULL,
  `is_stream` tinyint(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_media_sources`
--

INSERT INTO `modx_media_sources` (`id`, `name`, `description`, `class_key`, `properties`, `is_stream`) VALUES
(1, 'Filesystem', '', 'sources.modFileMediaSource', 'a:0:{}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_media_sources_contexts`
--

CREATE TABLE `modx_media_sources_contexts` (
  `source` int(11) NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_media_sources_elements`
--

CREATE TABLE `modx_media_sources_elements` (
  `source` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `object_class` varchar(100) NOT NULL DEFAULT 'modTemplateVar',
  `object` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_membergroup_names`
--

CREATE TABLE `modx_membergroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rank` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_membergroup_names`
--

INSERT INTO `modx_membergroup_names` (`id`, `name`, `description`, `parent`, `rank`, `dashboard`) VALUES
(1, 'Administrator', NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_member_groups`
--

CREATE TABLE `modx_member_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_group` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `member` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `role` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `rank` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_member_groups`
--

INSERT INTO `modx_member_groups` (`id`, `user_group`, `member`, `role`, `rank`) VALUES
(1, 1, 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_menus`
--

CREATE TABLE `modx_menus` (
  `text` varchar(191) NOT NULL DEFAULT '',
  `parent` varchar(191) NOT NULL DEFAULT '',
  `action` varchar(191) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `icon` varchar(191) NOT NULL DEFAULT '',
  `menuindex` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_menus`
--

INSERT INTO `modx_menus` (`text`, `parent`, `action`, `description`, `icon`, `menuindex`, `params`, `handler`, `permissions`, `namespace`) VALUES
('about', 'usernav', 'help', '', '<i class=\"icon-question-circle icon icon-large\"></i>', 7, '', '', 'help', 'core'),
('acls', 'admin', 'security/permission', 'acls_desc', '', 5, '', '', 'access_permissions', 'core'),
('admin', 'usernav', '', '', '<i class=\"icon-gear icon icon-large\"></i>', 6, '', '', 'settings', 'core'),
('bespoke_manager', 'admin', 'security/forms', 'bespoke_manager_desc', '', 1, '', '', 'customize_forms', 'core'),
('components', 'topnav', '', '', '', 2, '', '', 'components', 'core'),
('content_types', 'site', 'system/contenttype', 'content_types_desc', '', 8, '', '', 'content_types', 'core'),
('contexts', 'admin', 'context', 'contexts_desc', '', 3, '', '', 'view_context', 'core'),
('dashboards', 'admin', 'system/dashboards', 'dashboards_desc', '', 2, '', '', 'dashboards', 'core'),
('edit_menu', 'admin', 'system/action', 'edit_menu_desc', '', 4, '', '', 'actions', 'core'),
('eventlog_viewer', 'reports', 'system/event', 'eventlog_viewer_desc', '', 2, '', '', 'view_eventlog', 'core'),
('file_browser', 'media', 'media/browser', 'file_browser_desc', '', 0, '', '', 'file_manager', 'core'),
('flush_access', 'manage', '', 'flush_access_desc', '', 3, '', 'MODx.msg.confirm({\n    title: _(\'flush_access\')\n    ,text: _(\'flush_access_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/access/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this},\n        \'failure\': {fn:function(response) { Ext.MessageBox.alert(\'failure\', response.responseText); },scope:this},\n    }\n});', 'access_permissions', 'core'),
('flush_sessions', 'manage', '', 'flush_sessions_desc', '', 4, '', 'MODx.msg.confirm({\n    title: _(\'flush_sessions\')\n    ,text: _(\'flush_sessions_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n    }\n});', 'flush_sessions', 'core'),
('formit', 'components', 'home', 'formit.desc', '', 0, '', '', 'formit', 'formit'),
('import_resources', 'site', 'system/import', 'import_resources_desc', '', 6, '', '', 'import_static', 'core'),
('import_site', 'site', 'system/import/html', 'import_site_desc', '', 5, '', '', 'import_static', 'core'),
('installer', 'components', 'workspaces', 'installer_desc', '', 0, '', '', 'packages', 'core'),
('lexicon_management', 'admin', 'workspaces/lexicon', 'lexicon_management_desc', '', 7, '', '', 'lexicons', 'core'),
('logout', 'user', 'security/logout', 'logout_desc', '', 2, '', 'MODx.logout(); return false;', 'logout', 'core'),
('manage', 'topnav', '', '', '', 3, '', '', 'menu_tools', 'core'),
('media', 'topnav', '', 'media_desc', '', 1, '', '', 'file_manager', 'core'),
('messages', 'user', 'security/message', 'messages_desc', '', 1, '', '', 'messages', 'core'),
('namespaces', 'admin', 'workspaces/namespace', 'namespaces_desc', '', 8, '', '', 'namespaces', 'core'),
('new_resource', 'site', 'resource/create', 'new_resource_desc', '', 0, '', '', 'new_document', 'core'),
('preview', 'site', '', 'preview_desc', '', 4, '', 'MODx.preview(); return false;', '', 'core'),
('profile', 'user', 'security/profile', 'profile_desc', '', 0, '', '', 'change_profile', 'core'),
('propertysets', 'admin', 'element/propertyset', 'propertysets_desc', '', 6, '', '', 'property_sets', 'core'),
('refreshuris', 'refresh_site', '', 'refreshuris_desc', '', 0, '', 'MODx.refreshURIs(); return false;', 'empty_cache', 'core'),
('refresh_site', 'manage', '', 'refresh_site_desc', '', 1, '', 'MODx.clearCache(); return false;', 'empty_cache', 'core'),
('remove_locks', 'manage', '', 'remove_locks_desc', '', 2, '', 'MODx.removeLocks();return false;', 'remove_locks', 'core'),
('reports', 'manage', '', 'reports_desc', '', 5, '', '', 'menu_reports', 'core'),
('resource_groups', 'site', 'security/resourcegroup', 'resource_groups_desc', '', 7, '', '', 'access_permissions', 'core'),
('site', 'topnav', '', '', '', 0, '', '', 'menu_site', 'core'),
('site_schedule', 'reports', 'resource/site_schedule', 'site_schedule_desc', '', 0, '', '', 'view_document', 'core'),
('sources', 'media', 'source', 'sources_desc', '', 1, '', '', 'sources', 'core'),
('system_settings', 'admin', 'system/settings', 'system_settings_desc', '', 0, '', '', 'settings', 'core'),
('topnav', '', '', 'topnav_desc', '', 0, '', '', '', 'core'),
('user', 'usernav', '', '', '<span id=\"user-avatar\">{$userImage}</span> <span id=\"user-username\">{$username}</span>', 5, '', '', 'menu_user', 'core'),
('usernav', '', '', 'usernav_desc', '', 0, '', '', '', 'core'),
('users', 'manage', 'security/user', 'user_management_desc', '', 0, '', '', 'view_user', 'core'),
('view_logging', 'reports', 'system/logs', 'view_logging_desc', '', 1, '', '', 'logs', 'core'),
('view_sysinfo', 'reports', 'system/info', 'view_sysinfo_desc', '', 3, '', '', 'view_sysinfo', 'core');

-- --------------------------------------------------------

--
-- Table structure for table `modx_namespaces`
--

CREATE TABLE `modx_namespaces` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `path` text DEFAULT NULL,
  `assets_path` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_namespaces`
--

INSERT INTO `modx_namespaces` (`name`, `path`, `assets_path`) VALUES
('core', '{core_path}', '{assets_path}'),
('formit', '{core_path}components/formit/', '{assets_path}components/formit/'),
('pdotools', '{core_path}components/pdotools/', '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_property_set`
--

CREATE TABLE `modx_property_set` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `category` int(10) NOT NULL DEFAULT 0,
  `description` varchar(191) NOT NULL DEFAULT '',
  `properties` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_register_messages`
--

CREATE TABLE `modx_register_messages` (
  `topic` int(10) UNSIGNED NOT NULL,
  `id` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `accesses` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `expires` int(20) NOT NULL DEFAULT 0,
  `payload` mediumtext NOT NULL,
  `kill` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_register_queues`
--

CREATE TABLE `modx_register_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `options` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_register_queues`
--

INSERT INTO `modx_register_queues` (`id`, `name`, `options`) VALUES
(1, 'locks', 'a:1:{s:9:\"directory\";s:5:\"locks\";}');

-- --------------------------------------------------------

--
-- Table structure for table `modx_register_topics`
--

CREATE TABLE `modx_register_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `queue` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `options` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_register_topics`
--

INSERT INTO `modx_register_topics` (`id`, `queue`, `name`, `created`, `updated`, `options`) VALUES
(1, 1, '/resource/', '2021-07-19 11:16:42', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_session`
--

CREATE TABLE `modx_session` (
  `id` varchar(191) NOT NULL DEFAULT '',
  `access` int(20) UNSIGNED NOT NULL,
  `data` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_session`
--

INSERT INTO `modx_session` (`id`, `access`, `data`) VALUES
('2knpht5arqbv44chman19h2gvl', 1626865790, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:3:{s:4:\"load\";b:1;s:6:\"formit\";b:1;s:18:\"formit_encryptions\";b:0;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}modx.mgr.user.token|s:52:\"modx60f53e2aec5b74.64152832_160f7a27e2196f6.78720559\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('97q8rk9oup6rehei900taur5mq', 1626702701, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.mgr.user.token|s:52:\"modx60f53e2aec5b74.64152832_160f53e9f6dda99.54306604\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:16:{i:0;s:23:\"60f542fa8acb30.78339672\";i:1;s:23:\"60f543c66e0703.74185420\";i:2;s:23:\"60f543ee279f75.94902031\";i:3;s:23:\"60f5441d7ca489.96954214\";i:4;s:23:\"60f5441fd847e9.98195454\";i:5;s:23:\"60f54421f1edf6.99126882\";i:6;s:23:\"60f544570ec2c7.19527797\";i:7;s:23:\"60f5445b631b17.45601662\";i:8;s:23:\"60f544dab36027.02009128\";i:9;s:23:\"60f546061c2747.84274384\";i:10;s:23:\"60f546089bc268.55440578\";i:11;s:23:\"60f54aa3d3c886.07933112\";i:12;s:23:\"60f562634ada77.00219045\";i:13;s:23:\"60f5626d276df9.02773776\";i:14;s:23:\"60f56648ef14f8.76905024\";i:15;s:23:\"60f5836d6176b3.11759287\";}modx.user.1.userGroups|a:1:{i:0;i:1;}'),
('cnme6rbs9rgufm3nn9l7utj0b3', 1626787618, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:3:{s:4:\"load\";b:1;s:6:\"formit\";b:1;s:18:\"formit_encryptions\";b:0;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}modx.mgr.user.token|s:52:\"modx60f53e2aec5b74.64152832_160f65cf8d95c58.51798468\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:14:{i:0;s:23:\"60f668c8230c49.80008805\";i:1;s:23:\"60f669238a6bf9.08289289\";i:2;s:23:\"60f66aa63a22e2.02160433\";i:3;s:23:\"60f6810a302bc6.22123711\";i:4;s:23:\"60f6812148ba38.68622515\";i:5;s:23:\"60f6ac577da205.70016255\";i:6;s:23:\"60f6ac8990fd06.87831501\";i:7;s:23:\"60f6ac8c28f217.60373865\";i:8;s:23:\"60f6acbfd19391.95888775\";i:9;s:23:\"60f6acc99f0473.74429062\";i:10;s:23:\"60f6b692c83191.46573888\";i:11;s:23:\"60f6cde6cb68c2.17285818\";i:12;s:23:\"60f6ce08ca3488.93079885\";i:13;s:23:\"60f6cf2246f017.50263809\";}modx.user.1.userGroups|a:1:{i:0;i:1;}user_id|s:1:\"3\";'),
('jgk6ir36e4tcj1hr66heuvosjo', 1626701799, 'modx.user.contextTokens|a:0:{}modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:3:{s:4:\"load\";b:1;s:6:\"formit\";b:1;s:18:\"formit_encryptions\";b:0;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}'),
('lc35q4g9rlq45qve230n50st77', 1626868083, 'modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:2:{s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:3:{s:4:\"load\";b:1;s:6:\"formit\";b:1;s:18:\"formit_encryptions\";b:0;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}s:3:\"mgr\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:3:{s:4:\"load\";b:1;s:6:\"formit\";b:1;s:18:\"formit_encryptions\";b:0;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.mgr.user.token|s:52:\"modx60f53e2aec5b74.64152832_160f7a297b28026.09009200\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:30:{i:0;s:23:\"60f7a2a5eea156.75893017\";i:1;s:23:\"60f7a6215922f0.58354395\";i:2;s:23:\"60f7a624e53186.48694130\";i:3;s:23:\"60f7a8e45cd1f9.88297604\";i:4;s:23:\"60f7ab6e100b13.50793594\";i:5;s:23:\"60f7ab84414fd8.34084675\";i:6;s:23:\"60f7d812016f44.70012723\";i:7;s:23:\"60f7d8264f26d7.21507510\";i:8;s:23:\"60f7d82f8375a7.52141621\";i:9;s:23:\"60f7d836644908.72368312\";i:10;s:23:\"60f7e1e276e755.69525747\";i:11;s:23:\"60f7e1ea3f7bf4.95798234\";i:12;s:23:\"60f7e1f45daf08.11352572\";i:13;s:23:\"60f7e1f87e4e54.61017342\";i:14;s:23:\"60f7e8fbd15d15.22262550\";i:15;s:23:\"60f7e903470e78.69271615\";i:16;s:23:\"60f7e909f0e372.94618918\";i:17;s:23:\"60f7e910b396b1.18309512\";i:18;s:23:\"60f7ea1f34bfd2.13556976\";i:19;s:23:\"60f7ea22bef5e4.05109593\";i:20;s:23:\"60f7ee44a0fc47.00356675\";i:21;s:23:\"60f7ee64838627.31225245\";i:22;s:23:\"60f7ee69464bf6.62142971\";i:23;s:23:\"60f7ee796802c8.38237897\";i:24;s:23:\"60f7ef1f15a242.14792169\";i:25;s:23:\"60f7ef4451c038.57207479\";i:26;s:23:\"60f7efded26781.94108772\";i:27;s:23:\"60f7f02125f775.36115137\";i:28;s:23:\"60f80960af63b8.15098860\";i:29;s:23:\"60f809732cfcd0.59842034\";}modx.user.1.userGroups|a:1:{i:0;i:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_content`
--

CREATE TABLE `modx_site_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(191) NOT NULL DEFAULT '',
  `longtitle` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `alias` varchar(191) DEFAULT '',
  `alias_visible` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `link_attributes` varchar(191) NOT NULL DEFAULT '',
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `pub_date` int(20) NOT NULL DEFAULT 0,
  `unpub_date` int(20) NOT NULL DEFAULT 0,
  `parent` int(10) NOT NULL DEFAULT 0,
  `isfolder` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `introtext` text DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `richtext` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `template` int(10) NOT NULL DEFAULT 0,
  `menuindex` int(10) NOT NULL DEFAULT 0,
  `searchable` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `cacheable` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `createdby` int(10) NOT NULL DEFAULT 0,
  `createdon` int(20) NOT NULL DEFAULT 0,
  `editedby` int(10) NOT NULL DEFAULT 0,
  `editedon` int(20) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `deletedon` int(20) NOT NULL DEFAULT 0,
  `deletedby` int(10) NOT NULL DEFAULT 0,
  `publishedon` int(20) NOT NULL DEFAULT 0,
  `publishedby` int(10) NOT NULL DEFAULT 0,
  `menutitle` varchar(191) NOT NULL DEFAULT '',
  `donthit` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `privateweb` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `privatemgr` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `content_dispo` tinyint(1) NOT NULL DEFAULT 0,
  `hidemenu` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `class_key` varchar(100) NOT NULL DEFAULT 'modDocument',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  `content_type` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `uri` text DEFAULT NULL,
  `uri_override` tinyint(1) NOT NULL DEFAULT 0,
  `hide_children_in_tree` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_tree` tinyint(1) NOT NULL DEFAULT 1,
  `properties` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_site_content`
--

INSERT INTO `modx_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `alias_visible`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`) VALUES
(1, 'document', 'text/html', 'Home', 'Congratulations!', '', 'index', 1, '', 1, 0, 0, 0, 0, '', '\r\n<!DOCTYPE html>\r\n<html>\r\n<head>\r\n	<title>\r\n		Modx framework home page\r\n	</title>\r\n</head>\r\n<body>\r\n<div class=\"container\">\r\n	<div class=\"row\">\r\n		<ul>\r\n			<li><a href=\"index.php?id=2\">Register</a></li>\r\n			<li><a href=\"index.php?id=3\">Login</a> </li>			\r\n		</ul>\r\n	</div>\r\n	<div class=\"row\">\r\n		<h2>Welcome to modx framework</h2>\r\n                <a href=\"manager\">Manager login</a>\r\n	</div>\r\n</div>\r\n</body>\r\n</html>', 1, 1, 0, 1, 1, 1, 1626684979, 1, 1626868118, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(2, 'document', 'text/html', 'Registration', 'Registration', '', 'register', 1, '', 1, 0, 0, 0, 0, '', '\r\n[[registerForm]]\r\n<hr />\r\n<div class=\"register\">\r\n    <div class=\"registerMessage\">[[+=message]]</div>\r\n\r\n    <form class=\"form\" action=\"[[~[[*id]]]]\" method=\"post\">\r\n        <input type=\"hidden\" name=\"nospam\" value=\"[[!+reg.nospam]]\" />\r\n\r\n        <label for=\"username\">User name:\r\n            <span class=\"error\">[[!+reg.error.username]]</span>\r\n        </label>\r\n        <input type=\"text\" name=\"username\" id=\"username\" value=\"[[!+reg.username]]\" required=\"\" />\r\n        <br><br>\r\n        <label for=\"password\">Password:\r\n            <span class=\"error\">[[!+reg.error.password]]</span>\r\n        </label>\r\n        <input type=\"password\" name=\"password\" id=\"password\" value=\"[[!+reg.password]]\" required=\"\"/>\r\n        \r\n       <br><br>\r\n        <label for=\"fullname\"> Full Name\r\n            <span class=\"error\">[[!+reg.error.fullname]]</span>\r\n        </label>\r\n        <input type=\"text\" name=\"fullname\" id=\"fullname\" value=\"[[!+reg.fullname]]\" required=\"\"/>\r\n        <br><br>\r\n        <label for=\"email\"> Email:\r\n            <span class=\"error\">[[!+reg.error.email]]</span>\r\n        </label>\r\n        <input type=\"email\" name=\"email\" id=\"email\" value=\"[[!+reg.email]]\" required=\"\"/>\r\n\r\n        <br><br>\r\n        <div class=\"modal-footer\">\r\n        <button class=\"btn btn-success\"  name=\"registerbtn\" value=\"register\" type=\"submit\">Register</button>\r\n<br />\r\n<a href=\"index.php?id=3\">Cick to login</a>\r\n        </div>\r\n        \r\n    </form>\r\n</div>', 1, 1, 1, 1, 1, 1, 1626686549, 1, 1626861598, 0, 0, 0, 1626686520, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(3, 'document', 'text/html', 'Login', '', '', 'login', 1, '', 0, 0, 0, 0, 0, '', '\r\n[[loginForm]]\r\n<hr />\r\n<div class=\"register\">\r\n    <div class=\"loginMessage\">[[+=message]]</div>\r\n\r\n    <form class=\"form\" action=\"[[~[[*id]]]]\" method=\"post\">\r\n        <input type=\"hidden\" name=\"nospam\" value=\"[[!+reg.nospam]]\" />\r\n\r\n        <label for=\"username\">User name:\r\n            <span class=\"error\">[[!+reg.error.username]]</span>\r\n        </label>\r\n        <input type=\"text\" name=\"username\" id=\"username\" value=\"[[!+reg.username]]\" required=\"\" />\r\n        <br><br>\r\n        <label for=\"password\">Password:\r\n            <span class=\"error\">[[!+reg.error.password]]</span>\r\n        </label>\r\n        <input type=\"password\" name=\"password\" id=\"password\" value=\"[[!+reg.password]]\" required=\"\"/>\r\n       <br>\r\n        <br class=\"clear\" />\r\n        <div class=\"modal-footer\">\r\n        <button class=\"btn btn-success\"  name=\"loginbtn\" value=\"login\" type=\"submit\">Login</button>\r\n        </div>\r\n        \r\n    </form>\r\n</div>', 1, 1, 2, 1, 1, 1, 1626778814, 1, 1626861615, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(4, 'document', 'text/html', 'EmailVerification', '', '', 'emailverification', 1, '', 0, 0, 0, 0, 0, '', '\r\n[[emailVerification]]', 1, 1, 3, 1, 1, 1, 1626787335, 1, 1626859783, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(5, 'document', 'text/html', 'profile', '', '', 'profile', 1, '', 0, 0, 0, 0, 0, '', '<div style=\"100%\" align=\"right\"><a href=\"index.php?id=6\">Logout</a></div>\r\n[[profileForm]]', 1, 1, 4, 1, 1, 1, 1626844034, 1, 1626861234, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL),
(6, 'document', 'text/html', 'logout', '', '', 'logout', 1, '', 0, 0, 0, 0, 0, '', '[[loguotForm]]', 1, 1, 5, 1, 1, 1, 1626861154, 1, 1626861386, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_htmlsnippets`
--

CREATE TABLE `modx_site_htmlsnippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `cache_type` tinyint(1) NOT NULL DEFAULT 0,
  `snippet` mediumtext DEFAULT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_site_htmlsnippets`
--

INSERT INTO `modx_site_htmlsnippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `static`, `static_file`) VALUES
(2, 0, 0, 'fiDefaultEmailTpl', 'The default chunk used for the email. Please do not edit this chunk, as this will be overwritten when updating FormIt.', 0, 2, 0, '<p>[[+fields]]</p>', 0, 'a:0:{}', 0, ''),
(3, 0, 0, 'fiDefaultFiarTpl', 'The default chunk used for the autoresponder email. Please do not edit this chunk, as this will be overwritten when updating FormIt.', 0, 2, 0, '<p>Hello [[+name]],</p>\n\n<p>Your message has been received. We will respond as soon as possible. Thank you for contacting us.</p>\n\n<p>NOTE: This is an automatic response; please do not respond to this message directly.</p>\n\n<p>Here is your message:<br />\n[[+message:nl2br]]</p>', 0, 'a:0:{}', 0, ''),
(4, 0, 0, 'fiDefaultOptGroupTpl', 'The default chunk used by the FormItCountryOptions snippet for the select optgroup. Please do not edit this chunk, as this will be overwritten when updating FormIt.', 0, 2, 0, '<optgroup label=\"[[+text]]\">\n    [[+options]]\n</optgroup>', 0, 'a:0:{}', 0, ''),
(5, 0, 0, 'fiDefaultOptionTpl', 'The default chunk used by the FormItCountryOptions snippet for the select option. Please do not edit this chunk, as this will be overwritten when updating FormIt.', 0, 2, 0, '<option value=\"[[+value]]\"[[+selected]]>[[+text]]</option>', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_plugins`
--

CREATE TABLE `modx_site_plugins` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `cache_type` tinyint(1) NOT NULL DEFAULT 0,
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL,
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_site_plugins`
--

INSERT INTO `modx_site_plugins` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `plugincode`, `locked`, `properties`, `disabled`, `moduleguid`, `static`, `static_file`) VALUES
(1, 0, 0, 'FormIt', '', 0, 2, 0, '/**\n * FormIt\n *\n * Copyright 2009-2017 by Sterc <modx@sterc.nl>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * FormIt plugin\n *\n * @package formit\n */\n\n$formit = $modx->getService(\n    \'formit\',\n    \'FormIt\',\n    $modx->getOption(\'formit.core_path\', null, $modx->getOption(\'core_path\').\'components/formit/\') .\'model/formit/\',\n    array()\n);\n\nif (!($formit instanceof FormIt)) {\n    return;\n}\n\nswitch ($modx->event->name) {\n    case \'OnManagerPageBeforeRender\':\n        // If migration status is false, show migrate alert message bar in manager\n        if (method_exists(\'FormIt\',\'encryptionMigrationStatus\')) {\n            if (!$formit->encryptionMigrationStatus()) {\n                $modx->lexicon->load(\'formit:mgr\');\n                $properties = array(\'message\' => $modx->lexicon(\'formit.migrate_alert\'));\n                $chunk = $formit->_getTplChunk(\'migrate/alert\');\n                if ($chunk) {\n                    $modx->regClientStartupHTMLBlock($chunk->process($properties));\n                    $modx->regClientCSS($formit->config[\'cssUrl\'] . \'migrate.css\');\n                }\n            }\n        }\n}', 0, 'a:0:{}', 0, '', 0, ''),
(2, 1, 0, 'pdoTools', '', 0, 3, 0, '/** @var modX $modx */\nswitch ($modx->event->name) {\n\n    case \'OnMODXInit\':\n        $fqn = $modx->getOption(\'pdoTools.class\', null, \'pdotools.pdotools\', true);\n        $path = $modx->getOption(\'pdotools_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\n        $modx->loadClass($fqn, $path, false, true);\n\n        $fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n        $path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\n        $modx->loadClass($fqn, $path, false, true);\n        break;\n\n    case \'OnSiteRefresh\':\n        /** @var pdoTools $pdoTools */\n        if ($pdoTools = $modx->getService(\'pdoTools\')) {\n            if ($pdoTools->clearFileCache()) {\n                $modx->log(modX::LOG_LEVEL_INFO, $modx->lexicon(\'refresh_default\') . \': pdoTools\');\n            }\n        }\n        break;\n\n    case \'OnWebPagePrerender\':\n        $parser = $modx->getParser();\n        if ($parser instanceof pdoParser) {\n            foreach ($parser->pdoTools->ignores as $key => $val) {\n                $modx->resource->_output = str_replace($key, $val, $modx->resource->_output);\n            }\n        }\n        break;\n}', 0, NULL, 0, '', 0, 'core/components/pdotools/elements/plugins/plugin.pdotools.php');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_plugin_events`
--

CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL DEFAULT 0,
  `event` varchar(191) NOT NULL DEFAULT '',
  `priority` int(10) NOT NULL DEFAULT 0,
  `propertyset` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_site_plugin_events`
--

INSERT INTO `modx_site_plugin_events` (`pluginid`, `event`, `priority`, `propertyset`) VALUES
(1, 'OnManagerPageBeforeRender', 0, 0),
(2, 'OnMODXInit', -100, 0),
(2, 'OnSiteRefresh', 0, 0),
(2, 'OnWebPagePrerender', -100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_snippets`
--

CREATE TABLE `modx_site_snippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `cache_type` tinyint(1) NOT NULL DEFAULT 0,
  `snippet` mediumtext DEFAULT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_site_snippets`
--

INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(1, 0, 0, 'FormIt', 'A dynamic form processing snippet.', 0, 2, 0, '/**\n * FormIt\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * FormIt\n *\n * A dynamic form processing Snippet for MODx Revolution.\n *\n * @var modX $modx\n * @var array $scriptProperties\n *\n * @package formit\n */\n\n$modelPath = $modx->getOption(\n    \'formit.core_path\',\n    null,\n    $modx->getOption(\'core_path\', null, MODX_CORE_PATH) . \'components/formit/\'\n) . \'model/formit/\';\n$modx->loadClass(\'FormIt\', $modelPath, true, true);\n$fi = new FormIt($modx, $scriptProperties);\n\n$fi->initialize($modx->context->get(\'key\'));\n$fi->loadRequest();\n\n$fields = $fi->request->prepare();\nreturn $fi->request->handle($fields);', 0, 'a:61:{s:5:\"hooks\";a:7:{s:4:\"name\";s:5:\"hooks\";s:4:\"desc\";s:22:\"prop_formit.hooks_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:8:\"preHooks\";a:7:{s:4:\"name\";s:8:\"preHooks\";s:4:\"desc\";s:25:\"prop_formit.prehooks_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:9:\"submitVar\";a:7:{s:4:\"name\";s:9:\"submitVar\";s:4:\"desc\";s:26:\"prop_formit.submitvar_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:8:\"validate\";a:7:{s:4:\"name\";s:8:\"validate\";s:4:\"desc\";s:25:\"prop_formit.validate_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:6:\"errTpl\";a:7:{s:4:\"name\";s:6:\"errTpl\";s:4:\"desc\";s:23:\"prop_formit.errtpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:37:\"<span class=\"error\">[[+error]]</span>\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:22:\"validationErrorMessage\";a:7:{s:4:\"name\";s:22:\"validationErrorMessage\";s:4:\"desc\";s:39:\"prop_formit.validationerrormessage_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:96:\"<p class=\"error\">A form validation error occurred. Please check the values you have entered.</p>\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:22:\"validationErrorBulkTpl\";a:7:{s:4:\"name\";s:22:\"validationErrorBulkTpl\";s:4:\"desc\";s:39:\"prop_formit.validationerrorbulktpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:19:\"<li>[[+error]]</li>\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:26:\"trimValuesBeforeValidation\";a:7:{s:4:\"name\";s:26:\"trimValuesBeforeValidation\";s:4:\"desc\";s:43:\"prop_formit.trimvaluesdeforevalidation_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:16:\"customValidators\";a:7:{s:4:\"name\";s:16:\"customValidators\";s:4:\"desc\";s:33:\"prop_formit.customvalidators_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:20:\"clearFieldsOnSuccess\";a:7:{s:4:\"name\";s:20:\"clearFieldsOnSuccess\";s:4:\"desc\";s:37:\"prop_formit.clearfieldsonsuccess_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:14:\"successMessage\";a:7:{s:4:\"name\";s:14:\"successMessage\";s:4:\"desc\";s:31:\"prop_formit.successmessage_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:25:\"successMessagePlaceholder\";a:7:{s:4:\"name\";s:25:\"successMessagePlaceholder\";s:4:\"desc\";s:42:\"prop_formit.successmessageplaceholder_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:17:\"fi.successMessage\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:5:\"store\";a:7:{s:4:\"name\";s:5:\"store\";s:4:\"desc\";s:22:\"prop_formit.store_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:17:\"placeholderPrefix\";a:7:{s:4:\"name\";s:17:\"placeholderPrefix\";s:4:\"desc\";s:34:\"prop_formit.placeholderprefix_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"fi.\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:9:\"storeTime\";a:7:{s:4:\"name\";s:9:\"storeTime\";s:4:\"desc\";s:26:\"prop_formit.storetime_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"300\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:13:\"storeLocation\";a:7:{s:4:\"name\";s:13:\"storeLocation\";s:4:\"desc\";s:30:\"prop_formit.storelocation_desc\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:5:\"value\";s:5:\"cache\";s:4:\"text\";s:16:\"formit.opt_cache\";}i:1;a:2:{s:5:\"value\";s:7:\"session\";s:4:\"text\";s:18:\"formit.opt_session\";}}s:5:\"value\";s:5:\"cache\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:10:\"allowFiles\";a:7:{s:4:\"name\";s:10:\"allowFiles\";s:4:\"desc\";s:27:\"prop_formit.allowfiles_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:15:\"spamEmailFields\";a:7:{s:4:\"name\";s:15:\"spamEmailFields\";s:4:\"desc\";s:32:\"prop_formit.spamemailfields_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:5:\"email\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"spamCheckIp\";a:7:{s:4:\"name\";s:11:\"spamCheckIp\";s:4:\"desc\";s:28:\"prop_formit.spamcheckip_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"recaptchaJs\";a:7:{s:4:\"name\";s:11:\"recaptchaJs\";s:4:\"desc\";s:28:\"prop_formit.recaptchajs_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:2:\"{}\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:14:\"recaptchaTheme\";a:7:{s:4:\"name\";s:14:\"recaptchaTheme\";s:4:\"desc\";s:31:\"prop_formit.recaptchatheme_desc\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:4:{i:0;a:2:{s:5:\"value\";s:3:\"red\";s:4:\"text\";s:14:\"formit.opt_red\";}i:1;a:2:{s:5:\"value\";s:5:\"white\";s:4:\"text\";s:16:\"formit.opt_white\";}i:2;a:2:{s:5:\"value\";s:5:\"clean\";s:4:\"text\";s:16:\"formit.opt_clean\";}i:3;a:2:{s:5:\"value\";s:10:\"blackglass\";s:4:\"text\";s:21:\"formit.opt_blackglass\";}}s:5:\"value\";s:5:\"clean\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:10:\"redirectTo\";a:7:{s:4:\"name\";s:10:\"redirectTo\";s:4:\"desc\";s:27:\"prop_formit.redirectto_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:14:\"redirectParams\";a:7:{s:4:\"name\";s:14:\"redirectParams\";s:4:\"desc\";s:31:\"prop_formit.redirectparams_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"emailTo\";a:7:{s:4:\"name\";s:7:\"emailTo\";s:4:\"desc\";s:24:\"prop_formit.emailto_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"emailToName\";a:7:{s:4:\"name\";s:11:\"emailToName\";s:4:\"desc\";s:28:\"prop_formit.emailtoname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:9:\"emailFrom\";a:7:{s:4:\"name\";s:9:\"emailFrom\";s:4:\"desc\";s:26:\"prop_formit.emailfrom_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:13:\"emailFromName\";a:7:{s:4:\"name\";s:13:\"emailFromName\";s:4:\"desc\";s:30:\"prop_formit.emailfromname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"emailReplyTo\";a:7:{s:4:\"name\";s:12:\"emailReplyTo\";s:4:\"desc\";s:29:\"prop_formit.emailreplyto_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:16:\"emailReplyToName\";a:7:{s:4:\"name\";s:16:\"emailReplyToName\";s:4:\"desc\";s:33:\"prop_formit.emailreplytoname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"emailCC\";a:7:{s:4:\"name\";s:7:\"emailCC\";s:4:\"desc\";s:24:\"prop_formit.emailcc_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"emailCCName\";a:7:{s:4:\"name\";s:11:\"emailCCName\";s:4:\"desc\";s:28:\"prop_formit.emailccname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:8:\"emailBCC\";a:7:{s:4:\"name\";s:8:\"emailBCC\";s:4:\"desc\";s:25:\"prop_formit.emailbcc_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"emailBCCName\";a:7:{s:4:\"name\";s:12:\"emailBCCName\";s:4:\"desc\";s:29:\"prop_formit.emailbccname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:15:\"emailReturnPath\";a:7:{s:4:\"name\";s:15:\"emailReturnPath\";s:4:\"desc\";s:32:\"prop_formit.emailreturnpath_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"emailSubject\";a:7:{s:4:\"name\";s:12:\"emailSubject\";s:4:\"desc\";s:29:\"prop_formit.emailsubject_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:23:\"emailUseFieldForSubject\";a:7:{s:4:\"name\";s:23:\"emailUseFieldForSubject\";s:4:\"desc\";s:40:\"prop_formit.emailusefieldforsubject_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:9:\"emailHtml\";a:7:{s:4:\"name\";s:9:\"emailHtml\";s:4:\"desc\";s:26:\"prop_formit.emailhtml_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:20:\"emailConvertNewlines\";a:7:{s:4:\"name\";s:20:\"emailConvertNewlines\";s:4:\"desc\";s:37:\"prop_formit.emailconvertnewlines_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:17:\"emailMultiWrapper\";a:7:{s:4:\"name\";s:17:\"emailMultiWrapper\";s:4:\"desc\";s:34:\"prop_formit.emailmultiwrapper_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:10:\"[[+value]]\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:19:\"emailMultiSeparator\";a:7:{s:4:\"name\";s:19:\"emailMultiSeparator\";s:4:\"desc\";s:36:\"prop_formit.emailmultiseparator_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"fiarTpl\";a:7:{s:4:\"name\";s:7:\"fiarTpl\";s:4:\"desc\";s:24:\"prop_formit.fiartpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"fiarToField\";a:7:{s:4:\"name\";s:11:\"fiarToField\";s:4:\"desc\";s:28:\"prop_formit.fiartofield_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:5:\"email\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"fiarSubject\";a:7:{s:4:\"name\";s:11:\"fiarSubject\";s:4:\"desc\";s:28:\"prop_formit.fiarsubject_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:30:\"[[++site_name]] Auto-Responder\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fiarFrom\";a:7:{s:4:\"name\";s:8:\"fiarFrom\";s:4:\"desc\";s:25:\"prop_formit.fiarfrom_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"fiarFromName\";a:7:{s:4:\"name\";s:12:\"fiarFromName\";s:4:\"desc\";s:29:\"prop_formit.fiarfromname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"fiarReplyTo\";a:7:{s:4:\"name\";s:11:\"fiarReplyTo\";s:4:\"desc\";s:28:\"prop_formit.fiarreplyto_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:15:\"fiarReplyToName\";a:7:{s:4:\"name\";s:15:\"fiarReplyToName\";s:4:\"desc\";s:32:\"prop_formit.fiarreplytoname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:6:\"fiarCC\";a:7:{s:4:\"name\";s:6:\"fiarCC\";s:4:\"desc\";s:23:\"prop_formit.fiarcc_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:10:\"fiarCCName\";a:7:{s:4:\"name\";s:10:\"fiarCCName\";s:4:\"desc\";s:25:\"prop_fiar.fiarccname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"fiarBCC\";a:7:{s:4:\"name\";s:7:\"fiarBCC\";s:4:\"desc\";s:24:\"prop_formit.fiarbcc_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"fiarBCCName\";a:7:{s:4:\"name\";s:11:\"fiarBCCName\";s:4:\"desc\";s:28:\"prop_formit.fiarbccname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fiarHtml\";a:7:{s:4:\"name\";s:8:\"fiarHtml\";s:4:\"desc\";s:25:\"prop_formit.fiarhtml_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"mathMinRange\";a:7:{s:4:\"name\";s:12:\"mathMinRange\";s:4:\"desc\";s:29:\"prop_formit.mathminrange_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:2:\"10\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"mathMaxRange\";a:7:{s:4:\"name\";s:12:\"mathMaxRange\";s:4:\"desc\";s:29:\"prop_formit.mathmaxrange_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"100\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:9:\"mathField\";a:7:{s:4:\"name\";s:9:\"mathField\";s:4:\"desc\";s:26:\"prop_formit.mathfield_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:4:\"math\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"mathOp1Field\";a:7:{s:4:\"name\";s:12:\"mathOp1Field\";s:4:\"desc\";s:29:\"prop_formit.mathop1field_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"op1\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"mathOp2Field\";a:7:{s:4:\"name\";s:12:\"mathOp2Field\";s:4:\"desc\";s:29:\"prop_formit.mathop2field_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"op2\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:17:\"mathOperatorField\";a:7:{s:4:\"name\";s:17:\"mathOperatorField\";s:4:\"desc\";s:34:\"prop_formit.mathoperatorfield_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:8:\"operator\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"saveTmpFiles\";a:7:{s:4:\"name\";s:12:\"saveTmpFiles\";s:4:\"desc\";s:29:\"prop_formit.savetmpfiles_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:18:\"attachFilesToEmail\";a:7:{s:4:\"name\";s:18:\"attachFilesToEmail\";s:4:\"desc\";s:28:\"prop_formit.attachfiles_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:16:\"storeAttachments\";a:7:{s:4:\"name\";s:16:\"storeAttachments\";s:4:\"desc\";s:34:\"prop_formit.store_attachments_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, ''),
(2, 0, 0, 'FormItRetriever', 'Fetches a form submission for a user for displaying on a thank you page.', 0, 2, 0, '/**\n * FormIt\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * FormItRetriever\n *\n * Retrieves a prior form submission that was stored with the &store property\n * in a FormIt call.\n *\n * @var modX $modx\n * @var array $scriptProperties\n *\n * @package formit\n */\n\n$modelPath = $modx->getOption(\n    \'formit.core_path\',\n    null,\n    $modx->getOption(\'core_path\', null, MODX_CORE_PATH) . \'components/formit/\'\n) . \'model/formit/\';\n$fi = $modx->getService(\'formit\', \'FormIt\', $modelPath, $scriptProperties);\n\n/* setup properties */\n$placeholderPrefix = $modx->getOption(\'placeholderPrefix\', $scriptProperties, \'fi.\');\n$eraseOnLoad = $modx->getOption(\'eraseOnLoad\', $scriptProperties, false);\n$redirectToOnNotFound = $modx->getOption(\'redirectToOnNotFound\', $scriptProperties, false);\n\n/* fetch data from cache and set to placeholders */\n$fi->loadRequest();\n$fi->request->loadDictionary();\n$data = $fi->request->dictionary->retrieve();\nif (!empty($data)) {\n    /* set data to placeholders */\n    foreach ($data as $k => $v) {\n        /*checkboxes & other multi-values are stored as arrays, must be imploded*/\n        if (is_array($v)) {\n            $data[$k] = implode(\',\', $v);\n        }\n    }\n    $modx->toPlaceholders($data, $placeholderPrefix, \'\');\n    \n    /* if set, erase the data on load, otherwise depend on cache expiry time */\n    if ($eraseOnLoad) {\n        $fi->request->dictionary->erase();\n    }\n/* if the data\'s not found, and we want to redirect somewhere if so, do here */\n} elseif (!empty($redirectToOnNotFound)) {\n    $url = $modx->makeUrl($redirectToOnNotFound);\n    $modx->sendRedirect($url);\n}\nreturn \'\';', 0, 'a:4:{s:17:\"placeholderPrefix\";a:7:{s:4:\"name\";s:17:\"placeholderPrefix\";s:4:\"desc\";s:31:\"prop_fir.placeholderprefix_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"fi.\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:20:\"redirectToOnNotFound\";a:7:{s:4:\"name\";s:20:\"redirectToOnNotFound\";s:4:\"desc\";s:34:\"prop_fir.redirecttoonnotfound_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"eraseOnLoad\";a:7:{s:4:\"name\";s:11:\"eraseOnLoad\";s:4:\"desc\";s:25:\"prop_fir.eraseonload_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:13:\"storeLocation\";a:7:{s:4:\"name\";s:13:\"storeLocation\";s:4:\"desc\";s:27:\"prop_fir.storelocation_desc\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:5:\"value\";s:5:\"cache\";s:4:\"text\";s:16:\"formit.opt_cache\";}i:1;a:2:{s:5:\"value\";s:7:\"session\";s:4:\"text\";s:18:\"formit.opt_session\";}}s:5:\"value\";s:5:\"cache\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, ''),
(3, 0, 0, 'FormItIsChecked', 'A custom output filter used with checkboxes/radios for checking checked status.', 0, 2, 0, '/**\n * FormIt\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * FormItIsChecked\n *\n * Custom output filter that returns checked=\"checked\" if the value is set\n *\n * @var string $input\n * @var string $options\n * @var modX $modx\n *\n * @package formit\n */\n$output = \' \';\nif ($input == $options) {\n    $output = \' checked=\"checked\"\';\n}\n$input = $modx->fromJSON($input);\nif (!empty($input) && is_array($input) && in_array($options,$input)) {\n  $output = \' checked=\"checked\"\';\n}\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(4, 0, 0, 'FormItIsSelected', 'A custom output filter used with dropdowns for checking selected status.', 0, 2, 0, '/**\n * FormIt\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * FormItIsChecked\n *\n * Custom output filter that returns checked=\"checked\" if the value is set\n *\n * @var string $input\n * @var string $options\n * @var modX $modx\n *\n * @package formit\n */\n$output = \' \';\nif ($input == $options) {\n    $output = \' selected=\"selected\"\';\n}\n$input = $modx->fromJSON($input);\nif (!empty($input) && is_array($input) && in_array($options,$input)) {\n  $output = \' selected=\"selected\"\';\n}\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(5, 0, 0, 'FormItCountryOptions', 'A utility snippet for generating a dropdown list of countries.', 0, 2, 0, '/**\n * FormIt\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * FormItCountryOptions\n *\n * Automatically generates and outputs a country list for usage in forms\n *\n * @var modX $modx\n * @var array $scriptProperties\n *\n * @package formit\n */\n\n$modelPath = $modx->getOption(\n    \'formit.core_path\',\n    null,\n    $modx->getOption(\'core_path\', null, MODX_CORE_PATH) . \'components/formit/\'\n) . \'model/formit/\';\n$fi = $modx->getService(\'formit\', \'FormIt\', $modelPath, $scriptProperties);\n\n/** @var fiCountryOptions $co */\n$co = $fi->loadModule(\'fiCountryOptions\', \'countryOptions\', $scriptProperties);\n$co->initialize();\n$co->getData();\n$co->loadPrioritized();\n$co->iterate();\nreturn $co->output();', 0, 'a:11:{s:8:\"selected\";a:7:{s:4:\"name\";s:8:\"selected\";s:4:\"desc\";s:23:\"prop_fico.selected_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:18:\"prop_fico.tpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:18:\"fiDefaultOptionTpl\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:10:\"useIsoCode\";a:7:{s:4:\"name\";s:10:\"useIsoCode\";s:4:\"desc\";s:25:\"prop_fico.useisocode_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"prioritized\";a:7:{s:4:\"name\";s:11:\"prioritized\";s:4:\"desc\";s:26:\"prop_fico.prioritized_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"optGroupTpl\";a:7:{s:4:\"name\";s:11:\"optGroupTpl\";s:4:\"desc\";s:26:\"prop_fico.optgrouptpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:20:\"fiDefaultOptGroupTpl\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:20:\"prioritizedGroupText\";a:7:{s:4:\"name\";s:20:\"prioritizedGroupText\";s:4:\"desc\";s:35:\"prop_fico.prioritizedgrouptext_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"allGroupText\";a:7:{s:4:\"name\";s:12:\"allGroupText\";s:4:\"desc\";s:27:\"prop_fico.allgrouptext_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:17:\"selectedAttribute\";a:7:{s:4:\"name\";s:17:\"selectedAttribute\";s:4:\"desc\";s:32:\"prop_fico.selectedattribute_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:20:\" selected=\"selected\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:28:\"prop_fico.toplaceholder_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"country\";a:7:{s:4:\"name\";s:7:\"country\";s:4:\"desc\";s:22:\"prop_fico.country_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:16:\"[[++cultureKey]]\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"limited\";a:7:{s:4:\"name\";s:7:\"limited\";s:4:\"desc\";s:22:\"prop_fico.limited_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, ''),
(6, 0, 0, 'FormItStateOptions', 'A utility snippet for generating a dropdown list of U.S. states.', 0, 2, 0, '/**\n * FormIt\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * FormItStateOptions\n *\n * Automatically generates and outputs a U.S. state list for usage in forms\n *\n * @var modX $modx\n * @var array $scriptProperties\n *\n * @package formit\n */\n\n$modelPath = $modx->getOption(\n    \'formit.core_path\',\n    null,\n    $modx->getOption(\'core_path\', null, MODX_CORE_PATH) . \'components/formit/\'\n) . \'model/formit/\';\n$fi = $modx->getService(\'formit\', \'FormIt\', $modelPath, $scriptProperties);\n\n/** @var fiStateOptions $so */\n$so = $fi->loadModule(\'fiStateOptions\', \'stateOptions\', $scriptProperties);\n$so->initialize();\n$so->getData();\n$so->iterate();\nreturn $so->output();', 0, 'a:6:{s:8:\"selected\";a:7:{s:4:\"name\";s:8:\"selected\";s:4:\"desc\";s:23:\"prop_fiso.selected_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:18:\"prop_fiso.tpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:18:\"fiDefaultOptionTpl\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"useAbbr\";a:7:{s:4:\"name\";s:7:\"useAbbr\";s:4:\"desc\";s:22:\"prop_fiso.useabbr_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:17:\"selectedAttribute\";a:7:{s:4:\"name\";s:17:\"selectedAttribute\";s:4:\"desc\";s:32:\"prop_fiso.selectedattribute_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:20:\" selected=\"selected\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:28:\"prop_fiso.toplaceholder_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"country\";a:7:{s:4:\"name\";s:7:\"country\";s:4:\"desc\";s:22:\"prop_fiso.country_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:16:\"[[++cultureKey]]\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, ''),
(7, 0, 0, 'FormItLoadSavedForm', 'Prehook to load previously saved form.', 0, 2, 0, '/**\n * FormIt\n *\n * Copyright 2011-12 by SCHERP Ontwikkeling <info@scherpontwikkeling.nl>\n * Copyright 2015 by Wieger Sloot <modx@sterc.nl>\n * Copyright 2016 by YJ Tso <yj@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * A custom FormIt prehook for fetching saved form data. - Based on FormItSaveForm\n *\n * @var modX $modx\n * @var array $scriptProperties\n * @var FormIt $formit\n * @var fiHooks $hook\n * \n * @package formit\n */\n/* setup default properties */\n// If prehook fails do we continue?\n$return = $modx->getOption(\'returnValueOnFail\', $formit->config, true);\n$formEncrypt = $modx->getOption(\'formEncrypt\', $formit->config, false);\n$formFields = $modx->getOption(\'formFields\', $formit->config, false);\n$fieldNames = $modx->getOption(\'fieldNames\', $formit->config, false);\n$updateSavedForm = $modx->getOption(\'updateSavedForm\', $formit->config, false); // true, false, \'1\', \'0\', or \'values\'\n// If FormIt config says don\'t update, don\'t do it\nif (!$updateSavedForm) return $return;\n// In order to load form values, the user must provide the hash key somehow\n// Usually with a $_GET parameter, but a property in $formit->config will override.\n$formHashKeyField = $modx->getOption(\'savedFormHashKeyField\', $formit->config, \'savedFormHashKey\');\n$formHashKey = \'\';\nif (isset($_GET[$formHashKeyField])) $formHashKey = (string) $_GET[$formHashKeyField];\nif ($hook->getValue($formHashKeyField)) $formHashKey = (string) $hook->getValue($formHashKeyField);\nif (isset($formit->config[$formHashKeyField])) $formHashKey = $formit->config[$formHashKeyField];\n// our hashing methods return 32 chars. if no valid hash key we\'re done here.\nif (strlen($formHashKey) !== 32) return $return;\n\n// Try to fetch the saved form\n$savedForm = $modx->getObject(\'FormItForm\', array(\'hash\' => $formHashKey));\nif (!$savedForm) return $return;\n\nif ($formFields) {\n    $formFields = explode(\',\', $formFields);\n    foreach($formFields as $k => $v) {\n        $formFields[$k] = trim($v);\n    }\n}\n\n// Initialize the data array\n// Handle encryption\nif ($formEncrypt) {\n    $encrypted_data = $savedForm->get(\'values\');\n    $data = $savedForm->decrypt($encrypted_data);\n} else {\n    $data = $savedForm->get(\'values\');\n}\nif (is_string($data)) $data = $modx->fromJSON($data);\nif (!is_array($data)) return $return;\n\n//Change the fieldnames\nif ($fieldNames) {\n    $newDataArray = array();\n    $fieldLabels = array();\n    $formFieldNames = explode(\',\', $fieldNames);\n    foreach($formFieldNames as $formFieldName){\n        list($name, $label) = explode(\'==\', $formFieldName);\n        // reverse order from FormItSaveForm snippet\n        $fieldLabels[trim($label)] = trim($name);\n    }\n    foreach ($data as $key => $value) {\n        if ($fieldLabels[$key]) {\n            $newDataArray[$fieldLabels[$key]] = $value;\n        }else{\n            $newDataArray[$key] = $value;\n        }\n    }\n    $data = $newDataArray;\n}\n\n// Always pass back in the provided hash key\n$data[$formHashKeyField] = $formHashKey;\n$hook->setValues($data);\nreturn true;', 0, 'a:0:{}', '', 0, '');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(8, 1, 0, 'pdoResources', '', 0, 3, 0, '/** @var array $scriptProperties */\nif (isset($parents) && $parents === \'\') {\n    $scriptProperties[\'parents\'] = $modx->resource->id;\n}\nif (!empty($returnIds)) {\n    $scriptProperties[\'return\'] = \'ids\';\n}\n\n// Adding extra parameters into special place so we can put them in a results\n/** @var modSnippet $snippet */\n$additionalPlaceholders = $properties = array();\nif (isset($this) && $this instanceof modSnippet && $this->get(\'properties\')) {\n    $properties = $this->get(\'properties\');\n}\nelseif ($snippet = $modx->getObject(\'modSnippet\', array(\'name\' => \'pdoResources\'))) {\n    $properties = $snippet->get(\'properties\');\n}\nif (!empty($properties)) {\n    foreach ($scriptProperties as $k => $v) {\n        if (!isset($properties[$k])) {\n            $additionalPlaceholders[$k] = $v;\n        }\n    }\n}\n$scriptProperties[\'additionalPlaceholders\'] = $additionalPlaceholders;\n\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n$output = $pdoFetch->run();\n\n$log = \'\';\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $log .= \'<pre class=\"pdoResourcesLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\n// Return output\nif (!empty($returnIds)) {\n    $modx->setPlaceholder(\'pdoResources.log\', $log);\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n} elseif (!empty($toSeparatePlaceholders)) {\n    $output[\'log\'] = $log;\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\n} else {\n    $output .= $log;\n\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n        $output = $pdoFetch->getChunk($tplWrapper, array_merge($additionalPlaceholders, array(\'output\' => $output)),\n            $pdoFetch->config[\'fastMode\']);\n    }\n\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n}', 0, 'a:47:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"returnIds\";a:7:{s:4:\"name\";s:9:\"returnIds\";s:4:\"desc\";s:23:\"pdotools_prop_returnIds\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:11:\"publishedon\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"sortbyTV\";a:7:{s:4:\"name\";s:8:\"sortbyTV\";s:4:\"desc\";s:22:\"pdotools_prop_sortbyTV\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"sortbyTVType\";a:7:{s:4:\"name\";s:12:\"sortbyTVType\";s:4:\"desc\";s:26:\"pdotools_prop_sortbyTVType\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:4:\"DESC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"sortdirTV\";a:7:{s:4:\"name\";s:9:\"sortdirTV\";s:4:\"desc\";s:23:\"pdotools_prop_sortdirTV\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"includeContent\";a:7:{s:4:\"name\";s:14:\"includeContent\";s:4:\"desc\";s:28:\"pdotools_prop_includeContent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"tvFilters\";a:7:{s:4:\"name\";s:9:\"tvFilters\";s:4:\"desc\";s:23:\"pdotools_prop_tvFilters\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:21:\"tvFiltersAndDelimiter\";a:7:{s:4:\"name\";s:21:\"tvFiltersAndDelimiter\";s:4:\"desc\";s:35:\"pdotools_prop_tvFiltersAndDelimiter\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\",\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:20:\"tvFiltersOrDelimiter\";a:7:{s:4:\"name\";s:20:\"tvFiltersOrDelimiter\";s:4:\"desc\";s:34:\"pdotools_prop_tvFiltersOrDelimiter\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:2:\"||\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"idx\";a:7:{s:4:\"name\";s:3:\"idx\";s:4:\"desc\";s:17:\"pdotools_prop_idx\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"first\";a:7:{s:4:\"name\";s:5:\"first\";s:4:\"desc\";s:19:\"pdotools_prop_first\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"last\";a:7:{s:4:\"name\";s:4:\"last\";s:4:\"desc\";s:18:\"pdotools_prop_last\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplFirst\";a:7:{s:4:\"name\";s:8:\"tplFirst\";s:4:\"desc\";s:22:\"pdotools_prop_tplFirst\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplLast\";a:7:{s:4:\"name\";s:7:\"tplLast\";s:4:\"desc\";s:21:\"pdotools_prop_tplLast\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplOdd\";a:7:{s:4:\"name\";s:6:\"tplOdd\";s:4:\"desc\";s:20:\"pdotools_prop_tplOdd\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplCondition\";a:7:{s:4:\"name\";s:12:\"tplCondition\";s:4:\"desc\";s:26:\"pdotools_prop_tplCondition\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplOperator\";a:7:{s:4:\"name\";s:11:\"tplOperator\";s:4:\"desc\";s:25:\"pdotools_prop_tplOperator\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:10:{i:0;a:2:{s:4:\"text\";s:11:\"is equal to\";s:5:\"value\";s:2:\"==\";}i:1;a:2:{s:4:\"text\";s:15:\"is not equal to\";s:5:\"value\";s:2:\"!=\";}i:2;a:2:{s:4:\"text\";s:9:\"less than\";s:5:\"value\";s:1:\"<\";}i:3;a:2:{s:4:\"text\";s:21:\"less than or equal to\";s:5:\"value\";s:2:\"<=\";}i:4;a:2:{s:4:\"text\";s:24:\"greater than or equal to\";s:5:\"value\";s:2:\">=\";}i:5;a:2:{s:4:\"text\";s:8:\"is empty\";s:5:\"value\";s:5:\"empty\";}i:6;a:2:{s:4:\"text\";s:12:\"is not empty\";s:5:\"value\";s:6:\"!empty\";}i:7;a:2:{s:4:\"text\";s:7:\"is null\";s:5:\"value\";s:4:\"null\";}i:8;a:2:{s:4:\"text\";s:11:\"is in array\";s:5:\"value\";s:7:\"inarray\";}i:9;a:2:{s:4:\"text\";s:10:\"is between\";s:5:\"value\";s:7:\"between\";}}s:5:\"value\";s:2:\"==\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"conditionalTpls\";a:7:{s:4:\"name\";s:15:\"conditionalTpls\";s:4:\"desc\";s:29:\"pdotools_prop_conditionalTpls\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:22:\"toSeparatePlaceholders\";a:7:{s:4:\"name\";s:22:\"toSeparatePlaceholders\";s:4:\"desc\";s:36:\"pdotools_prop_toSeparatePlaceholders\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"loadModels\";a:7:{s:4:\"name\";s:10:\"loadModels\";s:4:\"desc\";s:24:\"pdotools_prop_loadModels\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdoresources.php'),
(9, 1, 0, 'pdoUsers', '', 0, 3, 0, '/** @var array $scriptProperties */\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n\n$class = \'modUser\';\n$profile = \'modUserProfile\';\n$member = \'modUserGroupMember\';\n\n// Start building \"Where\" expression\n$where = array();\nif (empty($showInactive)) {\n    $where[$class . \'.active\'] = 1;\n}\nif (empty($showBlocked)) {\n    $where[$profile . \'.blocked\'] = 0;\n}\n\n// Add users profiles and groups\n$innerJoin = array(\n    $profile => array(\'alias\' => $profile, \'on\' => \"$class.id = $profile.internalKey\"),\n);\n\n// Filter by users, groups and roles\n$tmp = array(\n    \'users\' => array(\n        \'class\' => $class,\n        \'name\' => \'username\',\n        \'join\' => $class . \'.id\',\n    ),\n    \'groups\' => array(\n        \'class\' => \'modUserGroup\',\n        \'name\' => \'name\',\n        \'join\' => $member . \'.user_group\',\n    ),\n    \'roles\' => array(\n        \'class\' => \'modUserGroupRole\',\n        \'name\' => \'name\',\n        \'join\' => $member . \'.role\',\n    ),\n);\nforeach ($tmp as $k => $p) {\n    if (!empty($$k)) {\n        $$k = array_map(\'trim\', explode(\',\', $$k));\n        ${$k . \'_in\'} = ${$k . \'_out\'} = $fetch_in = $fetch_out = array();\n        foreach ($$k as $v) {\n            if (is_numeric($v)) {\n                if ($v[0] == \'-\') {\n                    ${$k . \'_out\'}[] = abs($v);\n                } else {\n                    ${$k . \'_in\'}[] = abs($v);\n                }\n            } else {\n                if ($v[0] == \'-\') {\n                    $fetch_out[] = $v;\n                } else {\n                    $fetch_in[] = $v;\n                }\n            }\n        }\n\n        if (!empty($fetch_in) || !empty($fetch_out)) {\n            $q = $modx->newQuery($p[\'class\'], array($p[\'name\'] . \':IN\' => array_merge($fetch_in, $fetch_out)));\n            $q->select(\'id,\' . $p[\'name\']);\n            $tstart = microtime(true);\n            if ($q->prepare() && $q->stmt->execute()) {\n                $modx->queryTime += microtime(true) - $tstart;\n                $modx->executedQueries++;\n                while ($row = $q->stmt->fetch(PDO::FETCH_ASSOC)) {\n                    if (in_array($row[$p[\'name\']], $fetch_in)) {\n                        ${$k . \'_in\'}[] = $row[\'id\'];\n                    } else {\n                        ${$k . \'_out\'}[] = $row[\'id\'];\n                    }\n                }\n            }\n        }\n\n        if (!empty(${$k . \'_in\'})) {\n            $where[$p[\'join\'] . \':IN\'] = ${$k . \'_in\'};\n        }\n        if (!empty(${$k . \'_out\'})) {\n            $where[$p[\'join\'] . \':NOT IN\'] = ${$k . \'_out\'};\n        }\n    }\n}\n\nif (!empty($groups_in) || !empty($groups_out) || !empty($roles_in) || !empty($roles_out)) {\n    $innerJoin[$member] = array(\'alias\' => $member, \'on\' => \"$class.id = $member.member\");\n}\n\n// Fields to select\n$select = array(\n    $profile => implode(\',\', array_keys($modx->getFieldMeta($profile))),\n    $class => implode(\',\', array_keys($modx->getFieldMeta($class))),\n);\n\n// Add custom parameters\nforeach (array(\'where\', \'innerJoin\', \'select\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n$default = array(\n    \'class\' => $class,\n    \'innerJoin\' => json_encode($innerJoin),\n    \'where\' => json_encode($where),\n    \'select\' => json_encode($select),\n    \'groupby\' => $class . \'.id\',\n    \'sortby\' => $class . \'.id\',\n    \'sortdir\' => \'ASC\',\n    \'fastMode\' => false,\n    \'return\' => !empty($returnIds) ? \'ids\' : \'chunks\',\n    \'disableConditions\' => true,\n);\n\nif (!empty($users_in) && (empty($scriptProperties[\'sortby\']) || $scriptProperties[\'sortby\'] == $class . \'.id\')) {\n    $scriptProperties[\'sortby\'] = \"find_in_set(`$class`.`id`,\'\" . implode(\',\', $users_in) . \"\')\";\n    $scriptProperties[\'sortdir\'] = \'\';\n}\n\n// Merge all properties and run!\n$pdoFetch->addTime(\'Query parameters ready\');\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n$output = $pdoFetch->run();\n\n$log = \'\';\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $log .= \'<pre class=\"pdoUsersLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\n// Return output\nif (!empty($returnIds)) {\n    $modx->setPlaceholder(\'pdoUsers.log\', $log);\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n} elseif (!empty($toSeparatePlaceholders)) {\n    $output[\'log\'] = $log;\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\n} else {\n    $output .= $log;\n\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n        $output = $pdoFetch->getChunk($tplWrapper, array(\'output\' => $output), $pdoFetch->config[\'fastMode\']);\n    }\n\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n}', 0, 'a:30:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"returnIds\";a:7:{s:4:\"name\";s:9:\"returnIds\";s:4:\"desc\";s:23:\"pdotools_prop_returnIds\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:10:\"modUser.id\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"groups\";a:7:{s:4:\"name\";s:6:\"groups\";s:4:\"desc\";s:20:\"pdotools_prop_groups\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"roles\";a:7:{s:4:\"name\";s:5:\"roles\";s:4:\"desc\";s:19:\"pdotools_prop_roles\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"users\";a:7:{s:4:\"name\";s:5:\"users\";s:4:\"desc\";s:19:\"pdotools_prop_users\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"showInactive\";a:7:{s:4:\"name\";s:12:\"showInactive\";s:4:\"desc\";s:26:\"pdotools_prop_showInactive\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showBlocked\";a:7:{s:4:\"name\";s:11:\"showBlocked\";s:4:\"desc\";s:25:\"pdotools_prop_showBlocked\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"idx\";a:7:{s:4:\"name\";s:3:\"idx\";s:4:\"desc\";s:17:\"pdotools_prop_idx\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"first\";a:7:{s:4:\"name\";s:5:\"first\";s:4:\"desc\";s:19:\"pdotools_prop_first\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"last\";a:7:{s:4:\"name\";s:4:\"last\";s:4:\"desc\";s:18:\"pdotools_prop_last\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplFirst\";a:7:{s:4:\"name\";s:8:\"tplFirst\";s:4:\"desc\";s:22:\"pdotools_prop_tplFirst\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplLast\";a:7:{s:4:\"name\";s:7:\"tplLast\";s:4:\"desc\";s:21:\"pdotools_prop_tplLast\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplOdd\";a:7:{s:4:\"name\";s:6:\"tplOdd\";s:4:\"desc\";s:20:\"pdotools_prop_tplOdd\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplCondition\";a:7:{s:4:\"name\";s:12:\"tplCondition\";s:4:\"desc\";s:26:\"pdotools_prop_tplCondition\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplOperator\";a:7:{s:4:\"name\";s:11:\"tplOperator\";s:4:\"desc\";s:25:\"pdotools_prop_tplOperator\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:10:{i:0;a:2:{s:4:\"text\";s:11:\"is equal to\";s:5:\"value\";s:2:\"==\";}i:1;a:2:{s:4:\"text\";s:15:\"is not equal to\";s:5:\"value\";s:2:\"!=\";}i:2;a:2:{s:4:\"text\";s:9:\"less than\";s:5:\"value\";s:1:\"<\";}i:3;a:2:{s:4:\"text\";s:21:\"less than or equal to\";s:5:\"value\";s:2:\"<=\";}i:4;a:2:{s:4:\"text\";s:24:\"greater than or equal to\";s:5:\"value\";s:2:\">=\";}i:5;a:2:{s:4:\"text\";s:8:\"is empty\";s:5:\"value\";s:5:\"empty\";}i:6;a:2:{s:4:\"text\";s:12:\"is not empty\";s:5:\"value\";s:6:\"!empty\";}i:7;a:2:{s:4:\"text\";s:7:\"is null\";s:5:\"value\";s:4:\"null\";}i:8;a:2:{s:4:\"text\";s:11:\"is in array\";s:5:\"value\";s:7:\"inarray\";}i:9;a:2:{s:4:\"text\";s:10:\"is between\";s:5:\"value\";s:7:\"between\";}}s:5:\"value\";s:2:\"==\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"conditionalTpls\";a:7:{s:4:\"name\";s:15:\"conditionalTpls\";s:4:\"desc\";s:29:\"pdotools_prop_conditionalTpls\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:22:\"toSeparatePlaceholders\";a:7:{s:4:\"name\";s:22:\"toSeparatePlaceholders\";s:4:\"desc\";s:36:\"pdotools_prop_toSeparatePlaceholders\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdousers.php'),
(10, 1, 0, 'pdoCrumbs', '', 0, 3, 0, '/** @var array $scriptProperties */\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n\nif (!isset($from) || $from == \'\') {\n    $from = 0;\n}\nif (empty($to)) {\n    $to = $modx->resource->id;\n}\nif (empty($direction)) {\n    $direction = \'ltr\';\n}\nif ($outputSeparator == \'&nbsp;&rarr;&nbsp;\' && $direction == \'rtl\') {\n    $outputSeparator = \'&nbsp;&larr;&nbsp;\';\n}\nif ($limit == \'\') {\n    $limit = 10;\n}\n// For compatibility with BreadCrumb\nif (!empty($maxCrumbs)) {\n    $limit = $maxCrumbs;\n}\nif (!empty($containerTpl)) {\n    $tplWrapper = $containerTpl;\n}\nif (!empty($currentCrumbTpl)) {\n    $tplCurrent = $currentCrumbTpl;\n}\nif (!empty($linkCrumbTpl)) {\n    $scriptProperties[\'tpl\'] = $linkCrumbTpl;\n}\nif (!empty($maxCrumbTpl)) {\n    $tplMax = $maxCrumbTpl;\n}\nif (isset($showBreadCrumbsAtHome)) {\n    $showAtHome = $showBreadCrumbsAtHome;\n}\nif (isset($showHomeCrumb)) {\n    $showHome = $showHomeCrumb;\n}\nif (isset($showCurrentCrumb)) {\n    $showCurrent = $showCurrentCrumb;\n}\n// --\n$fastMode = !empty($fastMode);\n$siteStart = $modx->getOption(\'siteStart\', $scriptProperties, $modx->getOption(\'site_start\'));\n\nif (empty($showAtHome) && $modx->resource->id == $siteStart) {\n    return \'\';\n}\n\n$class = $modx->getOption(\'class\', $scriptProperties, \'modResource\');\n// Start building \"Where\" expression\n$where = array();\nif (empty($showUnpublished) && empty($showUnPub)) {\n    $where[\'published\'] = 1;\n}\nif (empty($showHidden)) {\n    $where[\'hidemenu\'] = 0;\n}\nif (empty($showDeleted)) {\n    $where[\'deleted\'] = 0;\n}\nif (!empty($hideContainers) && empty($showContainer)) {\n    $where[\'isfolder\'] = 0;\n}\n\n$resource = ($to == $modx->resource->id)\n    ? $modx->resource\n    : $modx->getObject($class, $to);\n\nif (!$resource) {\n    $message = \'Could not build breadcrumbs to resource \"\' . $to . \'\"\';\n\n    return \'\';\n}\n\nif (!empty($customParents)) {\n    $customParents = is_array($customParents) ? $customParents : array_map(\'trim\', explode(\',\', $customParents));\n    $parents = is_array($customParents) ? array_reverse($customParents) : array();\n}\nif (empty($parents)) {\n    $parents = $modx->getParentIds($resource->id, $limit, array(\'context\' => $resource->get(\'context_key\')));\n}\nif (!empty($showHome)) {\n    $parents[] = $siteStart;\n}\n\n$ids = array($resource->id);\nforeach ($parents as $parent) {\n    if (!empty($parent)) {\n        $ids[] = $parent;\n    }\n    if (!empty($from) && $parent == $from) {\n        break;\n    }\n}\n$where[\'id:IN\'] = $ids;\n\nif (!empty($exclude)) {\n    $where[\'id:NOT IN\'] = array_map(\'trim\', explode(\',\', $exclude));\n}\n\n// Fields to select\n$resourceColumns = array_keys($modx->getFieldMeta($class));\n$select = array($class => implode(\',\', $resourceColumns));\n\n// Add custom parameters\nforeach (array(\'where\', \'select\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Default parameters\n$default = array(\n    \'class\' => $class,\n    \'where\' => json_encode($where),\n    \'select\' => json_encode($select),\n    \'groupby\' => $class . \'.id\',\n    \'sortby\' => \"find_in_set(`$class`.`id`,\'\" . implode(\',\', $ids) . \"\')\",\n    \'sortdir\' => \'\',\n    \'return\' => \'data\',\n    \'totalVar\' => \'pdocrumbs.total\',\n    \'disableConditions\' => true,\n);\n\n// Merge all properties and run!\n$pdoFetch->addTime(\'Query parameters ready\');\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n$rows = $pdoFetch->run();\n\n$output = array();\nif (!empty($rows) && is_array($rows)) {\n    if (strtolower($direction) == \'ltr\') {\n        $rows = array_reverse($rows);\n    }\n\n    foreach ($rows as $row) {\n        if (!empty($useWeblinkUrl) && $row[\'class_key\'] == \'modWebLink\') {\n            $row[\'link\'] = is_numeric(trim($row[\'content\'], \'[]~ \'))\n                ? $pdoFetch->makeUrl(intval(trim($row[\'content\'], \'[]~ \')), $row)\n                : $row[\'content\'];\n        } else {\n            $row[\'link\'] = $pdoFetch->makeUrl($row[\'id\'], $row);\n        }\n\n        $row = array_merge(\n            $scriptProperties,\n            $row,\n            array(\'idx\' => $pdoFetch->idx++)\n        );\n        if (empty($row[\'menutitle\'])) {\n            $row[\'menutitle\'] = $row[\'pagetitle\'];\n        }\n\n        if ($row[\'id\'] == $resource->id && empty($showCurrent)) {\n            continue;\n        } elseif ($row[\'id\'] == $resource->id && !empty($tplCurrent)) {\n            $tpl = $tplCurrent;\n        } elseif ($row[\'id\'] == $siteStart && !empty($tplHome)) {\n            $tpl = $tplHome;\n        } else {\n            $tpl = $pdoFetch->defineChunk($row);\n        }\n        $output[] = empty($tpl)\n            ? \'<pre>\' . $pdoFetch->getChunk(\'\', $row) . \'</pre>\'\n            : $pdoFetch->getChunk($tpl, $row, $fastMode);\n    }\n}\n$pdoFetch->addTime(\'Chunks processed\');\n\nif (count($output) == 1 && !empty($hideSingle)) {\n    $pdoFetch->addTime(\'The only result was hidden, because the parameter \"hideSingle\" activated\');\n    $output = array();\n}\n\n$log = \'\';\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $log .= \'<pre class=\"pdoCrumbsLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\nif (!empty($toSeparatePlaceholders)) {\n    $output[\'log\'] = $log;\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\n} else {\n    $output = implode($outputSeparator, $output);\n    if ($pdoFetch->idx >= $limit && !empty($tplMax) && !empty($output)) {\n        $output = ($direction == \'ltr\')\n            ? $pdoFetch->getChunk($tplMax, array(), $fastMode) . $output\n            : $output . $pdoFetch->getChunk($tplMax, array(), $fastMode);\n    }\n    $output .= $log;\n\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n        $output = $pdoFetch->getChunk($tplWrapper, array(\'output\' => $output, \'crumbs\' => $output), $fastMode);\n    }\n\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n}', 0, 'a:31:{s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"from\";a:7:{s:4:\"name\";s:4:\"from\";s:4:\"desc\";s:18:\"pdotools_prop_from\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:2:\"to\";a:7:{s:4:\"name\";s:2:\"to\";s:4:\"desc\";s:16:\"pdotools_prop_to\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"customParents\";a:7:{s:4:\"name\";s:13:\"customParents\";s:4:\"desc\";s:27:\"pdotools_prop_customParents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"exclude\";a:7:{s:4:\"name\";s:7:\"exclude\";s:4:\"desc\";s:21:\"pdotools_prop_exclude\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:79:\"@INLINE <li class=\"breadcrumb-item\"><a href=\"[[+link]]\">[[+menutitle]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplCurrent\";a:7:{s:4:\"name\";s:10:\"tplCurrent\";s:4:\"desc\";s:24:\"pdotools_prop_tplCurrent\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:62:\"@INLINE <li class=\"breadcrumb-item active\">[[+menutitle]]</li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplMax\";a:7:{s:4:\"name\";s:6:\"tplMax\";s:4:\"desc\";s:20:\"pdotools_prop_tplMax\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:65:\"@INLINE <li class=\"breadcrumb-item disabled\">&nbsp;...&nbsp;</li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplHome\";a:7:{s:4:\"name\";s:7:\"tplHome\";s:4:\"desc\";s:21:\"pdotools_prop_tplHome\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:47:\"@INLINE <ol class=\"breadcrumb\">[[+output]]</ol>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showCurrent\";a:7:{s:4:\"name\";s:11:\"showCurrent\";s:4:\"desc\";s:25:\"pdotools_prop_showCurrent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"showHome\";a:7:{s:4:\"name\";s:8:\"showHome\";s:4:\"desc\";s:22:\"pdotools_prop_showHome\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showAtHome\";a:7:{s:4:\"name\";s:10:\"showAtHome\";s:4:\"desc\";s:24:\"pdotools_prop_showAtHome\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"hideSingle\";a:7:{s:4:\"name\";s:10:\"hideSingle\";s:4:\"desc\";s:24:\"pdotools_prop_hideSingle\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"direction\";a:7:{s:4:\"name\";s:9:\"direction\";s:4:\"desc\";s:23:\"pdotools_prop_direction\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:5:\"value\";s:3:\"ltr\";s:4:\"text\";s:19:\"Left To Right (ltr)\";}i:1;a:2:{s:5:\"value\";s:3:\"rtl\";s:4:\"text\";s:19:\"Right To Left (rtl)\";}}s:5:\"value\";s:3:\"ltr\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdocrumbs.php');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(11, 1, 0, 'pdoField', '', 0, 3, 0, '/** @var array $scriptProperties */\nif (!empty($input)) {\n    $id = $input;\n}\nif (!isset($default)) {\n    $default = \'\';\n}\nif (!isset($output)) {\n    $output = \'\';\n}\n$class = $modx->getOption(\'class\', $scriptProperties, \'modResource\', true);\n$isResource = $class == \'modResource\' || in_array($class, $modx->getDescendants(\'modResource\'));\n\nif (empty($field)) {\n    $field = \'pagetitle\';\n}\n$top = isset($top) ? intval($top) : 0;\n$topLevel = isset($topLevel) ? intval($topLevel) : 0;\nif (!empty($options)) {\n    $options = trim($options);\n    if ($options[0] == \'{\') {\n        $tmp = json_decode($options, true);\n        if (is_array($tmp)) {\n            extract($tmp);\n            $scriptProperties = array_merge($scriptProperties, $tmp);\n        }\n    } else {\n        $field = $options;\n    }\n}\nif (empty($id)) {\n    if (!empty($modx->resource)) {\n        $id = $modx->resource->id;\n    } else {\n        return \'You must specify an id of \' . $class;\n    }\n}\nif (!isset($context)) {\n    $context = \'\';\n}\n\n// Gets the parent from root of context, if specified\nif ($isResource && $id && ($top || $topLevel)) {\n    // Select needed context for parents functionality\n    if (empty($context)) {\n        $q = $modx->newQuery($class, $id);\n        $q->select(\'context_key\');\n        $tstart = microtime(true);\n        if ($q->prepare() && $q->stmt->execute()) {\n            $modx->queryTime += microtime(true) - $tstart;\n            $modx->executedQueries++;\n            $context = $q->stmt->fetch(PDO::FETCH_COLUMN);\n        }\n    }\n    // Original pdoField logic\n    if (empty($ultimate)) {\n        if ($topLevel) {\n            $pids = $modx->getChildIds(0, $topLevel, array(\'context\' => $context));\n            $pid = $id;\n            while (true) {\n                $tmp = $modx->getParentIds($pid, 1, array(\'context\' => $context));\n                if (!$pid = current($tmp)) {\n                    break;\n                } elseif (in_array($pid, $pids)) {\n                    $id = $pid;\n                    break;\n                }\n            }\n        } elseif ($top) {\n            $pid = $id;\n            for ($i = 1; $i <= $top; $i++) {\n                $tmp = $modx->getParentIds($pid, 1, array(\'context\' => $context));\n                if (!$pid = current($tmp)) {\n                    break;\n                }\n                $id = $pid;\n            }\n        }\n    }\n    // UltimateParent logic\n    // https://github.com/splittingred/UltimateParent/blob/develop/core/components/ultimateparent/snippet.ultimateparent.php\n    elseif ($id != $top) {\n        $pid = $id;\n        $pids = $modx->getParentIds($id, 10, array(\'context\' => $context));\n        if (!$topLevel || count($pids) >= $topLevel) {\n            while ($parentIds = $modx->getParentIds($id, 1, array(\'context\' => $context))) {\n                $pid = array_pop($parentIds);\n                if ($pid == $top) {\n                    break;\n                }\n                $id = $pid;\n                $parentIds = $modx->getParentIds($id, 10, array(\'context\' => $context));\n                if ($topLevel && count($parentIds) < $topLevel) {\n                    break;\n                }\n            }\n        }\n    }\n}\n\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n\n$where = array($class . \'.id\' => $id);\n// Add custom parameters\nforeach (array(\'where\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Fields to select\n$resourceColumns = array_keys($modx->getFieldMeta($class));\n$field = strtolower($field);\nif (in_array($field, $resourceColumns)) {\n    $scriptProperties[\'select\'] = array($class => $field);\n    $scriptProperties[\'includeTVs\'] = \'\';\n} elseif ($isResource) {\n    $scriptProperties[\'select\'] = array($class => \'id\');\n    $scriptProperties[\'includeTVs\'] = $field;\n}\n// Additional default field\nif (!empty($default)) {\n    $default = strtolower($default);\n    if (in_array($default, $resourceColumns)) {\n        $scriptProperties[\'select\'][$class] .= \',\' . $default;\n    } elseif ($isResource) {\n        $scriptProperties[\'includeTVs\'] = empty($scriptProperties[\'includeTVs\'])\n            ? $default\n            : $scriptProperties[\'includeTVs\'] . \',\' . $default;\n    }\n}\n\n$scriptProperties[\'disableConditions\'] = true;\nif ($row = $pdoFetch->getObject($class, $where, $scriptProperties)) {\n    foreach ($row as $k => $v) {\n        if (strtolower($k) == $field && $v != \'\') {\n            $output = $v;\n            break;\n        }\n    }\n\n    if (empty($output) && !empty($default)) {\n        foreach ($row as $k => $v) {\n            if (strtolower($k) == $default && $v != \'\') {\n                $output = $v;\n                break;\n            }\n        }\n    }\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n} else {\n    return $output;\n}', 0, 'a:12:{s:2:\"id\";a:7:{s:4:\"name\";s:2:\"id\";s:4:\"desc\";s:16:\"pdotools_prop_id\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"field\";a:7:{s:4:\"name\";s:5:\"field\";s:4:\"desc\";s:19:\"pdotools_prop_field\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"pagetitle\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:27:\"pdotools_prop_field_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"top\";a:7:{s:4:\"name\";s:3:\"top\";s:4:\"desc\";s:17:\"pdotools_prop_top\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"topLevel\";a:7:{s:4:\"name\";s:8:\"topLevel\";s:4:\"desc\";s:22:\"pdotools_prop_topLevel\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"default\";a:7:{s:4:\"name\";s:7:\"default\";s:4:\"desc\";s:27:\"pdotools_prop_field_default\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"output\";a:7:{s:4:\"name\";s:6:\"output\";s:4:\"desc\";s:26:\"pdotools_prop_field_output\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"ultimate\";a:7:{s:4:\"name\";s:8:\"ultimate\";s:4:\"desc\";s:22:\"pdotools_prop_ultimate\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdofield.php'),
(12, 1, 0, 'pdoSitemap', '', 0, 3, 0, '/** @var array $scriptProperties */\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n\n// Default variables\nif (empty($tpl)) {\n    $tpl = \"@INLINE \\n<url>\\n\\t<loc>[[+url]]</loc>\\n\\t<lastmod>[[+date]]</lastmod>\\n\\t<changefreq>[[+update]]</changefreq>\\n\\t<priority>[[+priority]]</priority>\\n</url>\";\n}\nif (empty($tplWrapper)) {\n    $tplWrapper = \"@INLINE <?xml version=\\\"1.0\\\" encoding=\\\"[[++modx_charset]]\\\"?>\\n<urlset xmlns=\\\"[[+schema]]\\\">\\n[[+output]]\\n</urlset>\";\n}\nif (empty($sitemapSchema)) {\n    $sitemapSchema = \'http://www.sitemaps.org/schemas/sitemap/0.9\';\n}\nif (empty($outputSeparator)) {\n    $outputSeparator = \"\\n\";\n}\nif (empty($cacheKey)) {\n    $scriptProperties[\'cacheKey\'] = \'sitemap/\' . substr(md5(json_encode($scriptProperties)), 0, 6);\n}\n\n// Convert parameters from GoogleSiteMap if exists\nif (!empty($itemTpl)) {\n    $tpl = $itemTpl;\n}\nif (!empty($containerTpl)) {\n    $tplWrapper = $containerTpl;\n}\nif (!empty($allowedtemplates)) {\n    $scriptProperties[\'templates\'] = $allowedtemplates;\n}\nif (!empty($maxDepth)) {\n    $scriptProperties[\'depth\'] = $maxDepth;\n}\nif (isset($hideDeleted)) {\n    $scriptProperties[\'showDeleted\'] = !$hideDeleted;\n}\nif (isset($published)) {\n    $scriptProperties[\'showUnpublished\'] = !$published;\n}\nif (isset($searchable)) {\n    $scriptProperties[\'showUnsearchable\'] = !$searchable;\n}\nif (!empty($googleSchema)) {\n    $sitemapSchema = $googleSchema;\n}\nif (!empty($excludeResources)) {\n    $tmp = array_map(\'trim\', explode(\',\', $excludeResources));\n    foreach ($tmp as $v) {\n        if (!empty($scriptProperties[\'resources\'])) {\n            $scriptProperties[\'resources\'] .= \',-\' . $v;\n        } else {\n            $scriptProperties[\'resources\'] = \'-\' . $v;\n        }\n    }\n}\nif (!empty($excludeChildrenOf)) {\n    $tmp = array_map(\'trim\', explode(\',\', $excludeChildrenOf));\n    foreach ($tmp as $v) {\n        if (!empty($scriptProperties[\'parents\'])) {\n            $scriptProperties[\'parents\'] .= \',-\' . $v;\n        } else {\n            $scriptProperties[\'parents\'] = \'-\' . $v;\n        }\n    }\n}\nif (!empty($startId)) {\n    if (!empty($scriptProperties[\'parents\'])) {\n        $scriptProperties[\'parents\'] .= \',\' . $startId;\n    } else {\n        $scriptProperties[\'parents\'] = $startId;\n    }\n}\nif (!empty($sortBy)) {\n    $scriptProperties[\'sortby\'] = $sortBy;\n}\nif (!empty($sortDir)) {\n    $scriptProperties[\'sortdir\'] = $sortDir;\n}\nif (!empty($priorityTV)) {\n    if (!empty($scriptProperties[\'includeTVs\'])) {\n        $scriptProperties[\'includeTVs\'] .= \',\' . $priorityTV;\n    } else {\n        $scriptProperties[\'includeTVs\'] = $priorityTV;\n    }\n}\nif (!empty($itemSeparator)) {\n    $outputSeparator = $itemSeparator;\n}\n//---\n\n\n$class = \'modResource\';\n$where = array();\nif (empty($showHidden)) {\n    $where[] = array(\n        $class . \'.hidemenu\' => 0,\n        \'OR:\' . $class . \'.class_key:IN\' => array(\'Ticket\', \'Article\'),\n    );\n}\nif (empty($context)) {\n    $scriptProperties[\'context\'] = $modx->context->key;\n}\n\n$select = array($class => \'id,editedon,createdon,context_key,class_key,uri\');\nif (!empty($useWeblinkUrl)) {\n    $select[$class] .= \',content\';\n}\n// Add custom parameters\nforeach (array(\'where\', \'select\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Default parameters\n$default = array(\n    \'class\' => $class,\n    \'where\' => json_encode($where),\n    \'select\' => json_encode($select),\n    \'sortby\' => \"{$class}.parent ASC, {$class}.menuindex\",\n    \'sortdir\' => \'ASC\',\n    \'return\' => \'data\',\n    \'scheme\' => \'full\',\n    \'limit\' => 0,\n);\n// Merge all properties and run!\n$pdoFetch->addTime(\'Query parameters ready\');\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n\nif (!empty($cache)) {\n    $data = $pdoFetch->getCache($scriptProperties);\n}\nif (empty($data)) {\n    $now = time();\n    $data = $urls = array();\n    $rows = $pdoFetch->run();\n    foreach ($rows as $row) {\n        if (!empty($useWeblinkUrl) && $row[\'class_key\'] == \'modWebLink\') {\n            $row[\'url\'] = is_numeric(trim($row[\'content\'], \'[]~ \'))\n                ? $pdoFetch->makeUrl(intval(trim($row[\'content\'], \'[]~ \')), $row)\n                : $row[\'content\'];\n        } else {\n            $row[\'url\'] = $pdoFetch->makeUrl($row[\'id\'], $row);\n        }\n\n        $time = !empty($row[\'editedon\'])\n            ? $row[\'editedon\']\n            : $row[\'createdon\'];\n        $row[\'date\'] = date(\'c\', $time);\n\n        $datediff = floor(($now - $time) / 86400);\n        if ($datediff <= 1) {\n            $row[\'priority\'] = \'1.0\';\n            $row[\'update\'] = \'daily\';\n        } elseif (($datediff > 1) && ($datediff <= 7)) {\n            $row[\'priority\'] = \'0.75\';\n            $row[\'update\'] = \'weekly\';\n        } elseif (($datediff > 7) && ($datediff <= 30)) {\n            $row[\'priority\'] = \'0.50\';\n            $row[\'update\'] = \'weekly\';\n        } else {\n            $row[\'priority\'] = \'0.25\';\n            $row[\'update\'] = \'monthly\';\n        }\n        if (!empty($priorityTV) && !empty($row[$priorityTV])) {\n            $row[\'priority\'] = $row[$priorityTV];\n        }\n\n        // Fix possible duplicates made by modWebLink\n        if (!empty($urls[$row[\'url\']])) {\n            if ($urls[$row[\'url\']] > $row[\'date\']) {\n                continue;\n            }\n        }\n        $urls[$row[\'url\']] = $row[\'date\'];\n\n        // Add item to output\n        $data[$row[\'url\']] = $pdoFetch->parseChunk($tpl, $row);\n        if (strpos($data[$row[\'url\']], \'[[\') !== false) {\n            $modx->parser->processElementTags(\'\', $data[$row[\'url\']], true, true, \'[[\', \']]\', array(), 10);\n        }\n    }\n    $pdoFetch->addTime(\'Rows processed\');\n    if (!empty($cache)) {\n        $pdoFetch->setCache($data, $scriptProperties);\n    }\n}\n\n$output = implode($outputSeparator, $data);\n$output = $pdoFetch->getChunk($tplWrapper, array(\n    \'schema\' => $sitemapSchema,\n    \'output\' => $output,\n    \'items\' => $output,\n));\n$pdoFetch->addTime(\'Rows wrapped\');\n\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $output .= \'<pre class=\"pdoSitemapLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\nif (!empty($forceXML)) {\n    header(\"Content-Type:text/xml\");\n    @session_write_close();\n    exit($output);\n} else {\n    return $output;\n}', 0, 'a:24:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:145:\"@INLINE <url>\n	<loc>[[+url]]</loc>\n	<lastmod>[[+date]]</lastmod>\n	<changefreq>[[+update]]</changefreq>\n	<priority>[[+priority]]</priority>\n</url>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:110:\"@INLINE <?xml version=\"1.0\" encoding=\"[[++modx_charset]]\"?>\n<urlset xmlns=\"[[+schema]]\">\n[[+output]]\n</urlset>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"templates\";a:7:{s:4:\"name\";s:9:\"templates\";s:4:\"desc\";s:23:\"pdotools_prop_templates\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"sitemapSchema\";a:7:{s:4:\"name\";s:13:\"sitemapSchema\";s:4:\"desc\";s:27:\"pdotools_prop_sitemapSchema\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:43:\"http://www.sitemaps.org/schemas/sitemap/0.9\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"hideUnsearchable\";a:7:{s:4:\"name\";s:16:\"hideUnsearchable\";s:4:\"desc\";s:30:\"pdotools_prop_hideUnsearchable\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"asc\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"forceXML\";a:7:{s:4:\"name\";s:8:\"forceXML\";s:4:\"desc\";s:22:\"pdotools_prop_forceXML\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:19:\"pdotools_prop_cache\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"cacheKey\";a:7:{s:4:\"name\";s:8:\"cacheKey\";s:4:\"desc\";s:22:\"pdotools_prop_cacheKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:600;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdositemap.php'),
(13, 1, 0, 'pdoNeighbors', '', 0, 3, 0, '/** @var array $scriptProperties */\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n\nif (empty($id)) {\n    $id = $modx->resource->id;\n}\nif (empty($limit)) {\n    $limit = 1;\n}\nif (!isset($outputSeparator)) {\n    $outputSeparator = \"\\n\";\n}\n$fastMode = !empty($fastMode);\n\n$class = \'modResource\';\n$resource = ($id == $modx->resource->id)\n    ? $modx->resource\n    : $modx->getObject($class, $id);\nif (!$resource) {\n    return \'\';\n}\n\n// We need to determine ids of neighbors\n$params = $scriptProperties;\n$params[\'select\'] = \'id\';\n$params[\'limit\'] = 0;\nif (!empty($parents) && is_string($parents)) {\n    $parents = array_map(\'trim\', explode(\',\', $parents));\n    if (!in_array($resource->parent, $parents)) {\n        $parents[] = $resource->parent;\n    }\n    $key = array_search($resource->parent * -1, $parents);\n    if ($key !== false) {\n        unset($parents[$key]);\n    }\n    $params[\'parents\'] = implode(\',\', $parents);\n    $ids = $pdoFetch->getCollection(\'modResource\', array(), $params);\n    unset($scriptProperties[\'parents\']);\n} else {\n    $ids = $pdoFetch->getCollection(\'modResource\', array(\'parent\' => $resource->parent), $params);\n}\n\n$found = false;\n$prev = $next = array();\nforeach ($ids as $v) {\n    if ($v[\'id\'] == $id) {\n        $found = true;\n        continue;\n    } elseif (!$found) {\n        $prev[] = $v[\'id\'];\n    } else {\n        $next[] = $v[\'id\'];\n        if (count($next) >= $limit) {\n            break;\n        }\n    }\n}\n$prev = array_splice($prev, $limit * -1);\nif (!empty($loop)) {\n    if (!count($prev)) {\n        $v = end($ids);\n        $prev[] = $v[\'id\'];\n    } else {\n        if (!count($next)) {\n            $v = reset($ids);\n            $next[] = $v[\'id\'];\n        }\n    }\n}\n$ids = array_merge($prev, $next, array($resource->parent));\n$pdoFetch->addTime(\'Found ids of neighbors: \' . implode(\',\', $ids));\n\n// Query conditions\n$where = array($class . \'.id:IN\' => $ids);\n\n// Fields to select\n$resourceColumns = array_keys($modx->getFieldMeta($class));\nif (empty($includeContent) && empty($useWeblinkUrl)) {\n    $key = array_search(\'content\', $resourceColumns);\n    unset($resourceColumns[$key]);\n}\n$select = array($class => implode(\',\', $resourceColumns));\n\n// Add custom parameters\nforeach (array(\'where\', \'select\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Default parameters\n$default = array(\n    \'class\' => $class,\n    \'where\' => json_encode($where),\n    \'select\' => json_encode($select),\n    //\'groupby\' => $class.\'.id\',\n    \'sortby\' => $class . \'.menuindex\',\n    \'sortdir\' => \'ASC\',\n    \'return\' => \'data\',\n    \'limit\' => 0,\n    \'totalVar\' => \'pdoneighbors.total\',\n);\n\n// Merge all properties and run!\nunset($scriptProperties[\'limit\']);\n$pdoFetch->addTime(\'Query parameters ready\');\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n\n$rows = $pdoFetch->run();\n$prev = array_flip($prev);\n$next = array_flip($next);\n\n$output = array(\'prev\' => array(), \'up\' => array(), \'next\' => array());\nforeach ($rows as $row) {\n    if (empty($row[\'menutitle\'])) {\n        $row[\'menutitle\'] = $row[\'pagetitle\'];\n    }\n    if (!empty($useWeblinkUrl) && $row[\'class_key\'] == \'modWebLink\') {\n        $row[\'link\'] = is_numeric(trim($row[\'content\'], \'[]~ \'))\n            ? $pdoFetch->makeUrl(intval(trim($row[\'content\'], \'[]~ \')), $row)\n            : $row[\'content\'];\n    } else {\n        $row[\'link\'] = $pdoFetch->makeUrl($row[\'id\'], $row);\n    }\n\n    if (isset($prev[$row[\'id\']])) {\n        $output[\'prev\'][] = !empty($tplPrev)\n            ? $pdoFetch->getChunk($tplPrev, $row, $fastMode)\n            : $pdoFetch->getChunk(\'\', $row);\n    } elseif (isset($next[$row[\'id\']])) {\n        $output[\'next\'][] = !empty($tplNext)\n            ? $pdoFetch->getChunk($tplNext, $row, $fastMode)\n            : $pdoFetch->getChunk(\'\', $row);\n    } else {\n        $output[\'up\'][] = !empty($tplUp)\n            ? $pdoFetch->getChunk($tplUp, $row, $fastMode)\n            : $pdoFetch->getChunk(\'\', $row);\n    }\n}\n$pdoFetch->addTime(\'Chunks processed\');\n\n$log = \'\';\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $log .= \'<pre class=\"pdoNeighborsLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\nforeach ($output as &$row) {\n    $row = implode($outputSeparator, $row);\n}\n\nif (!empty($toSeparatePlaceholders)) {\n    $output[\'log\'] = $log;\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\n} else {\n    if (!empty($rows) || !empty($wrapIfEmpty)) {\n        $output = !empty($tplWrapper)\n            ? $pdoFetch->getChunk($tplWrapper, $output, $fastMode)\n            : $pdoFetch->getChunk(\'\', $output);\n    } else {\n        $output = \'\';\n    }\n    $output .= $log;\n\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n}', 0, 'a:27:{s:2:\"id\";a:7:{s:4:\"name\";s:2:\"id\";s:4:\"desc\";s:16:\"pdotools_prop_id\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:29:\"pdotools_prop_neighbors_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"asc\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplPrev\";a:7:{s:4:\"name\";s:7:\"tplPrev\";s:4:\"desc\";s:21:\"pdotools_prop_tplPrev\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:106:\"@INLINE <span class=\"link-prev\"><a href=\"[[+link]]\" class=\"btn btn-light\">&larr; [[+menutitle]]</a></span>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"tplUp\";a:7:{s:4:\"name\";s:5:\"tplUp\";s:4:\"desc\";s:19:\"pdotools_prop_tplUp\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:104:\"@INLINE <span class=\"link-up\"><a href=\"[[+link]]\" class=\"btn btn-light\">&uarr; [[+menutitle]]</a></span>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplNext\";a:7:{s:4:\"name\";s:7:\"tplNext\";s:4:\"desc\";s:21:\"pdotools_prop_tplNext\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:106:\"@INLINE <span class=\"link-next\"><a href=\"[[+link]]\" class=\"btn btn-light\">[[+menutitle]] &rarr;</a></span>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:34:\"pdotools_prop_neighbors_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:93:\"@INLINE <div class=\"neighbors d-flex justify-content-between\">[[+prev]][[+up]][[+next]]</div>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:22:\"toSeparatePlaceholders\";a:7:{s:4:\"name\";s:22:\"toSeparatePlaceholders\";s:4:\"desc\";s:36:\"pdotools_prop_toSeparatePlaceholders\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"loop\";a:7:{s:4:\"name\";s:4:\"loop\";s:4:\"desc\";s:18:\"pdotools_prop_loop\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdoneighbors.php');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(14, 1, 0, 'pdoPage', '', 0, 3, 0, '/** @var array $scriptProperties */\n// Default variables\nif (empty($pageVarKey)) {\n    $pageVarKey = \'page\';\n}\nif (empty($pageNavVar)) {\n    $pageNavVar = \'page.nav\';\n}\nif (empty($pageCountVar)) {\n    $pageCountVar = \'pageCount\';\n}\nif (empty($totalVar)) {\n    $totalVar = \'total\';\n}\nif (empty($page)) {\n    $page = 1;\n}\nif (empty($pageLimit)) {\n    $pageLimit = 5;\n} else {\n    $pageLimit = (integer)$pageLimit;\n}\nif (!isset($plPrefix)) {\n    $plPrefix = \'\';\n}\nif (!empty($scriptProperties[\'ajaxMode\'])) {\n    $scriptProperties[\'ajax\'] = 1;\n}\n\n// Convert parameters from getPage if exists\nif (!empty($namespace)) {\n    $plPrefix = $namespace;\n}\nif (!empty($pageNavTpl)) {\n    $scriptProperties[\'tplPage\'] = $pageNavTpl;\n}\nif (!empty($pageNavOuterTpl)) {\n    $scriptProperties[\'tplPageWrapper\'] = $pageNavOuterTpl;\n}\nif (!empty($pageActiveTpl)) {\n    $scriptProperties[\'tplPageActive\'] = $pageActiveTpl;\n}\nif (!empty($pageFirstTpl)) {\n    $scriptProperties[\'tplPageFirst\'] = $pageFirstTpl;\n}\nif (!empty($pagePrevTpl)) {\n    $scriptProperties[\'tplPagePrev\'] = $pagePrevTpl;\n}\nif (!empty($pageNextTpl)) {\n    $scriptProperties[\'tplPageNext\'] = $pageNextTpl;\n}\nif (!empty($pageLastTpl)) {\n    $scriptProperties[\'tplPageLast\'] = $pageLastTpl;\n}\nif (!empty($pageSkipTpl)) {\n    $scriptProperties[\'tplPageSkip\'] = $pageSkipTpl;\n}\nif (!empty($pageNavScheme)) {\n    $scriptProperties[\'scheme\'] = $pageNavScheme;\n}\nif (!empty($cache_expires)) {\n    $scriptProperties[\'cacheTime\'] = $cache_expires;\n}\n//---\n$strictMode = !empty($strictMode);\n\n$isAjax = !empty($scriptProperties[\'ajax\']) && !empty($_SERVER[\'HTTP_X_REQUESTED_WITH\']) && $_SERVER[\'HTTP_X_REQUESTED_WITH\'] == \'XMLHttpRequest\';\nif ($isAjax && !isset($_REQUEST[$pageVarKey])) {\n    return;\n}\n\n/** @var pdoPage $pdoPage */\n$fqn = $modx->getOption(\'pdoPage.class\', null, \'pdotools.pdopage\', true);\n$path = $modx->getOption(\'pdopage_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoPage = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoPage->pdoTools->addTime(\'pdoTools loaded\');\n\n// Script and styles\nif (!$isAjax && !empty($scriptProperties[\'ajaxMode\'])) {\n    $pdoPage->loadJsCss();\n}\n// Removing of default scripts and styles so they do not overwrote nested snippet parameters\nif ($snippet = $modx->getObject(\'modSnippet\', array(\'name\' => \'pdoPage\'))) {\n    $properties = $snippet->get(\'properties\');\n    if ($scriptProperties[\'frontend_js\'] == $properties[\'frontend_js\'][\'value\']) {\n        unset($scriptProperties[\'frontend_js\']);\n    }\n    if ($scriptProperties[\'frontend_css\'] == $properties[\'frontend_css\'][\'value\']) {\n        unset($scriptProperties[\'frontend_css\']);\n    }\n}\n\n// Page\nif (isset($_REQUEST[$pageVarKey]) && $strictMode && (!is_numeric($_REQUEST[$pageVarKey]) || ($_REQUEST[$pageVarKey] <= 1 && !$isAjax))) {\n    return $pdoPage->redirectToFirst($isAjax);\n} elseif (!empty($_REQUEST[$pageVarKey])) {\n    $page = (integer)$_REQUEST[$pageVarKey];\n}\n$scriptProperties[\'page\'] = $page;\n$scriptProperties[\'request\'] = $_REQUEST;\n$scriptProperties[\'setTotal\'] = true;\n\n// Limit\nif (isset($_REQUEST[\'limit\'])) {\n    if (is_numeric($_REQUEST[\'limit\']) && abs($_REQUEST[\'limit\']) > 0) {\n        $scriptProperties[\'limit\'] = abs($_REQUEST[\'limit\']);\n    } elseif ($strictMode) {\n        unset($_GET[\'limit\']);\n\n        return $pdoPage->redirectToFirst($isAjax);\n    }\n}\nif (!empty($maxLimit) && !empty($scriptProperties[\'limit\']) && $scriptProperties[\'limit\'] > $maxLimit) {\n    $scriptProperties[\'limit\'] = $maxLimit;\n}\n\n// Offset\n$offset = !empty($scriptProperties[\'offset\']) && $scriptProperties[\'offset\'] > 0\n    ? (int)$scriptProperties[\'offset\']\n    : 0;\n$scriptProperties[\'offset\'] = $page > 1\n    ? $scriptProperties[\'limit\'] * ($page - 1) + $offset\n    : $offset;\nif (!empty($scriptProperties[\'offset\']) && empty($scriptProperties[\'limit\'])) {\n    $scriptProperties[\'limit\'] = 10000000;\n}\n\n$cache = !empty($cache) || (!$modx->user->id && !empty($cacheAnonymous));\n$url = $pdoPage->getBaseUrl();\n$output = $pagination = $total = $pageCount = \'\';\n\n$data = $cache\n    ? $pdoPage->pdoTools->getCache($scriptProperties)\n    : array();\n\nif (empty($data)) {\n    $output = $pdoPage->pdoTools->runSnippet($scriptProperties[\'element\'], $scriptProperties);\n    if ($output === false) {\n        return \'\';\n    } elseif (!empty($toPlaceholder)) {\n        $output = $modx->getPlaceholder($toPlaceholder);\n    }\n\n    // Pagination\n    $total = (int)$modx->getPlaceholder($totalVar);\n    $pageCount = !empty($scriptProperties[\'limit\']) && $total > $offset\n        ? ceil(($total - $offset) / $scriptProperties[\'limit\'])\n        : 0;\n\n    // Redirect to start if somebody specified incorrect page\n    if ($page > 1 && $page > $pageCount && $strictMode) {\n        return $pdoPage->redirectToFirst($isAjax);\n    }\n    if (!empty($pageCount) && $pageCount > 1) {\n        $pagination = array(\n            \'first\' => $page > 1 && !empty($tplPageFirst)\n                ? $pdoPage->makePageLink($url, 1, $tplPageFirst)\n                : \'\',\n            \'prev\' => $page > 1 && !empty($tplPagePrev)\n                ? $pdoPage->makePageLink($url, $page - 1, $tplPagePrev)\n                : \'\',\n            \'pages\' => $pageLimit >= 7 && empty($disableModernPagination)\n                ? $pdoPage->buildModernPagination($page, $pageCount, $url)\n                : $pdoPage->buildClassicPagination($page, $pageCount, $url),\n            \'next\' => $page < $pageCount && !empty($tplPageNext)\n                ? $pdoPage->makePageLink($url, $page + 1, $tplPageNext)\n                : \'\',\n            \'last\' => $page < $pageCount && !empty($tplPageLast)\n                ? $pdoPage->makePageLink($url, $pageCount, $tplPageLast)\n                : \'\',\n        );\n\n        if (!empty($pageCount)) {\n            foreach (array(\'first\', \'prev\', \'next\', \'last\') as $v) {\n                $tpl = \'tplPage\' . ucfirst($v) . \'Empty\';\n                if (!empty(${$tpl}) && empty($pagination[$v])) {\n                    $pagination[$v] = $pdoPage->pdoTools->getChunk(${$tpl});\n                }\n            }\n        }\n    } else {\n        $pagination = array(\n            \'first\' => \'\',\n            \'prev\' => \'\',\n            \'pages\' => \'\',\n            \'next\' => \'\',\n            \'last\' => \'\'\n        );\n    }\n\n    $data = array(\n        \'output\' => $output,\n        $pageVarKey => $page,\n        $pageCountVar => $pageCount,\n        $pageNavVar => !empty($tplPageWrapper)\n            ? $pdoPage->pdoTools->getChunk($tplPageWrapper, $pagination)\n            : $pdoPage->pdoTools->parseChunk(\'\', $pagination),\n        $totalVar => $total,\n    );\n    if ($cache) {\n        $pdoPage->pdoTools->setCache($data, $scriptProperties);\n    }\n}\n\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $data[\'output\'] .= \'<pre class=\"pdoPageLog\">\' . print_r($pdoPage->pdoTools->getTime(), 1) . \'</pre>\';\n}\n\nif ($isAjax) {\n    if ($pageNavVar != \'pagination\') {\n        $data[\'pagination\'] = $data[$pageNavVar];\n        unset($data[$pageNavVar]);\n    }\n    if ($pageCountVar != \'pages\') {\n        $data[\'pages\'] = (int)$data[$pageCountVar];\n        unset($data[$pageCountVar]);\n    }\n    if ($pageVarKey != \'page\') {\n        $data[\'page\'] = (int)$data[$pageVarKey];\n        unset($data[$pageVarKey]);\n    }\n    if ($totalVar != \'total\') {\n        $data[\'total\'] = (int)$data[$totalVar];\n        unset($data[$totalVar]);\n    }\n\n    $maxIterations = (integer)$modx->getOption(\'parser_max_iterations\', null, 10);\n    $modx->getParser()->processElementTags(\'\', $data[\'output\'], false, false, \'[[\', \']]\', array(), $maxIterations);\n    $modx->getParser()->processElementTags(\'\', $data[\'output\'], true, true, \'[[\', \']]\', array(), $maxIterations);\n\n    @session_write_close();\n    exit(json_encode($data));\n} else {\n    if (!empty($setMeta)) {\n        $charset = $modx->getOption(\'modx_charset\', null, \'UTF-8\');\n        $canurl = $pdoPage->pdoTools->config[\'scheme\'] !== \'full\'\n            ? rtrim($modx->getOption(\'site_url\'), \'/\') . \'/\' . ltrim($url, \'/\')\n            : $url;\n        $modx->regClientStartupHTMLBlock(\'<link rel=\"canonical\" href=\"\' . htmlentities($canurl, ENT_QUOTES, $charset) . \'\"/>\');\n        if ($data[$pageVarKey] > 1) {\n            $prevUrl = $pdoPage->makePageLink($canurl, $data[$pageVarKey] - 1);\n            $modx->regClientStartupHTMLBlock(\n                \'<link rel=\"prev\" href=\"\' . htmlentities($prevUrl, ENT_QUOTES, $charset) . \'\"/>\'\n            );\n        }\n        if ($data[$pageVarKey] < $data[$pageCountVar]) {\n            $nextUrl = $pdoPage->makePageLink($canurl, $data[$pageVarKey] + 1);\n            $modx->regClientStartupHTMLBlock(\n                \'<link rel=\"next\" href=\"\' . htmlentities($nextUrl, ENT_QUOTES, $charset) . \'\"/>\'\n            );\n        }\n    }\n\n    $modx->setPlaceholders($data, $plPrefix);\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $data[\'output\']);\n    } else {\n        return $data[\'output\'];\n    }\n}', 0, 'a:41:{s:8:\"plPrefix\";a:7:{s:4:\"name\";s:8:\"plPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_plPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"maxLimit\";a:7:{s:4:\"name\";s:8:\"maxLimit\";s:4:\"desc\";s:22:\"pdotools_prop_maxLimit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:100;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"page\";a:7:{s:4:\"name\";s:4:\"page\";s:4:\"desc\";s:18:\"pdotools_prop_page\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"pageVarKey\";a:7:{s:4:\"name\";s:10:\"pageVarKey\";s:4:\"desc\";s:24:\"pdotools_prop_pageVarKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"page\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:10:\"page.total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"pageLimit\";a:7:{s:4:\"name\";s:9:\"pageLimit\";s:4:\"desc\";s:23:\"pdotools_prop_pageLimit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:5;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"element\";a:7:{s:4:\"name\";s:7:\"element\";s:4:\"desc\";s:21:\"pdotools_prop_element\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:12:\"pdoResources\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"pageNavVar\";a:7:{s:4:\"name\";s:10:\"pageNavVar\";s:4:\"desc\";s:24:\"pdotools_prop_pageNavVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:8:\"page.nav\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"pageCountVar\";a:7:{s:4:\"name\";s:12:\"pageCountVar\";s:4:\"desc\";s:26:\"pdotools_prop_pageCountVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"pageCount\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"pageLinkScheme\";a:7:{s:4:\"name\";s:14:\"pageLinkScheme\";s:4:\"desc\";s:28:\"pdotools_prop_pageLinkScheme\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplPage\";a:7:{s:4:\"name\";s:7:\"tplPage\";s:4:\"desc\";s:21:\"pdotools_prop_tplPage\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:88:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">[[+pageNo]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"tplPageWrapper\";a:7:{s:4:\"name\";s:14:\"tplPageWrapper\";s:4:\"desc\";s:28:\"pdotools_prop_tplPageWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:83:\"@INLINE <ul class=\"pagination\">[[+first]][[+prev]][[+pages]][[+next]][[+last]]</ul>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"tplPageActive\";a:7:{s:4:\"name\";s:13:\"tplPageActive\";s:4:\"desc\";s:27:\"pdotools_prop_tplPageActive\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:95:\"@INLINE <li class=\"page-item active\"><a class=\"page-link\" href=\"[[+href]]\">[[+pageNo]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplPageFirst\";a:7:{s:4:\"name\";s:12:\"tplPageFirst\";s:4:\"desc\";s:26:\"pdotools_prop_tplPageFirst\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:95:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">[[%pdopage_first]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPageLast\";a:7:{s:4:\"name\";s:11:\"tplPageLast\";s:4:\"desc\";s:25:\"pdotools_prop_tplPageLast\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:94:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">[[%pdopage_last]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPagePrev\";a:7:{s:4:\"name\";s:11:\"tplPagePrev\";s:4:\"desc\";s:25:\"pdotools_prop_tplPagePrev\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:84:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">&laquo;</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPageNext\";a:7:{s:4:\"name\";s:11:\"tplPageNext\";s:4:\"desc\";s:25:\"pdotools_prop_tplPageNext\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:84:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">&raquo;</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPageSkip\";a:7:{s:4:\"name\";s:11:\"tplPageSkip\";s:4:\"desc\";s:25:\"pdotools_prop_tplPageSkip\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:81:\"@INLINE <li class=\"page-item disabled\"><a class=\"page-link\" href=\"#\">...</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:17:\"tplPageFirstEmpty\";a:7:{s:4:\"name\";s:17:\"tplPageFirstEmpty\";s:4:\"desc\";s:31:\"pdotools_prop_tplPageFirstEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:96:\"@INLINE <li class=\"page-item disabled\"><a class=\"page-link\" href=\"#\">[[%pdopage_first]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplPageLastEmpty\";a:7:{s:4:\"name\";s:16:\"tplPageLastEmpty\";s:4:\"desc\";s:30:\"pdotools_prop_tplPageLastEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:95:\"@INLINE <li class=\"page-item disabled\"><a class=\"page-link\" href=\"#\">[[%pdopage_last]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplPagePrevEmpty\";a:7:{s:4:\"name\";s:16:\"tplPagePrevEmpty\";s:4:\"desc\";s:30:\"pdotools_prop_tplPagePrevEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:85:\"@INLINE <li class=\"page-item disabled\"><a class=\"page-link\" href=\"#\">&laquo;</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplPageNextEmpty\";a:7:{s:4:\"name\";s:16:\"tplPageNextEmpty\";s:4:\"desc\";s:30:\"pdotools_prop_tplPageNextEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:85:\"@INLINE <li class=\"page-item disabled\"><a class=\"page-link\" href=\"#\">&raquo;</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:19:\"pdotools_prop_cache\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3600;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"cacheAnonymous\";a:7:{s:4:\"name\";s:14:\"cacheAnonymous\";s:4:\"desc\";s:28:\"pdotools_prop_cacheAnonymous\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"ajax\";a:7:{s:4:\"name\";s:4:\"ajax\";s:4:\"desc\";s:18:\"pdotools_prop_ajax\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"ajaxMode\";a:7:{s:4:\"name\";s:8:\"ajaxMode\";s:4:\"desc\";s:22:\"pdotools_prop_ajaxMode\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:4:{i:0;a:2:{s:4:\"text\";s:4:\"None\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"text\";s:7:\"Default\";s:5:\"value\";s:7:\"default\";}i:2;a:2:{s:4:\"text\";s:6:\"Scroll\";s:5:\"value\";s:6:\"scroll\";}i:3;a:2:{s:4:\"text\";s:6:\"Button\";s:5:\"value\";s:6:\"button\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"ajaxElemWrapper\";a:7:{s:4:\"name\";s:15:\"ajaxElemWrapper\";s:4:\"desc\";s:29:\"pdotools_prop_ajaxElemWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:8:\"#pdopage\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"ajaxElemRows\";a:7:{s:4:\"name\";s:12:\"ajaxElemRows\";s:4:\"desc\";s:26:\"pdotools_prop_ajaxElemRows\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:14:\"#pdopage .rows\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:18:\"ajaxElemPagination\";a:7:{s:4:\"name\";s:18:\"ajaxElemPagination\";s:4:\"desc\";s:32:\"pdotools_prop_ajaxElemPagination\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:20:\"#pdopage .pagination\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"ajaxElemLink\";a:7:{s:4:\"name\";s:12:\"ajaxElemLink\";s:4:\"desc\";s:26:\"pdotools_prop_ajaxElemLink\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:22:\"#pdopage .pagination a\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"ajaxElemMore\";a:7:{s:4:\"name\";s:12:\"ajaxElemMore\";s:4:\"desc\";s:26:\"pdotools_prop_ajaxElemMore\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:18:\"#pdopage .btn-more\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"ajaxTplMore\";a:7:{s:4:\"name\";s:11:\"ajaxTplMore\";s:4:\"desc\";s:25:\"pdotools_prop_ajaxTplMore\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:75:\"@INLINE <button class=\"btn btn-primary btn-more\">[[%pdopage_more]]</button>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"ajaxHistory\";a:7:{s:4:\"name\";s:11:\"ajaxHistory\";s:4:\"desc\";s:25:\"pdotools_prop_ajaxHistory\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:3:{i:0;a:2:{s:4:\"text\";s:4:\"Auto\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"text\";s:7:\"Enabled\";s:5:\"value\";i:1;}i:2;a:2:{s:4:\"text\";s:8:\"Disabled\";s:5:\"value\";i:0;}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"frontend_js\";a:7:{s:4:\"name\";s:11:\"frontend_js\";s:4:\"desc\";s:25:\"pdotools_prop_frontend_js\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:31:\"[[+assetsUrl]]js/pdopage.min.js\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"frontend_css\";a:7:{s:4:\"name\";s:12:\"frontend_css\";s:4:\"desc\";s:26:\"pdotools_prop_frontend_css\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:33:\"[[+assetsUrl]]css/pdopage.min.css\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"setMeta\";a:7:{s:4:\"name\";s:7:\"setMeta\";s:4:\"desc\";s:21:\"pdotools_prop_setMeta\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"strictMode\";a:7:{s:4:\"name\";s:10:\"strictMode\";s:4:\"desc\";s:24:\"pdotools_prop_strictMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdopage.php'),
(15, 1, 0, 'pdoMenu', '', 0, 3, 0, '/** @var array $scriptProperties */\n\n// Convert parameters from Wayfinder if exists\nif (isset($startId)) {\n    $scriptProperties[\'parents\'] = $startId;\n}\nif (!empty($includeDocs)) {\n    $tmp = array_map(\'trim\', explode(\',\', $includeDocs));\n    foreach ($tmp as $v) {\n        if (!empty($scriptProperties[\'resources\'])) {\n            $scriptProperties[\'resources\'] .= \',\' . $v;\n        } else {\n            $scriptProperties[\'resources\'] = $v;\n        }\n    }\n}\nif (!empty($excludeDocs)) {\n    $tmp = array_map(\'trim\', explode(\',\', $excludeDocs));\n    foreach ($tmp as $v) {\n        if (!empty($scriptProperties[\'resources\'])) {\n            $scriptProperties[\'resources\'] .= \',-\' . $v;\n        } else {\n            $scriptProperties[\'resources\'] = \'-\' . $v;\n        }\n    }\n}\n\nif (!empty($previewUnpublished) && $modx->hasPermission(\'view_unpublished\')) {\n    $scriptProperties[\'showUnpublished\'] = 1;\n}\n\n$scriptProperties[\'depth\'] = empty($level) ? 100 : abs($level) - 1;\nif (!empty($contexts)) {\n    $scriptProperties[\'context\'] = $contexts;\n}\nif (empty($scriptProperties[\'context\'])) {\n    $scriptProperties[\'context\'] = $modx->resource->context_key;\n}\n\n// Save original parents specified by user\n$specified_parents = array_map(\'trim\', explode(\',\', $scriptProperties[\'parents\']));\n\nif ($scriptProperties[\'parents\'] === \'\') {\n    $scriptProperties[\'parents\'] = $modx->resource->id;\n} elseif ($scriptProperties[\'parents\'] === 0 || $scriptProperties[\'parents\'] === \'0\') {\n    if ($scriptProperties[\'depth\'] !== \'\' && $scriptProperties[\'depth\'] !== 100) {\n        $contexts = array_map(\'trim\', explode(\',\', $scriptProperties[\'context\']));\n        $parents = array();\n        if (!empty($scriptProperties[\'showDeleted\'])) {\n            $pdoFetch = $modx->getService(\'pdoFetch\');\n            foreach ($contexts as $ctx) {\n                $parents = array_merge($parents,\n                    $pdoFetch->getChildIds(\'modResource\', 0, $scriptProperties[\'depth\'], array(\'context\' => $ctx)));\n            }\n        } else {\n            foreach ($contexts as $ctx) {\n                $parents = array_merge($parents,\n                    $modx->getChildIds(0, $scriptProperties[\'depth\'], array(\'context\' => $ctx)));\n            }\n        }\n        $scriptProperties[\'parents\'] = !empty($parents) ? implode(\',\', $parents) : \'+0\';\n        $scriptProperties[\'depth\'] = 0;\n    }\n    $scriptProperties[\'includeParents\'] = 1;\n    $scriptProperties[\'displayStart\'] = 0;\n} else {\n    $parents = array_map(\'trim\', explode(\',\', $scriptProperties[\'parents\']));\n    $parents_in = $parents_out = array();\n    foreach ($parents as $v) {\n        if (!is_numeric($v)) {\n            continue;\n        }\n        if ($v[0] == \'-\') {\n            $parents_out[] = abs($v);\n        } else {\n            $parents_in[] = abs($v);\n        }\n    }\n\n    if (empty($parents_in)) {\n        $scriptProperties[\'includeParents\'] = 1;\n        $scriptProperties[\'displayStart\'] = 0;\n    }\n}\n\nif (!empty($displayStart)) {\n    $scriptProperties[\'includeParents\'] = 1;\n}\nif (!empty($ph)) {\n    $toPlaceholder = $ph;\n}\nif (!empty($sortOrder)) {\n    $scriptProperties[\'sortdir\'] = $sortOrder;\n}\nif (!empty($sortBy)) {\n    $scriptProperties[\'sortby\'] = $sortBy;\n}\nif (!empty($permissions)) {\n    $scriptProperties[\'checkPermissions\'] = $permissions;\n}\nif (!empty($cacheResults)) {\n    $scriptProperties[\'cache\'] = $cacheResults;\n}\nif (!empty($ignoreHidden)) {\n    $scriptProperties[\'showHidden\'] = $ignoreHidden;\n}\n\n$wfTemplates = array(\n    \'outerTpl\' => \'tplOuter\',\n    \'rowTpl\' => \'tpl\',\n    \'parentRowTpl\' => \'tplParentRow\',\n    \'parentRowHereTpl\' => \'tplParentRowHere\',\n    \'hereTpl\' => \'tplHere\',\n    \'innerTpl\' => \'tplInner\',\n    \'innerRowTpl\' => \'tplInnerRow\',\n    \'innerHereTpl\' => \'tplInnerHere\',\n    \'activeParentRowTpl\' => \'tplParentRowActive\',\n    \'categoryFoldersTpl\' => \'tplCategoryFolder\',\n    \'startItemTpl\' => \'tplStart\',\n);\nforeach ($wfTemplates as $k => $v) {\n    if (isset(${$k})) {\n        $scriptProperties[$v] = ${$k};\n    }\n}\n//---\n\n/** @var pdoMenu $pdoMenu */\n$fqn = $modx->getOption(\'pdoMenu.class\', null, \'pdotools.pdomenu\', true);\n$path = $modx->getOption(\'pdomenu_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoMenu = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoMenu->pdoTools->addTime(\'pdoTools loaded\');\n\n$cache = !empty($cache) || (!$modx->user->id && !empty($cacheAnonymous));\nif (empty($scriptProperties[\'cache_key\'])) {\n    $scriptProperties[\'cache_key\'] = \'pdomenu/\' . sha1(serialize($scriptProperties));\n}\n\n$output = \'\';\n$tree = array();\nif ($cache) {\n    $tree = $pdoMenu->pdoTools->getCache($scriptProperties);\n}\nif (empty($tree)) {\n    $data = $pdoMenu->pdoTools->run();\n    $data = $pdoMenu->pdoTools->buildTree($data, \'id\', \'parent\', $specified_parents);\n    $tree = array();\n    foreach ($data as $k => $v) {\n        if (empty($v[\'id\'])) {\n            if (!in_array($k, $specified_parents) && !$pdoMenu->checkResource($k)) {\n                continue;\n            } else {\n                $tree = array_merge($tree, $v[\'children\']);\n            }\n        } else {\n            $tree[$k] = $v;\n        }\n    }\n    if ($cache) {\n        $pdoMenu->pdoTools->setCache($tree, $scriptProperties);\n    }\n}\nif (!empty($tree)) {\n    $output = $pdoMenu->templateTree($tree);\n}\n\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $output .= \'<pre class=\"pdoMenuLog\">\' . print_r($pdoMenu->pdoTools->getTime(), 1) . \'</pre>\';\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n} else {\n    return $output;\n}', 0, 'a:51:{s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"level\";a:7:{s:4:\"name\";s:5:\"level\";s:4:\"desc\";s:19:\"pdotools_prop_level\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"displayStart\";a:7:{s:4:\"name\";s:12:\"displayStart\";s:4:\"desc\";s:26:\"pdotools_prop_displayStart\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"templates\";a:7:{s:4:\"name\";s:9:\"templates\";s:4:\"desc\";s:23:\"pdotools_prop_templates\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:19:\"pdotools_prop_cache\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3600;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"cacheAnonymous\";a:7:{s:4:\"name\";s:14:\"cacheAnonymous\";s:4:\"desc\";s:28:\"pdotools_prop_cacheAnonymous\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"plPrefix\";a:7:{s:4:\"name\";s:8:\"plPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_plPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"wf.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:18:\"previewUnpublished\";a:7:{s:4:\"name\";s:18:\"previewUnpublished\";s:4:\"desc\";s:32:\"pdotools_prop_previewUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"hideSubMenus\";a:7:{s:4:\"name\";s:12:\"hideSubMenus\";s:4:\"desc\";s:26:\"pdotools_prop_hideSubMenus\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"rowIdPrefix\";a:7:{s:4:\"name\";s:11:\"rowIdPrefix\";s:4:\"desc\";s:25:\"pdotools_prop_rowIdPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"firstClass\";a:7:{s:4:\"name\";s:10:\"firstClass\";s:4:\"desc\";s:24:\"pdotools_prop_firstClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"first\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"lastClass\";a:7:{s:4:\"name\";s:9:\"lastClass\";s:4:\"desc\";s:23:\"pdotools_prop_lastClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"last\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"hereClass\";a:7:{s:4:\"name\";s:9:\"hereClass\";s:4:\"desc\";s:23:\"pdotools_prop_hereClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:6:\"active\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"parentClass\";a:7:{s:4:\"name\";s:11:\"parentClass\";s:4:\"desc\";s:25:\"pdotools_prop_parentClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"rowClass\";a:7:{s:4:\"name\";s:8:\"rowClass\";s:4:\"desc\";s:22:\"pdotools_prop_rowClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"outerClass\";a:7:{s:4:\"name\";s:10:\"outerClass\";s:4:\"desc\";s:24:\"pdotools_prop_outerClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"innerClass\";a:7:{s:4:\"name\";s:10:\"innerClass\";s:4:\"desc\";s:24:\"pdotools_prop_innerClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"levelClass\";a:7:{s:4:\"name\";s:10:\"levelClass\";s:4:\"desc\";s:24:\"pdotools_prop_levelClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"selfClass\";a:7:{s:4:\"name\";s:9:\"selfClass\";s:4:\"desc\";s:23:\"pdotools_prop_selfClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"webLinkClass\";a:7:{s:4:\"name\";s:12:\"webLinkClass\";s:4:\"desc\";s:26:\"pdotools_prop_webLinkClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplOuter\";a:7:{s:4:\"name\";s:8:\"tplOuter\";s:4:\"desc\";s:22:\"pdotools_prop_tplOuter\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:41:\"@INLINE <ul[[+classes]]>[[+wrapper]]</ul>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:95:\"@INLINE <li[[+classes]]><a href=\"[[+link]]\" [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]</li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplParentRow\";a:7:{s:4:\"name\";s:12:\"tplParentRow\";s:4:\"desc\";s:26:\"pdotools_prop_tplParentRow\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplParentRowHere\";a:7:{s:4:\"name\";s:16:\"tplParentRowHere\";s:4:\"desc\";s:30:\"pdotools_prop_tplParentRowHere\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplHere\";a:7:{s:4:\"name\";s:7:\"tplHere\";s:4:\"desc\";s:21:\"pdotools_prop_tplHere\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplInner\";a:7:{s:4:\"name\";s:8:\"tplInner\";s:4:\"desc\";s:22:\"pdotools_prop_tplInner\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplInnerRow\";a:7:{s:4:\"name\";s:11:\"tplInnerRow\";s:4:\"desc\";s:25:\"pdotools_prop_tplInnerRow\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplInnerHere\";a:7:{s:4:\"name\";s:12:\"tplInnerHere\";s:4:\"desc\";s:26:\"pdotools_prop_tplInnerHere\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:18:\"tplParentRowActive\";a:7:{s:4:\"name\";s:18:\"tplParentRowActive\";s:4:\"desc\";s:32:\"pdotools_prop_tplParentRowActive\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:17:\"tplCategoryFolder\";a:7:{s:4:\"name\";s:17:\"tplCategoryFolder\";s:4:\"desc\";s:31:\"pdotools_prop_tplCategoryFolder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplStart\";a:7:{s:4:\"name\";s:8:\"tplStart\";s:4:\"desc\";s:22:\"pdotools_prop_tplStart\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:55:\"@INLINE <h2[[+classes]]>[[+menutitle]]</h2>[[+wrapper]]\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"checkPermissions\";a:7:{s:4:\"name\";s:16:\"checkPermissions\";s:4:\"desc\";s:30:\"pdotools_prop_checkPermissions\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"hereId\";a:7:{s:4:\"name\";s:6:\"hereId\";s:4:\"desc\";s:20:\"pdotools_prop_hereId\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"countChildren\";a:7:{s:4:\"name\";s:13:\"countChildren\";s:4:\"desc\";s:27:\"pdotools_prop_countChildren\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdomenu.php'),
(16, 1, 0, 'pdoTitle', '', 0, 3, 0, '/** @var array $scriptProperties */\nif (empty($outputSeparator)) {\n    $outputSeparator = \' / \';\n}\nif (empty($titleField)) {\n    $titleField = \'longtitle\';\n}\nif (!isset($pageVarKey)) {\n    $pageVarKey = \'page\';\n}\nif (!isset($queryVarKey)) {\n    $queryVarKey = \'query\';\n}\nif (empty($tplPages)) {\n    $tplPages = \'@INLINE [[%pdopage_page]] [[+page]] [[%pdopage_from]] [[+pageCount]]\';\n}\nif (empty($tplSearch)) {\n    $tplSearch = \'@INLINE «[[+mse2_query]]»\';\n}\nif (empty($minQuery)) {\n    $minQuery = 3;\n}\nif (empty($id)) {\n    $id = $modx->resource->id;\n}\nif (empty($cacheKey)) {\n    $cacheKey = \'title_crumbs\';\n}\nif (!isset($cacheTime)) {\n    $cacheTime = 0;\n}\n/** @var pdoTools $pdoTools */\n$fqn = $modx->getOption(\'pdoTools.class\', null, \'pdotools.pdotools\', true);\n$path = $modx->getOption(\'pdotools_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoTools = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$modx->lexicon->load(\'pdotools:pdopage\');\n\n/** @var modResource $resource */\n$resource = ($id == $modx->resource->id)\n    ? $modx->resource\n    : $modx->getObject(\'modResource\', $id);\nif (!$resource) {\n    return \'\';\n}\n\n$title = array();\n$pagetitle = trim($resource->get($titleField));\nif (empty($pagetitle)) {\n    $pagetitle = $resource->get(\'pagetitle\');\n}\n\n// Add search request if exists\nif (!empty($_GET[$queryVarKey]) && strlen($_GET[$queryVarKey]) >= $minQuery && !empty($tplSearch)) {\n    $pagetitle .= \' \' . $pdoTools->getChunk($tplSearch, array(\n            $queryVarKey => $modx->stripTags($_GET[$queryVarKey]),\n        ));\n}\n$title[] = $pagetitle;\n\n// Add pagination if exists\nif (!empty($_GET[$pageVarKey]) && !empty($tplPages)) {\n    $title[] = $pdoTools->getChunk($tplPages, array(\n        \'page\' => intval($_GET[$pageVarKey]),\n    ));\n}\n\n// Add parents\n$cacheKey = $resource->getCacheKey() . \'/\' . $cacheKey;\n$cacheOptions = array(\'cache_key\' => $modx->getOption(\'cache_resource_key\', null, \'resource\'));\n$crumbs = \'\';\nif (empty($cache) || !$crumbs = $modx->cacheManager->get($cacheKey, $cacheOptions)) {\n    $crumbs = $pdoTools->runSnippet(\'pdoCrumbs\', array_merge(\n        array(\n            \'to\' => $resource->id,\n            \'outputSeparator\' => $outputSeparator,\n            \'showHome\' => 0,\n            \'showAtHome\' => 0,\n            \'showCurrent\' => 0,\n            \'direction\' => \'rtl\',\n            \'tpl\' => \'@INLINE [[+menutitle]]\',\n            \'tplCurrent\' => \'@INLINE [[+menutitle]]\',\n            \'tplWrapper\' => \'@INLINE [[+output]]\',\n            \'tplMax\' => \'\',\n            \'tplHome\' => \'\',\n        ), $scriptProperties\n    ));\n}\nif (!empty($crumbs)) {\n    if (!empty($cache)) {\n        $modx->cacheManager->set($cacheKey, $crumbs, $cacheTime, $cacheOptions);\n    }\n    $title[] = $crumbs;\n}\n\nif (!empty($registerJs)) {\n    $config = array(\n        \'separator\' => $outputSeparator,\n        \'tpl\' => str_replace(array(\'[[+\', \']]\'), array(\'{\', \'}\'), $pdoTools->getChunk($tplPages)),\n    );\n    /** @noinspection Annotator */\n    $modx->regClientStartupScript(\'<script type=\"text/javascript\">pdoTitle = \' . json_encode($config) . \';</script>\',\n        true);\n}\n\nreturn implode($outputSeparator, $title);', 0, 'a:13:{s:2:\"id\";a:7:{s:4:\"name\";s:2:\"id\";s:4:\"desc\";s:16:\"pdotools_prop_id\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"exclude\";a:7:{s:4:\"name\";s:7:\"exclude\";s:4:\"desc\";s:21:\"pdotools_prop_exclude\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:25:\"pdotools_prop_title_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"titleField\";a:7:{s:4:\"name\";s:10:\"titleField\";s:4:\"desc\";s:24:\"pdotools_prop_titleField\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"longtitle\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:25:\"pdotools_prop_title_cache\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplPages\";a:7:{s:4:\"name\";s:8:\"tplPages\";s:4:\"desc\";s:22:\"pdotools_prop_tplPages\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:68:\"@INLINE [[%pdopage_page]] [[+page]] [[%pdopage_from]] [[+pageCount]]\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"pageVarKey\";a:7:{s:4:\"name\";s:10:\"pageVarKey\";s:4:\"desc\";s:24:\"pdotools_prop_pageVarKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"page\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"tplSearch\";a:7:{s:4:\"name\";s:9:\"tplSearch\";s:4:\"desc\";s:23:\"pdotools_prop_tplSearch\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:27:\"@INLINE «[[+mse2_query]]»\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"queryVarKey\";a:7:{s:4:\"name\";s:11:\"queryVarKey\";s:4:\"desc\";s:25:\"pdotools_prop_queryVarKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"query\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"minQuery\";a:7:{s:4:\"name\";s:8:\"minQuery\";s:4:\"desc\";s:22:\"pdotools_prop_minQuery\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:35:\"pdotools_prop_title_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\" / \";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"registerJs\";a:7:{s:4:\"name\";s:10:\"registerJs\";s:4:\"desc\";s:24:\"pdotools_prop_registerJs\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdotitle.php');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(17, 1, 0, 'pdoArchive', '', 0, 3, 0, '$modx->lexicon->load(\'pdotools:pdoarchive\');\n\n/** @var array $scriptProperties */\n$tplWrapper = $modx->getOption(\'tplWrapper\', $scriptProperties);\n$tplYear = $modx->getOption(\'tplYear\', $scriptProperties);\n$tplMonth = $modx->getOption(\'tplMonth\', $scriptProperties);\n$tplDay = $modx->getOption(\'tplDay\', $scriptProperties);\n$tpl = $modx->getOption(\'tpl\', $scriptProperties);\n$dateField = $modx->getOption(\'dateField\', $scriptProperties, \'createdon\', true);\n$dateFormat = $modx->getOption(\'dateFormat\', $scriptProperties, \'H:i\', true);\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \"\\n\");\n\n// Adding extra parameters into special place so we can put them in a results\n/** @var modSnippet $snippet */\n$additionalPlaceholders = $properties = array();\nif (isset($this) && $this instanceof modSnippet) {\n    $properties = $this->get(\'properties\');\n} elseif ($snippet = $modx->getObject(\'modSnippet\', array(\'name\' => \'pdoResources\'))) {\n    $properties = $snippet->get(\'properties\');\n}\nif (!empty($properties)) {\n    foreach ($scriptProperties as $k => $v) {\n        if (!isset($properties[$k])) {\n            $additionalPlaceholders[$k] = $v;\n        }\n    }\n}\n$scriptProperties[\'additionalPlaceholders\'] = $additionalPlaceholders;\nif (isset($parents) && $parents === \'\') {\n    $scriptProperties[\'parents\'] = $modx->resource->id;\n}\n$scriptProperties[\'return\'] = \'data\';\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n$rows = $pdoFetch->run();\n\n// Process rows\n$tree = array();\nforeach ($rows as $row) {\n    $tmp = $row[$dateField];\n    if (!is_numeric($tmp)) {\n        $tmp = strtotime($tmp);\n    }\n    $year = date(\'Y\', $tmp);\n    $month = date(\'m\', $tmp);\n    $day = date(\'d\', $tmp);\n    $tree[$year][$month][$day][] = $row;\n}\n\n$output = \'\';\nforeach ($tree as $year => $months) {\n    $rows_year = \'\';\n    $count_year = 0;\n\n    foreach ($months as $month => $days) {\n        $rows_month = \'\';\n        $count_month = 0;\n\n        foreach ($days as $day => $resources) {\n            $rows_day = array();\n            $count_day = 0;\n            $idx = 1;\n\n            foreach ($resources as $resource) {\n                $resource[\'day\'] = $day;\n                $resource[\'month\'] = $month;\n                $resource[\'year\'] = $year;\n                $resource[\'date\'] = strftime($dateFormat, $resource[$dateField]);\n                $resource[\'idx\'] = $idx++;\n                $resource[\'menutitle\'] = !empty($resource[\'menutitle\'])\n                    ? $resource[\'menutitle\']\n                    : $resource[\'pagetitle\'];\n                // Add placeholder [[+link]] if specified\n                if (!empty($scriptProperties[\'useWeblinkUrl\'])) {\n                    if (!isset($resource[\'context_key\'])) {\n                        $resource[\'context_key\'] = \'\';\n                    }\n                    if (isset($resource[\'class_key\']) && ($resource[\'class_key\'] == \'modWebLink\')) {\n                        $resource[\'link\'] = isset($resource[\'content\']) && is_numeric(trim($resource[\'content\'], \'[]~ \'))\n                            ? $pdoFetch->makeUrl(intval(trim($resource[\'content\'], \'[]~ \')), $resource)\n                            : (isset($resource[\'content\']) ? $resource[\'content\'] : \'\');\n                    } else {\n                        $resource[\'link\'] = $pdoFetch->makeUrl($resource[\'id\'], $resource);\n                    }\n                } else {\n                    $resource[\'link\'] = \'\';\n                }\n                $tpl = $pdoFetch->defineChunk($resource);\n                $rows_day[] = $pdoFetch->getChunk($tpl, $resource);\n                $count_year++;\n                $count_month++;\n                $count_day++;\n            }\n\n            $rows_month .= !empty($tplDay)\n                ? $pdoFetch->getChunk($tplDay, array(\n                    \'day\' => $day,\n                    \'month\' => $month,\n                    \'year\' => $year,\n                    \'count\' => $count_day,\n                    \'wrapper\' => implode($outputSeparator, $rows_day),\n                ), $pdoFetch->config[\'fastMode\'])\n                : implode($outputSeparator, $rows_day);\n        }\n\n        $rows_year .= !empty($tplMonth)\n            ? $pdoFetch->getChunk($tplMonth, array(\n                \'month\' => $month,\n                \'month_name\' => $modx->lexicon(\'pdoarchive_month_\' . $month),\n                \'year\' => $year,\n                \'count\' => $count_month,\n                \'wrapper\' => $rows_month,\n            ), $pdoFetch->config[\'fastMode\'])\n            : $rows_month;\n    }\n\n    $output .= !empty($tplYear)\n        ? $pdoFetch->getChunk($tplYear, array(\n            \'year\' => $year,\n            \'count\' => $count_year,\n            \'wrapper\' => $rows_year,\n        ), $pdoFetch->config[\'fastMode\'])\n        : $rows_year;\n}\n$pdoFetch->addTime(\'Rows processed\');\n\n// Return output\nif (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n    $output = $pdoFetch->getChunk(\n        $tplWrapper,\n        array_merge($additionalPlaceholders, array(\'output\' => $output)),\n        $pdoFetch->config[\'fastMode\']\n    );\n    $pdoFetch->addTime(\'Rows wrapped\');\n}\n\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $output .= \'<pre class=\"pdoArchiveLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n} else {\n    return $output;\n}', 0, 'a:36:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:65:\"@INLINE <li>[[+date]] <a href=\"[[+link]]\">[[+menutitle]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplYear\";a:7:{s:4:\"name\";s:7:\"tplYear\";s:4:\"desc\";s:21:\"pdotools_prop_tplYear\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:71:\"@INLINE <h3>[[+year]] <sup>([[+count]])</sup></h3><ul>[[+wrapper]]</ul>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplMonth\";a:7:{s:4:\"name\";s:8:\"tplMonth\";s:4:\"desc\";s:22:\"pdotools_prop_tplMonth\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:86:\"@INLINE <li><h4>[[+month_name]] <sup>([[+count]])</sup></h4><ul>[[+wrapper]]</ul></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplDay\";a:7:{s:4:\"name\";s:6:\"tplDay\";s:4:\"desc\";s:20:\"pdotools_prop_tplDay\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:79:\"@INLINE <li><h5>[[+day]] <sup>([[+count]])</sup></h5><ul>[[+wrapper]]</ul></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"dateField\";a:7:{s:4:\"name\";s:9:\"dateField\";s:4:\"desc\";s:23:\"pdotools_prop_dateField\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"createdon\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"dateFormat\";a:7:{s:4:\"name\";s:10:\"dateFormat\";s:4:\"desc\";s:24:\"pdotools_prop_dateFormat\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"%H:%M\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"createdon\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"sortbyTV\";a:7:{s:4:\"name\";s:8:\"sortbyTV\";s:4:\"desc\";s:22:\"pdotools_prop_sortbyTV\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"sortbyTVType\";a:7:{s:4:\"name\";s:12:\"sortbyTVType\";s:4:\"desc\";s:26:\"pdotools_prop_sortbyTVType\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:4:\"DESC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"sortdirTV\";a:7:{s:4:\"name\";s:9:\"sortdirTV\";s:4:\"desc\";s:23:\"pdotools_prop_sortdirTV\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"includeContent\";a:7:{s:4:\"name\";s:14:\"includeContent\";s:4:\"desc\";s:28:\"pdotools_prop_includeContent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdoarchive.php'),
(18, 0, 0, 'registerForm', '', 0, 0, 0, '$message = \'\';\nif(isset($_POST[\'registerbtn\']) && $_POST[\'registerbtn\']==\'register\'){\n\n$stmt = $modx->query(\"select * from user_details where username = \'\".$_POST[\'username\'].\"\'\");\nif ($stmt) {\n\n    $result = $stmt->fetchAll();\n    if(count($result)>0){\n    	echo \"User name already exist\";\n    }else{\n    	$sql =\"insert into user_details (username,name,email,password) values(\'\".$_POST[\'username\'].\"\',\'\".$_POST[\'fullname\'].\"\',\'\".$_POST[\'email\'].\"\',\'\".md5($_POST[\'password\']).\"\')\";\n        $stmt = $modx->prepare($sql);\n        $stmt->execute();\n\n$stmt1 = $modx->query(\"select * from user_details where username = \'\".$_POST[\'username\'].\"\'\");\n$result1 = $stmt1->fetchAll();\n\n        echo  nl2br(\"Registered successfully \\n \");\necho  nl2br(\"If you could not get email verification mail means use this link to verify your email:\\n\");\necho \"http://\" . $_SERVER[\'SERVER_NAME\'].\'/\'.explode(\"/\",ltrim($_SERVER[\'PHP_SELF\'],\'/\'))[0].\'/index.php?id=4&user_id=\'.$result1[0][\'id\'];\n\n\n\n$message = nl2br(\"use this link to verify your email:\\n http://\" . $_SERVER[\'SERVER_NAME\'].\'/\'.explode(\"/\",ltrim($_SERVER[\'PHP_SELF\'],\'/\'))[0].\'/index.php?id=4&user_id=\'.$result1[0][\'id\']);\n\n\n$modx->getService(\'mail\', \'mail.modPHPMailer\');\n$modx->mail->set(modMail::MAIL_BODY,$message);\n$modx->mail->set(modMail::MAIL_FROM,\'demo@gmail.com\');\n$modx->mail->set(modMail::MAIL_FROM_NAME,\'Modx\');\n$modx->mail->set(modMail::MAIL_SUBJECT,\'Email verification\');\n$modx->mail->address(\'to\',$_POST[\'email\']);\n//$modx->mail->address(\'reply-to\',\'demo@gmail.org\');\n$modx->mail->setHTML(true);\nif (!$modx->mail->send()) {\n    $modx->log(modX::LOG_LEVEL_ERROR,\'An error occurred while trying to send the email: \'.$modx->mail->mailer->ErrorInfo);\n}\n$modx->mail->reset();\n\n\n\n    }\n}	\n}', 0, 'a:0:{}', '', 0, ''),
(19, 0, 0, 'loginForm', '', 0, 0, 0, '$message = \'\';\nif(isset($_POST[\'loginbtn\']) && $_POST[\'loginbtn\']==\'login\'){\n \n    $stmt = $modx->query(\"select * from user_details where username = \'\".$_POST[\'username\'].\"\'\");\n    if ($stmt) {\n        $result = $stmt->fetchAll();\n        if(count($result)>0){\n         if($result[0][\'password\']==md5($_POST[\'password\'])){\n            if($result[0][\'email_verification\']==1){\n                   $_SESSION[\'user_id\']=$result[0][\'id\'];\n                echo $message = \'Login successfully\';\nheader(\"Location: index.php?id=5\");\n                }else{\n                    echo $message = \'Please verify your email\';\n                }\n                }else{\n                    echo $message = \'Invalid password\';\n                }\n                }else{\n                    echo $message = \'Invalid user name\';\n                }\n            }\n        }', 0, 'a:0:{}', '', 0, ''),
(20, 0, 0, 'emailVerification', '', 0, 0, 0, '$stmt = $modx->query(\"select * from user_details where id = \'\".$_GET[\'user_id\'].\"\'\");\n\n        if ($stmt) {\n        $result = $stmt->fetchAll();\n        if(count($result)>0){\n            if($result[0][\'email_verification\']==0){\n               \n                $sql =\"UPDATE `user_details` SET `email_verification`=\'1\' WHERE id = \'\".$_GET[\'user_id\'].\"\' \";\n                $stmt = $modx->prepare($sql);\n                $stmt->execute();\n                echo $message = \'Email verified successfully\';\n                }else{\n                    echo $message = \'Email already verified\';\n                }\n                }else{\n                    echo $message = \'Invalid user\';\n                }\n            }', 0, 'a:0:{}', '', 0, ''),
(21, 0, 0, 'profileForm', '', 0, 0, 0, 'if(isset($_SESSION[\'user_id\']) && $_SESSION[\'user_id\']>0){\n$stmt = $modx->query(\"select * from user_details where id= \'\".$_SESSION[\'user_id\'].\"\'\");\nif ($stmt) {\n\n    $result = $stmt->fetchAll();\n    if(count($result)>0){\n    	echo nl2br(\"Full name: \".$result[0][\'name\'].\"\\n\");\n        echo nl2br(\"Email: \".$result[0][\'email\'].\"\\n\");\n        echo \"Email Verification: Yes\";\n    }\n}\n}else{\nheader(\"Location: index.php?id=1\"); \n}', 0, 'a:0:{}', '', 0, ''),
(22, 0, 0, 'removeCache', '', 0, 0, 0, 'function deleteAll($dir, $remove = false) {\n $structure = glob(rtrim($dir, \"/\").\'/*\');\n if (is_array($structure)) {\n foreach($structure as $file) {\n if (is_dir($file))\n deleteAll($file,true);\n else if(is_file($file))\n unlink($file);\n }\n }\n if($remove)\n rmdir($dir);\n}\n \n// folder path that contains files and subfolders\n$path = \"C:/xampp/htdocs/modx/core/cache\";\n \n// call the function\ndeleteAll($path);', 0, 'a:0:{}', '', 0, ''),
(23, 0, 0, 'loguotForm', '', 0, 0, 0, '$_SESSION[\'user_id\']=\'\';\nunset($_SESSION[\'user_id\']);\nheader(\"Location: index.php?id=1\");', 0, 'a:0:{}', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_templates`
--

CREATE TABLE `modx_site_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `icon` varchar(191) NOT NULL DEFAULT '',
  `template_type` int(11) NOT NULL DEFAULT 0,
  `content` mediumtext NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `properties` text DEFAULT NULL,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_site_templates`
--

INSERT INTO `modx_site_templates` (`id`, `source`, `property_preprocess`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 0, 0, 'BaseTemplate', 'Template', 0, 0, '', 0, '<!doctype html>\n<html lang=\"en\">\n<head>\n    <title>[[*pagetitle]] - [[++site_name]]</title>\n    <base href=\"[[!++site_url]]\" />\n    <meta charset=\"[[++modx_charset]]\" />\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\" />\n\n    <style type=\"text/css\">\n        body {\n            background-color: #eee;\n            font-family: sans-serif;\n            font-size: 20px;\n            line-height: 1.4em;\n            padding: 0;\n            margin: 0;\n        }\n        body.loaded {\n            font-family: \'Open Sans\', sans-serif;\n        }\n        .container {\n            display: block;\n            max-width: 960px;\n            margin: 2em auto 2em;\n            padding: 2em;\n            background: #fff;\n            border: 1px solid #ddd;\n            border-radius: 3px;\n        }\n        .container > section {\n            height: 100%;\n            width: 60%;\n            display: inline-block;\n            float: left;\n            margin-bottom: 2em;\n        }\n        .container > aside {\n            height: 100%;\n            display: inline-block;\n            width: 30%;\n            border-left: 2px dashed #eee;\n            float: right;\n            padding-left: 1.5em;\n        }\n        .logo {\n            background: url(\'[[++manager_url]]templates/default/images/modx-logo-color.svg\') no-repeat center transparent;\n            width: 220px;\n            height: 85px;\n            background-size: contain;\n            display: block;\n            position: relative;\n            text-indent: -9999px;\n            margin: 2em auto;\n        }\n        h1, h2, h3, h4, h5 {\n            color: #494949;\n            font-family: \'Open Sans\', sans-serif;\n            font-weight: 700;\n        }\n        h1 {\n            font-size: 36px;\n            color: #137899;\n        }\n        h2 {\n            font-size: 29px;\n        }\n        h3 {\n            font-size: 24px;\n        }\n\n        a {\n            color: #0f7096;\n        }\n\n        ul {\n            padding-left: 2em;\n        }\n\n        img {\n            max-width: 100%;\n        }\n\n        .cta-button {\n            display: block;\n            text-align: center;\n            vertical-align: middle;\n            -webkit-transform: translateZ(0);\n            transform: translateZ(0);\n            box-shadow: 0 0 1px rgba(0, 0, 0, 0);\n            -webkit-backface-visibility: hidden;\n            backface-visibility: hidden;\n            -moz-osx-font-smoothing: grayscale;\n            position: relative;\n            overflow: hidden;\n            margin: .2em 0;\n            padding: 1em;\n            cursor: pointer;\n            background: #67a749;\n            text-decoration: none;\n            border-radius: 3px;\n            color: #fff;\n            -webkit-tap-highlight-color: rgba(0,0,0,0);\n        }\n        .cta-button:before {\n            content: \"\";\n            position: absolute;\n            z-index: -1;\n            left: 50%;\n            right: 50%;\n            bottom: 0;\n            background: #137899;\n            height: 5px;\n            -webkit-transition-property: left, right;\n            transition-property: left, right;\n            -webkit-transition-duration: 0.3s;\n            transition-duration: 0.3s;\n            -webkit-transition-timing-function: ease-out;\n            transition-timing-function: ease-out;\n        }\n        .cta-button:hover:before, .cta-button:focus:before, .cta-button:active:before {\n            left: 0;\n            right: 0;\n        }\n\n        .companies {\n            clear: both;\n            display: block;\n            width: 100%;\n            padding: 1em 0 0;\n            border-top: 2px dashed #eee;\n        }\n\n        .companies h3 {\n            text-align: center;\n            margin: 0;\n        }\n\n        .companies ul {\n            margin: 0;\n            padding: 0;\n            list-style: none;\n            text-align: center;\n        }\n\n        .companies ul li {\n            display: inline-block;\n            padding: 0 1em;\n        }\n\n        .companies ul li:first-child {\n            padding-left: 0;\n        }\n\n        .companies ul li:last-child {\n            padding-right: 0;\n        }\n\n        .companies ul li a {\n            display: block;\n            position: relative;\n            text-indent: -99999px;\n            width: 200px;\n            height: 75px;\n            background-repeat: no-repeat;\n            background-size: 200px;\n            background-position: center;\n        }\n\n        .companies ul li.modmore a {\n            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAfQAAABxCAMAAAAUAqFnAAADAFBMVEUgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToB8YRCjAAAA/3RSTlMAAQIDBAUGBwgJCgsMDQ4PEBESExQVFhcYGRobHB0eHyAhIiMkJSYnKCkqKywtLi8wMTIzNDU2Nzg5Ojs8PT4/QEFCQ0RFRkdISUpLTE1O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);\n        }\n\n        .companies ul li.extrasio a {\n            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAAA9CAYAAAAXgFT/AAAoo0lEQVR4AexabZAcRRm+fBxmd2dmdy+3M5sFQ8APxCiISFF+KKhBDZDszGwWyZ1A1JLSglJL/YNllbEKSn9QWohawQ/QBLRELH9oFVh+4EcplkZF4okYDZQhF3M7M7t3iblwd8n4PDvTVtfUZWe93WIP6bfqqZ6d6X777X7ffvrtvhsanCgJh3auFM9+yd3WNN1wwbom9Cxnb1Cs56U63YoSJSuAVYl3/K1EiSIsJc8ZWUZxpEQRlhKVWRGQkUzmLEMzdho5fbee03fg1fCyIS0lirCUKBHHvmKxmDdy2g/zmhG2kQOy+scTxKZEiSIsJYPPrvSsfjUyqxA4BcyQtFD+Vdf1teo+S4kirGUlirDyudwmElYeQDlPwsKx8FFmXoqwlCjCUrJcRBBRBkfCe0lYcXY1m89q708SmxIlirCUDD7TEvdYmnYTSOt2HhHV/ZUSRVhKlqusTHmvJARzc2GFQ/VVDw9dvpolwXedWV3Nm0xYQUxYvuX+zh8ZN/7fCItjuR9xIeKEEHHCuViOsSxspN07nzu+WBWDc7p6AGS1UrJhdVwOlgvoxImN9TNCOLRzPTr/xuGJIdRFm34FPvumzjSwb9ZlyWBcchCzfawnrc/F+uMzxy+DdbggIsKyrwlMp01YATKs6bPqI3wv6sjtxG9Zf9LeDvXSZAUXJ/0qxrx36OLhpcaI8AF91nv9/oscn8IXvcfzwGWFTBbPEkENE12QI206g+WzQmB7xSLrEHSdgo0LgegpK+kxQPvfX+/tm5ZTbYoMq+T8NtywY00/9afVo0+4CDk/vfZFguvkY5m802JN6Om3CEJOI1BB+Knx/PwUjns4PdNLJbr+E1cywEhagVV9ZcNyrg1K7i1YZHf4pn0PsoR7cbTZDdyFTOEzvmV/COXVR0z7RWwnt1/qDjVVqpcbo1vPa1lbzjli1c5tdUT9nKlS7SV+pfrCXhZ5Y9Rd1xh1Xso+qbcTWMdbW3sZbNQXzXo6ZFjziQyLJNJ9hpXIkgCUKZnY4tkMbffW1s+cjudO1OkUXMI2+V0LfsfcXeWV7Ju9knObZ7pf8k3n64wTYI9vOV/zLPvzvunuDCz7Rs+qbvJH6KsEKbD/PsUx9SXGWmmOOpchht8NWz6B4/nngK/SPtpJe2l3UHJuBW4KStUr0+N58BmWhP6KyN4kKWaK642c8Q5DM27Wc/qndU2/y8jpe/gXS5T3oLyD/8CKOmOFbOEiNMkkdA73NasSz0fMrRaC7H0IsAc8094Ph56Ys+phWN4ehuvGgXfFGMO7a8NjVi0EkU3D6Y+h7jcaljvWLNgFWXe35EHw2bNql0Lfo9D3d5T7EGh/8QBfgvjN78Df+Nyw7O0iaLvdhVk2y+6b0dfvoecfHEesd4J9EIn+/gQcAr5zuFwvSYviNYFp38f3XASo+y0BzgvwS3wLZ0zOl+Njbh/wUE+q88243IP33/VYWtVLxXhke4NKfX1guXdicf2UC88vV18uvp+OBPyRzUYD40TfHyOJwGcP4fkRlAdoM/8I0GnuZN0kW2SL13kRKT2G9i2OKyy/ExhLxMk4Y4dEzXETHja7P9BuYNtkZUtWJoVesyqZkKkf/e1CLP8G5b8AZri0ZxEbo3g+injmeOhnbszw03Wt9WNFObsc9P9iaZq2EQRxH/CQkTXuxO9SHy/e5fFl9Kxug5x2gZT2Ak0j/neKgpaX0X5H4Ps8cAD4Pojto7qunydnbD3ZKLICcZQiUfG4AmedZPCJYDtmbaMTp4GngCe8NpG4hxGscwiAmLzGRFA+g/e/QJ3rRT/d3rPQBmEXbLmb/Z+EzjmA5cJpQEJl/wiw/cyAqCPtOCC+t/JXFWHzz9kX9SR1y3gG3xnUtAcZxQ7Z5gBETR1h5XrOBxeCDLbj3Jzi3GJRSAsmAS6cyg3tsllybpBt5X1TlIFuvQhzPBVWdrTnG1nDW0W2lhz75Dr37AZICvV+7KHNtOnGxLKdYF/U8fRMZctoctEvRiQeiAr1fw3M09+0k+M9BZ3x+DzgScYJ/YE4eRo49m9rW9xnVPeEVWf9ORDmj4KSvVkmnV7JKsCpABvMwxjvcfpKkCh90DJdEcsHuSHHdh7gfOJ5QcRzHHvCxl/h+7jc14D/efQKEkdBz5MgGvk1+XNFZtSLfjmrAtE40P2gkdWPSgQlSOkEMIlv+1E+ATyVIDNRD8B3zbh1bSZzZoK4/jeR/3LD9Jc7vjiyIKDFTrMP776AY997Pct5y1TJfpW3zjnfL9c2cvdvWu7WeMf+NgOTC5rByCBh8DJjaJbtDYKEur2YZck7HgTezxjoDDzgBBdnEkFUHkdfc7Sd2U1SV1Lul97zGEC7GazsJ9a3CNxZ2nA8Iu9Pifa8gI+zwk2Yh8cZ/MzOImKPEGdmh4CwGS2YWS4W1pfrRc/2RBBtDH/2zdrbxQKRCQnz8goPbWMSPIgjzBv5fv+LN79AzPGTGy5f41vuh+lD9sm6IosgaTErhl3/xPcmyewgsqbknMm/mWUwK+IY6N95IJ63SWbjIPBboLOG8b8+MGsXiDhh5olj49t4HMTYvsjMmaRBwmJWRoLgvLL9UgmBNkqbz5cD+DKOY2HjIRDt92DfJ7mxMKPGMfbVzExpJ04VF/hm9XWwz0bdj6DczU15Fr6mjvk4nqF3F08PwsYBZliXgQimY1J4vLCmcHaPhLUyxlA2m60go/pKPqcfp/42YuJBeTePhMjqrgQuYaYHnF/I5S6MbDLG0fY2ZFY/AdheIi7jjwVNc1NIK52s4IjXAhN0ChcjncQg592UOMenCReKV3Yv4Z0WAxjByKOicPQ+klu3pMU6YkcHmbwB7Y/GJLEAhIshiMr5o1gAfGamKAJZvpNJpvU+FhLazcRjnmPb0/fhzjF4mY0xaBOZDO/dNN678W5rBndh4pkl74qw438Q+sUC2tcatS8mmXPBsM5/gbZRu7YOXcyJnGHxbpHHYBKQh6POVMl9k/ADSxIFfPGDlsimImI7CTwCfBZE9R6UV0zDZ/RN03QuFGNhX0kimET2hfoPklxIMvQHxtLA/N3O9iC7TLexd5hjNu0PcA5mIz3/ae9cYOSqzjsuwKDau6wJsAZME5UqqqJIlYJE0zZ9iL6rNsB6jYWCAq2apmmC0qYQSNskFPJIk1SEUKklbVOFkjZBRFACgRZCCuUBQoRHqNIQqWhxINjeHc/ugr1r76x3+/0833/96XTv3Hs9987OuB7paPYxc+65557zP9/j+/5fi0OJNYN9KV67DFjxTMzWeidjpD/6dknvWtbmztN+fajoGFl/zCG2WxvfC9wv6xmJq2nAJ3BnHa0FYNnGP1eAgJQTAasbsNq4YeM5Bi5PxsRqu853rF0OMBVV58hrJKAVtZVIfPpakcw2DH+kFGhdYxeltTfshW/jhF7wheib/wssqhTgsEXJpS/XdDhlgoFz6zkGNHchoXGyA1qc5Hba/0wEy6KePrMLXeULO4LWUgCT+PsCal2ThYpdJwGVKKWgAmFXclVmv/ppZPRrY+A+mtxHVHOLGvlRe4jDYtFjUynrhVwdsN7B2HZgUD40/2PnNux/zPui7EYGXiYdXYRjoei1kEJ1n3Z43XLgtIPzBBjw/hiHyaoG77BOtFZYJ6Fvt6mN/yi2Pe+vBSA0DVSRcsIaKLxOkKyYWwNp1jJAfgfztJp0/e3VxpjhHQe44nq2eWAd/EO857UALJNY9lYAWDLeAzK/YIAyESSq/QY419N3h9CF2I5f5frHbhwevhDQA/xoriZeFw38hWxWnOaoJWxwVATEcqQq/hc3CA+x04Yk2I6ThoceJS5bQNe5veAgaKH+zI6e/8aixtVoaG7YgvHNZ4A1dhBEArDEnw/Q+CxqSjwx08VlKtVfcu/he7Gf2BYBSwALKWnVharYsRTQbR4EMthVXOXmOk8BmFLd0pgzvpOGIGRJWAAW6jp/593mZzubym1EE0iby0hAyTqQ21+AkgUErAmXqAArxn4vjpl4AAAA+k7e2uMeYoAmzgPvfz+HR8McCXIAML5O/QlUpzBNuG2QhjMgSn1lYr80NzyTKD1j9uD+AUPmoiH7ImMYVAkL4KG/DRvOHhk+8YVgd5qy/rm/+CoWW8UY9Fl/mY3tLOvzTvpWM9Xy4xHYOoIACxgvUctPJNtM+01y+P24MXi4hxtIuAIKZh+addBiEyFOA2aFbAABXJGWsEO4mN+S5JMhZbW4Jq0xOv7+KNVxTUk79rm9bBRsX6nU1vDmf2uhVllYwi0aDwBdVjqawb4TIt3x2hWVzjpIWGyeBrZFNhUeOza9z9PD0/b3FFC5h6IS7rQZ7AE9NirN+n9mr0tpy13EUAFYEx6HxnpAlUNV9gNugTAZrZGC0tXtADT3zdy+euaWU9R3N4ACIHKg8PMeA2m7zhOsGQ46DPEv+3UA7AEErOPdHrbJ+ngkgNWkqXPnRaA6XM9elLpOPfXUE00qvDWCFuSDAbCO6WRo/lMeLpuaRcLvicrU1YuNFUV1FjvidPskHX9f0SDP+H8Dn9/ldGO8Ug0bGaDFac0GwBEwPbr17IN9nXbJkMI2sOVIFczrB1BvmLeLWK8ErErnEja7zCXMkLBeRk3FViMDMZ43VK4Yi8V72THbeK/a6/Ybm6P5SYtP0hxUETclMMBQb+OfYn3M89xGxz+et0a0nmdHt73Rvr9dgEeslb5XwRg1f7J5bt3ta4twH2LrNB+DBFjxc8RPCawwtBNHVWnsFGAE6DFue2GQl3poP7+E4X4Ve5Ybu10nJyaFxUHDk5e6+nlVBFry3Dwugz72FU7uop6WeEIS6sCGl+qXoxouHgAc7PTG4xgA9LPex1JOHy236zFH26LTYK2SnyNgMY+43jFeN+zAwatIWAQnP4Gtep7a2KXGLC+tORiQXGioRPpMlUGewVZ5M0DAMyMmTWuD906mDUAULzHfQx0mkLXKMcZDHKnYrnUf12Ito87GORkUwBIQ4e0zoNoDeKRqGp+peOyS6N5sILldIRD2M/gTwC1ZGEwyC2POvShIDilYVf2gEfFRwTipedAm0X2ojNFSNqjGKW8/E48m4y+iGnLick1JkIwDqckNvauqggK8pgMeXrXU3d4PgEVQrcIa6M/DUHbLKVA2tzIFZCRT1E2XJgj5GOfvVScy69naNf6QeXdHwj1KDuc+Otmvpi3ej2foHtzHYgBsHawbeDJZU+6EuF/XQy0cEMDSGl5PcGcIXXgQCUhqYJ0sExYR/wcu0bnncOS3w9h8wt0WZAtvxz43tNsiuVLidfeLMNfO8BXp/002GFHiAoESUfBTbfBbRPopoBruA3TY3EQsoyr5Jt+fglXoRwZgVMpHiWaPG6cfAGtnWyWcaHkME8/SQfjybrxXeI9X5tkCJZkLAIsYMUIz6pAkNK8elf6aq7n3EfdVBLA8RGMZwCJuD1te1YAV1imBs1sYp6+j50ht0uE8QICFpDOukIP2+/DW+P+aXur7R0z1vH+Fk374xH9d1XZFcB4SjmKBdp62ZVO9no64ILf8JjFPCtIkGTiCURn1gXivVrZaF1sEpHmXnJblaUzBKoQw8D6jcAF5SvsRsIgit80KyD5CvJQ+V8EBc/U+V9Hs2X2D+68TsCbNHsS9CLAwJej/nVXC8YvkGCGd5rVa1nTIMmjHBs4sn3Epc76bOEb9fwAAa536Ig8wxEfdCYhEVbCWVzCuG0Bug5fer9+0sIqfDxudRX7JEDYJFiAi7dSmsWsiYNRNYrfcDnX4FoDFRiMBNaoFZU45NjteMDZ/qhpmgZbc0YBWNlgphGGbpM8ELKsBrGZFgOXgv4B0ZeEHH+j2ecaxEGuk9B0cJ/Ez9UguY+/kUOF6ZQCLKH8AxA+w2TROrup8WwJ68Wri7GCcqM4yvPc9YMn4PTT0FsVc2fsi3roe8sGvkwHeQike9zFggP/0iguZdx4k6RhsGPKmSE1IH2zdoGWpPB9RLhuAUzbNIaoCpFKwQBV4KODpAFqoj51iuPgf0ez87XYANt0wfSZhvYiK7ff/QzZOdyd9wl5x+ti5hIXAwjB7+thb089UbcPCeywbFqp7BKxOc0u4AalP8wprGB27PtpQ62A1wfhOAjjPMK7dPgcsvnusSzfvldGboE7ipGqxXeV4KIl6l5Rn4PXo6Ojo8MqnWHwsbj+J7mXie+HdiIBEvh2noQPWK7ssJaSsBBM/awv7in15wZ/5TdLZfp+bCXL14mbpR8BqenyUB7/eSxpPncZfgKqWdeH9kubD/Xi4ybfyASuwuRrVkXITsS/hXInXqMpG24nGp98BK/7PjN3/KKAgb7CXJe8jcBJdr+RqglVH1o+YdOwvKEVYDCwKuIl6OdkCGWKD8PK5IXyxkdixygIgi5kUDO4rqoaN8mDVksoIy4TGhHTaj4DVdJVQIQdN45tKbZb99JL3kRbptaVGEYwK5cy8AzBMC0UAS+uqYRIgByFrG88w+ZVK8Uk/3y1l83IOF1kfA9YJntx8hkkzjzlILFFxp4dglRr+N5G7qLHgPTzEDWRGWTfOtgiAk8jMohExW9WNfmP0O+kSuII90ZqFednh2kboP0TBvyS6knzAyo7ZgsQtBcV+BSyScq0vZ14YvyICf/Ugky1ZRB73SD5YFBxISsZe5mEZCxw+RQBL14/hBqiFCoaGXcP6/TxhO1nPRuPttj7BIAEWLAvmofuBg8ROWBb0/14DFi8bwz/JjkXuoi+K886C9sRVsR3kEa7VrDcs4RVwcYP5tVEKO1wwIBYHCWlWUfAFAYvWdLsVPGAwU1Zm+6g/cFRxWAtNM1hHEK/bHqkDqewhEyl5YIpl3Db+h2SLI0SDZwExYQSswjFSRoWElCZJi34xjjftIIJFFA9ikXtbDoyvRwpgCSQg5CNYNNivfjwFrLWyY5mEddvBP0Kvgcjsp9d/k7WvBa7Ym1pbOGXhRGIhsTBNTb2hG7bJIAVBQfxF+nSJaamgdNXyRf0qYRexz34HLMjx3KM20zSK4rqCf1N65CLPBKmJfL7m5vPeQGYFoQB271uwo2IUJ4+14bmh3IPbnqYJLgaEUxtWGbsmQcI4l/CgKlCZnzmYCOWB5hsDP2wTHFB8t1NcWgSvwQWsYHDfMPyeQ1HmI98MwaLHr0WpMjyUjMfv5WH+Jt6nlnuUGiSLkv5ggHErKRe9ag0ohA0wGYsbi/++KqZJAhuhbXHVcDEPtBSTBYdWjLwHQAYBsAK9zK5p8+jV5RWT6pT+ncBfOL08v+5yjObQxUBlA20P4GA//8DZPbG1rZAI0vhZhwWSNnZV64M4rBwvYT5ozUKxzZqza3MNrq1wGhpAhnEeeyrEfuQuNo1eG34wvI4RnOI8iCZnQAFLBvcPCSBM2vpaAKp1a3EvNobzFY8FY8TB/3K6WeOUQVQOlLG897BxTTf88zN5jNVS445/ipQJAVaOLWvRVchARayTdKAAawcEfnUAVgpUEA7C5e7Mo88CMEgwgI/WFI1nzdj4u/LuuHckKLzD1p6xdhvSENK/IutxxPC9Ri5g5c+3Ql/sugDpUwAUkhzgJSpsNA4avzM+A7kmwaeAHWOjYAbB1TkA3v+AFSQayxe8luhytxvdVL+HMDfE4pdtHAtuw9qrzXIRQOUbdM652V9o0/nSxsI7Lf49/i3vM6GfjL7xbvnPs3b9z3QTnBnjsogzwzvkp+diR7BKCP+YC0BAG2SwAGt8x3QErBrACgZVG/OnuSYSi6SkQKU9D3DaAQTl8yMknGOrbKt/4x/FuWLP5yL4unCSqGJQfEGhjOSdG4dVok6BXsT7wXtv1/8wPGku/TVFSCjp64CDmEAWhgqAmftAio2HI+rxgALWJ0L+4BfXGLDwFP6ic8QDoAdWAIvN4mycz8K5TYgBhHoUbehlg3aZRsQweXrxJg5XusILimfJbVitEjYseLqV1nGbAIFNMhiAdXEtgMWGj0ACxzybGInJo+tfRf02YPk7Cyx9P/xirClsQlTBKTM/4keDj60KwIp9Z0nMUAxBaePX/Jy93+2mihmekexetAV/xyEAnxuVh+I8DSBgfUwSFhztawxY3MsvwW7qgDWvNIttqIMq4qmJHuRXvAdsIGluYYmwhkVxdVFQI8Yz/X8ELO5b44I1Vtz8nl+5w+btxhkCgGFTyHuFsvBpqIOcPRw6+YBVTWl63rM+gw0UKQqGVWxxXs5tzmmYVDBDifPX6lkgaQ0SYBlI/Vkwut/Cd9bShgVTA5KV+LH8lNx6HhuZhcdJAk1LWiZ9bVq6gMrToLB5YGVANclP0ckm6sO2QTKrKtCwkQYasLqnUfmUPG2YE2wj3429KatwqdZRjN1KW3Y8XX2Ala4bgJJx5nn/kMKoCkUUPTUJ5twONxt43SN7bl8DVgSI4eH3BS6qf4cJdC29hAaa79R47L1d6wDWAQyefkK8pDisnkbqhk0RF3U3hnY8VWx+v6+FRBUsDVqohtbfg9hYtFn6FbDg41fVnCoAK0b2s1EpCLHXWWnJkoh9My/dr536Aau0BJZR3Rm7W9PCcTgY3Q7s0tbYxwaIwG9dYEkQrcy3qei8lnFYdh9XJawR7Tp2sIz6xn5tymlTBBqDqgoSyXwgMJAGLvbSTfFbSKEYmOOG6mcJqyrAivUMKWUWSB7v47pp3UO91hKwBDJVhxvIcB/zMoMnc2rmEP/YDHtJ4xyASHfy936OIqh8FxWM/L21jHSn5L0i3U09bGea4JqFbMyZGiDqf1ftgFVD4mgcL6EaAE2Mbs8Gq7HI1tDRa0iVa96RMqIUeiQDlqSMwFuGipwcbgKFeg4ggkp5fhj28wGrd0nI9Mm8x6rSpP0AWgvt/XRjtP/1O2AhUSFZOUgsUB0nBZFeUswQLBqKrf7xysYhSXhR7trIRd0DwOL6wZt3Gbzq00YQR55XmRw4ncZEUFsfzy9EquQO/O4AhXNcZbM6BNYGl9qeo8y7Ns2RDFhxDJQ/mzvE6nEP/6trM8Zn3rTrYi9zep/MSHe+IwDF1EEhCOib8XrXClwBtHA8zB+ao+9Qo0Dz3+8qIe/wqIvt037+fGJb6sUrFm5tOGBN4zFc+QSRxIr4pSgEVLI9p5chqx5WyTMuYQwLDYtI1ilbzis4/iVAJYvjSn9TgU5ivsz9/iQno7MyZEpkCnUgHod0n3gP3QJWcwAAy/r7OpIDa8UA9qPxM3VJVxxEhJUoHqpTLmEskoG9ke/wTKm/WOdY4/wT00Ucl5MJNGbsd421z/mwZDf6oAzdkOgNDQ2dviZ8WMMjfxQ8lk+bunrqymmDqI9hWXE0ELT1hMAvSkZGBgcg+IN+aLsWJf8vXO5rjHJfipxezGNh8BP7JmKEkBiKcLrH2oaUjYrjOJIlrGU7xDjMVK+S5OQ6QUDjJSYP3njFPxFTtz0HsHjxPFWKH8kwBcK6xos0R3iQ14XcT70AXbePASu1Y+1wT+Fe+N175ikMvO54KRP7lU+il2Ynahc1CoMhBuseqIXp6X3HvJ+iBOylgJbLe3TK1jfh5ZwvUDWHheQq44siCuQkJMnW1cOOoKXvkw8HYV4VVXOsz74GLBKWUXFUSg07Xp002ppPUqM0/1w7pZfJViPH/5pwFg+IvoP+6oyNEn8XjKNNHX6sGWptRhtr3wJWAIvhE78evHM3x8/0JCVnaOhX5a2k7P5K5Zy0PLsq5JIiQ+R5r4pQEFmMhwWwQuUiNqzIZojMqCRtLxZQBcnMlxQ2ZeWjdB3xJrmUmakaNhLKZIBWlMl4jrpVCalO3I+ARTgH1Z1Vt5EKMTF+qQ6w4t2u9bWl9jzvzaOXielYAMW0G7+hkXk1hOvUCViYUyjMAWA1WUfwug0GYOkzJB3/XigCsZs+a1cLAxgStBpShB6wP7G/0lpzY29B557zar7k8tV5gnLdWASV6/pmeJzNUaYcORHIXi49VxWkcZ1Y/BPyQBWwwAvlaun+TMAKgOYesw9GEC17/xiH2VwO2E+xIfsNsKCFobQZY0RyAezrUgk1VtJ67B7mHHTm8gArzv+UsUVQn2De17M97z+pa7xhLKoe/nBbJRxfaJiEOAgqYVT7sBfZdx+lj8DccFyNquGxtMDQsKACrkkRjCQ3zEjO2hHMXnhz04Vvq62Qqm8wagmS2Q/g0HBhx4WVpwpCY8JYAbxmVAWzVTneJwj4i/emdza4AUhzX75qSFvguhju4VAqY/eLFMt4suiv1QbS72FT61Oj++2sD1env1AHAHAfOkQ4PHgOnhg/Awh08hLGsfAM7Dv/pgIUJDXn17vsetzil3vJVcIGrA4a6wCVqhcX1ZIXNF2GKytcq2rwVeXnUbNdPaV8RkrXB6nO11gQkzFwMtnKkSK7Hqmj6tpqBBmqWjNqhgommKT0ZJFFJbDCGyRa5RKqICffe1JwSSv4OmCp346gteSVfrSRUA/KFICdtqRZJAiXsCYnR88/OzyXY/oFsAyUP8mzYm4ohw+wVik9xE1NiX2oaFCR7X7+ytoU9DSAGBJ4kUKqOAZUxs0l8M/y96pBK8bjUd+T67EmKNmGEb7U/Af66bUBrBjiMHKrq4W0HdQHDJ+p5JCKaiaUNgJIClCEUIbjMhclUcWI/CFi9yv8X5uiG/WQfugj6vpcgwfsIDAeN3Oxgp7ZNqdUFWxJFUyAL90wGE6J4mbRRS74PDWzgRpdIgqee4kHxYKDJBWLY0n5fgscRQJnjTD/EQAqjGW6lIMCKQUvGyozzwEJC6N7XsVtjRebIvxZ4rRCRYOzKz7vKkwbsmHCoAod0bwKgBjQlpFCI1DFA7XHgBUlnjdbH/8TQOu7Fubwk6G/dV1KhSeExOvPjEia433D8NXxsx1jmewh/y0bkIdsi5OJ/zJubVHDshDKRqHHxQENsy28u2R3AkiK8F/F05PseQyxrr62Gp1BRdxWE3gTOy1W/Z1EZ2x6LLwioQ6wkwJcU8F7lrdIuU9tVjbW/kPqy/18X9Ko8tjSXMte5RJyvaCmPcqceBbBzO5NW38jzF2pdSFGhgh2Uyb9ElqDNEX8lSiQmHsHsKdfseBgjSeLKkZzSzyfAW1zzrncUd9Jo4lj1vfLgni83z2j206HvtmA3A39Y9vL8KilQJVer8eAdUywKb0daQc1TaBF6EMCbmX7Pl7987OpgTfQd0i8/ufw/+NyNxC8RVAkA1ozDloYOwnuTL05q20mfs9KGMWQyqIDrKY9ux16ZE6pQqqgSNcs1mVBqmAnu1X0Chp/Uzy5CkR2f3g+GPNz2B4WxHixe/MFry8bQ4Y3iWuJ/RVa4YIPv1YJK5V4kXZYE9ZcMh5/mVp/cUyrMTTECjr6f7wGFC7w+DPPDlYPwY2mazbMztnyfFdU6KxxpmNWIRIR8gWiymuXreJ5/HyRcdPicwsVph9nPgSMcIXFcRRZBwgDZHs02GujY3dCXx4/Uzdg5bAmzEf10JgdLouf8Z/XcR1vx6pJGkslspM2bDjb+voGfYZg1TtOPvnkkcJhFAIFUmWaXsVGNi02AGkSSCllFzxGaTL7G7bg6EtsjgRuoh5GNaqAKvg5hR8EBtGl2EJ5eafOGbsl3mMRWwrjohCpVMP0GvG6npPY4rN4PYuqShGE7fuPOWEgjUPiLvLTmG/sNkgUABPgw3wUoEiuhV6GWodkE4j3HomIpHBoksv2S9Umit5CHkmfKkfP3/UZKlcTmjDvgIMdi6R9xkQQKbZQHXistQxP9LsVHE0fNOyO2LmY+5LDVgT+z1KNh5Ac2WHpl4Ou4FqLkjiazXsBO9YAjf02oyrskqoLABaxSxUAVvwOTA4XGqjsUtoOBnlr95gEdgGxWyX6xAv5Jkts/qSpfi+j/oU+b4pgVephaLItAO/POdVYTHJpE3AJmE2brQWvCMZXAG7CjOBIZ2wucgFnNm35NYyn1sfdePJYcOLMZpFjoOQaeWAVY32oAoOKxoOF0sNBqcV72ki3cWCbwE5U1CAeQQugZUG6oXmuSb8Z15PqyNhwZ0ejbJF7I7QEsGGxAuqqp4hXk4BSVEUcIZy+LOQAiHhdo0r4vHupfjhZA4Ef4ADnE3MrGyTrgmo9lM0CZGEZxcWPFAPLA+tiZuPFr5sxIJo0iYSwCA4rG+P39ziPP/Nm/d5AkGp8Bv4cvupgttTOZBjfDnAR8GzXe2DSGHLjfKSAobWDF5Z1HFLRWkSmY9inaAbzR8kvxq31fPAwOfmC1zPnxMw1rDAFBxnrYt4rUnu9gFfMcfSueO0yB0E4HOcBV54hRVBif3mARS3BUDH5+a4AK/kedQtNevsPefEU2Gmg85+WSnON/f+3DIx+YmRk5GTzNKwHyODUWr9+/ZnG/PDTVqrr3TamL1t7URKVYr2s3yu7IgzkwUeRlwBJHq6nOwh0AI1JyoMhHZC/xanlxP4TAB0Lecm/wzt0snBn77Jg0QiQRR4q/OGctKg7c4GqNm2AIv8XrzjAGlXBshIFwCpeb4Fu1rW5rvOp76HQQTwdi6hc8JHZpv8XwJHr0FfkSSfXkuuw+SIQrTgz2qD3yvLmS5cJF4ErPQBal68kWPe08Q9wLR1CbFoH2RZ/J0kcm5fWBV4zaiZi+wLkWBMAFXOKGiT7X3xWvIeiuE8wBy6Jtdvm3+F6y0hcebFZvLB/uddxJ/PIGGiMAZAA5Bk3MWcaN7mmJNTb2HdhYlBxDa7veauNppH5kfUQr1k2yRvTiEvYS7LtRgBkznMAiyjxXwEMThreCBDssNqCZ0Xg6Ra0kIAMXK6wvr8P2KipUARgRGiCvT9kQPYg+Yj28/esTQmkQlDonAHeVwGzSqLpI2ixECg42TB1h8rCiL6qiJLd3gFIyf7zXYjOGsYCGh8mYFX0gSKteZGM/yJNhPeM9hyNAhdNsU+UjhdS5LoCSpEGxrYThsE1ctqzACvME9xrUdWAFlVoijQ02yWpHsM25pvmFTYQxuS0ND/vsybZwgBqn5tkwxkAniPJspYiFKau2lg/QbUbDiPsigFkQ4vVkS6WOWAnJeWQbJDQ45qIcxHAfLN9/kokTHjjORh5N6nnesJhNLa80IOgOl9tfTyCtM94ssatsWtNA1gkONt9P8AzIkg1a37KzOfMGVvPYZ+IOQWnAyqvxl+QVvinoIihgrO9323l5zdXxLZwbAQuk9x+DMoXa/fbdWYFQid1aMEG9ryN82+oikO/lab+rEZXTNqOc07ZAx+72R7aNxGr2cwuXT3SbFdHuRH7BJ4k4lG6KYlEoOWkeWKoDcfiRGxX20lLfkcdoUny6IZyWTFfXD9eS+9pY3xcmw0GoHRT1YXfie/CKA1VCXYivKz/R8UL1CqoVHityBGtK2AxHSf3zGFERDll/WF2QDqx96cAcFRaHDeEycDGSS0BJGaeS3r/ncBc4IvZgWsCdGXmNz0gUfeQhL0yz3WkAgH0Hv/1rIPio5g1sE3a2P/CJMGLp1APLfwlZ6+UflH1mqR65kf3VjKU6AQCMGFZMPXslIqDPI9JQWV0dHTYJKS3ou5RTn7j8Im3w2NlPz9tYPaMgdMT9vO99v4lOOPxOsK7lUpwtIqpYrNJ2tDz2VRskJdts/AgtaH6oegk1+z2/nv5/aKl3um3PBFi/YVUJfGx4QAW1sXMGy5+3bKtk+wxak3kg3kVYEvL+h/OlpcYd1jPhJfkV75eWxLLzCDjip9/TgzWOuxWgCUpPl49en0HqW1d5eNLT6iyCyd+r+vAU1zPBRufvbXSRV7u2oy3m7nWNaO7Xa3TAs8ppFBbqfqy19I4cTqUXQOak27uU9enz8Ndi1WBaIwzjOPrQgqiVTa2HMApG5V/XE1Alb+hHkg2U/q3aDs4+jqyX9pwRdZFeZCov9hEzrh7MvYBradwTBpvFdS89G9HseDo6+jr6OvIf/0vj9NbYMKQ+00AAAAASUVORK5CYII=);\n        }\n        .companies ul li.modstore a {\n            background-image: url(data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABQAAD/4QMxaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzA2NyA3OS4xNTc3NDcsIDIwMTUvMDMvMzAtMjM6NDA6NDIgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE1IChNYWNpbnRvc2gpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkM1OTk4RURBQjNCNTExRTVBNzdGRjlFOTdFNjM1MzEwIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkM1OTk4RURCQjNCNTExRTVBNzdGRjlFOTdFNjM1MzEwIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6RjlCOUZEN0ZCM0IwMTFFNUE3N0ZGOUU5N0U2MzUzMTAiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6RjlCOUZEODBCM0IwMTFFNUE3N0ZGOUU5N0U2MzUzMTAiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/7gAOQWRvYmUAZMAAAAAB/9sAhAACAgICAgICAgICAwIC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);\n        }\n\n        .companies ul li.modxextras a {\n            background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyMjkuNDkgNjEuNTQiPjxkZWZzPjxzdHlsZT4uY2xzLTF7ZmlsbDojMDBiNWRlO30uY2xzLTJ7ZmlsbDojMDBkZWNjO30uY2xzLTN7ZmlsbDojZmY1NTI5O30uY2xzLTR7ZmlsbDojZmY5NjQwO30uY2xzLTV7ZmlsbDojMTAyYzUzO308L3N0eWxlPjwvZGVmcz48ZyBpZD0iTGF5ZXJfMiIgZGF0YS1uYW1lPSJMYXllciAyIj48ZyBpZD0iYnJhbmRfZ3VpZGVzIiBkYXRhLW5hbWU9ImJyYW5kIGd1aWRlcyI+PGcgaWQ9ImxvZ29fb25fbGlnaHQiIGRhdGEtbmFtZT0ibG9nbyBvbiBsaWdodCI+PHBvbHlnb24gY2xhc3M9ImNscy0xIiBwb2ludHM9IjU5LjI5IDUuOTUgMjkuNTggNS45NSAyNS41NiAxMi40IDQ2Ljk0IDI1LjcgNDYuOTQgMjUuNyA0Ni45NCAyNS43MSA1OS4yOSA1Ljk1Ii8+PHBvbHlnb24gY2xhc3M9ImNscy0yIiBwb2ludHM9IjI1LjU2IDEyLjQgNS42MiAwIDUuNjIgMjkuNzEgMTIuNDkgMzMuNzIgNDYuOTQgMjUuNyA0Ni45NCAyNS43IDI1LjU2IDEyLjQiLz48cG9seWdvbiBjbGFzcz0iY2xzLTMiIHBvaW50cz0iNDcuMDYgMjcuODIgNDcuMDYgMjcuODIgNDcuMDcgMjcuODIgNDcuMDYgMjcuODIiLz48cG9seWdvbiBjbGFzcz0iY2xzLTMiIHBvaW50cz0iNTMuNDcgMzEuODMgNDcuMDcgMjcuODIgMzMuNjUgNDkuMTUgNTMuNDcgNjEuNTQgNTMuNDcgMzEuODMiLz48cG9seWdvbiBjbGFzcz0iY2xzLTQiIHBvaW50cz0iNDcuMDcgMjcuODIgNDcuMDcgMjcuODIgNDcuMDYgMjcuODIgMTIuMzUgMzUuOTggMCA1NS40MSAyOS43MSA1NS40MSAzMy42NSA0OS4xNSA0Ny4wNyAyNy44MiA0Ny4wNyAyNy44MiIvPjxwYXRoIGNsYXNzPSJjbHMtNSIgZD0iTTEwNy42Niw0Ny44bDAtMTguODRMOTguMzcsNDQuNDhIOTUuMUw4NS45LDI5LjM3VjQ3LjhINzkuMDhWMTYuNGg2TDk2Ljg1LDM1LjkyLDEwOC40MiwxNi40aDZsLjA5LDMxLjRaIi8+PHBhdGggY2xhc3M9ImNscy01IiBkPSJNMTIxLjgyLDMyLjFjMC05LjMzLDcuMjctMTYuMjQsMTcuMTgtMTYuMjRzMTcuMTgsNi44NywxNy4xOCwxNi4yNFMxNDguODcsNDguMzQsMTM5LDQ4LjM0LDEyMS44Miw0MS40MywxMjEuODIsMzIuMVptMjcsMGMwLTYtNC4yMi0xMC05LjgzLTEwcy05LjgyLDQuMDktOS44MiwxMC4wNSw0LjIxLDEwLDkuODIsMTBTMTQ4LjgzLDM4LjA3LDE0OC44MywzMi4xWiIvPjxwYXRoIGNsYXNzPSJjbHMtNSIgZD0iTTE2My41OSwxNi40aDE0LjI2YzEwLjI3LDAsMTcuMzIsNi4xOSwxNy4zMiwxNS43cy03LDE1LjctMTcuMzIsMTUuN0gxNjMuNTlabTEzLjksMjUuNDRjNi4yNCwwLDEwLjMyLTMuNzMsMTAuMzItOS43NHMtNC4wOC05LjczLTEwLjMyLTkuNzNoLTYuNjRWNDEuODRaIi8+PHBhdGggY2xhc3M9ImNscy01IiBkPSJNMjIxLjEsNDcuOGwtNy41OC0xMC45LTcuNDUsMTAuOWgtOC4zNGwxMS42MS0xNi0xMS0xNS40M2g4LjI1bDcuMjIsMTAuMTgsNy4wOS0xMC4xOGg3Ljg1TDIxNy43OCwzMS41NiwyMjkuNDksNDcuOFoiLz48L2c+PC9nPjwvZz48L3N2Zz4=);\n        }\n\n        .disclaimer {\n            max-width: 960px;\n            display: block;\n            margin: 0 auto;\n            text-align: center;\n            color: #333;\n            font-size: .6em;\n        }\n\n        @media (min-width: 768px) and (max-width: 991px)  {\n            .container {\n                padding: 1em;\n                border: 0;\n                border-radius: 0;\n            }\n        }\n\n        @media (max-width: 767px)  {\n            body {\n                font-size: 16px;\n            }\n            .container {\n                padding: 1em;\n                margin: 0 0 1em;\n                border: 0;\n                border-radius: 0;\n            }\n            .container > section, .container > aside {\n                float: none;\n                width: 100%;\n            }\n            .container aside {\n                border: 0;\n                padding: 0;\n            }\n            .logo {\n                width: 100%;\n                height: 48px;\n            }\n            h1 {\n                font-size: 24px;\n            }\n            h2 {\n                font-size: 19px;\n            }\n            h3 {\n                font-size: 16px;\n            }\n            .companys ul li {\n                display: block;\n            }\n        }\n\n    </style>\n</head>\n<body>\n\n<a href=\"http://www.modx.com\" title=\"Modx\" class=\"logo\" target=\"_blank\">MODX</a>\n\n<div class=\"container\">\n    <div>\n    <section>\n        <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>\n        [[*content]]\n    </section>\n</div>\n    <br />\n    \n</div>\n<div>\n    <footer class=\"disclaimer\">\n    <p>&copy; 2005-present the <a href=\"http://www.modx.com/\" target=\"_blank\">MODX</a> Content Management Framework (CMF) project. All rights reserved. MODX is licensed under the GNU&nbsp;GPL.</p>\n</footer>\n</div>\n\n<script>\n    // Load the Open Sans font\n    try {\n        document.addEventListener(\"DOMContentLoaded\", function() { // prevent a Flash Of Unstyled Text (FOUT)\n            document.querySelector(\'head\').innerHTML += \"<link href=\'https://fonts.googleapis.com/css?family=Open+Sans:400,700&display=swap\' rel=\'stylesheet\' type=\'text/css\'>\";\n            document.body.classList.add(\'loaded\');\n        });\n    } catch (e) { }\n\n    // Shuffle the vendors to prevent favoritism of one vendor over the other\n    // with thanks to http://james.padolsey.com/javascript/shuffling-the-dom/\n    function shuffle(elems) {\n        var allElems = (function(){\n            var ret = [], l = elems.length;\n            while (l--) {\n                if (elems[l].className !== \'modxextras\') {\n                    ret[ret.length] = elems[l];\n                }\n            }\n            return ret;\n        })();\n\n        var shuffled = (function(){\n            var l = allElems.length, ret = [];\n            while (l--) {\n                var random = Math.floor(Math.random() * allElems.length),\n                        randEl = allElems[random].cloneNode(true);\n                allElems.splice(random, 1);\n                ret[ret.length] = randEl;\n            }\n            return ret;\n        })(), l = elems.length;\n\n        // To make sure the MODX logo stays #1, we lower the count by one here (shuffling 3 instead of 4 items)\n        // and refer to elems[l+1] in the loop below. This matches because allElems was also filtered to not include\n        // the official MODX logo.\n        l--;\n        while (l--) {\n            elems[l+1].parentNode.insertBefore(shuffled[l], elems[l+1].nextSibling);\n            elems[l+1].parentNode.removeChild(elems[l+1]);\n        }\n    }\n    shuffle(document.querySelectorAll(\'.companies li\'));\n</script>\n\n</body>\n</html>\n', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvars`
--

CREATE TABLE `modx_site_tmplvars` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `elements` text DEFAULT NULL,
  `rank` int(11) NOT NULL DEFAULT 0,
  `display` varchar(20) NOT NULL DEFAULT '',
  `default_text` mediumtext DEFAULT NULL,
  `properties` text DEFAULT NULL,
  `input_properties` text DEFAULT NULL,
  `output_properties` text DEFAULT NULL,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvar_access`
--

CREATE TABLE `modx_site_tmplvar_access` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT 0,
  `documentgroup` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvar_contentvalues`
--

CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT 0,
  `contentid` int(10) NOT NULL DEFAULT 0,
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvar_templates`
--

CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT 0,
  `templateid` int(11) NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_system_eventnames`
--

CREATE TABLE `modx_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `groupname` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_system_eventnames`
--

INSERT INTO `modx_system_eventnames` (`name`, `service`, `groupname`) VALUES
('OnBeforeCacheUpdate', 4, 'System'),
('OnBeforeChunkFormDelete', 1, 'Chunks'),
('OnBeforeChunkFormSave', 1, 'Chunks'),
('OnBeforeDocFormDelete', 1, 'Resources'),
('OnBeforeDocFormSave', 1, 'Resources'),
('OnBeforeEmptyTrash', 1, 'Resources'),
('OnBeforeManagerLogin', 2, 'Security'),
('OnBeforeManagerLogout', 2, 'Security'),
('OnBeforeManagerPageInit', 2, 'System'),
('OnBeforePluginFormDelete', 1, 'Plugins'),
('OnBeforePluginFormSave', 1, 'Plugins'),
('OnBeforeRegisterClientScripts', 5, 'System'),
('OnBeforeSaveWebPageCache', 4, 'System'),
('OnBeforeSnipFormDelete', 1, 'Snippets'),
('OnBeforeSnipFormSave', 1, 'Snippets'),
('OnBeforeTempFormDelete', 1, 'Templates'),
('OnBeforeTempFormSave', 1, 'Templates'),
('OnBeforeTVFormDelete', 1, 'Template Variables'),
('OnBeforeTVFormSave', 1, 'Template Variables'),
('OnBeforeUserActivate', 1, 'Users'),
('OnBeforeUserDeactivate', 1, 'Users'),
('OnBeforeUserDuplicate', 1, 'Users'),
('OnBeforeUserFormDelete', 1, 'Users'),
('OnBeforeUserFormSave', 1, 'Users'),
('OnBeforeUserGroupFormRemove', 1, 'User Groups'),
('OnBeforeUserGroupFormSave', 1, 'User Groups'),
('OnBeforeWebLogin', 3, 'Security'),
('OnBeforeWebLogout', 3, 'Security'),
('OnCacheUpdate', 4, 'System'),
('OnCategoryBeforeRemove', 1, 'Categories'),
('OnCategoryBeforeSave', 1, 'Categories'),
('OnCategoryRemove', 1, 'Categories'),
('OnCategorySave', 1, 'Categories'),
('OnChunkBeforeRemove', 1, 'Chunks'),
('OnChunkBeforeSave', 1, 'Chunks'),
('OnChunkFormDelete', 1, 'Chunks'),
('OnChunkFormPrerender', 1, 'Chunks'),
('OnChunkFormRender', 1, 'Chunks'),
('OnChunkFormSave', 1, 'Chunks'),
('OnChunkRemove', 1, 'Chunks'),
('OnChunkSave', 1, 'Chunks'),
('OnContextBeforeRemove', 1, 'Contexts'),
('OnContextBeforeSave', 1, 'Contexts'),
('OnContextFormPrerender', 2, 'Contexts'),
('OnContextFormRender', 2, 'Contexts'),
('OnContextRemove', 1, 'Contexts'),
('OnContextSave', 1, 'Contexts'),
('OnDocFormDelete', 1, 'Resources'),
('OnDocFormPrerender', 1, 'Resources'),
('OnDocFormRender', 1, 'Resources'),
('OnDocFormSave', 1, 'Resources'),
('OnDocPublished', 5, 'Resources'),
('OnDocUnPublished', 5, 'Resources'),
('OnElementNotFound', 1, 'System'),
('OnEmptyTrash', 1, 'Resources'),
('OnFileCreateFormPrerender', 1, 'System'),
('OnFileEditFormPrerender', 1, 'System'),
('OnFileManagerBeforeUpload', 1, 'System'),
('OnFileManagerDirCreate', 1, 'System'),
('OnFileManagerDirRemove', 1, 'System'),
('OnFileManagerDirRename', 1, 'System'),
('OnFileManagerFileCreate', 1, 'System'),
('OnFileManagerFileRemove', 1, 'System'),
('OnFileManagerFileRename', 1, 'System'),
('OnFileManagerFileUpdate', 1, 'System'),
('OnFileManagerMoveObject', 1, 'System'),
('OnFileManagerUpload', 1, 'System'),
('OnHandleRequest', 5, 'System'),
('OnInitCulture', 1, 'Internationalization'),
('OnLoadWebDocument', 5, 'System'),
('OnLoadWebPageCache', 4, 'System'),
('OnManagerAuthentication', 2, 'Security'),
('OnManagerLogin', 2, 'Security'),
('OnManagerLoginFormPrerender', 2, 'Security'),
('OnManagerLoginFormRender', 2, 'Security'),
('OnManagerLogout', 2, 'Security'),
('OnManagerPageAfterRender', 2, 'System'),
('OnManagerPageBeforeRender', 2, 'System'),
('OnManagerPageInit', 2, 'System'),
('OnMediaSourceBeforeFormDelete', 1, 'Media Sources'),
('OnMediaSourceBeforeFormSave', 1, 'Media Sources'),
('OnMediaSourceDuplicate', 1, 'Media Sources'),
('OnMediaSourceFormDelete', 1, 'Media Sources'),
('OnMediaSourceFormSave', 1, 'Media Sources'),
('OnMediaSourceGetProperties', 1, 'Media Sources'),
('OnMODXInit', 5, 'System'),
('OnPackageInstall', 2, 'Package Manager'),
('OnPackageRemove', 2, 'Package Manager'),
('OnPackageUninstall', 2, 'Package Manager'),
('OnPageNotFound', 1, 'System'),
('OnPageUnauthorized', 1, 'Security'),
('OnParseDocument', 5, 'System'),
('OnPluginBeforeRemove', 1, 'Plugins'),
('OnPluginBeforeSave', 1, 'Plugins'),
('OnPluginEventBeforeRemove', 1, 'Plugin Events'),
('OnPluginEventBeforeSave', 1, 'Plugin Events'),
('OnPluginEventRemove', 1, 'Plugin Events'),
('OnPluginEventSave', 1, 'Plugin Events'),
('OnPluginFormDelete', 1, 'Plugins'),
('OnPluginFormPrerender', 1, 'Plugins'),
('OnPluginFormRender', 1, 'Plugins'),
('OnPluginFormSave', 1, 'Plugins'),
('OnPluginRemove', 1, 'Plugins'),
('OnPluginSave', 1, 'Plugins'),
('OnPropertySetBeforeRemove', 1, 'Property Sets'),
('OnPropertySetBeforeSave', 1, 'Property Sets'),
('OnPropertySetRemove', 1, 'Property Sets'),
('OnPropertySetSave', 1, 'Property Sets'),
('OnResourceAddToResourceGroup', 1, 'Resources'),
('OnResourceAutoPublish', 1, 'Resources'),
('OnResourceBeforeSort', 1, 'Resources'),
('OnResourceCacheUpdate', 1, 'Resources'),
('OnResourceDelete', 1, 'Resources'),
('OnResourceDuplicate', 1, 'Resources'),
('OnResourceGroupBeforeRemove', 1, 'Security'),
('OnResourceGroupBeforeSave', 1, 'Security'),
('OnResourceGroupRemove', 1, 'Security'),
('OnResourceGroupSave', 1, 'Security'),
('OnResourceRemoveFromResourceGroup', 1, 'Resources'),
('OnResourceSort', 1, 'Resources'),
('OnResourceToolbarLoad', 1, 'Resources'),
('OnResourceTVFormPrerender', 1, 'Resources'),
('OnResourceTVFormRender', 1, 'Resources'),
('OnResourceUndelete', 1, 'Resources'),
('OnRichTextBrowserInit', 1, 'RichText Editor'),
('OnRichTextEditorInit', 1, 'RichText Editor'),
('OnRichTextEditorRegister', 1, 'RichText Editor'),
('OnSiteRefresh', 1, 'System'),
('OnSiteSettingsRender', 1, 'Settings'),
('OnSnipFormDelete', 1, 'Snippets'),
('OnSnipFormPrerender', 1, 'Snippets'),
('OnSnipFormRender', 1, 'Snippets'),
('OnSnipFormSave', 1, 'Snippets'),
('OnSnippetBeforeRemove', 1, 'Snippets'),
('OnSnippetBeforeSave', 1, 'Snippets'),
('OnSnippetRemove', 1, 'Snippets'),
('OnSnippetSave', 1, 'Snippets'),
('OnTempFormDelete', 1, 'Templates'),
('OnTempFormPrerender', 1, 'Templates'),
('OnTempFormRender', 1, 'Templates'),
('OnTempFormSave', 1, 'Templates'),
('OnTemplateBeforeRemove', 1, 'Templates'),
('OnTemplateBeforeSave', 1, 'Templates'),
('OnTemplateRemove', 1, 'Templates'),
('OnTemplateSave', 1, 'Templates'),
('OnTemplateVarBeforeRemove', 1, 'Template Variables'),
('OnTemplateVarBeforeSave', 1, 'Template Variables'),
('OnTemplateVarRemove', 1, 'Template Variables'),
('OnTemplateVarSave', 1, 'Template Variables'),
('OnTVFormDelete', 1, 'Template Variables'),
('OnTVFormPrerender', 1, 'Template Variables'),
('OnTVFormRender', 1, 'Template Variables'),
('OnTVFormSave', 1, 'Template Variables'),
('OnTVInputPropertiesList', 1, 'Template Variables'),
('OnTVInputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderPropertiesList', 1, 'Template Variables'),
('OnUserActivate', 1, 'Users'),
('OnUserAddToGroup', 1, 'User Groups'),
('OnUserBeforeAddToGroup', 1, 'User Groups'),
('OnUserBeforeRemove', 1, 'Users'),
('OnUserBeforeRemoveFromGroup', 1, 'User Groups'),
('OnUserBeforeSave', 1, 'Users'),
('OnUserChangePassword', 1, 'Users'),
('OnUserDeactivate', 1, 'Users'),
('OnUserDuplicate', 1, 'Users'),
('OnUserFormDelete', 1, 'Users'),
('OnUserFormPrerender', 1, 'Users'),
('OnUserFormRender', 1, 'Users'),
('OnUserFormSave', 1, 'Users'),
('OnUserGroupBeforeRemove', 1, 'User Groups'),
('OnUserGroupBeforeSave', 1, 'User Groups'),
('OnUserGroupFormSave', 1, 'User Groups'),
('OnUserGroupRemove', 1, 'User Groups'),
('OnUserGroupSave', 1, 'User Groups'),
('OnUserNotFound', 1, 'Users'),
('OnUserProfileBeforeRemove', 1, 'User Profiles'),
('OnUserProfileBeforeSave', 1, 'User Profiles'),
('OnUserProfileRemove', 1, 'User Profiles'),
('OnUserProfileSave', 1, 'User Profiles'),
('OnUserRemove', 1, 'Users'),
('OnUserRemoveFromGroup', 1, 'User Groups'),
('OnUserSave', 1, 'Users'),
('OnWebAuthentication', 3, 'Security'),
('OnWebLogin', 3, 'Security'),
('OnWebLogout', 3, 'Security'),
('OnWebPageComplete', 5, 'System'),
('OnWebPageInit', 5, 'System'),
('OnWebPagePrerender', 5, 'System'),
('pdoToolsOnFenomInit', 6, 'pdoTools');

-- --------------------------------------------------------

--
-- Table structure for table `modx_system_settings`
--

CREATE TABLE `modx_system_settings` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_system_settings`
--

INSERT INTO `modx_system_settings` (`key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('access_category_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_context_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_resource_group_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_forward_across_contexts', '', 'combo-boolean', 'core', 'system', NULL),
('allow_manager_login_forgot_password', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_multiple_emails', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_tags_in_post', '', 'combo-boolean', 'core', 'system', NULL),
('allow_tv_eval', '1', 'combo-boolean', 'core', 'system', NULL),
('anonymous_sessions', '1', 'combo-boolean', 'core', 'session', NULL),
('archive_with', '', 'combo-boolean', 'core', 'system', NULL),
('automatic_alias', '1', 'combo-boolean', 'core', 'furls', NULL),
('automatic_template_assignment', 'parent', 'textfield', 'core', 'site', NULL),
('auto_check_pkg_updates', '1', 'combo-boolean', 'core', 'system', NULL),
('auto_check_pkg_updates_cache_expire', '15', 'textfield', 'core', 'system', NULL),
('auto_isfolder', '1', 'combo-boolean', 'core', 'site', NULL),
('auto_menuindex', '1', 'combo-boolean', 'core', 'site', NULL),
('base_help_url', '//docs.modx.com/help/', 'textfield', 'core', 'manager', NULL),
('blocked_minutes', '60', 'textfield', 'core', 'authentication', NULL),
('cache_action_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_alias_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_context_settings', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_db', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_db_session', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_session_lifetime', '', 'textfield', 'core', 'caching', NULL),
('cache_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_format', '0', 'textfield', 'core', 'caching', NULL),
('cache_handler', 'xPDOFileCache', 'textfield', 'core', 'caching', NULL),
('cache_lang_js', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_noncore_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_clear_partial', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_scripts', '1', 'combo-boolean', 'core', 'caching', NULL),
('clear_cache_refresh_trees', '0', 'combo-boolean', 'core', 'caching', NULL),
('compress_css', '1', 'combo-boolean', 'core', 'manager', NULL),
('compress_js', '1', 'combo-boolean', 'core', 'manager', NULL),
('compress_js_max_files', '10', 'textfield', 'core', 'manager', NULL),
('confirm_navigation', '1', 'combo-boolean', 'core', 'manager', NULL),
('container_suffix', '/', 'textfield', 'core', 'furls', NULL),
('context_tree_sort', '1', 'combo-boolean', 'core', 'manager', NULL),
('context_tree_sortby', 'rank', 'textfield', 'core', 'manager', NULL),
('context_tree_sortdir', 'ASC', 'textfield', 'core', 'manager', NULL),
('cultureKey', 'en', 'modx-combo-language', 'core', 'language', NULL),
('date_timezone', '', 'textfield', 'core', 'system', NULL),
('debug', '', 'textfield', 'core', 'system', NULL),
('default_content_type', '1', 'modx-combo-content-type', 'core', 'site', NULL),
('default_context', 'web', 'modx-combo-context', 'core', 'site', NULL),
('default_duplicate_publish_option', 'preserve', 'textfield', 'core', 'manager', NULL),
('default_media_source', '1', 'modx-combo-source', 'core', 'manager', NULL),
('default_media_source_type', 'sources.modFileMediaSource', 'modx-combo-source-type', 'core', 'manager', NULL),
('default_per_page', '20', 'textfield', 'core', 'manager', NULL),
('default_template', '1', 'modx-combo-template', 'core', 'site', NULL),
('default_username', '(anonymous)', 'textfield', 'core', 'session', NULL),
('editor_css_path', '', 'textfield', 'core', 'editor', NULL),
('editor_css_selectors', '', 'textfield', 'core', 'editor', NULL),
('emailsender', 'admin@gmail.com', 'textfield', 'core', 'authentication', '2021-07-19 08:56:18'),
('emailsubject', 'Your login details', 'textfield', 'core', 'authentication', NULL),
('enable_dragdrop', '1', 'combo-boolean', 'core', 'manager', NULL),
('enable_gravatar', '1', 'combo-boolean', 'core', 'manager', NULL),
('error_log_filename', 'error.log', 'textfield', 'core', 'system', NULL),
('error_log_filepath', '', 'textfield', 'core', 'system', NULL),
('error_page', '1', 'textfield', 'core', 'site', NULL),
('failed_login_attempts', '5', 'textfield', 'core', 'authentication', NULL),
('feed_modx_news', 'https://feeds.feedburner.com/modx-announce', 'textfield', 'core', 'system', NULL),
('feed_modx_news_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('feed_modx_security', 'https://forums.modx.com/board.xml?board=294', 'textfield', 'core', 'system', NULL),
('feed_modx_security_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('fe_editor_lang', 'en', 'modx-combo-language', 'core', 'language', NULL),
('filemanager_path', '', 'textfield', 'core', 'file', NULL),
('filemanager_path_relative', '1', 'combo-boolean', 'core', 'file', NULL),
('filemanager_url', '', 'textfield', 'core', 'file', NULL),
('filemanager_url_relative', '1', 'combo-boolean', 'core', 'file', NULL),
('forgot_login_email', '<p>Hello [[+username]],</p>\n<p>A request for a password reset has been issued for your MODX user. If you sent this, you may follow this link and use this password to login. If you did not send this request, please ignore this email.</p>\n\n<p>\n    <strong>Activation Link:</strong> [[+url_scheme]][[+http_host]][[+manager_url]]?modahsh=[[+hash]]<br />\n    <strong>Username:</strong> [[+username]]<br />\n    <strong>Password:</strong> [[+password]]<br />\n</p>\n\n<p>After you log into the MODX Manager, you can change your password again, if you wish.</p>\n\n<p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('formit.attachment.mediasource', '1', 'modx-combo-source', 'formit', 'formit', NULL),
('formit.attachment.path', '', 'textfield', 'formit', 'formit', NULL),
('formit.cleanform.days', '30', 'textfield', 'formit', 'formit', NULL),
('formit.exclude_contexts', 'mgr', 'textfield', 'formit', 'formit', NULL),
('formit.form_encryptkey', 'modx60f53e2aec5b74.64152832', 'textfield', 'formit', 'formit', '2021-07-19 12:23:23'),
('formit.max_chars_textfield', '125', 'textfield', 'formit', 'formit', NULL),
('formit.recaptcha_private_key', '', 'textfield', 'formit', 'formit_recaptcha', NULL),
('formit.recaptcha_public_key', '', 'textfield', 'formit', 'formit_recaptcha', NULL),
('formit.recaptcha_use_ssl', '0', 'combo-boolean', 'formit', 'formit_recaptcha', NULL),
('form_customization_use_all_groups', '', 'combo-boolean', 'core', 'manager', NULL),
('forward_merge_excludes', 'type,published,class_key', 'textfield', 'core', 'system', NULL),
('friendly_alias_lowercase_only', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_max_length', '0', 'textfield', 'core', 'furls', NULL),
('friendly_alias_realtime', '0', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_restrict_chars', 'pattern', 'textfield', 'core', 'furls', NULL),
('friendly_alias_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@\\?\\[\\]\\{\\}\\|\\^\'\\\\]/', 'textfield', 'core', 'furls', NULL),
('friendly_alias_strip_element_tags', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_translit', 'none', 'textfield', 'core', 'furls', NULL),
('friendly_alias_translit_class', 'translit.modTransliterate', 'textfield', 'core', 'furls', NULL),
('friendly_alias_translit_class_path', '{core_path}components/', 'textfield', 'core', 'furls', NULL),
('friendly_alias_trim_chars', '/.-_', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiter', '-', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiters', '-_', 'textfield', 'core', 'furls', NULL),
('friendly_urls', '0', 'combo-boolean', 'core', 'furls', NULL),
('friendly_urls_strict', '0', 'combo-boolean', 'core', 'furls', NULL),
('global_duplicate_uri_check', '0', 'combo-boolean', 'core', 'furls', NULL),
('hidemenu_default', '0', 'combo-boolean', 'core', 'site', NULL),
('inline_help', '1', 'combo-boolean', 'core', 'manager', NULL),
('link_tag_scheme', '-1', 'textfield', 'core', 'site', NULL),
('locale', '', 'textfield', 'core', 'language', NULL),
('lock_ttl', '360', 'textfield', 'core', 'system', NULL),
('log_deprecated', '1', 'combo-boolean', 'core', 'system', NULL),
('log_level', '1', 'textfield', 'core', 'system', NULL),
('log_snippet_not_found', '1', 'combo-boolean', 'core', 'site', NULL),
('log_target', 'FILE', 'textfield', 'core', 'system', NULL),
('mail_charset', 'UTF-8', 'modx-combo-charset', 'core', 'mail', NULL),
('mail_encoding', '8bit', 'textfield', 'core', 'mail', NULL),
('mail_smtp_auth', '1', 'combo-boolean', 'core', 'mail', '2021-07-21 11:26:19'),
('mail_smtp_autotls', '1', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_helo', 'Hello', 'textfield', 'core', 'mail', '2021-07-21 11:25:01'),
('mail_smtp_hosts', 'smtp.gmail.com', 'textfield', 'core', 'mail', '2021-07-21 11:24:02'),
('mail_smtp_keepalive', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_pass', 'Mani@mani', 'text-password', 'core', 'mail', '2021-07-21 11:25:24'),
('mail_smtp_port', '587', 'textfield', 'core', 'mail', NULL),
('mail_smtp_prefix', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_single_to', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_timeout', '10', 'textfield', 'core', 'mail', NULL),
('mail_smtp_user', 'roja.optisol@gmail.com', 'textfield', 'core', 'mail', '2021-07-21 11:25:44'),
('mail_use_smtp', '1', 'combo-boolean', 'core', 'mail', '2021-07-21 11:24:37'),
('main_nav_parent', 'topnav', 'textfield', 'core', 'manager', NULL),
('manager_date_format', 'Y-m-d', 'textfield', 'core', 'manager', NULL),
('manager_direction', 'ltr', 'textfield', 'core', 'language', NULL),
('manager_favicon_url', '', 'textfield', 'core', 'manager', NULL),
('manager_js_cache_file_locking', '1', 'combo-boolean', 'core', 'manager', NULL),
('manager_js_cache_max_age', '3600', 'textfield', 'core', 'manager', NULL),
('manager_js_document_root', '', 'textfield', 'core', 'manager', NULL),
('manager_js_zlib_output_compression', '0', 'combo-boolean', 'core', 'manager', NULL),
('manager_language', 'en', 'modx-combo-language', 'core', 'language', NULL),
('manager_lang_attribute', 'en', 'textfield', 'core', 'language', NULL),
('manager_login_url_alternate', '', 'textfield', 'core', 'authentication', NULL),
('manager_theme', 'default', 'modx-combo-manager-theme', 'core', 'manager', NULL),
('manager_time_format', 'g:i a', 'textfield', 'core', 'manager', NULL),
('manager_use_fullname', '', 'combo-boolean', 'core', 'manager', NULL),
('manager_week_start', '0', 'textfield', 'core', 'manager', NULL),
('mgr_source_icon', 'icon-folder-open-o', 'textfield', 'core', 'manager', NULL),
('mgr_tree_icon_context', 'tree-context', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_sort', 'name', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_viewmode', 'grid', 'textfield', 'core', 'manager', NULL),
('modx_browser_tree_hide_files', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_browser_tree_hide_tooltips', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_charset', 'UTF-8', 'modx-combo-charset', 'core', 'language', NULL),
('parser_class', 'pdoParser', 'textfield', 'pdotools', 'pdotools_main', NULL),
('parser_class_path', '{core_path}components/pdotools/model/pdotools/', 'textfield', 'pdotools', 'pdotools_main', NULL),
('parser_recurse_uncacheable', '1', 'combo-boolean', 'core', 'system', NULL),
('password_generated_length', '10', 'textfield', 'core', 'authentication', NULL),
('password_min_length', '8', 'textfield', 'core', 'authentication', NULL),
('pdoFetch.class', 'pdotools.pdofetch', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdofetch_class_path', '{core_path}components/pdotools/model/', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdoTools.class', 'pdotools.pdotools', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdotools_class_path', '{core_path}components/pdotools/model/', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdotools_elements_path', '{core_path}elements/', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_cache', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_default', '1', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_modx', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_options', '', 'textarea', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_parser', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_php', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_save_on_errors', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('phpthumb_allow_src_above_docroot', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxage', '30', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxfiles', '10000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxsize', '100', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_source_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_document_root', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_bgcolor', 'CCCCFF', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_fontsize', '1', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_textcolor', 'FF0000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_far', 'C', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_imagemagick_path', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_enabled', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_text_message', 'Off-server thumbnailing is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_require_refer', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_text_message', 'Off-server linking is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_watermark_src', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_zoomcrop', '0', 'textfield', 'core', 'phpthumb', NULL),
('preserve_menuindex', '1', 'combo-boolean', 'core', 'manager', NULL),
('principal_targets', 'modAccessContext,modAccessResourceGroup,modAccessCategory,sources.modAccessMediaSource,modAccessNamespace', 'textfield', 'core', 'authentication', NULL),
('proxy_auth_type', 'BASIC', 'textfield', 'core', 'proxy', NULL),
('proxy_host', '', 'textfield', 'core', 'proxy', NULL),
('proxy_password', '', 'text-password', 'core', 'proxy', NULL),
('proxy_port', '', 'textfield', 'core', 'proxy', NULL),
('proxy_username', '', 'textfield', 'core', 'proxy', NULL),
('publish_default', '', 'combo-boolean', 'core', 'site', NULL),
('rb_base_dir', '', 'textfield', 'core', 'file', NULL),
('rb_base_url', '', 'textfield', 'core', 'file', NULL),
('request_controller', 'index.php', 'textfield', 'core', 'gateway', NULL),
('request_method_strict', '0', 'combo-boolean', 'core', 'gateway', NULL),
('request_param_alias', 'q', 'textfield', 'core', 'gateway', NULL),
('request_param_id', 'id', 'textfield', 'core', 'gateway', NULL),
('resolve_hostnames', '0', 'combo-boolean', 'core', 'system', NULL),
('resource_static_allow_absolute', '0', 'combo-boolean', 'core', 'static_resources', NULL),
('resource_static_path', '{assets_path}', 'textfield', 'core', 'static_resources', NULL),
('resource_tree_node_name', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_name_fallback', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_tooltip', '', 'textfield', 'core', 'manager', NULL),
('richtext_default', '1', 'combo-boolean', 'core', 'manager', NULL),
('search_default', '1', 'combo-boolean', 'core', 'site', NULL),
('send_poweredby_header', '0', 'combo-boolean', 'core', 'system', NULL),
('server_offset_time', '0', 'textfield', 'core', 'system', NULL),
('server_protocol', 'http', 'textfield', 'core', 'system', NULL),
('session_cookie_domain', '', 'textfield', 'core', 'session', NULL),
('session_cookie_httponly', '1', 'combo-boolean', 'core', 'session', NULL),
('session_cookie_lifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_cookie_path', '', 'textfield', 'core', 'session', NULL),
('session_cookie_samesite', '', 'textfield', 'core', 'session', NULL),
('session_cookie_secure', '', 'combo-boolean', 'core', 'session', NULL),
('session_gc_maxlifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_handler_class', 'modSessionHandler', 'textfield', 'core', 'session', NULL),
('session_name', '', 'textfield', 'core', 'session', NULL),
('settings_distro', 'traditional', 'textfield', 'core', 'system', NULL),
('settings_version', '2.8.3-pl', 'textfield', 'core', 'system', NULL),
('set_header', '1', 'combo-boolean', 'core', 'system', NULL),
('show_tv_categories_header', '1', 'combo-boolean', 'core', 'manager', NULL),
('signupemail_message', '<p>Hello [[+uid]],</p>\n    <p>Here are your login details for the [[+sname]] MODX Manager:</p>\n\n    <p>\n        <strong>Username:</strong> [[+uid]]<br />\n        <strong>Password:</strong> [[+pwd]]<br />\n    </p>\n\n    <p>Once you log into the MODX Manager at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('site_name', 'MODX Revolution', 'textfield', 'core', 'site', NULL),
('site_start', '1', 'textfield', 'core', 'site', NULL),
('site_status', '1', 'combo-boolean', 'core', 'site', NULL),
('site_unavailable_message', 'The site is currently unavailable', 'textfield', 'core', 'site', NULL),
('site_unavailable_page', '0', 'textfield', 'core', 'site', NULL),
('static_elements_automate_chunks', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_plugins', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_snippets', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_templates', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_tvs', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_basepath', '', 'textfield', 'core', 'static_elements', NULL),
('static_elements_default_category', '0', 'modx-combo-category', 'core', 'static_elements', NULL),
('static_elements_default_mediasource', '0', 'modx-combo-source', 'core', 'static_elements', NULL),
('strip_image_paths', '1', 'combo-boolean', 'core', 'file', NULL),
('symlink_merge_fields', '1', 'combo-boolean', 'core', 'site', NULL),
('syncsite_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('topmenu_show_descriptions', '1', 'combo-boolean', 'core', 'manager', NULL),
('tree_default_sort', 'menuindex', 'textfield', 'core', 'manager', NULL),
('tree_root_id', '0', 'numberfield', 'core', 'manager', NULL),
('tvs_below_content', '0', 'combo-boolean', 'core', 'manager', NULL),
('udperms_allowroot', '', 'combo-boolean', 'core', 'authentication', NULL),
('unauthorized_page', '1', 'textfield', 'core', 'site', NULL),
('upload_check_exists', '1', 'combo-boolean', 'core', 'file', NULL),
('upload_files', 'txt,html,htm,xml,js,js.map,css,scss,less,css.map,zip,gz,rar,z,tgz,tar,mp3,mp4,aac,wav,au,wmv,avi,mpg,mpeg,pdf,doc,docx,xls,xlsx,ppt,pptx,jpg,jpeg,png,tiff,svg,svgz,gif,psd,ico,bmp,webp,odt,ods,odp,odb,odg,odf,md,ttf,woff,woff2,eot', 'textfield', 'core', 'file', NULL),
('upload_flash', 'swf,fla', 'textfield', 'core', 'file', NULL),
('upload_images', 'jpg,jpeg,png,gif,psd,ico,bmp,tiff,svg,svgz,webp', 'textfield', 'core', 'file', NULL),
('upload_maxsize', '41943040', 'textfield', 'core', 'file', '2021-07-19 08:56:19'),
('upload_media', 'mp3,wav,au,wmv,avi,mpg,mpeg', 'textfield', 'core', 'file', NULL),
('user_nav_parent', 'usernav', 'textfield', 'core', 'manager', NULL),
('use_alias_path', '0', 'combo-boolean', 'core', 'furls', NULL),
('use_browser', '1', 'combo-boolean', 'core', 'file', NULL),
('use_context_resource_table', '1', 'combo-boolean', 'core', 'caching', NULL),
('use_editor', '1', 'combo-boolean', 'core', 'editor', NULL),
('use_frozen_parent_uris', '0', 'combo-boolean', 'core', 'furls', NULL),
('use_multibyte', '1', 'combo-boolean', 'core', 'language', '2021-07-19 08:56:19'),
('use_weblink_target', '', 'combo-boolean', 'core', 'site', NULL),
('webpwdreminder_message', '<p>Hello [[+uid]],</p>\n\n    <p>To activate your new password click the following link:</p>\n\n    <p>[[+surl]]</p>\n\n    <p>If successful you can use the following password to login:</p>\n\n    <p><strong>Password:</strong> [[+pwd]]</p>\n\n    <p>If you did not request this email then please ignore it.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('websignupemail_message', '<p>Hello [[+uid]],</p>\n\n    <p>Here are your login details for [[+sname]]:</p>\n\n    <p><strong>Username:</strong> [[+uid]]<br />\n    <strong>Password:</strong> [[+pwd]]</p>\n\n    <p>Once you log into [[+sname]] at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('welcome_action', 'welcome', 'textfield', 'core', 'manager', NULL),
('welcome_namespace', 'core', 'textfield', 'core', 'manager', NULL),
('welcome_screen', '', 'combo-boolean', 'core', 'manager', '2021-07-19 08:58:07'),
('welcome_screen_url', '//misc.modx.com/revolution/welcome.28.html', 'textfield', 'core', 'manager', NULL),
('which_editor', '', 'modx-combo-rte', 'core', 'editor', NULL),
('which_element_editor', '', 'modx-combo-rte', 'core', 'editor', NULL),
('xhtml_urls', '1', 'combo-boolean', 'core', 'site', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_transport_packages`
--

CREATE TABLE `modx_transport_packages` (
  `signature` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `installed` datetime DEFAULT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `workspace` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `provider` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `source` tinytext DEFAULT NULL,
  `manifest` text DEFAULT NULL,
  `attributes` mediumtext DEFAULT NULL,
  `package_name` varchar(191) NOT NULL,
  `metadata` text DEFAULT NULL,
  `version_major` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `version_minor` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `version_patch` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `release` varchar(100) NOT NULL DEFAULT '',
  `release_index` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_transport_packages`
--

INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('formit-4.2.6-pl', '2021-07-19 14:22:45', '2021-07-19 12:23:25', '2021-07-19 14:23:25', 0, 1, 1, 0, 'formit-4.2.6-pl.transport.zip', NULL, 'a:11:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:201:\"--------------------\nSnippet: FormIt\n--------------------\nAuthor: Sterc <modx@sterc.nl>\n\nA form processing Snippet for MODx Revolution.\n\nOfficial Documentation:\nhttps://docs.modx.com/extras/revo/formit\";s:9:\"changelog\";s:18981:\"Changelog for FormIt.\n\nFormIt 4.2.6\n====================================\n- Add support for UTF-8 when exporting (PR#221)\n- Move limit from foreach to query in migration class (PR#236)\n- Remove unnecessary mail->reset from autoresponder hook (PR#240)\n- Add Ukrainian lexicon + some changes to RU and EN lexicons (PR#242)\n- Update Composer autoloader for newer Composer versions (PR#243)\n\nFormIt 4.2.5\n====================================\n- Added new properties to email hook (#229, thanks to @jako)\n- emailSelectTo, emailSelectToName, emailSelectField\n\nFormIt 4.2.4\n====================================\n- Fix export form select width (#218)\n- Fix limit of form filter (#206)\n- Fix path to clean processor for cronjob (#215, thanks to @bennyb)\n- Fix ability to export all forms (#210, thanks to @JoshuaLuckers)\n- Fix PHP notice \'Only variables should be assigned by reference\' in Hook.php (#212, thanks to @intersel)\n- Updated Russian translation (#208, thanks to @webinmd)\n\nFormIt 4.2.3\n====================================\n- FormIt 4.2.0 release bug - Fix migration of forms with encryption\n\nFormIt 4.2.2\n====================================\n- FormIt 4.2.0 release bug - Altering tables on update (#203)\n\nFormIt 4.2.1\n====================================\n- FormIt 4.2.0 release bug (#202)\n\nFormIt 4.2.0\n====================================\n- Bug on hasHook() fixed (#182, #181, #170, #193)\n- ExtJS refactored for faster and better UI/UX\n- IP number added to the grid (#194)\n- Better form view with textfields and textareas (#136)\n- Remove multiple forms (#143)\n- Search by IP (and context menu option to view all forms from 1 IP)\n- New permissions added\n- formit_encryptions to encrypt/decrypt forms\n- Context awereness, an user can only see the forms with the contexts that the user has access to.\n- Swedish translation updated\n- All other language files checked and filled with English strings\n- Formit deprecation notice in 2.7.0dev bug fixed (#190)\n\nFormIt 4.1.2\n====================================\n- Fix spam hook for better spam prevention thanks to Kristoffer Karlström\n- Fix FormItLoadSavedForm for encrypted forms\n\nFormIt 4.1.1\n====================================\n- Added new hook \"renderHooks\", which triggers just before rendering the form\n\nFormIt 4.1.0\n====================================\n- This release is made possible thanks to Bert Kooij / Census.nl. Thanks!\n- Added new button in Manager page for manually removing forms.\n- Added new system setting for the default amount of days.\n- Added cronjob task for automatically deletion of old forms.\n\nFormIt 4.0.1\n====================================\n- Add option to specify csv delimiter for form export\n- Add GDPR compliant attachment handling (#154) - Thanks to @wax100\n- Allow empty isDate validator (PR#164) - Thanks to JoshuaLuckers\n- Fix bug with multiple forms on one page (#160)\n- Fix modx->log calls in various classes (#161)\n- Fix setting redirectParams variable (#165)\n\nFormIt 4.0.0\n====================================\n- Move formit base classes to /src/ folder and add namespace\n- Update existing classes to extend new classes\n- Update all snippets to use modx getService\n- Move FormItAutoResponder and FormItSaveForm logic to classes\n- Add helper functions for all FormIt properties\n- Set defaultEngine to InnoDB in mysql schema\n- Fix PHP7 error in default email output (PR#156)\n- Updated German lexicons (PR#150)\n- Add \'Form\' column to form export (PR#149)\n\nFormIt 3.0.4\n====================================\n- Fix checkbox values not showing in email\n\nFormIt 3.0.3\n====================================\n- Fix FormItSaveForm to allow multiple fields with same fieldName\n- Add \'saveTmpFiles\' FormIt snippet property to enable/disable saving files to tmp directory\n- Remove list() function from formitsaveform snippet for better PHP version compatibility (#98)\n- Fix PHP7 by-reference errors (#98)\n- Replace ereg() functions with preg_match() for PHP compatibility (#98)\n- Increase precision for FormItForm \'ip\' field to allow for IPV6 addresses (#135)\n- Fix issue where in some cases fields are not correctly saved in FormItForm (#92)\n- Optimize FormItForm export class for better performance (#120)\n- Add \'attachFilesToEmail\' property to control if files are added as attachment to email (#122)\n\nFormIt 3.0.2\n====================================\n- Fix encryption in formitsaveform snippet to save correct encryption_type\n- Fix bug in forms grid when decrypting encrypted forms fail\n- Fix migration to check if decrypted data is correct\n\nFormIt 3.0.1\n====================================\n- Store file uploads in tmp folder to prevent file uploads getting lost in multistep forms\n- Add checks for OpenSSL in classes and encryption CMP tab\n- Add method_exists check to plugin to prevent errors when method not exists\n- Update context-menu in forms-encryption grid to show only encrypt or decrypt\n- Set placeholders for file upload $_FILES array\n- Add option to FormItCountryOptions snippet to limit country list to selected countries only (PR#123) - thanks to gadgetto\n\nFormIt 3.0.0\n====================================\n- PLEASE NOTE: THIS UPDATE CONTAINS A MIGRATION SCRIPT FOR ENCRYPTED FORMS - Read more about it at https://github.com/Sterc/FormIt\n- Mcrypt encryption/decryption methods replaced with openssl due to mcrypt being deprecated in PHP 7.1\n- Add default file-based chunks as objects\n- Add support for pdoTools getChunk method, thanks to soulcreate and bezumkin (PR#89)\n- Add French countries for FormItCountryOptions, thanks to beau-gosse (PR#109)\n- Add Dutch countries for FormItCountryOptions, thanks to visvoer (PR#110)\n- Add extjs stateful parameters to CMP tabs\n\nFormIt 2.2.11\n====================================\n- Added storeLocation property to FormIt and FormItRetriever. (issue #95, PR #105#106#107)\n- Changed default behaviour of emailReplyTo parameter to fallback to email field in form (issue #101)\n- Changed math hook to store values in session, preventing easy bypass of math hook (issue #64)\n- Add GPM config\n- Fix bug with multiple file upload (PR #104)\n- Add \'hash\' field to FormItSaveForm to allow updating of previously saved forms (PR #94)\n- Add FormItLoadSavedForm snippet to retrieve saved forms (PR #94)\n- Fix for export with datefilter (issue #96, PR #97)\n- Add fiarRequired property (PR#83)\n- Update resolver to check for current version to prevent errors on upgrade\n- Add system setting for form_encryptkey, to not rely on site_id (issue #68)\n- Fix saved forms export when using encrypted forms (issue #48)\n\nFormIt 2.2.10\n====================================\n- Merged PR#58: Added BOM for Excel to understand UTF-8 non-latin symbols properly. (thanks to govza)\n- Merged PR#73: JSON output options for errors and hooks\n- Merged PR#79: Create German lexicon for FormIt-CMP (thanks to sebastian-marinescu)\n\nFormIt 2.2.9\n====================================\n- Merging PR#74 from Jako which solves multiple issues.\n- Fix XSS vulnerabilities\n- Javascript code cleanup\n- Fix empty math operator after form submission #d782c29\n\nFormIt 2.2.8\n====================================\n- Fixed export limit and added form dropdown paging #60\n- Fixed typo property lexicons #57\n- Added templates path to config #63\n- Added loading lexicons in ficountryoptions class #21\n- Added ability to dynamically set formName by setting placeholder inside formName equal to an existing form field key #45\n\nFormIt 2.2.7\n====================================\n- Optimised export\n\nFormIt 2.2.6\n====================================\n- Fixed empty placeholder for file field in autoresponder\n\nFormIt 2.2.5\n====================================\n- Fixed creating table on update\n- Added new tab inside CMP for managing encryption\n- Added missing br on auto emailTpl\n\nFormIt 2.2.4\n====================================\n- Fixed bug inside FormItSaveForm and PR #43\n\nFormIt 2.2.3\n====================================\n- Added encryption to saved forms\n- Added formname to grid\n- Saved form is now returned from the hook\n- Export unlimited items\n- Add RU translation\n\nFormIt 2.2.2\n====================================\n- Added CMP for the saved forms\n- Fixed whitespace PR on required checkboxes\n\nFormIt 2.2.1\n====================================\n- Updated numbers generation for math captcha #5\n- German translation #10\n- Added missing formit.not_regexp lexicon #15\n- Specify explicitely return-path fixes #19 #20\n- fix addAttachment() typo #23\n- Fixed typo in adding of the attachments #24\n- Add the possibility of redirectTo=`formfield` #26\n- Added attachments for auto-reply and Added ability to use @CODE as tpl #29\n- Update snippet.formitisselected.php #12\n- Canadian options for FormitStateOptions\n\nFormIt 2.2.0\n====================================\n- [#8382] Prevent issue with checkboxes/radios causing text-parsing problems with required validator\n- Fixed issue with custom error message for vTextPasswordConfirm not respected\n- [#9457] Fixed issue with commas in values causing errors with FormItIsChecked & FormItIsSelected\n- [#9576] Add ability to translate country options\n- Add check for preHook errors before processing postHooks\n- Add option, defaulting true, to trim spaces from sides of values before validation\n- [#8785] Fix E_STRICT error in fiDictionary\n\nFormIt 2.1.2\n====================================\n- Various language updates\n- [#7250] Fix issue with 0 not passing :required filter\n\nFormIt 2.1.1\n====================================\n- [#8204] Fix issue with FormItAutoResponder and processing of MODX tags\n\nFormIt 2.1.0\n====================================\n- [#7620] Allow for MODX tags in email templates, as well as pass-through of snippet properties to tpl\n- [#7502] Add ability to find type of hook by using $hook->type\n- [#8151] More sanity checking for FormItAutoResponder and replyTo addresses\n- Fix useIsoCode issue in FormItCountryOptions\n- Update German translation\n- Enhance validation templating for validationErrorBulkTpl\n- Add &country option to FormItStateOptions to allow loading of non-US states (currently us/de)\n\nFormIt 2.0.3\n====================================\n- Update Czech translation\n- Fix issue with French accents in translation\n- [#6021] Refactor Russian reCaptcha translations\n- [#6618] Standardize XHTML in reCaptcha usage\n\nFormIt 2.0.2\n====================================\n- [#4864] Fix issue with isNumber not allowing blank fields\n- [#5404] Fix issues with checkboxes and array fields in FormItAutoResponder\n- [#5269] Fix issues with checkboxes in various forms in emails\n- [#5792] Update reCaptcha URLs\n\nFormIt 2.0.1\n====================================\n- [#5525] Add &allowFiles property, that when set to 0, prevents file submissions on form\n- [#5484] Fix issue with double validation error spans\n- Fix issue where config was not passed to hooks\n- Update German translation\n\nFormIt 2.0.0\n====================================\n- [#3514] Add ability to customize validator error messages per FormIt form and per field\n- [#4705] Add regexp validator\n- [#5454] Fix issue with customValidators property in 2.0.0-rc2\n- Major reworking of main FormIt script to be OOP\n- Add over 150 unit tests to prevent regression\n- [#5388], [#5240] Fix issue with FormItCountryOptions and &useIsoCode\n- Fix issue with FormItStateOptions and &useAbbr\n- [#5267] Fix issue with FormItRetriever and array fields\n\nFormIt 1.7.0\n====================================\n- Add ability to have \"Frequent Visitors\" optgroup in FormItCountryOptions, moving specified countries to the top of the list in an optgroup\n- Add missing property translations for FormItStateOptions snippet\n- Fix small issue with stored values after validation of fields\n- Add FormItStateOptions snippet for easy U.S. state dropdowns\n- Add FormItCountryOptions snippet for easy country dropdowns\n- [#5101] Fix issue with emailMultiSeparator and emailMultiWrapper default values\n- Fix issue with bracketed field names being added as extra fields post-validation with . prefix\n\nFormIt 1.6.0\n====================================\n- [#4708] Add support for bracketed fields, such as contact[name]\n- [#5038] Fix uninitialized variable warnings in reCaptcha service\n- [#4993] Add Italian translation and fix recaptcha links\n- Fix issue where fields could be removed via DOM from form and be bypassed\n- Add &emailMultiSeparator and &emailMultiWrapper for handling display of checkboxes/multi-selects in email hook\n\nFormIt 1.5.6\n====================================\n- [#4564] Fix redirectTo with non-web contexts\n\nFormIt 1.5.5\n====================================\n- [#4168] Add emailConvertNewlines property for handling newlines in HTML emails\n- [#4057] Prevent math hook from generating similar numbers\n- [#4302] Cleanups to FormItAutoResponder snippet\n- [#3991] Fix issue with checkbox values in emails\n\nFormIt 1.5.4\n====================================\n- Fix issue with math hook where error placeholders were incorrect\n- Fix issue where emailHtml property was not respected in email hook\n- Fix issue where hooks were not passed customProperties array\n- [#51] Allow blank fields to be passed with :email validator\n- [#55] Allow all fields to be accessed in custom validators\n\nFormIt 1.5.3\n====================================\n- [#40] Add ability to display all error messages in bulk at top, added validationErrorBulkTpl for templating each one\n- [#52] Add a general validation error message property, validationErrorMessage, that shows when validation fails\n- [#53] Fix bug that prevented recaptcha options from working\n- Add a generic validation error placeholder in FormIt to allow for general messages\n- [#50] Trim each hook specification in hooks calls\n- [#49] Ensure reCaptcha service instance is unique for each FormIt instance\n- [#47] Ensure email validator checks for empty string\n- [#42] Can now include field names in error strings via `field` placeholder\n- [#39] Fix issue with FormItIsChecked/Selected to prevent output from occurring if not checked\n- [#37] Fix allowTags validator to work, and work with parameters encapsulated by ^\n\nFormIt 1.5.2\n====================================\n- Fixed security vulnerability\n- Added math hook, allowing anti-spam math field measure\n- Added more debugging info to email hook\n\nFormIt 1.5.1\n====================================\n- Fixed issue where &store was not respecting values set in post-hooks\n- Redirect hook now redirects *after* all other hooks execute\n\nFormIt 1.5.0\n====================================\n- Fixed bug with redirectParams not parsing placeholders in the params\n- Added redirectParams property, which allows a JSON object of params to be passed when using redirect hook\n- Added spamCheckIp property, defaults to false, to check IP as well in spam hook\n- Fixed incorrect default param for fiarSender\n- Fixed error reporting for FormItAutoResponder\n- Added sanity checks to form attachments when dealing with missing names\n- Fixed invalid offset error in checkbox validation\n- Added recaptchaJS to allow for custom JS overriding of reCaptcha options var\n\nFormIt 1.4.1\n====================================\n- Added sanity check for emailHtml property on email hook\n- Added sanity check for replyto/cc/bcc emails on email hook\n- Added ability to change language via &language parameter\n\nFormIt 1.4.0\n====================================\n- Fixed bug with recaptcha and other hooks error display messages\n- Introduced &validate parameter for more secure validation parameters to prevent POST injection\n- Added FormItIsChecked and FormItIsSelected custom output filters for easier checkbox/radio/select handling of selected values\n- Added &placeholderPrefix for FormIt snippet, defaults to `fi.`\n\nFormIt 1.3.0\n====================================\n- Fixed issue with isNumber validator\n- Added FormItRetriever snippet to get data from a FormIt submission for thank you pages\n- Added extra API methods for custom hooks for easier data grabbing\n- Added FormItAutoResponder snippet to use as a custom hook for auto-responses\n- Added &successMessage and &successMessagePlaceholder properties for easier success message handling\n- Fixed ordering for &emailFrom property\n- Added width/height for reCaptcha, however, reCaptcha APIs prevent resizing via calls\n\nFormIt 1.2.1\n====================================\n- Added recaptchaTheme property, which allows theming of reCaptcha hook\n\nFormIt 1.2.0\n====================================\n- Added preHooks property to allow for custom snippets to pre-fill fields\n- Added clearFieldsOnSuccess property to clear fields after a successful form submission without a redirect\n- Allow placeholders of fields in all email properties\n- Added customValidators property to FormIt snippet to restrict custom validators to only specified validators to prevent brute force snippet loading\n- Added fiValidator::addError for easier error loading for custom validators\n- Added German translation\n\nFormIt 1.1.7\n====================================\n- Added bcc and cc properties for email hook\n\nFormIt 1.1.6\n====================================\n- i18n of Snippet properties\n- Added emailReplyToName and emailReplyTo properties for email hook\n- Removed SMTP settings as those are now in Revo\n- Fixed bug in html emails where linebreaks were being ignored\n- Added islowercase and isuppercase validators\n- Added multibyte support to validators\n\nFormIt 1.1.5\n====================================\n- Added Russian translation\n- Updated copyright information\n\nFormIt 1.1.4\n====================================\n- Fixed bug with isDate check\n- Migrated FormIt to Git\n- Fixed bug that caused validators to not fire\n- Fixed bug where custom validators were wonky, added \'errors\' references to custom hooks/validators\n- [#ADDON-147] Added support for validation and emailing of file fields\n- Added stripTags to all fields by default (unless \'allowTags\' hook is passed\') to prevent XSS\n- Added in missing settings\n- Added reCaptcha support via the recaptcha hook\n- Adjusted copyright information to reflect current year\n\nFormIt 1.0\n====================================\n- Fixed bug with emailFrom property getting overwritten\n- [#ADDON-122] Fixed incorrect message in spam lexicon item\n- Added \'spam\' hook that utilizes StopForumSpam spam filter. Will filter the fields in the property &spamEmailFields\n- Ensure hooks errors are set as placeholders\n- Aded fi.success placeholder to be set on a successful form submission if no redirect hook is specified\n- Added default to emailTpl property so that it is now no longer required. Will send out email with just field names and values.\n- Added Dutch translation\n- Added missing formit.contains lexicon entry\n- Fixed possible loophole with $this->fields and referencing in multiple hooks\n- Fixed bug on hooks due to !== and != difference\n- Added SMTP support to FormIt email hook\n- Fixed bug with emailFrom in email hook\n- Added emailUseFieldForSubject property to FormIt snippet\n- Fixed bug on email hook where if subject was passed through form, it wouldn\'t set it as email subject\n- Added changelog\n\";s:13:\"setup-options\";s:33:\"formit-4.2.6-pl/setup-options.php\";s:9:\"signature\";s:15:\"formit-4.2.6-pl\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:43:\"/workspace/package/install/formit-4.2.6-pl/\";s:9:\"user_name\";s:0:\"\";s:10:\"user_email\";s:0:\"\";s:14:\"package_action\";i:0;}', 'FormIt', 'a:38:{s:2:\"id\";s:24:\"600bd80aabf21672e2388812\";s:7:\"package\";s:24:\"4d556c62b2b083396d000b9c\";s:12:\"display_name\";s:15:\"formit-4.2.6-pl\";s:4:\"name\";s:6:\"FormIt\";s:7:\"version\";s:5:\"4.2.6\";s:13:\"version_major\";s:1:\"4\";s:13:\"version_minor\";s:1:\"2\";s:13:\"version_patch\";s:1:\"6\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:1:\"0\";s:6:\"author\";s:5:\"sterc\";s:11:\"description\";s:1367:\"<p>FormIt is a dynamic form processing Snippet for MODX Revolution. It handles form creation, submission, performing validation and followup actions like sending an email and auto replies. Key features:</p><p></p><ul><li>Automatic validation and custom validator options</li><li>Auto reply to visitor + email to owner(s)</li><li>Multiple attachments</li><li>Submitted forms can be automatically saved and encrypted in the Formit component</li><li>Submitted forms can be exported to CSV, based on filters</li><li>Redirect to thank-you pages for optimal tracking in your analytics software (e.g. Google Analytics funnels)</li><li>Add your own hooks as Snippets to handle forms dynamically</li><li>Spam protection</li><li>Dynamic country/state dropdown lists</li><li>GDPR compliant</li></ul><p></p>\n<p>Official documentation here: <a href=\"http://rtfm.modx.com/display/ADDON/FormIt\" style=\"line-height: 1.5;\">http://rtfm.modx.com/display/ADDON/FormIt</a></p>\n\n**Free Extra**  \nThis is a free extra and the code is publicly available for you to change. The extra is being actively maintained and you\'re free to put in pull requests which match our roadmap. Please create an issue if the pull request differs from the roadmap so we can make sure we\'re on the same page.\n\nNeed help? <a href=\"mailto:service@sterc.com\">Approach our support desk for paid premium support.</a>\";s:12:\"instructions\";s:508:\"<p>Install via Package Management.</p><p><b>Updating to 3.0?</b></p><p>We\'ve released FormIt 3.0 in order to avoid issues with Mcrypt in the near future, since it will be deprecated in PHP 7.2. Mcrypt has therefore been replaced by OpenSSL encryption.</p><p>After updating to 3.0.0, you should refresh the page and notice a red bar on the top of your manager. From there, you can initiate the migration process, which will decrypt your saved forms using Mcrypt and immediately encrypt them using OpenSSL.</p>\";s:9:\"changelog\";s:15508:\"<p><b>FormIt 4.2.6</b></b></p>\n<ul><li>Add support for UTF-8 when exporting (PR#221)</li>\n<li>Move limit from foreach to query in migration class (PR#236)</li>\n<li>Remove unnecessary mail->reset from autoresponder hook (PR#240)</li>\n<li>Add Ukrainian lexicon + some changes to RU and EN lexicons (PR#242)</li>\n<li>Update Composer autoloader for newer Composer versions (PR#243)</li>\n</ul>\n<p><b>FormIt 4.2.5</b></b></p>\n<ul><li>Added new properties to email hook (#229, thanks to @jako)\nemailSelectTo, emailSelectToName, emailSelectField</li>\n</ul>\n<p><b>FormIt 4.2.4</b></b></p>\n<ul><li>Fix export form select width (#218)</li>\n<li>Fix limit of form filter (#206)</li>\n<li>Fix path to clean processor for cronjob (#215, thanks to @bennyb)</li>\n<li>Fix ability to export all forms (#210, thanks to @JoshuaLuckers)</li>\n<li>Fix PHP notice \'Only variables should be assigned by reference\' in Hook.php (#212, thanks to @intersel)</li>\n<li>Updated Russian translation (#208, thanks to @webinmd)</li>\n</ul>\n<p><b>FormIt 4.2.3</b></p><ul><li>FormIt 4.2.0 release bug form encryption migration</li></ul><p>\n<p><b>FormIt 4.2.2</b></p><ul><li>FormIt 4.2.0 release bug (missing update resolver)(#207)</li></ul><p><p><b><b>FormIt 4.2.1</b></b></p><ul><li>FormIt 4.2.0 release bug (#202)</li></ul><p><b>FormIt 4.2.0</b></p><ul><li>Bug on hasHook() fixed (#182, #181, #170, #193)</li><li>ExtJS refactored for faster and better UI/UX</li><li>IP number added to the grid (#194)</li><li>Better form view with textfields and textareas (#136)</li><li>Remove multiple forms (#143)</li><li>Search by IP (and context menu option to view all forms from 1 IP)</li><li>New permissions added: formit_encryptions to encrypt/decrypt forms</li><li>Context awereness, an user can only see the forms with the contexts that the user has access to. </li><li>Swedish translation updated</li><li>All other language files checked and filled with English strings</li><li>Formit deprecation notice in 2.7.0dev bug fixed (#190)</li></ul><p><b>FormIt 4.1.1</b></p><p></p><p></p><ul><li>Added new hook \"renderHooks\", which triggers just before rendering the form</li></ul><p></p><p><b>FormIt 4.1.0</b></p><ul><li>This release is made possible thanks to Bert Kooij / Census.nl. Thanks!</li><li>Added new button in Manager page for manually removing forms.</li><li>Added new system setting for the default amount of days.</li><li>Added cronjob task for automatically deletion of old forms.</li></ul><p><b>Formit 4.0.1</b></p><ul><li>Add option to specify csv delimiter for form export</li><li>Add GDPR compliant attachment handling (#154) - Thanks to @wax100</li><li>Allow empty isDate validator (PR#164) - Thanks to JoshuaLuckers</li><li>Fix bug with multiple forms on one page (#160)</li><li>Fix modx->log calls in various classes (#161)</li><li>Fix setting redirectParams variable (#165)</li></ul><p><b>Formit 4.0.0</b></p><ul><li>Move formit base classes to /src/ folder and add namespace</li><li>Update existing classes to extend new classes</li><li>Update all snippets to use modx getService</li><li>Move FormItAutoResponder and FormItSaveForm logic to classes</li><li>Add helper functions for all FormIt properties</li><li>Set defaultEngine to InnoDB in mysql schema</li><li>Fix PHP7 error in default email output (PR#156)</li><li>Updated German lexicons (PR#150)</li><li>Add \'Form\' column to form export (PR#149)</li></ul><p><b>Formit 3.0.4</b></p><ul><li>Fix checkbox values not showing in mail</li></ul><p><b>Formit 3.0.3</b></p><ul><li>Fix FormItSaveForm to allow multiple fields with same fieldName</li><li>Add \'saveTmpFiles\' FormIt snippet property to enable/disable saving files to tmp directory</li><li>Remove list() function from formitsaveform snippet for better PHP version compatibility (#98)</li><li>Fix PHP7 by-reference errors (#98)</li><li>Replace ereg() functions with preg_match() for PHP compatibility (#98)</li><li>Increase precision for FormItForm \'ip\' field to allow for IPV6 addresses (#135)</li><li>Fix issue where in some cases fields are not correctly saved in FormItForm (#92)</li><li>Optimize FormItForm export class for better performance (#120)</li><li>Add \'attachFilesToEmail\' property to control if files are added as attachment to email (#122)</li></ul><p><b>Formit 3.0.2</b></p><ul><li>Fix encryption in formitsaveform snippet to save correct encryption_type</li><li>Fix bug in forms grid when decrypting encrypted forms fail</li><li>Fix migration to check if decrypted data is correct</li></ul><p><b>FormIt 3.0.1</b></p><p></p><ul><li>Store file uploads in tmp folder to prevent file uploads getting lost in multistep forms</li><li>Add checks for OpenSSL in classes and encryption CMP tab</li><li>Add method_exists check to plugin to prevent errors when method not exists</li><li>Update context-menu in forms-encryption grid to show only encrypt or decrypt</li><li>Set placeholders for file upload $_FILES array</li><li>Add option to FormItCountryOptions snippet to limit country list to selected countries only (PR#123) - thanks to gadgetto</li></ul><p></p><p><b>New in 3.0.0</b></p><p></p><ul><li>Mcrypt encryption/decryption has been replaced with openSSL due to mcrypt being deprecated in PHP 7.2</li><li>Added default file-based chunks as objects</li><li>Added support for pdoTools getChunk method</li><li>Added French countries for FormItCountryOptions</li><li>Added Dutch countries for FormItCountryOptions</li><li>Added ExtJs stateful parameters to CMP tabs</li></ul><p></p><p><b>New in 2.2.11</b></p><ul><li>Added storeLocation property to FormIt and FormItRetriever. (issue #95, PR #105#106#107)</li><li></li><li>Changed default behaviour of emailReplyTo parameter to fallback to email field in form (issue #101)</li><li>Changed math hook to store values in session, preventing easy bypass of math hook (issue #64)</li><li>Add GPM config</li><li>Fix bug with multiple file upload (PR #104)</li><li>Add \'hash\' field to FormItSaveForm to allow updating of previously saved forms (PR #94)</li><li>Add FormItLoadSavedForm snippet to retrieve saved forms (PR #94)</li><li>Fix for export with datefilter (issue #96, PR #97)</li><li>Add fiarRequired property (PR#83)</li><li>Update resolver to check for current version to prevent errors on upgrade</li><li>Add system setting for form_encryptkey, to not rely on site_id (issue #68)</li><li>Fix saved forms export when using encrypted forms (issue #48)</li></ul><p><b>New in 2.2.10</b><b></b></p><li>Merged PR#58: Added BOM for Excel to understand UTF-8 non-latin symbols properly. (thanks to govza)</li><li>Merged PR#73: JSON output options for errors and hooks (thans to sepiariver)</li><li>Merged PR#79: Create German lexicon for FormIt-CMP (thanks to sebastian-marinescu)</li><p><b>New in 2.2.9</b></p><li>Merging PR#74 from Jako which solves multiple issues.</li><li>Fix XSS vulnerabilities</li><li>Javascript code cleanup</li><li>Fix empty math operator after form submission #d782c29</li><p><b>New in 2.2.8</b></p><p></p><ul><li>Fixed export limit and added form dropdown paging #60</li><li>Fixed typo property lexicons #57</li><li>Added templates path to config #63</li><li>Added loading lexicons in ficountryoptions class #21</li><li>Added ability to dynamically set formName by setting placeholder inside formName equal to an existing form field key #45</li></ul><p></p><p style=\"line-height: 17.7272720336914px;\"><b>New in 2.2.7</b></p><p style=\"line-height: 17.7272720336914px;\"></p><ul style=\"line-height: 17.7272720336914px;\"></ul><p style=\"line-height: 17.7272720336914px;\"></p><ul style=\"line-height: 17.7272720336914px;\"><li style=\"line-height: 17.7272720336914px;\">Optimised export</li></ul><p style=\"line-height: 17.7272720336914px;\"><b>New in 2.2.6</b></p><p style=\"line-height: 17.7272720336914px;\"></p><ul style=\"line-height: 17.7272720336914px;\"></ul><p style=\"line-height: 17.7272720336914px;\"></p><ul style=\"line-height: 17.7272720336914px;\"><li style=\"line-height: 17.7272720336914px;\">Fixed empty placeholder for file field in autoresponder</li></ul><p style=\"line-height: 17.7272720336914px;\"><b>New in 2.2.5</b></p><p style=\"line-height: 17.7272720336914px;\"></p><ul style=\"line-height: 17.7272720336914px;\"></ul><p style=\"line-height: 17.7272720336914px;\"></p><ul><li style=\"line-height: 17.7272720336914px;\">Fixed creating table on update</li><li>Added new tab inside CMP for managing encryption</li><li>Added missing br on auto emailTpl</li></ul><p style=\"line-height: 17.7272720336914px;\"><b>New in 2.2.4</b></p><p style=\"line-height: 17.7272720336914px;\"></p><ul style=\"line-height: 17.7272720336914px;\"></ul><p style=\"line-height: 17.7272720336914px;\"></p><ul><li>Fixed bug inside FormItSaveForm and PR #43</li></ul><p style=\"line-height: 17.7272720336914px;\"><b>New in 2.2.3</b></p><ul><li>Added encryption to saved forms</li><li>Added formname to grid</li><li>Saved form is now returned from the hook</li><li>Export unlimited items</li><li>Add RU translation</li><li>Fixed some bugs</li></ul><p><b>New in 2.2.2</b></p><p></p><ul></ul><p></p><ul><li>Added CMP for the saved forms</li><li>Fixed whitespace PR on required checkboxes</li></ul><p><b>New in 2.2.1</b></p><p></p><ul></ul><p></p><ul><li>Updated numbers generation for math captcha #5</li><li>German translation #10</li><li>Added missing formit.not_regexp lexicon #15</li><li>Specify explicitely return-path fixes #19 #20</li><li>fix addAttachment() typo #23</li><li>Fixed typo in adding of the attachments #24</li><li>Add the possibility of redirectTo=`formfield` #26</li><li>Added attachments for auto-reply and Added ability to use @CODE as tpl #29</li><li>Update snippet.formitisselected.php #12</li><li>Canadian options for FormitStateOptions</li></ul><p></p><p><b style=\"line-height: 1.5;\">New in 2.2.0</b></p><p></p><ul><li>[#8382] Prevent issue with checkboxes/radios causing text-parsing problems with required validator</li><li>Fixed issue with custom error message for vTextPasswordConfirm not respected</li><li>[#9457] Fixed issue with commas in values causing errors with FormItIsChecked & FormItIsSelected</li><li>[#9576] Add ability to translate country options</li><li>Add check for preHook errors before processing postHooks</li><li>Add option, defaulting true, to trim spaces from sides of values before validation</li><li>[#8785] Fix E_STRICT error in fiDictionary</li></ul><p></p><p><b>New in 2.1.2</b></p><p></p><ul><li>Various language updates</li><li>[#7250] Fix issue with 0 not passing :required filter</li></ul><p></p><p><b>New in 2.1.1</b></p><p></p><ul><li>[#8204] Fix issue with FormItAutoResponder and processing of MODX tags</li></ul><p></p><p><b>New in 2.1.0</b></p><p></p><ul><li>[#7620] Allow for MODX tags in email templates, as well as pass-through of snippet properties to tpl</li><li>[#7502] Add ability to find type of hook by using $hook->type</li><li>[#8151] More sanity checking for FormItAutoResponder and replyTo addresses</li><li>Fix useIsoCode issue in FormItCountryOptions</li><li>Update German translation</li><li>Enhance validation templating for validationErrorBulkTpl</li><li>Add &country option to FormItStateOptions to allow loading of non-US states (currently us/de)</li></ul><p></p><p><b>New in 2.0.3</b></p><p></p><ul><li>Update Czech translation</li><li>Fix issue with French accents in translation</li><li>[#6021] Refactor Russian reCaptcha translations</li><li>[#6618] Standardize XHTML in reCaptcha usage</li></ul><p></p><p><b>New in 2.0.2</b></p><p></p><ul><li>[#4864] Fix issue with isNumber not allowing blank fields</li><li>[#5404] Fix issues with checkboxes and array fields in FormItAutoResponder</li><li>[#5269] Fix issues with checkboxes in various forms in emails</li><li>[#5792] Update reCaptcha URLs</li></ul><p></p><p><b>New in 2.0.1</b></p><ul><li>[#5525] Add &allowFiles property, that when set to 0, prevents file submissions on form</li><li>[#5484] Fix issue with double validation error spans</li><li>Fix issue where config was not passed to hooks</li><li>Update German translation</li></ul><p></p><p><b>New in 2.0.0</b></p><p></p><ul><li>[#3514] Add ability to customize validator error messages per FormIt form and per field</li><li>[#4705] Add regexp validator</li><li>[#5454] Fix issue with customValidators property in 2.0.0-rc2</li><li>Fix issue with reCaptcha loading in 2.0.0-rc1</li><li>Major reworking of main FormIt script to be OOP</li><li>Add over 150 unit tests to prevent regression</li><li>[#5388], [#5240] Fix issue with FormItCountryOptions and &useIsoCode</li><li>Fix issue with FormItStateOptions and &useAbbr</li><li>[#5267] Fix issue with FormItRetriever and array fields</li></ul><p></p><p><b>New in 1.7.0</b></p><p></p><ul><li>Add ability to have \"Frequent Visitors\" optgroup in FormItCountryOptions, moving specified countries to the top of the list in an optgroup</li><li>Add missing property translations for FormItStateOptions snippet</li><li>Fix small issue with stored values after validation of fields</li><li>Add FormItStateOptions snippet for easy U.S. state dropdowns</li><li>Add FormItCountryOptions snippet for easy country dropdowns</li><li>[#5101] Fix issue with emailMultiSeparator and emailMultiWrapper default values</li><li>Fix issue with bracketed field names being added as extra fields post-validation with . prefix</li></ul><p></p><p><b>New in 1.6.0</b></p><p></p><ul><li>[#4708] Add support for bracketed fields, such as contact[name]</li><li>[#5038] Fix uninitialized variable warnings in reCaptcha service</li><li>[#4993] Add Italian translation and fix recaptcha links</li><li>Fix issue where fields could be removed via DOM from form and be bypassed</li><li>Add &emailMultiSeparator and &emailMultiWrapper properties for handling display of checkboxes/multi-selects in email hook</li></ul><p></p><p><b>New in 1.5.6</b></p><p></p><ul><li>[#4564] Fix redirectTo with non-web contexts</li></ul><p></p><p><b>New in 1.5.5</b></p><ul><li>[#4168] Add emailConvertNewlines property for handling newlines in HTML emails</li><li>[#4057] Prevent math hook from generating similar numbers</li><li>[#4302] Cleanups to FormItAutoResponder snippet</li><li>[#3991] Fix issue with checkbox values in emails</li></ul><p></p><p><b>New in 1.5.4</b></p><p></p>\n<ul>\n<li>Fix issue with math hook where error placeholders were incorrect</li><li>Fix issue where emailHtml property was not respected in email hook</li><li>Fix issue where hooks were not passed customProperties array</li><li>[#51] Allow blank fields to be passed with :email validator</li>\n<li>[#55] Allow all fields to be accessed in custom validators</li>\n</ul>\n<p><b>New in 1.5.3</b></p>\n<ul>\n<li>[#40] Add ability to display all error messages in bulk at top, added validationErrorBulkTpl for templating each one</li>\n<li>[#52] Add a general validation error message property, validationErrorMessage, that shows when validation fails</li>\n<li>[#53] Fix bug that prevented recaptcha options from working</li>\n<li>Add a generic validation error placeholder in FormIt to allow for general messages</li>\n<li>[#50] Trim each hook specification in hooks calls</li>\n<li>[#49] Ensure reCaptcha service instance is unique for each FormIt instance</li>\n<li>[#47] Ensure email validator checks for empty string</li>\n<li>[#42] Can now include field names in error strings via `field` placeholder</li>\n<li>[#39] Fix issue with FormItIsChecked/Selected to prevent output from occurring if not checked</li>\n<li>[#37] Fix allowTags validator to work, and work with parameters encapsulated by ^</li>\n</ul>\";s:9:\"createdon\";s:24:\"2021-01-23T08:02:18+0000\";s:9:\"createdby\";s:5:\"sterc\";s:8:\"editedon\";s:24:\"2021-07-19T12:20:36+0000\";s:10:\"releasedon\";s:24:\"2021-01-23T08:02:18+0000\";s:9:\"downloads\";s:6:\"507631\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:4:\"true\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.2\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=600bd80aabf21672e2388813\";s:9:\"signature\";s:15:\"formit-4.2.6-pl\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:3:\"2.2\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:77:\"http://modx.s3.amazonaws.com/extras/4d556c62b2b083396d000b9c/ss-formit-01.png\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"600bd80aabf21672e2388813\";s:7:\"version\";s:24:\"600bd80aabf21672e2388812\";s:8:\"filename\";s:29:\"formit-4.2.6-pl.transport.zip\";s:9:\"downloads\";s:5:\"15954\";s:6:\"lastip\";s:11:\"5.153.5.163\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=600bd80aabf21672e2388813\";}s:17:\"package-signature\";s:15:\"formit-4.2.6-pl\";s:10:\"categories\";s:5:\"forms\";s:4:\"tags\";s:0:\"\";}', 4, 2, 6, 'pl', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('pdotools-2.12.10-pl', '2021-07-20 08:05:08', '2021-07-20 06:05:24', '2021-07-20 08:05:24', 0, 1, 1, 0, 'pdotools-2.12.10-pl.transport.zip', NULL, 'a:8:{s:9:\"changelog\";s:28329:\"Changelog for pdoTools.\n\n2.12.10 pl\n==============\n- [#308] [pdoPage] Fixed the type of snippet property \"field\"\n\n2.12.9 pl\n==============\n- [Fenom] Update to version 2.12.0\n\n2.12.8 pl\n==============\n- [pdoPage] Fix reflected XSS in generated meta links\n\n2.12.7 pl\n==============\n- Make pdoTools canonical url work with Babel #304\n\n2.12.6 pl\n==============\n- [pdoPage] Reverted back #287\n\n2.12.5 pl\n==============\n- [Fenom] Added caching dinamic properties to prevent speed degradation.\n\n2.12.4 pl\n==============\n- [#290] Improved running snippet via @FILE binding.\n- [#296] Fix adding quotes to numeric values.\n- [#297] Make cross context weblink url possible.\n- [#274] [Fenom] User, resource and context properties are now dinamic.\n- [#287] [pdoPage] Remove prev & next meta tags\n- [#294] [#298] Improved pdopage.js and updated minified js files\n\n2.12.3 pl\n==============\n- Fixed E_NOTICE introduced in #285.\n\n2.12.2 pl\n==============\n- Updated chunks for Bootstrap 4.\n\n2.12.1 pl\n==============\n- [pdoMenu] Reverted back #283 and fixed docs for &tplCategoryFolder.\n- [#284] [Fenom] Fixed properties of $_modx->context variable.\n- [#275] [Fenom] Added \"reset\" and \"end\" modifiers.\n\n2.12.0 pl\n==============\n- [Fenom] More security fixes from Sergey Shlokov.\n- [#278] [pdoPage] Fixed caching.\n- [pdoPage] Show internal log on &showLog=`1`.\n- [#283] [pdoMenu] Fixed use of &tplCategoryFolder according to docs.\n- [#281] [pdoTools] Fixed load of models from case sensitive paths.\n- [#277] [pdoCrumbs] Ability to specify &customParents.\n- [#265] [pdoFetch] Fixed return of \"Array\" on SQL errors.\n\n2.11.3 pl\n==============\n- Added French lexicon entries.\n\n2.11.2 pl\n==============\n- Fix detection of element names starting with a number.\n\n2.11.1 pl\n==============\n- Faster processing of static files.\n\n2.11.0 pl\n==============\n- [pdoFetch] Added \"setTotal\" option to enable calculating all rows (\"SQL_CALC_FOUND_ROWS\"), which will also result in the \"totalVar\" placeholder is being set.\n- [pdoFetch] Option \"setTotal\" disabled by default.\n- [pdoPage] Forces \"setTotal\" to provide pagination.\n\n2.10.6 pl\n==============\n- Improved German lexicons.\n\n2.10.5 pl\n==============\n- [pdoTools] Ability to return array from \"prepareSnippet\" for more performance.\n- [FenomX] Fixed method \"getStore\".\n\n2.10.4 pl\n==============\n- [Fenom] Do not output raw tags if there was a compile errors.\n- [#266] [pdoMenu] Fixed the setting of \"here\" and \"self\" classes.\n- [#261] [Fenom] Fixed unexpected behavior of the fenom tag \"ignore\".\n\n2.10.3 pl\n==============\n- Improved compatibility with PHP 7.2\n- [pdoFetch] Ability to use arrays in \"&sortby\".\n\n2.10.2 pl\n==============\n- [Fenom] Improved processing of caching snippets inside uncached.\n\n2.10.1 pl\n==============\n- [#256] [Fenom] Fixed bug with caching of scripts and styles.\n- [pdoPage] \"&setMeta\" now works when \"&cache=`1`\".\n- [Fenom] Improved regular expression to detect Fenom syntax.\n\n2.10.0 pl\n==============\n- [#259] [pdoFetch] Fixed error when passed pure SQL into \"having\" parameter.\n- [#258] [pdoPage] Canonical urls always must be \"full\".\n- [#245] [pdoMenu] Ability to use conditional tpls instead of regular \"tpl\".\n- [#121] [pdoMenu] Improved work of specified chunks with weblinks.\n\n2.9.3 pl\n==============\n- [#255] [Fenom] New system setting \"pdotools_fenom_save_on_errors\" to save code on compilation errors in the cache directory for later debugging.\n\n2.9.2 pl\n==============\n- [pdoParser] Proper traversal trough arrays fields of resources in fast tags.\n\n2.9.1 pl\n==============\n- [Fenom] Updated to version 2.11.8.\n\n2.9.0 pl\n==============\n- [pdoPage] Improved \"&pageLinkScheme\" logic.\n- [#249] A little improvement for resource modifier.\n- [#251] [pdoFetch] More compatibility with PHP 7.1.\n- [#253] [pdoPage] Fixing a missing pagination in Ajax mode.\n- [#254] [Fenom] Options of json modifiers must check version of PHP to proper work.\n\n2.8.6 pl\n==============\n- [pdoArchive] Ability to specify fields with regular dates in the \"&dateField\" parameter.\n- [Fenom] Added all options to json modifiers.\n\n2.8.5 pl\n==============\n- [#248] [pdoPage] Fixed E_WARNING with array values in GET parameters.\n\n2.8.4 pl\n==============\n- Ability to use file elements in core path outside base path.\n- Fixed bug with the caching of elements.\n\n2.8.3 pl\n==============\n- [Fenom] Fixed rare bug with the caching of scripts and styles that was registered via Fenom.\n- [pdoPage] Fixed the \"?page=1\" in the url when ajaxMode is enabled.\n- [pdoPage] Snippet will register \"canonical\" link if \"&setMeta\" is enabled.\n- [pdoPage] Fix processing of request with rawurldecode on some servers.\n- [pdoTools] Added passing of \"scriptProperties\" values into a \"&prepareSnippet\".\n\n2.8.2 pl\n==============\n- [pdoMenu] Fixed the checking of permissions for containers.\n- [pdoPage] Added the ability to run files as &element.\n- [pdoTools] The method runSnippet will return boolean false if snippet was not found.\n- [Fenom] Fixed the possible bugs of caching of scripts and styles.\n\n2.8.1 pl\n==============\n- [#244] Fixed possible duplicate of a container in the jquery.pdopage.js.\n- Added fallback class for the enable modParser.\n\n2.8.0 pl\n==============\n- Ability to use an arrays in the parameters of the snippets.\n- Replaced modX::toJSON and modX::fromJSON to native php functions.\n\n2.7.5 pl\n==============\n- Fenom is now managed via composer.\n- [Fenom] Modifier \"resource\" no longer checks fields of resources in their schema.\n- [Fenom] Modifier \"strrev\" now can work with arrays.\n- [Fenom] Improved modifier \"ismember\".\n\n2.7.4 pl\n==============\n- [#242] Added jquery.pdopage.js plugin and minified versions.\n- [#241] [Fenom] Improved the retrieving of TVs for a current resource.\n- [pdoFetch] Restored the checking of possible SQL injections in the &sortby with xPDO 2.5.1.\n\n2.7.3 pl\n==============\n- Improved compatibility with MODX 2.5.2.\n\n2.7.2 pl\n==============\n- [pdoFetch] Some security improvements.\n\n2.7.1 pl\n==============\n- Some security improvements in the connector.php.\n- Fixed bug with registering scripts in styles via Fenom introduced in version 2.7.0.\n\n2.7.0 pl\n==============\n- [Fenom] Updated to the version 2.11.4.\n- [Fenom] Fixed resource cache for scripts and styles registered by Fenom.\n- [Fenom] Added rand() and number_format() to an allowed PHP functions.\n- [Fenom] New output filter \"number\" (or \"number_format\").\n\n2.6.5 pl\n==============\n- Fixed undeclared variable (PHP 7.1)\n\n2.6.4 pl\n==============\n- Added escaping of a MODX tags that being processed in the &prepareSnippet.\n- [#239] Improved work of the &decodeJSON option.\n\n2.6.3 pl\n==============\n- Fixed possible E_NOTICE on line 305 pdofetch.class.php.\n- Fixed possible E_NOTICE when \"snippet\" and \"chunk\" Fenom modifiers was called.\n\n2.6.2 pl\n==============\n- Fixed possible E_NOTICE on line 1317 pdotools.class.php.\n\n2.6.1 pl\n==============\n- Improved compatibility with PHP 5.3.\n\n2.6.0 pl\n==============\n- [Fenom] The ability to extend Fenom via system event \"pdoToolsOnFenomInit\".\n\n2.5.6 pl\n==============\n- [pdoFetch] Ability to join TVs not only to the query main class.\n\n2.5.5 pl\n==============\n- Fixed parse of INLINE chunks with \"@\" symbols.\n\n2.5.4 pl\n==============\n- [#224] Added microMODX::cleanAlias().\n- [#226] [Fenom] Added \"declension\" modifier.\n\n2.5.3 pl\n==============\n- [#221] Fixed typo in month name.\n- [Fenom] Fixed path to compile dir.\n\n2.5.2 pl\n==============\n- [#220] Cache code of snippet with respect to property set.\n\n2.5.1 pl\n==============\n- Fixed cache of snippets in pdoTools::runSnippet().\n\n2.5.0 pl\n==============\n- Improved support of debugParser.\n- [#209] Improved loading of the models.\n- [Fenom] New modifiers: \"snippet\" and \"chunk\".\n- [Fenom] New elements provider: \"file\".\n- New method pdoTools::runSnippet().\n\n2.4.0 pl\n==============\n- Added snippet pdoArchive.\n- [pdoResources] Faster processing of additional snippet parameters to placeholders.\n- [#123] [pdoMenu] Fixed bug with &displayStart and unpublished root nodes.\n- [#207] [pdoMenu] Fixed &webLinkClass option.\n- [#193] [pdoNeighbors] Added parameter &wrapIfEmpty.\n- [#203] [Fenom] Added more PCRE modifiers.\n\n2.3.5 pl\n==============\n- [pdoFetch] Added escaping of columns names in query.\n\n2.3.4 pl\n==============\n- [#200] [pdoFetch] Fixed &sortbyTV with dot in name.\n\n2.3.3 pl\n==============\n- Added system plugin for \"autoload\" of main classes with respect to their paths in system settings.\n\n2.3.2 pl\n==============\n- [#196] [pdoPage] Added workaround to support ClientConfig tags in ajax mode.\n- [Fenom] Added general MODX output filters as Fenom modifiers.\n- [Fenom] Implemented autoload of modifiers from snippets.\n- [Fenom] Removed system setting \"pdotools_fenom_modifiers\".\n\n2.3.1 pl\n==============\n- [pdoSitemap] Lightning fast work chunks processing with &scheme=`uri`.\n- [Fenom] Improved check of syntax before processing.\n\n2.3.0 pl\n==============\n- Removed shortcuts from system core.\n- PSR-2.\n- [Fenom] Added default modifiers: \"url\" and \"lexicon\".\n- [pdoCrumbs] Changed default chunks to ul -> li.\n- [#190] [pdoSitemap] Changed date format to ISO 8601.\n\n2.2.8 pl\n==============\n- [Fenom] Use modResource::getContent() method to get content of current resource in {$_modx->resource}.\n\n2.2.7 pl\n==============\n- [pdoPage] Ability to get access to a javascript configs from 3rd party scripts.\n\n2.2.6 pl\n==============\n- [#184] [Fenom] Updated to version 2.8.2.\n\n2.2.5 pl\n==============\n- [#182] [pdoTitle] Added passing a parameters into nested pdoCrumbs.\n- [pdoSitemap] Added processing of MODX tags if needed.\n- Added method pdoTools::makeUrl().\n- [#181] New url schema type - \"uri\".\n\n2.2.4 pl\n==============\n- [Fenom] Fixed speed issues when MODX snippets are run as Fenom modifiers.\n- [pdoUsers] Fixed overwrite modUser.id by modUserProfile.id.\n\n2.2.3 pl\n==============\n- [pdoPage] Fixed processing of uncached conditions in chunks when ajax mode is enabled.\n\n2.2.2 pl\n==============\n- [pdoPage] Added new parameter &pageLinkScheme.\n\n2.2.1 pl\n==============\n- [#155] [pdoPage] Added new parameter &ajaxHistory.\n- [pdoPage] Added connector for requests in ajax mode.\n\n2.2.0 pl\n==============\n- [#175] [pdoFetch] Ability to specify sequence of table joins.\n- [#174] [Fenom] Ability to add Fenom modifiers into pdoParser.\n\n2.1.21 pl\n==============\n- [#175] [pdoFetch] Ability to specify sequence of table joins.\n- [#176] [pdoUsers] Fixed &toPlaceholders with &returnIds.\n\n2.1.20 pl\n==============\n- [pdoSitemap] Fixed default &cacheKey.\n\n2.1.19 pl\n==============\n- [Fenom] Disabled $options in cacheManager::set() due to security reasons.\n\n2.1.18 pl\n==============\n- [Fenom] Fixed ability to access to the modX object from {$_modx} variable.\n- [Fenom] Improved method {$_modx->runProcessor()}.\n\n2.1.17 pl\n==============\n- [Fenom] Added {$_modx->getResource($id, $options)}.\n- [Fenom] Added {$_modx->getResources($where, $options)}.\n- [Fenom] Improved support of debugParser.\n\n2.1.16 pl\n==============\n- [Fenom] Added {$_modx->isMember($groups, $matchAll)}.\n- [Fenom] Added {$_modx->getPlaceholders()}.\n\n2.1.15 pl\n==============\n- [pdoPage] Added parameter &strictMode.\n\n2.1.14 pl\n==============\n- [pdoSitemap] Added options for cache snippets results.\n- [pdoSitemap] Cache enabled by default.\n\n2.1.13 pl\n==============\n- [#163] Fixed ignoring of &idx in pdoResources and pdoUsers.\n\n2.1.12 pl\n==============\n- [pdoPage] [#161] Fixed support of arrays in hash when &ajaxMode is enabled.\n\n2.1.11 pl\n==============\n- [#150] [Fenom] Fixed processing of TVs values in a {$_modx->resource}.\n- [#147] [pdoSitemap] Fixed possible duplicates in sitemap.\n- [pdoPage] Support of arrays in hash when &ajaxMode is enabled.\n\n2.1.10 pl\n==============\n- [#157] [Fenom] Fixed pre-processing of Fenom tags in extending templates and chunks.\n- [#145] [pdoPage] Rolled back #81 due to issues with complicate forms.\n\n2.1.9 pl\n==============\n- [#144] [pdoParser] Leave unprocessed FastField tags so other components could parse them.\n- [pdoFetch] Updated syntax for \"SET SQL_BIG_SELECTS = 1\".\n\n2.1.8 pl\n==============\n- [Fenom] Ability to use id of chunks and templates in {include} and {extends}.\n- [Fenom] Added support of debugParser.\n- [Fenom] Added {$_modx->getChildIds()} and {$_modx->getParentIds()}.\n\n2.1.7 pl\n==============\n- Fixed work with integer values from system setting \"link_tag_scheme\".\n\n2.1.6 pl\n==============\n- [Fenom] Updated to version 2.8.0.\n- [Fenom] Improved check of syntax to process content of chunks.\n- [pdoParser] Fixed E_WARNING on line 50 introduced in previous version.\n\n2.1.5 pl\n==============\n- [Fenom] Fixed register of scripts and styles by cached snippets.\n\n2.1.4 pl\n==============\n- [Fenom] Fixed TVs in {$_modx->resource}\n- [Fenom] Added new method {$_modx->getInfo()}\n\n2.1.3 pl\n==============\n- Improved work of system setting \"pdotools_fenom_php\".\n\n2.1.2 pl\n==============\n- [Fenom] Replaced {$_modx->placeholders} to functions.\n\n2.1.1 pl\n==============\n- pdoParser enabled by default.\n- [Fenom] Fixed return content in {$_modx->getChunk}.\n- [Fenom] Added cache for snippets called through {$_modx->runSnippet}.\n- [pdoTools] Added processing of property sets for chunks.\n- [pdoResources] Set additionalPlaceholders in &tplWrapper\n\n2.1.0 pl\n==============\n- [Fenom] Updated Fenom to version 2.7.1.\n- [Fenom] Added safe system variable {$_modx}.\n- [Fenom] Added MODX template provider for chunks and templates.\n\n2.0.5 pl\n==============\n- [#132] Fixed possible E_WARNING on empty chunks.\n- [#122] Ability to use 3rd party pdoPage and pdoMenu classes.\n- [#118] [pdoPage] Fixed parameter &offset.\n- [pdoPage] Fixed default CSS classes in \"empty\" chunks.\n\n2.0.4 pl\n==============\n- Fixed processing of \"pdotools_fenom_cache\" system setting.\n\n2.0.3 pl\n==============\n- [#125] [pdoTitle] Fixed parameter &id.\n\n2.0.2 pl\n==============\n- Improved processing of @FILE binding.\n\n2.0.1 pl\n==============\n- Fixed possible E_WARNING on line 319 and 349 of pdoTools class.\n- Disabled system option \"pdotools_fenom_modx\" by default due to security issues.\n\n2.0.0 pl\n==============\n- New system settings to control the Fenom.\n- Ability to enable caching of Fenom compiled chunks.\n- Improved handling of parameter \"cache_key\".\n- [pdoMenu] Improved work when &cache is enabled.\n\n2.0.0 rc2\n==============\n- Compiled Fenom templates cached to RAM instead of HDD.\n- Removed plugin pdoTools.\n\n2.0.0 rc1\n==============\n- Added Fenom template engine.\n- Fenom enabled by default.\n- pdoParser uses Fenom to process pages.\n\n1.11.2 pl\n==============\n- [#116] [pdoTitle] Disabled &register_js by default.\n\n1.11.1 pl\n==============\n- [pdoSitemap] Fixed default url scheme after last update.\n\n1.11.0 pl1\n==============\n- [pdoTitle] Added new snippet.\n- [pdoPage] Added support of snippet pdoTitle when &ajaxMode is enabled.\n- [pdoPage] Prevent overwriting of scripts and styles of nested &element by default parameters.\n- [pdoPage] Added triggering javascript event \"pdopage_load\".\n\n1.10.2 pl1\n==============\n- [#112] Parameter &scheme was set to system default in all snippets.\n- [#111] [pdoPage] Added ability to set \"prev\" & \"next\" meta tags.\n- [#107] [pdoNeighbors] Added ability to specify &parents for work.\n- [#106] [pdoMenu] Fixed \"hereClass\" and \"selfClass\" enabled &useWeblinkUrl parameter.\n- [#104] [pdoMenu] Snippet now using \"pagetitle\" for link titles if \"titleOfLinks\" is empty.\n\n1.10.1 pl\n==============\n- [#108] [pdoFetch] Fixed E_ERROR when using &sortbyTV.\n- [pdoFetch] Added new parameter &sortbyTVType.\n- [pdoFetch] If &sortdirTV is not set it will be equal to &sortdir.\n\n1.10.0 pl\n==============\n- [pdoMenu] Returned and fixed parameter &showDeleted.\n- [pdoPage] Improved default javascript.\n- [pdoPage] Fixed overwriting &frontend_js and &frontend_css parameters when &ajax is disabled.\n- [pdoFetch] Ability to specify functions in select fields.\n- [pdoTools] Ability to use compound quick placeholders.\n\n1.10.0 beta4\n==============\n- [pdoPage] Ajax pagination out from the box.\n- [pdoFetch] Improved log of getCollection.\n- [pdoTools] Added tplOperator \"contains\".\n\n1.9.7 pl\n==============\n- [#99] [pdoFetch] Fixed returning of primary key in \"ids\" mode.\n- [#97] [pdoTools] Fixed default tplPath for @FILE chunks.\n- [#85] [pdoFetch] Added function getChildIds().\n- [pdoFetch] Disabled \"total\" placeholder for &return=`ids`.\n\n1.9.6 pl2\n==============\n- [pdoFetch] Fixed exclusion of field \"id\" in custom classes.\n- [pdoMenu] Improved parameter &countChildren.\n- [#100] [pdoMenu] Removed parameter &showDeleted because it not working.\n\n1.9.6 rc\n==============\n- Added execution of SQL_BIG_SELECTS = 1 before query.\n- [pdoPage] Added parameter &ajax for supporting of ajax requests.\n\n1.9.5 pl1\n==============\n- Rolled back #72 due to issues in pdoMenu.\n\n1.9.5 pl\n==============\n- Added ability to return JSON or serialized string from pdoFetch::run().\n- [#83] [pdoMenu] Added level placeholder to outer templates.\n- [#82] [pdoFetch] Added support for complex &where parameter.\n- [#81] [pdoPage] Improved handling of arrays in url.\n- [#77] Fixed making of url for modWebLink to another context.\n- [#72] [pdoTools] Fixed order for children of excluded parents in buildTree.\n- [#60] [pdoMenu] Fixed parameter &tplCategoryFolder.\n- [#57] [pdoMenu] Improved placeholder [[+children]].\n- [#57] [pdoMenu] Added parameter &countChildren.\n\n1.9.4 pl1\n==============\n- [#78] [pdoNeighbors] Added parameter &loop=`1` for looping links.\n- [pdoSitemap] Fixed possible E_FATAL php-apc.\n\n1.9.3 pl1\n==============\n- [pdoTools] Ability to specify value for empty quick placeholders.\n- [pdoTools] Ability to use INLINE snippets and filters.\n- [pdoFetch] Improved loading of 3rd party models.\n- [pdoPage] Fixed E_WARNING when &limit=`0`.\n\n1.9.2 pl2\n==============\n- [#56] [pdoParser] Fixed wrong links processing.\n- [#53] Improved loading of classes.\n- [pdoField] Rolled back to original logic of \"top\" and \"topLevel\" parameters due to issues.\n- [pdoField] Added parameter \"ultimate\" to emulate logic of UltimateParent.\n\n1.9.1 pl6\n==============\n- [pdoFetch] Adding alias of main class of query to \"sortby\" if no alias exists.\n- [pdoFetch] Improved selecting of all fields of class with specified alias.\n- [pdoField] Parameter \"topLevel\" works exactly as in UltimateParent.\n- [pdoField] Parameter \"top\" without \"topLevel\" returns parent on \"top\" level.\n\n1.9.1 pl\n==============\n- [#47] [pdoMenu] Fixed processing &tplOuter when output is empty.\n- [#46] [pdoParser] Fixed processing of TVs with dots in name.\n- [#44] [pdoMenu] Improved handling of Wayfinder parameters \"includeDocs\" and \"excludeDocs\".\n- [#37] [pdoField] get the default, only if the field was empty.\n- [#34] Fixed processing of \"modSymLink\" documents.\n- [#32] Improved cache methods.\n- [#26] Replaced FIND_IN_SET() to FIELD().\n- [pdoFetch] Ability to work with objects, that has multiple primary keys.\n- [pdoPage] New parameter &cacheAnonymous.\n- [pdoMenu] New parameter &cacheAnonymous.\n- Added aliases for sort query in order of specified &resources: \"ids\" or \"resources\".\n- Removed unnecessary query in pdoFetch::getCollection().\n- Improved pdoFetch::getCollection().\n- Renamed pdoFetch::getObject() to getArray(). Now it uses getCollection for retrieve results.\n- pdoTools::setCache() now returns cacheKey.\n- pdoFetch::getObject() is now alias of pdoFetch::getArray().\n\n1.9.0 pl2\n==============\n- [pdoMenu] Chunks of parents and categories are now depends on the descendants and ignores parameter isfolder.\n- [pdoNeighbors] Speed improvements.\n- [#27] Ability to specify custom pdoFetch and pdoTools classes through FQN system settings.\n- [pdoParser] Handles TVs in resource tags.\n- [pdoParser] Handles output filters.\n- [pdoFetch] Improved method \"addTVFilters\", that used by \"tvFilters\" parameter in pdoResources.\n- [pdoSitemap] Pass the whole row so we can use more columns.\n\n1.9.0 rc\n==============\n- Improved method pdoTools::getChunk().\n- Improved method pdoTools::parseChunk().\n- Improved method pdoTools::fastProcess().\n- Improved method pdoTools::makePlaceholders().\n- Accelerated snippet pdoNeighbors.\n- Fixed bug in pdoUsers when usersgroups was specified by names.\n- getObject and getCollection() runs in separate instance.\n- Added pdoParser with FastField tags.\n- [pdoPage] Changed default value of parameter \"totalVar\" due to issues.\n- [#24] Fixed prepareTVs and empty tvPrefix.\n- [#23] [pdoResources] Ability to return ids to placeholder.\n- Fixed warning when getObject returns false.\n- Fixed placeholders prefix in recursive makePlaceholders.\n\n1.8.9 pl4\n==============\n- Added german lexicon.\n- [#20] Ability to specify not JSON string in &where=``.\n- [pdoPage] Added parameter \"pageCountVar\" for specifying name of variable with number of pages.\n- [pdoPage] Support Bootstrap3.\n- [pdoField] Ability to specify class for fetching field.\n- Improved joining of tables in pdoFetch.\n- Added preparing and processing TVs in getObject and getCollection methods.\n- Improved load of 3rd party models.\n\n1.8.8 pl2\n==============\n- Rewrited cache of snippets \"pdoMenu\" and \"pdoPage\".\n- New methods pdoTools::getCache() and pdoTools::setCache().\n- [pdoMenu] Fixed parameter \"tplParentRowActive\".\n- [#18] Fixed \"idx\" in pdoTools::defineChunk().\n\n1.8.7 pl\n==============\n- Added boolean parameter \"decodeJSON\" to specify whether or not decode JSON in results rows.\n- Removed default \"sortby\" and \"sortdir\" from class pdoFetch for better work of getCollection() method.\n\n1.8.6 pl2\n==============\n- Fixed possibly E_NOTICE when site has no extension packages installed.\n- [#17] [pdoMenu] Added placeholder [[+wf.menutitle]].\n- [#16] [pdoMenu] Disabled status verification of specified parents.\n- [#13] [pdoMenu] Improved work with root of multiple contexts.\n- [pdoMenu] Fixed bug when specified parent has only the one child.\n- [pdoResources] Added parameter \"&useWeblink\" and placeholder \"[[+link]]\". It is disabled by default.\n\n1.8.5 pl\n==============\n- [#15] [pdoPage] Improved generation of links to pages.\n- [pdoMenu] Improved processing of classes \"modSymlink\" and \"modWeblink\".\n- [pdoBreadcrumbs] Improved processing of classes \"modSymlink\" and \"modWeblink\". Added parameter \"&useWeblink\".\n- [pdoNeighbors] Added parameter \"&useWeblink\" and placeholder \"[[+link]]\".\n- [pdoSitemap] Added parameter \"&useWeblink\" and proper processing of classes \"modSymlink\" and \"modWeblink\".\n\n1.8.4 pl\n==============\n- [pdoCrumbs] Added ability to specify the crumbs root (defaulting to site_start)\n- [pdoCrumbs] Added ability to specify class_key (ie. to generate crumbs only for derivative classes)\n- More accuracy when try to decode json in fetch results.\n\n1.8.3 pl3\n==============\n- Improved preparation of template variables.\n- Improved transfer of additional parameters from snippet to results.\n- [pdoMenu] Added lexicon entries for parameters.\n- [pdoMenu] Allow to specify \"limit\" and \"offset\".\n- [#12] Added parameter \"toPlaceholder\".\n- Increased accuracy of timings log.\n\n1.8.1 pl2\n==============\n- Accelerated method pdoTools::getChunk().\n- Added snippet pdoMenu.\n- Added support for tags [^qt^] and [^q^].\n\n1.8.0 pl\n==============\n- [#10] [pdoPage] Added placeholder \"page\".\n- [#9] [pdoPage] Added placeholder \"pageCount\".\n- [#8] Improved support of big numbers when sorting by TVs.\n- Fixed work of pdoPage when it called multiple times on page.\n- Fixed mistype in pdoFetch::getCollection().\n\n1.8.0 rc5\n==============\n- Added processing of JSON fields. For example, you can use [[+extended.keyname]] in chunks of pdoUsers.\n- pdoTools was removed from system extension packages, but you can still use \"$modx->getService(\'pdoFetch\');\".\n- Fixed getting chunk without any parameters.\n- Added snippet pdoPage.\n\n1.8.0 beta1\n==============\n- Improved handling of \"default_text\" parameter in TVs.\n- Fixed and improved method pdoTools::buildTree().\n- The logic of build the conditions of the query moved into new method pdoFetch::additionalConditions().\n- Improved method pdoFetch::addSelects().\n- Improved method pdoFetch::addSort().\n- Improved some snippets in accordance to new abilities of pdoFetch: pdoResources, pdoNeighbors and pdoSitemap.\n\n1.7.4 pl\n==============\n- [#7] [pdoSitemap] Fixed hidden parameters \"&sortBy\" and \"&sortDir\" that used for compatibility with GoogleSiteMap.\n\n1.7.3 pl1\n==============\n- [pdoCrumbs] Fixed possible E_NOTICE on line 157.\n- [pdoCrumbs] Fixed generation of link to site start in relative mode.\n- [#6] pdoCrumbs and pdoNeighbors are now uses \"menutitle\" by default. If it is empty, will be used \"pagetitle\".\n\n1.7.2 pl1\n==============\n- [pdoField] Added new parameters: \"default=``\" and \"&field=``\".\n- [pdoField] Improved logic of \"&top=``\" and \"&topLevel=``\".\n- Added 2 new methods: pdoFetch::getObject() and pdoFetch::getCollection().\n- Ability to send arrays into common config parameters. JSON is still supported.\n- Improved select of default values in TVs.\n\n1.7.1 pl\n==============\n- [pdoCrumbs] Fixed work with \"modSymLink\" and \"modWebLink\" resources.\n\n1.7.0 pl1\n==============\n- New snippet pdoCrumbs.\n- New snippet pdoField.\n- New snippet pdoSitemap.\n- New snippet pdoNeighbors.\n- Ability to specify snippet for preparation of fetched rows by parameter \"&prepareSnippet=``\".\n- Added method pdoTools::checkPermissions() for checking user privileges to view the results.\n- Added @TEMPLATE binding. You can use name or id of any template. If empty - will use template of each row.\n- [pdoResources] Improved parameter \"&context\".\n- [pdoResources] Script properties are now passed to chunks. You can send any placeholders to it.\n\n1.6.0 pl1\n==============\n- Fixed compatibility issues in PHP < 5.3.\n\n1.6.0 pl\n==============\n- Added parameter \"&loadModels\" for comma-separated list of 3rd party components that needed for query.\n- Added parameters \"&prepareTVs\" and \"&processTVs\".\n- Added parameters \"&tvFilters\", \"&tvFiltersAndDelimiter\" and \"&tvFiltersAndDelimiter\".\n- Added support of parameters \"&sortbyTV\" and \"&sortdirTV\" for compatibility with getResources.\n- Added ability to use @INLINE and @FILE bindings in all template parameters.\n- Removed method pdoTools::getPlaceholders.\n\n1.5.0 pl2\n==============\n- Fixed sort of decimals in TVs.\n\n1.5.0 pl1\n==============\n- Added processing of simple [[~id]] placeholders in fastMode.\n- Added support of default value for TVs.\n- Improved sort by TVs of types \"number\" and \"date\".\n\n1.5.0 rc\n==============\n- [pdoUsers] Added new snippet \"pdoUsers\".\n- [pdoResources] Fixed \"toSeparatePlaceholders\".\n- [pdoResources] Parameter \"parents\" now supports dash prefix for excluding resources from query by parent.\n- [pdoResources] Fixed issue when snippet runs multiple times at one page.\n\n1.4.1 pl1\n==============\n- Improved \"context\" processing.\n- Fixed \"idx\" when multiple snippets called at one page.\n- Fixed default sortby when joined tables exists.\n\n1.4.1 beta3\n==============\n- Added parameters \"tplCondition\", \"tplOperator\" and \"conditionalTpls\".\n- Added parameter \"select\" for specifying needed columns of selected tables. Can be a JSON string with array.\n- Added parameter \"toSeparatePlaceholders\".\n- Improved \"pdoResources\" snippet.\n\n1.4.0 beta1\n==============\n- Ability to specify JSON string in \"sortby\", for example \"&sortby=`{\"pagetitle\":\"asc\",\"createdon\":\"desc\"}`\"\n- Added automatic replacement of tvs in \"where\" and \"having\" parameters.\n- Added automatic replacement of tvs in \"sortby\" parameter.\n- Removed example snippet\n- Added snippet \"pdoResources\", that could replace \"getResources\".\n- Added method pdoTools::defineChunk() for chunk of given idx.\n- Added \"memory usage\" in log.\n\n1.3.0\n==============\n- Improved placeholders processing when fastMode is enabled.\n- Added support of \"having\" conditions.\n\n1.2.1\n==============\n- Fixed not working \"includeTVs\" when \"leftJoin\" is empty.\n\n1.2.0\n==============\n- Native render of quick placeholders, such as \"<!--pdotools_introtext <blockquote>[[+introtext]]</blockquote>-->\".\n- Added joining of TVs in pdoFetch. Use parameter \"includeTVs\" with comma-separated list of template variables.\n- Added method pdoFetch::setConfig() for proper setting options when you run multiple pdoTools snippets at the one page.\n- Method pdoTools::makeArray is now recursive, for processing a multidimensional arrays of values.\n\n1.1.0\n==============\n- Improved getChunk function.\n\n1.0.1\n==============\n- Fixed setting total in \"chunks\" mode.\n- Improved displaying \"where\" condition in log.\n\n1.0.0\n==============\n- Initial release.\";s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:646:\"--------------------\npdoTools\n--------------------\nAuthor: Vasiliy Naumkin <bezumkin@yandex.ru>\n--------------------\n\nSmall library for creating fast snippets for MODX Revolution that works through PDO.\n\nRequired by Tickets and miniShop2.\n\nMain features\n- Builds queries with xPDO.\n- Retrieve results with PDO.\n- Improved pdoTools::getChunk() function, that processing placeholders faster, than original modX::getChunk().\n\npdoTools snippets will work so faster, than more fields you will retrieve from database at one query.\n\n--------------------\nFeel free to suggest ideas/improvements/bugs on GitHub:\nhttp://github.com/bezumkin/pdoTools/issues\n\";s:9:\"signature\";s:19:\"pdotools-2.12.10-pl\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:47:\"/workspace/package/install/pdotools-2.12.10-pl/\";s:14:\"package_action\";i:0;}', 'pdoTools', 'a:38:{s:2:\"id\";s:24:\"602205f51ef0220b1b288492\";s:7:\"package\";s:24:\"50f8468bf2455436ec00000d\";s:12:\"display_name\";s:19:\"pdotools-2.12.10-pl\";s:4:\"name\";s:8:\"pdoTools\";s:7:\"version\";s:7:\"2.12.10\";s:13:\"version_major\";s:1:\"2\";s:13:\"version_minor\";s:2:\"12\";s:13:\"version_patch\";s:2:\"10\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:9:\"bezumkin2\";s:11:\"description\";s:7:\"<p></p>\";s:12:\"instructions\";s:77:\"<p></p><p>For example just run:</p><p></p><p></p><p></p><p></p><p></p><p></p>\";s:9:\"changelog\";s:162:\"<a href=\"https://raw.githubusercontent.com/bezumkin/pdoTools/master/core/components/pdotools/docs/changelog.txt\" title=\"\" target=\"_blank\">See on GitHub</a><p></p>\";s:9:\"createdon\";s:24:\"2021-02-09T03:48:05+0000\";s:9:\"createdby\";s:9:\"bezumkin2\";s:8:\"editedon\";s:24:\"2021-07-20T06:03:12+0000\";s:10:\"releasedon\";s:24:\"2021-02-09T03:48:05+0000\";s:9:\"downloads\";s:6:\"350931\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.3\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=602205f51ef0220b1b288493\";s:9:\"signature\";s:19:\"pdotools-2.12.10-pl\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:3:\"2.3\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:97:\"http://modx.s3.amazonaws.com/extras/50f8468bf2455436ec00000d/ffe1e89f12c51f01ad55ce39b88731b1.jpg\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"602205f51ef0220b1b288493\";s:7:\"version\";s:24:\"602205f51ef0220b1b288492\";s:8:\"filename\";s:33:\"pdotools-2.12.10-pl.transport.zip\";s:9:\"downloads\";s:5:\"12871\";s:6:\"lastip\";s:13:\"5.101.157.143\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=602205f51ef0220b1b288493\";}s:17:\"package-signature\";s:19:\"pdotools-2.12.10-pl\";s:10:\"categories\";s:14:\"administration\";s:4:\"tags\";s:0:\"\";}', 2, 12, 10, 'pl', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_transport_providers`
--

CREATE TABLE `modx_transport_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `service_url` tinytext DEFAULT NULL,
  `username` varchar(191) NOT NULL DEFAULT '',
  `api_key` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `priority` tinyint(4) NOT NULL DEFAULT 10,
  `properties` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_transport_providers`
--

INSERT INTO `modx_transport_providers` (`id`, `name`, `description`, `service_url`, `username`, `api_key`, `created`, `updated`, `active`, `priority`, `properties`) VALUES
(1, 'modx.com', 'The official MODX transport provider for 3rd party components.', 'https://rest.modx.com/extras/', '', '', '2021-05-28 09:04:51', NULL, 1, 10, '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_users`
--

CREATE TABLE `modx_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `cachepwd` varchar(255) NOT NULL DEFAULT '',
  `class_key` varchar(100) NOT NULL DEFAULT 'modUser',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `remote_key` varchar(191) DEFAULT NULL,
  `remote_data` text DEFAULT NULL,
  `hash_class` varchar(100) NOT NULL DEFAULT 'hashing.modNative',
  `salt` varchar(100) NOT NULL DEFAULT '',
  `primary_group` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `session_stale` text DEFAULT NULL,
  `sudo` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `createdon` int(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_users`
--

INSERT INTO `modx_users` (`id`, `username`, `password`, `cachepwd`, `class_key`, `active`, `remote_key`, `remote_data`, `hash_class`, `salt`, `primary_group`, `session_stale`, `sudo`, `createdon`) VALUES
(1, 'admin', '$2y$10$LqqtS3bEMiUpr20/laYAL.90k68FG9xNCBQ90wdmZ5u572Z0cl/om', '', 'modUser', 1, NULL, NULL, 'hashing.modNative', '36b1336e0ec0da9e7ce497c1181512a0', 1, NULL, 1, 1626684978),
(3, 'xxxx', '202cb962ac59075b964b07152d234b70', '', 'modUser', 1, NULL, NULL, 'hashing.modNative', '', 0, NULL, 0, 0),
(4, 'Roja', '', '', 'modUser', 1, NULL, NULL, 'hashing.modNative', '', 0, NULL, 0, 0),
(6, 'admin@optisol.com', '', '', 'modUser', 1, NULL, NULL, 'hashing.modNative', '', 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_attributes`
--

CREATE TABLE `modx_user_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `internalKey` int(10) NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `blockeduntil` int(11) NOT NULL DEFAULT 0,
  `blockedafter` int(11) NOT NULL DEFAULT 0,
  `logincount` int(11) NOT NULL DEFAULT 0,
  `lastlogin` int(11) NOT NULL DEFAULT 0,
  `thislogin` int(11) NOT NULL DEFAULT 0,
  `failedlogincount` int(10) NOT NULL DEFAULT 0,
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT 0,
  `gender` int(1) NOT NULL DEFAULT 0,
  `address` text NOT NULL,
  `country` varchar(191) NOT NULL DEFAULT '',
  `city` varchar(191) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(191) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `website` varchar(191) NOT NULL DEFAULT '',
  `extended` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_user_attributes`
--

INSERT INTO `modx_user_attributes` (`id`, `internalKey`, `fullname`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `address`, `country`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `website`, `extended`) VALUES
(1, 1, 'Default Admin User', 'admin@gmail.com', '', '', 0, 0, 0, 5, 1626841726, 1626841751, 0, 'lc35q4g9rlq45qve230n50st77', 0, 0, '', '', '', '', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_group_roles`
--

CREATE TABLE `modx_user_group_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT 9999
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_user_group_roles`
--

INSERT INTO `modx_user_group_roles` (`id`, `name`, `description`, `authority`) VALUES
(1, 'Member', NULL, 9999),
(2, 'Super User', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_group_settings`
--

CREATE TABLE `modx_user_group_settings` (
  `group` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `key` varchar(50) NOT NULL,
  `value` text DEFAULT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_messages`
--

CREATE TABLE `modx_user_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(191) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int(10) NOT NULL DEFAULT 0,
  `recipient` int(10) NOT NULL DEFAULT 0,
  `private` tinyint(4) NOT NULL DEFAULT 0,
  `date_sent` datetime DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_settings`
--

CREATE TABLE `modx_user_settings` (
  `user` int(11) NOT NULL DEFAULT 0,
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text DEFAULT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modx_workspaces`
--

CREATE TABLE `modx_workspaces` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `path` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `attributes` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modx_workspaces`
--

INSERT INTO `modx_workspaces` (`id`, `name`, `path`, `created`, `active`, `attributes`) VALUES
(1, 'Default MODX workspace', '{core_path}', '2021-07-19 10:56:13', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `username` varchar(1000) DEFAULT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `email_verification` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Indexes for table `modx_access_actions`
--
ALTER TABLE `modx_access_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Indexes for table `modx_access_category`
--
ALTER TABLE `modx_access_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_context`
--
ALTER TABLE `modx_access_context`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Indexes for table `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Indexes for table `modx_access_namespace`
--
ALTER TABLE `modx_access_namespace`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template` (`template`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `class` (`class`),
  ADD KEY `template` (`template`);

--
-- Indexes for table `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`,`target`,`principal`,`authority`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Indexes for table `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `set` (`set`),
  ADD KEY `action` (`action`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`),
  ADD KEY `for_parent` (`for_parent`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `modx_actions`
--
ALTER TABLE `modx_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `controller` (`controller`);

--
-- Indexes for table `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action` (`action`),
  ADD KEY `type` (`type`),
  ADD KEY `tab` (`tab`);

--
-- Indexes for table `modx_active_users`
--
ALTER TABLE `modx_active_users`
  ADD PRIMARY KEY (`internalKey`);

--
-- Indexes for table `modx_categories`
--
ALTER TABLE `modx_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`parent`,`category`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `modx_categories_closure`
--
ALTER TABLE `modx_categories_closure`
  ADD PRIMARY KEY (`ancestor`,`descendant`);

--
-- Indexes for table `modx_class_map`
--
ALTER TABLE `modx_class_map`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class` (`class`),
  ADD KEY `parent_class` (`parent_class`),
  ADD KEY `name_field` (`name_field`);

--
-- Indexes for table `modx_content_type`
--
ALTER TABLE `modx_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `modx_context`
--
ALTER TABLE `modx_context`
  ADD PRIMARY KEY (`key`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `modx_context_resource`
--
ALTER TABLE `modx_context_resource`
  ADD PRIMARY KEY (`context_key`,`resource`);

--
-- Indexes for table `modx_context_setting`
--
ALTER TABLE `modx_context_setting`
  ADD PRIMARY KEY (`context_key`,`key`);

--
-- Indexes for table `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `hide_trees` (`hide_trees`);

--
-- Indexes for table `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `type` (`type`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `lexicon` (`lexicon`);

--
-- Indexes for table `modx_dashboard_widget_placement`
--
ALTER TABLE `modx_dashboard_widget_placement`
  ADD PRIMARY KEY (`dashboard`,`widget`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_group` (`document_group`),
  ADD KEY `document` (`document`);

--
-- Indexes for table `modx_element_property_sets`
--
ALTER TABLE `modx_element_property_sets`
  ADD PRIMARY KEY (`element`,`element_class`,`property_set`);

--
-- Indexes for table `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `modx_fc_profiles_usergroups`
--
ALTER TABLE `modx_fc_profiles_usergroups`
  ADD PRIMARY KEY (`usergroup`,`profile`);

--
-- Indexes for table `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile` (`profile`),
  ADD KEY `action` (`action`),
  ADD KEY `active` (`active`),
  ADD KEY `template` (`template`);

--
-- Indexes for table `modx_formit_forms`
--
ALTER TABLE `modx_formit_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `topic` (`topic`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_occurred` (`user`,`occurred`);

--
-- Indexes for table `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `is_stream` (`is_stream`);

--
-- Indexes for table `modx_media_sources_contexts`
--
ALTER TABLE `modx_media_sources_contexts`
  ADD PRIMARY KEY (`source`,`context_key`);

--
-- Indexes for table `modx_media_sources_elements`
--
ALTER TABLE `modx_media_sources_elements`
  ADD PRIMARY KEY (`source`,`object`,`object_class`,`context_key`);

--
-- Indexes for table `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`),
  ADD KEY `dashboard` (`dashboard`);

--
-- Indexes for table `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `modx_menus`
--
ALTER TABLE `modx_menus`
  ADD PRIMARY KEY (`text`),
  ADD KEY `parent` (`parent`),
  ADD KEY `action` (`action`),
  ADD KEY `namespace` (`namespace`);

--
-- Indexes for table `modx_namespaces`
--
ALTER TABLE `modx_namespaces`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `modx_property_set`
--
ALTER TABLE `modx_property_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `modx_register_messages`
--
ALTER TABLE `modx_register_messages`
  ADD PRIMARY KEY (`topic`,`id`),
  ADD KEY `created` (`created`),
  ADD KEY `valid` (`valid`),
  ADD KEY `accessed` (`accessed`),
  ADD KEY `accesses` (`accesses`),
  ADD KEY `expires` (`expires`);

--
-- Indexes for table `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue` (`queue`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `modx_session`
--
ALTER TABLE `modx_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `access` (`access`);

--
-- Indexes for table `modx_site_content`
--
ALTER TABLE `modx_site_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `published` (`published`),
  ADD KEY `pub_date` (`pub_date`),
  ADD KEY `unpub_date` (`unpub_date`),
  ADD KEY `parent` (`parent`),
  ADD KEY `isfolder` (`isfolder`),
  ADD KEY `template` (`template`),
  ADD KEY `menuindex` (`menuindex`),
  ADD KEY `searchable` (`searchable`),
  ADD KEY `cacheable` (`cacheable`),
  ADD KEY `hidemenu` (`hidemenu`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `context_key` (`context_key`),
  ADD KEY `uri` (`uri`(191)),
  ADD KEY `uri_override` (`uri_override`),
  ADD KEY `hide_children_in_tree` (`hide_children_in_tree`),
  ADD KEY `show_in_tree` (`show_in_tree`),
  ADD KEY `cache_refresh_idx` (`parent`,`menuindex`,`id`);
ALTER TABLE `modx_site_content` ADD FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`);

--
-- Indexes for table `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `modx_site_plugin_events`
--
ALTER TABLE `modx_site_plugin_events`
  ADD PRIMARY KEY (`pluginid`,`event`),
  ADD KEY `priority` (`priority`);

--
-- Indexes for table `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `moduleguid` (`moduleguid`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `templatename` (`templatename`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `rank` (`rank`),
  ADD KEY `static` (`static`);

--
-- Indexes for table `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tmplvar_template` (`tmplvarid`,`documentgroup`);

--
-- Indexes for table `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tv_cnt` (`tmplvarid`,`contentid`),
  ADD KEY `tmplvarid` (`tmplvarid`),
  ADD KEY `contentid` (`contentid`);

--
-- Indexes for table `modx_site_tmplvar_templates`
--
ALTER TABLE `modx_site_tmplvar_templates`
  ADD PRIMARY KEY (`tmplvarid`,`templateid`);

--
-- Indexes for table `modx_system_eventnames`
--
ALTER TABLE `modx_system_eventnames`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `modx_system_settings`
--
ALTER TABLE `modx_system_settings`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `modx_transport_packages`
--
ALTER TABLE `modx_transport_packages`
  ADD PRIMARY KEY (`signature`),
  ADD KEY `workspace` (`workspace`),
  ADD KEY `provider` (`provider`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `package_name` (`package_name`),
  ADD KEY `version_major` (`version_major`),
  ADD KEY `version_minor` (`version_minor`),
  ADD KEY `version_patch` (`version_patch`),
  ADD KEY `release` (`release`),
  ADD KEY `release_index` (`release_index`);

--
-- Indexes for table `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `api_key` (`api_key`),
  ADD KEY `username` (`username`),
  ADD KEY `active` (`active`),
  ADD KEY `priority` (`priority`);

--
-- Indexes for table `modx_users`
--
ALTER TABLE `modx_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `remote_key` (`remote_key`),
  ADD KEY `primary_group` (`primary_group`);

--
-- Indexes for table `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `internalKey` (`internalKey`);

--
-- Indexes for table `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `authority` (`authority`);

--
-- Indexes for table `modx_user_group_settings`
--
ALTER TABLE `modx_user_group_settings`
  ADD PRIMARY KEY (`group`,`key`);

--
-- Indexes for table `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modx_user_settings`
--
ALTER TABLE `modx_user_settings`
  ADD PRIMARY KEY (`user`,`key`);

--
-- Indexes for table `modx_workspaces`
--
ALTER TABLE `modx_workspaces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_actions`
--
ALTER TABLE `modx_access_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_category`
--
ALTER TABLE `modx_access_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_context`
--
ALTER TABLE `modx_access_context`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_namespace`
--
ALTER TABLE `modx_access_namespace`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_actions`
--
ALTER TABLE `modx_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `modx_categories`
--
ALTER TABLE `modx_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `modx_class_map`
--
ALTER TABLE `modx_class_map`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `modx_content_type`
--
ALTER TABLE `modx_content_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_formit_forms`
--
ALTER TABLE `modx_formit_forms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT for table `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_property_set`
--
ALTER TABLE `modx_property_set`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_site_content`
--
ALTER TABLE `modx_site_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_users`
--
ALTER TABLE `modx_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modx_workspaces`
--
ALTER TABLE `modx_workspaces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
