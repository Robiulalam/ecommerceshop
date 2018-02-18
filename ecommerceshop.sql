-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2018 at 07:31 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerceshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(3, 'Man\'s', 'man\'s product', 1, '2018-01-14 11:49:46', '2018-01-23 23:32:59'),
(4, 'Women\'s', 'Women\'s Product', 1, '2018-01-22 21:40:38', '2018-01-23 23:31:36'),
(5, 'Electronics', 'Electronics Product', 1, '2018-01-22 21:41:05', '2018-01-23 23:31:54'),
(6, 'Baby care', 'Baby care', 0, '2018-01-23 23:33:37', '2018-01-23 23:33:48');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email_address`, `password`, `phone_number`, `address`, `created_at`, `updated_at`) VALUES
(1, 'robiul', 'alam', 'robi@gmail.com', '$2y$10$b2de1wP3jvYjKMyiDeFTbup7tbFoTZDsI3y1lpc6ve/Ale1h2TB7O', '01829268780', 'comilla', '2018-01-25 10:18:57', '2018-01-25 10:18:57'),
(2, 'latest', 'jony', 'jony@gmail.com', '$2y$10$Ozq3zB34oW6laRMQ2u9FBuMAhs2oTOMfhoMtoBFXGaBhf26/JHoie', '123456789', 'comilla', '2018-01-25 12:04:36', '2018-01-25 12:04:36'),
(3, 'pohel', 'Shawdagor', 'pohel@gmail.com', '$2y$10$nKpym/8yrETCFXxMQKvph.MgQeJoXDgcORnW35gw.SPRdGtuPsOrq', '123456789', 'Baridara', '2018-01-25 13:19:18', '2018-01-25 13:19:18'),
(4, 'Rabbi', 'Mahmud', 'rabbi@gmail.com', '$2y$10$acDpThxL4.8bef/3OIF4JerqlOR5a5MqEnBUsy9Le3b6sRVvARHPe', '123456789', 'dhaka', '2018-01-25 23:49:23', '2018-01-25 23:49:23'),
(5, 'sojib', 'hossain', 'sojib@gmail.com', '$2y$10$m06/nmAG6z0EV2tc50uz5ekY38dgm2dOyJmCqyTzcI1FQP59Wg7fO', '123456789', 'Comillla', '2018-01-26 06:29:24', '2018-01-26 06:29:24'),
(6, 'Saiful', 'Islam', 'saiful@gmail.com', '$2y$10$824fUrFsii1YadqI3GQvc.ouhnFkDsOxILAj0e8QM71fMp9Qlw9Ne', '123456789', 'Dandondi', '2018-01-26 07:01:54', '2018-01-26 07:01:54'),
(7, 'Abu', 'Bakkar', 'bakkar@gmail.com', '$2y$10$dzOzL2WL2Z4RrYyGWW/L..pe6NI6Sm9XsSsJE.K2A5P0Gs/kvaFfS', '123456789', 'chouddagram', '2018-01-26 07:40:13', '2018-01-26 07:40:13'),
(8, 'admin', 'name', 'admin@gmail.com', '$2y$10$0YP0MxftrEQdExGNF/xtPOmke6gr.9ivCrpx21BYzDPP6fy5Y.QfS', '123456789', 'dhaka', '2018-01-26 08:45:29', '2018-01-26 08:45:29');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(10) UNSIGNED NOT NULL,
  `manufacturer_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturer_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `manufacturer_name`, `manufacturer_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(2, 'Considine-Stracke', 'Facere sed dolore molestiae sed inventore blanditiis voluptatem aut. Magnam perspiciatis nobis in non.', 1, '2018-01-23 02:55:13', '2018-02-05 08:30:21'),
(3, 'Hartmann PLC', 'Officiis est possimus quia deleniti omnis porro quasi voluptate. Autem laborum et voluptas repellat quibusdam facilis sapiente. Nesciunt eius et rerum vel ipsam quos.', 1, '2018-01-23 02:55:13', '2018-01-23 07:17:18'),
(4, 'Cummerata-Mayert', 'Dolores voluptas accusamus expedita voluptas nesciunt consequatur at numquam. Ipsum saepe ex perspiciatis sint voluptatem. Vel sed eveniet repellendus animi et.', 1, '2018-01-23 02:55:13', '2018-01-23 07:17:20'),
(5, 'Brown-Schuster', 'Nam voluptatum provident voluptatem nobis est sequi neque. Rerum deleniti aliquid error totam molestias qui eos perferendis.', 0, '2018-01-23 02:55:13', '2018-01-23 09:27:09'),
(6, 'Schuppe Group', 'Ipsam consectetur nostrum et perferendis pariatur. Et sint sequi sint placeat sint temporibus itaque. Natus aliquid dolores optio autem. Ea minima qui et molestiae.', 1, '2018-01-23 02:55:13', '2018-01-23 02:55:13'),
(7, 'Kessler-Mann', 'Rerum animi nam velit error quam. Quos excepturi qui qui quia. Velit ut illum culpa et harum praesentium.', 1, '2018-01-23 02:55:13', '2018-01-23 02:55:13'),
(8, 'Walker, Jacobs and Grady', 'Quos debitis alias maiores quam nesciunt et perspiciatis. Et aliquam voluptatem autem quibusdam. Reiciendis natus ducimus voluptatem autem quam harum. Ut est libero est quos explicabo.', 1, '2018-01-23 02:55:14', '2018-01-23 02:55:14'),
(9, 'Schaden LLC', 'Aut itaque nemo impedit voluptas enim minima doloribus. Quis a quo rerum voluptas occaecati architecto voluptatem. Qui et magnam pariatur vel nam laborum harum.', 0, '2018-01-23 02:55:14', '2018-01-23 02:55:14'),
(10, 'Zulauf-Wyman', 'Veritatis culpa quia dolores qui saepe omnis. Excepturi molestiae ut dolorem. Omnis ut est est dolorum veniam nam.', 0, '2018-01-23 02:55:14', '2018-01-23 02:55:14'),
(11, 'Larson-Roberts', 'Facilis illo nobis expedita officiis. Ratione qui est aliquam. Sed earum ipsa accusantium est.', 0, '2018-01-23 02:55:14', '2018-01-23 02:55:14'),
(12, 'Daugherty-Fritsch', 'Voluptatem sint voluptas earum voluptate. Aut illo cupiditate et maiores occaecati aliquam. Modi optio exercitationem facere reprehenderit.', 0, '2018-01-23 02:55:14', '2018-01-23 02:55:14'),
(13, 'Champlin Group', 'Amet consequatur iste blanditiis quibusdam aut voluptate. Corporis veniam quo a architecto. Non quae magnam sit. Corporis modi voluptate voluptatem eum placeat omnis. Sapiente sint fugit eos id.', 1, '2018-01-23 02:55:14', '2018-01-23 02:55:14'),
(14, 'Emard and Sons', 'Qui sequi soluta iure molestias et porro. Assumenda assumenda harum nihil omnis. Ut sapiente quisquam sapiente dolorum ut ipsum sapiente.', 1, '2018-01-23 02:55:14', '2018-01-23 02:55:14'),
(15, 'McCullough-Jacobson', 'Alias dolorem consequuntur aut omnis asperiores. Voluptate et ea tempora quos et neque quaerat. Nisi similique dolores et incidunt doloribus enim.', 0, '2018-01-23 02:55:14', '2018-01-23 02:55:14'),
(16, 'McKenzie, Wintheiser and Erdman', 'Saepe labore reiciendis amet vel et iste. Ratione esse qui iusto enim. Voluptatem vero quia voluptas quisquam eos. Autem voluptatem quo ipsum veritatis. Maxime illo quia magnam nesciunt dolores qui.', 1, '2018-01-23 02:55:14', '2018-01-23 02:55:14'),
(17, 'Rohan PLC', 'Voluptas id rerum natus et ea aut et numquam. Maxime explicabo qui et temporibus. Amet quasi veritatis optio. Sed dignissimos ipsa sit. Hic reiciendis nisi est praesentium aut ut.', 1, '2018-01-23 02:55:14', '2018-01-23 02:55:14'),
(18, 'Erdman, Graham and Willms', 'Consequatur ut a nesciunt iusto molestiae pariatur fugit. Est ipsum enim dolorem molestiae iusto. Non et accusamus neque quis minus magni. Illum aut ad dolor et ad fugiat.', 1, '2018-01-23 02:55:14', '2018-01-23 02:55:14'),
(19, 'Kerluke and Sons', 'Doloremque ullam aliquam dicta asperiores in sed. In doloremque sunt sapiente sint. Commodi sit perferendis impedit enim maiores sequi autem.', 0, '2018-01-23 02:55:14', '2018-01-23 02:55:14'),
(20, 'Walsh Inc', 'Aut blanditiis cupiditate et deserunt. Nihil ipsum non quam omnis quas eos. Delectus non ut aut tempore non est quos et.', 1, '2018-01-23 02:55:14', '2018-01-23 02:55:14'),
(21, 'Brown Group', 'Aperiam sed ducimus voluptatum. Asperiores et non dolor quidem. Ut qui exercitationem eos illo ut dolorem dicta. Et et perspiciatis voluptatum qui commodi. Et ut non eum nulla voluptas.', 1, '2018-01-23 02:55:14', '2018-01-23 02:55:14'),
(22, 'Gorczany-Donnelly', 'Exercitationem sed est quam qui quia. Et et voluptatem provident tenetur culpa ut. Et illum nostrum recusandae. Quia enim laborum magnam quis rerum. Deleniti est quis a exercitationem ut et.', 1, '2018-01-23 02:55:14', '2018-01-23 02:55:14'),
(23, 'Weissnat Group', 'Atque est hic dolorem sint ut. Est velit aut occaecati aut nisi nemo adipisci. Asperiores autem ut exercitationem ratione culpa soluta.', 1, '2018-01-23 02:55:14', '2018-01-23 02:55:14'),
(24, 'Johnston-Fritsch', 'Necessitatibus omnis aut ut laudantium asperiores. Esse et accusamus aut. Deleniti praesentium sit provident voluptas qui commodi. Rerum quia voluptates qui et dolorum aspernatur.', 1, '2018-01-23 02:55:14', '2018-01-23 02:55:14'),
(25, 'Goyette Inc', 'Doloremque aut accusamus alias excepturi. Incidunt sunt debitis dolorem omnis molestiae dolores. Sed facilis at enim est quo soluta aliquam.', 1, '2018-01-23 02:55:14', '2018-01-23 02:55:14'),
(26, 'Kiehn, Greenholt and King', 'Placeat odio ut saepe molestiae reiciendis vitae. Quisquam expedita voluptatem eum maiores qui dolor natus. Aliquid accusantium vel eum quia sit optio repellendus. Nisi iure dolorem doloribus.', 0, '2018-01-23 02:55:14', '2018-01-23 02:55:14'),
(27, 'Bergstrom-Kunze', 'Quos aperiam est ducimus fugit. Hic dolores doloribus ut. Quisquam omnis minus in non asperiores.', 0, '2018-01-23 02:55:14', '2018-01-23 02:55:14'),
(28, 'Mann-Aufderhar', 'Autem quia id aliquam aspernatur sed. Debitis omnis dolor vero aliquid quibusdam. Natus assumenda provident delectus totam qui. Quia consequatur culpa explicabo beatae commodi non.', 0, '2018-01-23 02:55:14', '2018-01-23 02:55:14'),
(29, 'Hermiston, Beer and Effertz', 'Quasi consequuntur quis aut saepe ea iure. Et dolores error quia expedita et. Omnis sunt ea omnis. Tempore expedita dignissimos ut illo.', 0, '2018-01-23 02:55:14', '2018-01-23 02:55:14'),
(30, 'Hoppe PLC', 'Sit nam dolorem et nesciunt non qui. Quos molestias tempore vel cum ab enim omnis.', 0, '2018-01-23 02:55:14', '2018-01-23 02:55:14'),
(31, 'Daniel Group', 'Tempore et aut sed non. Qui itaque dolor ad veniam cupiditate aperiam quas. Vel tenetur eaque sit incidunt modi nostrum.', 1, '2018-01-23 02:55:14', '2018-01-23 02:55:14');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_01_14_155359_create_categories_table', 2),
(4, '2018_01_23_072428_create_manufacturers_table', 3),
(5, '2018_01_23_113007_create_products_table', 4),
(6, '2018_01_25_145443_create_customers_table', 5),
(7, '2018_01_26_130401_create_shippings_table', 6),
(8, '2018_01_27_105909_create_orders_table', 7),
(9, '2018_01_27_110152_create_payments_table', 7),
(10, '2018_01_27_110857_create_order_details_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `order_total` double(10,2) NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `shipping_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 8, 7, 6300.00, 'pending', '2018-01-28 00:55:04', '2018-01-28 00:55:04'),
(2, 5, 8, 10100.00, 'pending', '2018-01-28 04:03:08', '2018-01-28 04:03:08'),
(3, 5, 9, 1900.00, 'pending', '2018-01-28 10:22:56', '2018-01-28 10:22:56'),
(4, 1, 11, 0.00, 'pending', '2018-02-04 07:08:19', '2018-02-04 07:08:19'),
(5, 1, 11, 0.00, 'pending', '2018-02-04 07:11:26', '2018-02-04 07:11:26'),
(6, 1, 12, 0.00, 'pending', '2018-02-04 07:15:24', '2018-02-04 07:15:24'),
(7, 1, 13, 1100.00, 'pending', '2018-02-04 07:24:16', '2018-02-04 07:24:16'),
(8, 1, 13, 0.00, 'pending', '2018-02-04 07:32:19', '2018-02-04 07:32:19'),
(9, 1, 14, 0.00, 'pending', '2018-02-04 07:34:06', '2018-02-04 07:34:06'),
(10, 1, 15, 0.00, 'pending', '2018-02-04 07:35:20', '2018-02-04 07:35:20'),
(11, 1, 16, 0.00, 'pending', '2018-02-04 08:04:17', '2018-02-04 08:04:17'),
(12, 1, 16, 0.00, 'pending', '2018-02-04 08:04:32', '2018-02-04 08:04:32'),
(13, 1, 16, 0.00, 'pending', '2018-02-04 08:04:45', '2018-02-04 08:04:45'),
(14, 1, 16, 0.00, 'pending', '2018-02-04 08:13:22', '2018-02-04 08:13:22'),
(15, 1, 16, 0.00, 'pending', '2018-02-04 08:13:34', '2018-02-04 08:13:34'),
(16, 1, 16, 0.00, 'pending', '2018-02-04 08:14:33', '2018-02-04 08:14:33'),
(17, 1, 16, 0.00, 'pending', '2018-02-04 08:16:47', '2018-02-04 08:16:47'),
(18, 1, 16, 0.00, 'pending', '2018-02-04 08:16:57', '2018-02-04 08:16:57'),
(19, 1, 16, 1100.00, 'pending', '2018-02-04 08:55:43', '2018-02-04 08:55:43');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 12, 'electro', 1900.00, 1, '2018-01-28 00:55:04', '2018-01-28 00:55:04'),
(2, 2, 12, 'electro', 1900.00, 3, '2018-01-28 04:03:09', '2018-01-28 04:03:09'),
(3, 3, 12, 'electro', 1900.00, 1, '2018-01-28 10:22:56', '2018-01-28 10:22:56'),
(4, 7, 15, 'ladis Product 03', 1100.00, 1, '2018-02-04 07:24:16', '2018-02-04 07:24:16'),
(5, 19, 15, 'ladis Product 03', 1100.00, 1, '2018-02-04 08:55:44', '2018-02-04 08:55:44');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `payment_type`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'cash', 'pending', '2018-01-28 00:55:04', '2018-01-28 00:55:04'),
(2, 2, 'cash', 'pending', '2018-01-28 04:03:08', '2018-01-28 04:03:08'),
(3, 3, 'cash', 'pending', '2018-01-28 10:22:56', '2018-01-28 10:22:56'),
(4, 4, 'cash', 'pending', '2018-02-04 07:08:19', '2018-02-04 07:08:19'),
(5, 5, 'cash', 'pending', '2018-02-04 07:11:26', '2018-02-04 07:11:26'),
(6, 6, 'cash', 'pending', '2018-02-04 07:15:24', '2018-02-04 07:15:24'),
(7, 7, 'cash', 'pending', '2018-02-04 07:24:16', '2018-02-04 07:24:16'),
(8, 8, 'cash', 'pending', '2018-02-04 07:32:19', '2018-02-04 07:32:19'),
(9, 9, 'cash', 'pending', '2018-02-04 07:34:06', '2018-02-04 07:34:06'),
(10, 10, 'cash', 'pending', '2018-02-04 07:35:20', '2018-02-04 07:35:20'),
(11, 11, 'cash', 'pending', '2018-02-04 08:04:17', '2018-02-04 08:04:17'),
(12, 13, 'cash', 'pending', '2018-02-04 08:04:45', '2018-02-04 08:04:45'),
(13, 15, 'cash', 'pending', '2018-02-04 08:13:34', '2018-02-04 08:13:34'),
(14, 16, 'cash', 'pending', '2018-02-04 08:14:33', '2018-02-04 08:14:33'),
(15, 18, 'cash', 'pending', '2018-02-04 08:16:57', '2018-02-04 08:16:57'),
(16, 19, 'cash', 'pending', '2018-02-04 08:55:44', '2018-02-04 08:55:44');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `category_id`, `manufacturer_id`, `product_price`, `product_quantity`, `product_short_description`, `category_long_description`, `product_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(8, 'ladis product', 4, 3, 900.00, 10, 'type and scrambled it to make a type specimen book.', 'type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in  type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in  type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in  type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in', 'product_images/ladis product.jpg', 1, '2018-01-23 23:42:11', '2018-01-24 01:24:10'),
(9, 'ladis product', 4, 7, 1500.00, 5, 'type and scrambled it to make a type specimen book.', 'remaining essentially unchanged. It was popularised in  type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in remaining essentially unchanged. It was popularised in  type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in remaining essentially unchanged. It was popularised in  type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in', 'product_images/ladis product.jpg', 1, '2018-01-23 23:43:05', '2018-01-24 01:11:01'),
(10, 'mens pro', 3, 24, 1500.00, 2, 'type and scrambled it to make a type specimen book.', 'remaining essentially unchanged. It was popularised in  type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in remaining essentially unchanged. It was popularised in  type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in', 'product_images/mens pro.jpg', 1, '2018-01-23 23:44:51', '2018-02-01 11:06:16'),
(11, 'men product', 3, 8, 1700.00, 5, 'type and scrambled it to make a type specimen book.', 'remaining essentially unchanged. It was popularised in  type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in remaining essentially unchanged. It was popularised in  type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in', 'product_images/men product.jpg', 1, '2018-01-23 23:46:32', '2018-01-24 01:10:52'),
(12, 'electronic Humper', 5, 21, 1900.00, 5, 'type and scrambled it to make a type specimen book.', 'type and scrambled it to make a type specimen book.', 'product_images/electronic Humper.jpg', 1, '2018-01-23 23:47:11', '2018-02-01 12:32:41'),
(13, 'Electronics Pro', 5, 16, 7000.00, 9, 'type and scrambled it to make a type specimen book.', 'type and scrambled it to make a type specimen book.', 'product_images/Electronics Pro.jpg', 1, '2018-01-23 23:47:41', '2018-02-01 12:27:46'),
(14, 'electronic', 5, 20, 1200.00, 5, 'type and scrambled it to make a type specimen book.', 'ambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letrasetambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letrasetambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset', 'product_images/electronic.jpg', 1, '2018-01-24 01:06:37', '2018-01-24 01:06:37'),
(15, 'ladis Product 03', 4, 4, 1100.00, 2, 'ambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'ambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letrasetambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letrasetambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset', 'product_images/ladis Product 03.jpg', 1, '2018-01-29 02:49:29', '2018-01-29 02:49:29'),
(16, 'product image 04', 4, 8, 1200.00, 2, 'ambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letrasetambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letrasetambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset', 'ambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letrasetambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letrasetambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset', 'product_images/product image 04.jpg', 1, '2018-01-29 02:51:57', '2018-01-29 02:51:57');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `full_name`, `email_address`, `phone_number`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Saiful Islam', 'saiful@gmail.com', '123456789', 'Dandondi', '2018-01-26 07:38:56', '2018-01-26 07:38:56'),
(2, 'Abu Bakkar', 'bakkar@gmail.com', '123456789', 'chouddagram', '2018-01-26 07:40:18', '2018-01-26 07:40:18'),
(3, 'Abu Bakkar', 'bakkar@gmail.com', '123456789', 'chouddagram', '2018-01-26 07:44:37', '2018-01-26 07:44:37'),
(4, 'admin name', 'admin@gmail.com', '123456789', 'dhaka', '2018-01-26 12:05:00', '2018-01-26 12:05:00'),
(5, 'Robi Ul Alam', 'admin@gmail.com', '123456789', 'Comilla', '2018-01-26 12:06:05', '2018-01-26 12:06:05'),
(6, 'admin name', 'admin@gmail.com', '123456789', 'dhaka', '2018-01-27 03:55:17', '2018-01-27 03:55:17'),
(7, 'admin name', 'admin@gmail.com', '123456789', 'dhaka', '2018-01-27 23:00:04', '2018-01-27 23:00:04'),
(8, 'sojib hossain', 'sojib@gmail.com', '123456789', 'Comillla', '2018-01-28 04:02:46', '2018-01-28 04:02:46'),
(9, 'sojib hossain', 'sojib@gmail.com', '123456789', 'Comillla', '2018-01-28 10:22:52', '2018-01-28 10:22:52'),
(10, 'robiul alam', 'robi@gmail.com', '01829268780', 'comilla', '2018-02-04 07:08:05', '2018-02-04 07:08:05'),
(11, 'robiul alam', 'robi@gmail.com', '01829268780', 'comilla', '2018-02-04 07:08:13', '2018-02-04 07:08:13'),
(12, 'robiul alam', 'robi@gmail.com', '01829268780', 'comilla', '2018-02-04 07:14:33', '2018-02-04 07:14:33'),
(13, 'robiul alam', 'robi@gmail.com', '01829268780', 'comilla', '2018-02-04 07:24:11', '2018-02-04 07:24:11'),
(14, 'robiul alam', 'robi@gmail.com', '01829268780', 'comilla', '2018-02-04 07:34:03', '2018-02-04 07:34:03'),
(15, 'robiul alam', 'robi@gmail.com', '01829268780', 'comilla', '2018-02-04 07:35:17', '2018-02-04 07:35:17'),
(16, 'robiul alam', 'robi@gmail.com', '01829268780', 'comilla', '2018-02-04 07:37:11', '2018-02-04 07:37:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$zcuEvxeehX/utui8OC7iKOvB7vmftDoJ7FzXqqXf7RxGwrd2P7QZm', 'Yd4oVoPXRRam90Mu4f9k2mYiTDnBBEQmf01vbJvxbqsQllgQN0KZsLVuQlbE', '2018-01-14 05:04:38', '2018-01-14 05:04:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_address_unique` (`email_address`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
