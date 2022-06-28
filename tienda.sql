-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-06-2022 a las 03:46:29
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_interface_theme`
--

CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL,
  `logo_max_height` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_height` >= 0),
  `logo_max_width` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_width` >= 0),
  `foldable_apps` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `admin_interface_theme`
--

INSERT INTO `admin_interface_theme` (`id`, `name`, `active`, `title`, `title_visible`, `logo`, `logo_visible`, `css_header_background_color`, `title_color`, `css_header_text_color`, `css_header_link_color`, `css_header_link_hover_color`, `css_module_background_color`, `css_module_text_color`, `css_module_link_color`, `css_module_link_hover_color`, `css_module_rounded_corners`, `css_generic_link_color`, `css_generic_link_hover_color`, `css_save_button_background_color`, `css_save_button_background_hover_color`, `css_save_button_text_color`, `css_delete_button_background_color`, `css_delete_button_background_hover_color`, `css_delete_button_text_color`, `list_filter_dropdown`, `related_modal_active`, `related_modal_background_color`, `related_modal_rounded_corners`, `logo_color`, `recent_actions_visible`, `favicon`, `related_modal_background_opacity`, `env_name`, `env_visible_in_header`, `env_color`, `env_visible_in_favicon`, `related_modal_close_button_visible`, `language_chooser_active`, `language_chooser_display`, `list_filter_sticky`, `form_pagination_sticky`, `form_submit_sticky`, `css_module_background_selected_color`, `css_module_link_selected_color`, `logo_max_height`, `logo_max_width`, `foldable_apps`) VALUES
(1, 'Django', 1, 'Django administration', 1, '', 1, '#0C4B33', '#F5DD5D', '#44B78B', '#FFFFFF', '#C9F0DD', '#44B78B', '#FFFFFF', '#FFFFFF', '#C9F0DD', 1, '#0C3C26', '#156641', '#0C4B33', '#0C3C26', '#FFFFFF', '#BA2121', '#A41515', '#FFFFFF', 1, 1, '#000000', 1, '#FFFFFF', 1, '', '0.3', '', 1, '#E74C3C', 1, 1, 1, 'code', 1, 0, 0, '#FFFFCC', '#FFFFFF', 100, 400, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_contacto`
--

CREATE TABLE `app_contacto` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(254) NOT NULL,
  `tipo_consulta` int(11) NOT NULL,
  `mensaje` longtext NOT NULL,
  `avisos` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_producto`
--

CREATE TABLE `app_producto` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `marca` varchar(150) NOT NULL,
  `precio` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_modificacion` date NOT NULL,
  `tipo_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `app_producto`
--

INSERT INTO `app_producto` (`codigo`, `nombre`, `marca`, `precio`, `stock`, `descripcion`, `imagen`, `fecha_creacion`, `fecha_modificacion`, `tipo_id`) VALUES
(1, 'machete', 'chancho', 5000, 5, 'Para proteger el cultivo de los amigos de lo ajeno', 'productos/Machete_RKPi4aF.jpg', '2022-06-12', '2022-06-27', 1),
(2, 'Sustrato Biobizz light mix 50L', 'Biobizz', 10500, 12, 'Para que la plantita crezca limpia, sana y chistosa.', 'productos/biobizz-light-mix-50-litrosjpg_7ZoVueP_YLA9ZZ7.webp', '2022-06-27', '2022-06-27', 2),
(3, 'Mix semillas variedades', 'Chancho', 10000, 12, '¿Es un naranjo?, ¿es un limon?, nosotros tampoco sabemos, prueba suerte con este mix de semillas y descúbrelo tu mismo', 'productos/semilla_de_fruta_Te68hym_B0IouYV.jpg', '2022-06-27', '2022-06-27', 3),
(11, 'Tijeras Podadoras', 'Chancho', 3000, 5, 'Tijeras Podadoras para cortar ramas, hojas, yugulares, etc.', 'productos/tijera_U1jKBGG_DY05IuV.jpg', '2022-06-27', '2022-06-27', 1),
(22, 'Sustrato Atami light mix 50L', 'Atami', 13200, 9, 'Sustrato compuesto de los cocos mas frescos ideal para la absorción de nutrientes.', 'productos/sustrato-coco_h7flnxz.jpg', '2022-06-27', '2022-06-27', 2),
(33, 'Royal Gorilla Auto 1 Semilla RQS', 'Gorilla', 9190, 4, 'Con un THC digno de un real primate esta mezcla de sativa/indica/ruderalis promete dejarte hablando con delfines', 'productos/royal-gorilla-auto-1-semilla-rqs_Z2hozHK_5QZsiZC.jpg', '2022-06-27', '2022-06-27', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_tipo`
--

CREATE TABLE `app_tipo` (
  `id` bigint(20) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `app_tipo`
--

INSERT INTO `app_tipo` (`id`, `tipo`) VALUES
(1, 'Herramienta'),
(2, 'Sustrato'),
(3, 'Semillas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'cliente'),
(2, 'empleado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(9, 1, 13),
(16, 1, 29),
(1, 1, 33),
(2, 1, 34),
(3, 1, 35),
(4, 1, 36),
(5, 1, 37),
(6, 1, 38),
(7, 1, 39),
(8, 1, 40),
(10, 1, 49),
(11, 1, 50),
(12, 1, 51),
(13, 1, 52),
(14, 1, 53),
(15, 1, 56),
(17, 2, 29),
(18, 2, 30),
(19, 2, 31),
(20, 2, 32),
(21, 2, 33),
(22, 2, 34),
(23, 2, 35),
(24, 2, 36),
(25, 2, 37),
(26, 2, 38),
(27, 2, 39),
(28, 2, 40),
(29, 2, 45),
(30, 2, 46),
(31, 2, 48),
(32, 2, 49),
(33, 2, 50),
(34, 2, 51),
(35, 2, 52),
(36, 2, 53),
(37, 2, 54),
(38, 2, 55),
(39, 2, 56);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add Theme', 1, 'add_theme'),
(2, 'Can change Theme', 1, 'change_theme'),
(3, 'Can delete Theme', 1, 'delete_theme'),
(4, 'Can view Theme', 1, 'view_theme'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add contacto', 8, 'add_contacto'),
(30, 'Can change contacto', 8, 'change_contacto'),
(31, 'Can delete contacto', 8, 'delete_contacto'),
(32, 'Can view contacto', 8, 'view_contacto'),
(33, 'Can add productos_ carro', 9, 'add_productos_carro'),
(34, 'Can change productos_ carro', 9, 'change_productos_carro'),
(35, 'Can delete productos_ carro', 9, 'delete_productos_carro'),
(36, 'Can view productos_ carro', 9, 'view_productos_carro'),
(37, 'Can add suscripcion', 10, 'add_suscripcion'),
(38, 'Can change suscripcion', 10, 'change_suscripcion'),
(39, 'Can delete suscripcion', 10, 'delete_suscripcion'),
(40, 'Can view suscripcion', 10, 'view_suscripcion'),
(41, 'Can add tipo', 11, 'add_tipo'),
(42, 'Can change tipo', 11, 'change_tipo'),
(43, 'Can delete tipo', 11, 'delete_tipo'),
(44, 'Can view tipo', 11, 'view_tipo'),
(45, 'Can add producto', 12, 'add_producto'),
(46, 'Can change producto', 12, 'change_producto'),
(47, 'Can delete producto', 12, 'delete_producto'),
(48, 'Can view producto', 12, 'view_producto'),
(49, 'Can add carro', 13, 'add_carro'),
(50, 'Can change carro', 13, 'change_carro'),
(51, 'Can delete carro', 13, 'delete_carro'),
(52, 'Can view carro', 13, 'view_carro'),
(53, 'Can add orden', 14, 'add_orden'),
(54, 'Can change orden', 14, 'change_orden'),
(55, 'Can delete orden', 14, 'delete_orden'),
(56, 'Can view orden', 14, 'view_orden');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$I5uP3LFZws5YQt9O0rv3d6$iR92Q2X6gkwi39d8swLd48BKqrdtocIDg/8Hh+FNPq0=', '2022-06-27 22:44:19.147302', 1, 'admin', '', '', 'asd@gmail.com', 1, 1, '2022-06-11 18:51:31.211450'),
(2, 'pbkdf2_sha256$320000$TJUN7UbDXuGhLTHofrVqS2$3K9sWZF1iltMKkqf1aflAFCXPkSPllWXP6P0Ltl9Avw=', '2022-06-27 22:37:22.643464', 0, 'chabelo', 'chablin', 'weta', 'asde@gmail.com', 0, 1, '2022-06-12 19:39:46.276788'),
(3, 'pbkdf2_sha256$320000$aeuelnPrUMYulPk39ToU2W$ssruxO6BC2MpLLRJI2nAc42pVhdPOnwPzRwINLO71dM=', NULL, 0, 'lorenzo', 'lolosaurio', 'lamas', 'akl@gmail.com', 0, 1, '2022-06-27 18:59:13.057811');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_carro`
--

CREATE TABLE `db_carro` (
  `id` bigint(20) NOT NULL,
  `producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_orden`
--

CREATE TABLE `db_orden` (
  `nombre_p` varchar(50) NOT NULL,
  `precio_p` int(11) NOT NULL,
  `imagen_p` varchar(100) DEFAULT NULL,
  `codigo_p` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `db_orden`
--

INSERT INTO `db_orden` (`nombre_p`, `precio_p`, `imagen_p`, `codigo_p`) VALUES
('Tijeras Podadoras', 3000, 'productos/tijera_U1jKBGG_DY05IuV.jpg', 2),
('Mix semillas variedades', 10000, 'productos/semilla_de_fruta_Te68hym_B0IouYV.jpg', 3),
('Sustrato Atami light mix 50L', 13200, 'productos/sustrato-coco_h7flnxz.jpg', 22),
('Royal Gorilla Auto 1 Semilla RQS', 9190, 'productos/royal-gorilla-auto-1-semilla-rqs_Z2hozHK_5QZsiZC.jpg', 33);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_productos_carro`
--

CREATE TABLE `db_productos_carro` (
  `codigo_producto` int(11) NOT NULL,
  `nombre_producto` varchar(50) NOT NULL,
  `precio_producto` int(11) NOT NULL,
  `imagen_producto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `db_productos_carro`
--

INSERT INTO `db_productos_carro` (`codigo_producto`, `nombre_producto`, `precio_producto`, `imagen_producto`) VALUES
(1, 'machete', 5000, 'productos/Machete_RKPi4aF.jpg'),
(2, 'Sustrato Biobizz light mix 50L', 10500, 'productos/biobizz-light-mix-50-litrosjpg_7ZoVueP_YLA9ZZ7.webp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_sub`
--

CREATE TABLE `db_sub` (
  `user` varchar(50) NOT NULL,
  `suscripcion` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `db_sub`
--

INSERT INTO `db_sub` (`user`, `suscripcion`) VALUES
('admin', 1),
('chabelo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-06-12 19:30:32.105425', '1', 'Herramienta', 1, '[{\"added\": {}}]', 11, 1),
(2, '2022-06-12 19:31:13.052590', '1', 'machete', 1, '[{\"added\": {}}]', 12, 1),
(3, '2022-06-12 19:40:36.868147', 'chabelo', 'Suscripcion object (chabelo)', 1, '[{\"added\": {}}]', 10, 1),
(4, '2022-06-12 19:45:28.496324', 'chabelo', 'Suscripcion object (chabelo)', 3, '', 10, 1),
(5, '2022-06-12 20:16:24.736039', 'chabelo', 'Suscripcion object (chabelo)', 1, '[{\"added\": {}}]', 10, 1),
(6, '2022-06-27 18:47:15.443480', '1', 'cliente', 1, '[{\"added\": {}}]', 4, 1),
(7, '2022-06-27 20:25:54.740887', '2', 'Tijeras Podadoras', 3, '', 14, 1),
(8, '2022-06-27 20:25:54.760919', '1', 'machete', 3, '', 14, 1),
(9, '2022-06-27 20:36:34.557782', '2', 'Tijeras Podadoras', 3, '', 14, 1),
(10, '2022-06-27 21:58:08.935923', '2', 'Sustrato', 1, '[{\"added\": {}}]', 11, 1),
(11, '2022-06-27 21:58:21.167913', '3', 'Semillas', 1, '[{\"added\": {}}]', 11, 1),
(12, '2022-06-27 22:51:50.717170', '2', 'empleado', 1, '[{\"added\": {}}]', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'admin', 'logentry'),
(1, 'admin_interface', 'theme'),
(13, 'app', 'carro'),
(8, 'app', 'contacto'),
(14, 'app', 'orden'),
(12, 'app', 'producto'),
(9, 'app', 'productos_carro'),
(10, 'app', 'suscripcion'),
(11, 'app', 'tipo'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(7, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-06-11 18:50:47.778134'),
(2, 'auth', '0001_initial', '2022-06-11 18:50:48.229504'),
(3, 'admin', '0001_initial', '2022-06-11 18:50:48.330342'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-06-11 18:50:48.338923'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-06-11 18:50:48.345875'),
(6, 'admin_interface', '0001_initial', '2022-06-11 18:50:48.372832'),
(7, 'admin_interface', '0002_add_related_modal', '2022-06-11 18:50:48.441619'),
(8, 'admin_interface', '0003_add_logo_color', '2022-06-11 18:50:48.461566'),
(9, 'admin_interface', '0004_rename_title_color', '2022-06-11 18:50:48.473559'),
(10, 'admin_interface', '0005_add_recent_actions_visible', '2022-06-11 18:50:48.491516'),
(11, 'admin_interface', '0006_bytes_to_str', '2022-06-11 18:50:48.543349'),
(12, 'admin_interface', '0007_add_favicon', '2022-06-11 18:50:48.583272'),
(13, 'admin_interface', '0008_change_related_modal_background_opacity_type', '2022-06-11 18:50:48.610170'),
(14, 'admin_interface', '0009_add_enviroment', '2022-06-11 18:50:48.646103'),
(15, 'admin_interface', '0010_add_localization', '2022-06-11 18:50:48.665024'),
(16, 'admin_interface', '0011_add_environment_options', '2022-06-11 18:50:48.718879'),
(17, 'admin_interface', '0012_update_verbose_names', '2022-06-11 18:50:48.728876'),
(18, 'admin_interface', '0013_add_related_modal_close_button', '2022-06-11 18:50:48.750821'),
(19, 'admin_interface', '0014_name_unique', '2022-06-11 18:50:48.769745'),
(20, 'admin_interface', '0015_add_language_chooser_active', '2022-06-11 18:50:48.787694'),
(21, 'admin_interface', '0016_add_language_chooser_display', '2022-06-11 18:50:48.805650'),
(22, 'admin_interface', '0017_change_list_filter_dropdown', '2022-06-11 18:50:48.811659'),
(23, 'admin_interface', '0018_theme_list_filter_sticky', '2022-06-11 18:50:48.847535'),
(24, 'admin_interface', '0019_add_form_sticky', '2022-06-11 18:50:48.884437'),
(25, 'admin_interface', '0020_module_selected_colors', '2022-06-11 18:50:48.929318'),
(26, 'admin_interface', '0021_file_extension_validator', '2022-06-11 18:50:48.938293'),
(27, 'admin_interface', '0022_add_logo_max_width_and_height', '2022-06-11 18:50:48.972203'),
(28, 'admin_interface', '0023_theme_foldable_apps', '2022-06-11 18:50:48.991179'),
(29, 'admin_interface', '0024_remove_theme_css', '2022-06-11 18:50:49.003157'),
(30, 'app', '0001_initial', '2022-06-11 18:50:49.268409'),
(31, 'contenttypes', '0002_remove_content_type_name', '2022-06-11 18:50:49.325282'),
(32, 'auth', '0002_alter_permission_name_max_length', '2022-06-11 18:50:49.370139'),
(33, 'auth', '0003_alter_user_email_max_length', '2022-06-11 18:50:49.386096'),
(34, 'auth', '0004_alter_user_username_opts', '2022-06-11 18:50:49.395072'),
(35, 'auth', '0005_alter_user_last_login_null', '2022-06-11 18:50:49.435079'),
(36, 'auth', '0006_require_contenttypes_0002', '2022-06-11 18:50:49.439070'),
(37, 'auth', '0007_alter_validators_add_error_messages', '2022-06-11 18:50:49.447047'),
(38, 'auth', '0008_alter_user_username_max_length', '2022-06-11 18:50:49.461010'),
(39, 'auth', '0009_alter_user_last_name_max_length', '2022-06-11 18:50:49.477964'),
(40, 'auth', '0010_alter_group_name_max_length', '2022-06-11 18:50:49.492926'),
(41, 'auth', '0011_update_proxy_permissions', '2022-06-11 18:50:49.504892'),
(42, 'auth', '0012_alter_user_first_name_max_length', '2022-06-11 18:50:49.520850'),
(43, 'sessions', '0001_initial', '2022-06-11 18:50:49.552764'),
(44, 'app', '0002_alter_suscripcion_suscripcion', '2022-06-25 20:28:19.231678'),
(45, 'app', '0003_orden_productos_carro_cantidad_producto_delete_carro', '2022-06-26 20:26:54.425961'),
(46, 'app', '0004_alter_orden_cantidad_p_and_more', '2022-06-26 20:29:35.507723'),
(47, 'app', '0005_alter_productos_carro_cantidad_producto', '2022-06-26 20:35:40.175625'),
(48, 'app', '0006_alter_productos_carro_cantidad_producto', '2022-06-26 20:38:21.063229'),
(49, 'app', '0007_remove_orden_cantidad_p_remove_orden_id_and_more', '2022-06-26 21:19:58.358617'),
(50, 'app', '0008_carro', '2022-06-26 21:24:13.337678'),
(51, 'app', '0009_alter_orden_codigo_p', '2022-06-26 21:33:05.158418'),
(52, 'app', '0010_alter_orden_codigo_p_and_more', '2022-06-26 21:34:45.373069'),
(53, 'app', '0011_alter_orden_table', '2022-06-26 21:37:53.004459'),
(54, 'app', '0012_remove_orden_fecha_p', '2022-06-26 22:07:18.242583'),
(55, 'app', '0013_alter_orden_codigo_p_and_more', '2022-06-26 22:37:49.584300');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5lmvtyx9xia1qoqp5kloi7cgc54tizw7', '.eJxVjMsOwiAQRf-FtSEFOjxcuvcbyMAMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJE4mzUOL0uyXMD247oDu22yzz3NZlSnJX5EG7vM7Ez8vh_h1U7PVbF9LMRJYsOhV88CXwABqhFGUMB80wmpxIASVHoFyxIZMbzcCuEHjx_gAFnTiF:1o06E9:bRtdh95FqMT7iEpC37bDRN1WGalYUL8hevb-Qh5EqQI', '2022-06-25 18:52:53.647500'),
('ivbaijq8vhetatoeioh3ul1n1xe4yse0', '.eJxVjMsOwiAQRf-FtSEFOjxcuvcbyMAMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJE4mzUOL0uyXMD247oDu22yzz3NZlSnJX5EG7vM7Ez8vh_h1U7PVbF9LMRJYsOhV88CXwABqhFGUMB80wmpxIASVHoFyxIZMbzcCuEHjx_gAFnTiF:1o0TW9:XFE5leCV_y1tsBLRH-AjSmAuO5-BmiMCG96qK-dNb40', '2022-06-26 19:45:01.379909');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`);

--
-- Indices de la tabla `app_contacto`
--
ALTER TABLE `app_contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `app_producto`
--
ALTER TABLE `app_producto`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `app_producto_tipo_id_617598ff_fk_app_tipo_id` (`tipo_id`);

--
-- Indices de la tabla `app_tipo`
--
ALTER TABLE `app_tipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `db_carro`
--
ALTER TABLE `db_carro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `db_carro_producto_id_de20df27_fk_app_producto_codigo` (`producto_id`);

--
-- Indices de la tabla `db_orden`
--
ALTER TABLE `db_orden`
  ADD PRIMARY KEY (`codigo_p`);

--
-- Indices de la tabla `db_productos_carro`
--
ALTER TABLE `db_productos_carro`
  ADD PRIMARY KEY (`codigo_producto`);

--
-- Indices de la tabla `db_sub`
--
ALTER TABLE `db_sub`
  ADD PRIMARY KEY (`user`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `app_contacto`
--
ALTER TABLE `app_contacto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `app_tipo`
--
ALTER TABLE `app_tipo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `db_carro`
--
ALTER TABLE `db_carro`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `db_orden`
--
ALTER TABLE `db_orden`
  MODIFY `codigo_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `db_productos_carro`
--
ALTER TABLE `db_productos_carro`
  MODIFY `codigo_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `app_producto`
--
ALTER TABLE `app_producto`
  ADD CONSTRAINT `app_producto_tipo_id_617598ff_fk_app_tipo_id` FOREIGN KEY (`tipo_id`) REFERENCES `app_tipo` (`id`);

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `db_carro`
--
ALTER TABLE `db_carro`
  ADD CONSTRAINT `db_carro_producto_id_de20df27_fk_app_producto_codigo` FOREIGN KEY (`producto_id`) REFERENCES `app_producto` (`codigo`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
