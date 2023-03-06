-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2023 at 09:42 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-buy`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `publish_date` varchar(255) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_category_id`, `title`, `slug`, `publish_date`, `description`, `thumbnail`, `tag`, `status`, `created_at`, `updated_at`) VALUES
(5, 1, 'Nike-T-Shirt', 'nike-t-shirt', '2023-01-25', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'backend/files/blogs/nike-t-shirt.jpg', NULL, '1', NULL, NULL),
(6, 2, 'Iphone', 'iphone', '2023-01-25', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'backend/files/blogs/iphone.jpg', 'iphone,mobile', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `category_name`, `category_slug`, `created_at`, `updated_at`) VALUES
(1, 'Man\'s Fashion', 'mans-fashion', NULL, NULL),
(2, 'Technologies', 'technologies', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_slug` varchar(255) NOT NULL,
  `brand_logo` varchar(255) DEFAULT NULL,
  `front-page` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_slug`, `brand_logo`, `front-page`, `created_at`, `updated_at`) VALUES
(1, 'Nike', 'nike', 'backend/files/brands/nike.jpg', 1, NULL, NULL),
(2, 'Adidas', 'adidas', 'backend/files/brands/adidas.jpg', NULL, NULL, NULL),
(3, 'Puma', 'puma', 'backend/files/brands/puma.jpg', NULL, NULL, NULL),
(4, 'Hp', 'hp', 'backend/files/brands/hp.jpg', NULL, NULL, NULL),
(6, 'Iphone', 'iphone', 'backend/files/brands/iphone.jpg', NULL, NULL, NULL),
(7, 'Dell', 'dell', 'backend/files/brands/dell.jpg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaigned_products`
--

CREATE TABLE `campaigned_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigned_products`
--

INSERT INTO `campaigned_products` (`id`, `campaign_id`, `product_id`, `price`, `created_at`, `updated_at`) VALUES
(7, 1, 9, '1120', NULL, NULL),
(8, 1, 12, '92000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `title`, `start_date`, `end_date`, `image`, `status`, `discount`, `month`, `year`, `created_at`, `updated_at`) VALUES
(1, 'Winter Offer', '2023-01-20', '2023-02-27', 'backend/files/campaigns/winter-offer.png', '1', '20', '1', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_slug` varchar(255) DEFAULT NULL,
  `homepage_category` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `homepage_category`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Women\'s Fashion', 'womens-fashion', NULL, 'backend/files/category_icons/womens-fashion.png', NULL, NULL),
(2, 'Man\'s Fashion', 'mans-fashion', NULL, 'backend/files/category_icons/mans-fashion.png', NULL, NULL),
(3, 'Child\'s Fashion', 'childs-fashion', NULL, 'backend/files/category_icons/childs-fashion.png', NULL, NULL),
(4, 'Technologies', 'technologies', NULL, 'backend/files/category_icons/technologies.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `childcategory_name` varchar(255) NOT NULL,
  `childcategory_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `category_id`, `subcategory_id`, `childcategory_name`, `childcategory_slug`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 1, 'New', 'new', NULL, NULL),
(3, 2, 1, 'Cotton', 'cotton', NULL, NULL),
(4, 2, 1, 'Silk', 'silk', NULL, NULL),
(5, 2, 6, 'Leather', 'leather', NULL, NULL),
(6, 2, 6, 'Soft', 'soft', NULL, NULL),
(7, 2, 6, 'Premium', 'premium', NULL, NULL),
(8, 4, 7, 'Hp', 'hp', NULL, NULL),
(9, 4, 8, 'I Phone', 'i-phone', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `valid_date` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `coupon_amount` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `valid_date`, `type`, `coupon_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', '5-20-2023', 1, 1, '1', NULL, NULL),
(2, '50001', '2023-03-15', 1, 20, '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_28_190231_create_categories_table', 1),
(6, '2022_12_29_074115_create_subcategories_table', 1),
(7, '2022_12_29_112910_create_childcategories_table', 1),
(8, '2022_12_31_141944_create_brands_table', 1),
(9, '2023_01_01_113236_create_seos_table', 1),
(10, '2023_01_01_131929_create_smtp_table', 1),
(11, '2023_01_02_054558_create_pages_table', 1),
(12, '2023_01_02_080321_create_products_table', 1),
(13, '2023_01_02_081252_create_warehouses_table', 1),
(14, '2023_01_02_082912_create_settings_table', 1),
(15, '2023_01_02_185326_create_coupons_table', 1),
(16, '2023_01_03_093855_create_pickup_point_table', 1),
(17, '2023_01_10_144518_create_reviews_table', 1),
(18, '2023_01_10_182332_create_wishlist_table', 1),
(19, '2023_01_12_122918_create_campaigns_table', 1),
(20, '2023_01_16_192439_create_websitereviews_table', 1),
(21, '2023_01_16_201018_create_newsletters_table', 1),
(22, '2023_01_17_080406_create_orders_table', 1),
(23, '2023_01_17_080508_create_order_details_table', 1),
(24, '2023_01_17_144317_create_tickets_table', 1),
(25, '2023_01_17_171804_create_replies_table', 1),
(26, '2023_01_19_085248_create_payment_gateway_bd_table', 1),
(27, '2023_01_25_062443_create_blog_category_table', 2),
(28, '2023_01_25_062759_create_blogs_table', 3),
(29, '2023_01_26_180813_create_user_role_table', 4),
(30, '2023_01_26_213647_create_campaigned_products_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `c_name` varchar(255) DEFAULT NULL,
  `c_phone` varchar(255) DEFAULT NULL,
  `c_email` varchar(255) DEFAULT NULL,
  `c_country` varchar(255) DEFAULT NULL,
  `c_zipcode` varchar(255) DEFAULT NULL,
  `c_address` varchar(255) DEFAULT NULL,
  `c_extra_phone` varchar(255) DEFAULT NULL,
  `c_city` varchar(255) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_discount` varchar(255) DEFAULT NULL,
  `after_discount` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `shipping_charge` varchar(5) DEFAULT NULL,
  `order_id` varchar(25) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `date` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `c_name`, `c_phone`, `c_email`, `c_country`, `c_zipcode`, `c_address`, `c_extra_phone`, `c_city`, `subtotal`, `total`, `coupon_code`, `coupon_discount`, `after_discount`, `payment_type`, `tax`, `shipping_charge`, `order_id`, `status`, `date`, `month`, `year`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', '01743873476', 'masudhussaincse@gmail.com', 'Bangladesh', NULL, 'Sylhet', NULL, 'Sylhet', '0.00', '0.00', NULL, NULL, NULL, 'Aamarpay', '0', '0', '322808', 3, '25-01-2023', 'January', '2023', NULL, NULL),
(2, 2, 'admin', '01743873476', 'masudhussaincse@gmail.com', 'Bangladesh', '3100', 'Sylhet', '01409796453', 'Sylhet', '750.00', '750.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '831666', 0, '25-01-2023', 'January', '2023', NULL, NULL),
(3, 2, 'admin', '01743873476', 'masudhussaincse@gmail.com', 'Bangladesh', '3100', 'Sylhet', '01409796453', 'Sylhet', '1500.00', '1500.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '357508', 0, '25-01-2023', 'January', '2023', NULL, NULL),
(4, 2, 'admin', '01743873476', 'masudhussaincse@gmail.com', 'Bangladesh', '3100', 'Sylhet', '01409796453', 'Sylhet', '1400.00', '1400.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '264219', 0, '26-01-2023', 'January', '2023', NULL, NULL),
(5, 2, 'Masud Hussain', '01409796453', 'masudwbd3@gmail.com', 'Bangladesh', '3100', 'Sylhet,Bangladesh', '01409796453', 'Sylhet', '750.00', '750.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '328795', 3, '19-02-2023', 'February', '2023', NULL, NULL),
(6, 2, 'Masud Hussain', '01409796453', 'masudwbd3@gmail.com', 'Bangladesh', '3100', 'Sylhet,Bangladesh', '01409796453', 'Sylhet', '750.00', '750.00', '50001', '20', '730', 'Hand Cash', '0', '0', '792390', 0, '21-02-2023', 'February', '2023', NULL, NULL),
(7, 12, 'Masud Hussain', '01409796453', 'masudwbd3@gmail.com', 'Bangladesh', '3100', 'Sylhet,Bangladesh', '01409796453', 'Sylhet', '346500.00', '346500.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '868988', 0, '26-02-2023', 'February', '2023', NULL, NULL),
(8, 2, 'Masud Hussain', '01409796453', 'masudwbd3@gmail.com', 'Bangladesh', '3100', 'Sylhet,Bangladesh', '01409796453', 'Sylhet', '1500.00', '1500.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '331564', 0, '26-02-2023', 'February', '2023', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `single_price` varchar(255) DEFAULT NULL,
  `subtotal_price` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `color`, `size`, `quantity`, `single_price`, `subtotal_price`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'New T-Shirt Black', 't-shirts,black', '42,44', '1', '750', '750', NULL, NULL),
(2, 3, 2, 'New T-Shirt Black', 't-shirts,black', '42,44', '2', '750', '1500', NULL, NULL),
(3, 4, 4, 'New White Puma', 'white,black,red', '42,44,46', '1', '1400', '1400', NULL, NULL),
(4, 5, 2, 'New T-Shirt Black', 'red', 'S', '1', '750', '750', NULL, NULL),
(5, 6, 2, 'New T-Shirt Black', 'red', 'S', '1', '750', '750', NULL, NULL),
(6, 7, 2, 'New T-Shirt Black', 'black', 'M', '2', '750', '1500', NULL, NULL),
(7, 7, 10, 'Hp Laptop', 'red', 'S', '3', '115000', '345000', NULL, NULL),
(8, 8, 2, 'New T-Shirt Black', 'red', 'S', '2', '750', '1500', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_position` int(11) DEFAULT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `page_slug` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `page_description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_position`, `page_name`, `page_slug`, `page_title`, `page_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Our Blogs', 'our-blogs', 'Our Blogs', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateway_bd`
--

CREATE TABLE `payment_gateway_bd` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gateaway_name` varchar(255) DEFAULT NULL,
  `store_id` varchar(255) DEFAULT NULL,
  `signature_id` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateway_bd`
--

INSERT INTO `payment_gateway_bd` (`id`, `gateaway_name`, `store_id`, `signature_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Aamarpay', 'aamarpay', '28c78bb1f45112f5d40b956fe104645a', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pickup_points`
--

CREATE TABLE `pickup_points` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pickup_point_name` varchar(255) NOT NULL,
  `pickup_point_address` varchar(255) NOT NULL,
  `pickup_point_phone` varchar(255) NOT NULL,
  `pickup_point_phone_two` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pickup_points`
--

INSERT INTO `pickup_points` (`id`, `pickup_point_name`, `pickup_point_address`, `pickup_point_phone`, `pickup_point_phone_two`, `created_at`, `updated_at`) VALUES
(1, 'sylhet', 'sylhet', '01743873476', '01409796453', NULL, NULL),
(2, 'Dhaka Branch', 'Dhaka', '01743873476', '01409796453', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `childcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `purchase_price` varchar(255) DEFAULT NULL,
  `selling_price` varchar(255) DEFAULT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `stock_quantity` varchar(255) DEFAULT NULL,
  `warehouse` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `product_slider` varchar(255) DEFAULT '0',
  `product_views` int(255) DEFAULT NULL,
  `trendy` varchar(255) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `pickup_point_id` int(255) DEFAULT NULL,
  `today_deal` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `flash_deal_id` int(11) DEFAULT NULL,
  `cash_on_delivery` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `name`, `slug`, `code`, `unit`, `tags`, `color`, `size`, `video`, `purchase_price`, `selling_price`, `discount_price`, `stock_quantity`, `warehouse`, `description`, `thumbnail`, `images`, `product_slider`, `product_views`, `trendy`, `featured`, `pickup_point_id`, `today_deal`, `status`, `flash_deal_id`, `cash_on_delivery`, `admin_id`, `date`, `month`, `year`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 2, 1, 'New T-Shirt Black', 'new-t-shirt-black', '1', '12', '[{\"value\":\"t-shirt\"}]', 'red,black', 'S,M,L', 'https://www.youtube.com/embed/4-Y0XobX9sY', '600', '800', '750', '100', 1, 't-shirts,black', 'backend/files/products/product_thumbnails/new-t-shirt-black.png', '[\"1755998671469676.jpg\"]', '1', 75, NULL, 1, 1, 1, 1, NULL, NULL, 2, '01-02-23', 'f', NULL, NULL, '2023-01-27 03:13:04'),
(9, 1, 5, 1, 2, 'White Top', 'white-top', '4', '10', '[{\"value\":\"white\"},{\"value\":\"tops\"}]', 'black,red,gray', 'S,M,L', 'https://www.youtube.com/shorts/vQC7en7TLOg', '1200', '1500', '1400', '100', 1, 'white,red,black', 'backend/files/products/product_thumbnails/white-top.png', '[\"1756088685560159.jpg\"]', '1', 11, NULL, 1, 2, 1, 1, NULL, NULL, 2, '01-02-23', 'f', NULL, NULL, '2023-02-19 06:05:29'),
(10, 4, 7, 8, 4, 'Hp Laptop', 'hp-laptop', '6', '12', '[{\"value\":\"laptop\"}]', 'black,red,gray', 'S,M,L', 'https://www.youtube.com/watch?v=1J_sixS66-0', '100000', '120000', '115000', '100', 1, 'white,black', 'backend/files/products/product_thumbnails/hp-laptop.png', '[\"1756088968597203.jpg\"]', '1', 6, NULL, 1, 2, 1, 1, NULL, NULL, 2, '01-02-23', 'f', NULL, NULL, NULL),
(11, 2, 3, 2, 3, 'Zeans Pant', 'zeans-pant', '6', '234', '[{\"value\":\"pant\"}]', 'black,red,gray', 'S,M,L', 'https://www.youtube.com/embed/SND2LY0s8FE', '800', '1200', '1100', '100', 1, 'blue,black', 'backend/files/products/product_thumbnails/zeans-pant.png', '[\"1756089169705593.jpg\"]', '1', 2, NULL, 1, 2, 1, 1, NULL, NULL, 2, '01-02-23', 'f', NULL, NULL, NULL),
(12, 4, 7, 8, 7, 'Dell Laptop', 'dell-laptop', '7', '12', '[{\"value\":\"laptop\"}]', 'black,red,gray', 'S,M,L', 'https://www.youtube.com/watch?v=dRCg-W5lTXU', '100000', '120000', '115000', '100', 1, 'dell laptop', 'backend/files/products/product_thumbnails/dell-laptop.png', '[\"1756105451228453.PNG\",\"1756105451555136.PNG\"]', '1', 8, NULL, 1, 2, 1, 1, NULL, NULL, 2, '01-02-23', 'f', NULL, NULL, '2023-02-19 06:05:47'),
(13, 4, 8, 9, 6, 'Iphone 13', 'iphone-13', '43', '12', '[{\"value\":\"mobile\"},{\"value\":\"iphone\"}]', 'black,red,gray', 'S,M,L', 'https://www.youtube.com/watch?v=a7ZgDgZtVo0', '100000', '120000', '115000', '100', 1, 'black,blue', 'backend/files/products/product_thumbnails/iphone-13.png', '[\"1756089458741517.jpg\"]', '1', 3, NULL, 1, 1, 1, 1, NULL, NULL, 2, '01-02-23', 'f', NULL, NULL, NULL),
(15, 1, 9, 1, 3, 'Long Green Dress', 'long-green-dress', '3', '12', '[{\"value\":\"adad\"}]', 'black,red,gray', 'S,M,L', 'https://www.youtube.com/embed/fnlJw9H0xAM', '100000', '120000', '115000', '100', 1, 'green', 'backend/files/products/product_thumbnails/long-green-dress.png', '[\"1756921310808546.png\"]', '1', NULL, '1', 1, 2, 1, 1, NULL, NULL, 2, '04-02-23', 'f', NULL, NULL, NULL),
(16, 2, 1, 2, 2, 'T-shirts', 't-shirts', '213', '12', '[{\"value\":\"red\"}]', 'red,black,white', 'S,M,L', 'https://www.youtube.com/embed/lBoyhNBfHz0', '550', '650', '600', '100', 1, 'black\',white,red', 'backend/files/products/product_thumbnails/t-shirts.png', '[\"1756923601054463.png\",\"1756923601170544.png\",\"1756923601290102.png\"]', '1', NULL, NULL, 1, 2, 1, 1, NULL, NULL, 2, '05-02-23', 'f', NULL, NULL, NULL),
(17, 2, 1, 2, 2, 'Blazer', 'blazer', '143', '12', 'black', 'black,red,gray', 'S,M,L', 'https://www.youtube.com/embed/fnlJw9H0xAM', '550', '1500', '1400', '100', 2, 'black,red,gray', 'backend/files/products/product_thumbnails/blazer.png', '[\"1756924390769884.png\"]', '1', NULL, '1', 1, 2, 1, 1, NULL, NULL, 2, '04-02-23', 'f', NULL, NULL, NULL),
(18, 1, 9, NULL, 4, 'Silk Dress', 'silk-dress', '2', '12', 'erg', 'red,black', '44,34', 'https://www.youtube.com/watch?v=1J_sixS66-0', '550', '650', '600', NULL, 1, 'red,black', 'backend/files/products/product_thumbnails/silk-dress.png', '[\"1756925840136668.png\"]', '1', NULL, '1', 1, 2, 1, 1, NULL, NULL, 2, '04-02-23', 'f', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `message` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `review` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review_date` varchar(255) DEFAULT NULL,
  `review_month` varchar(255) DEFAULT NULL,
  `review_year` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `review`, `rating`, `review_date`, `review_month`, `review_year`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'ada', 5, '26-01-23', '2023', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_author` varchar(255) DEFAULT NULL,
  `meta_tag` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `google_verification` varchar(255) DEFAULT NULL,
  `google_analytics` varchar(255) DEFAULT NULL,
  `alexa verification` varchar(255) DEFAULT NULL,
  `google adsense` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `phone_one` varchar(255) DEFAULT NULL,
  `phone_two` varchar(255) DEFAULT NULL,
  `main_email` varchar(255) DEFAULT NULL,
  `support_email` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkdin` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `currency`, `phone_one`, `phone_two`, `main_email`, `support_email`, `logo`, `favicon`, `address`, `facebook`, `twitter`, `instagram`, `linkdin`, `youtube`, `created_at`, `updated_at`) VALUES
(1, '৳', '01409796453', '01409796453', 'masudwbd3@gmail.com', 'masudwbd3@gmail.com', 'backend/files/settings/63d246a635ebd.png', '1', 'sylhet', 'https://www.facebook.com/masudwbd', 'https://www.facebook.com/masudwbd', 'https://www.facebook.com/masudwbd', 'https://www.facebook.com/masudwbd', 'https://www.facebook.com/masudwbd', '0000-00-00 00:00:00', '2023-01-26 06:38:12');

-- --------------------------------------------------------

--
-- Table structure for table `smtp`
--

CREATE TABLE `smtp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mailer` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `port` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `subcat_slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `subcat_slug`, `created_at`, `updated_at`) VALUES
(1, 2, 'T-Shirts', 't-shirts', NULL, '2023-01-25 06:37:19'),
(2, 2, 'Watches', 'watches', NULL, NULL),
(3, 2, 'Pants', 'pants', NULL, NULL),
(4, 1, 'Sharee', 'sharee', NULL, NULL),
(5, 1, 'Tops', 'tops', NULL, NULL),
(6, 2, 'Shoes', 'shoes', NULL, NULL),
(7, 4, 'Laptop', 'laptop', NULL, NULL),
(8, 4, 'Mobiles', 'mobiles', NULL, NULL),
(9, 1, 'Dress', 'dress', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `service` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `provider` varchar(20) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `is_admin` varchar(255) DEFAULT '0',
  `role` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `avatar`, `provider`, `provider_id`, `access_token`, `is_admin`, `role`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'admin@gmail.com', NULL, '$2y$10$LJLorEBMtuI.KQMpHVmX5e5wAwdKtCnPCSzKJFvndyRVKxhA.zUX6', NULL, NULL, NULL, NULL, NULL, '1', 'admin', 'backend/files/profile_pictures/admin.jpg', NULL, '2023-01-24 13:18:54', '2023-01-26 13:09:21'),
(4, 'Masud Hussain', 'masudhussaincse@gmail.com', NULL, '$2y$10$qlfY0MjC/60hr3jk8lvUceppBHB.xIqOSPBURgsDCM7KZMN1zO7hq', NULL, NULL, NULL, NULL, NULL, '1', 'editor', NULL, NULL, '2023-01-26 13:20:56', '2023-01-26 13:21:53'),
(5, 'blogger', 'blogger@gmail.com', NULL, '$2y$10$RsWP9Lbni1EhZ3ZzK7nJCufRHqIlSDmGlIWKX8Qgml4MHgsHV0wKe', NULL, NULL, NULL, NULL, NULL, '1', 'blogger', NULL, NULL, '2023-01-26 13:27:05', '2023-01-26 13:31:31'),
(6, 'admin1', 'admin1@gmail.com', NULL, '$2y$10$SxAu4NVT5Z2XOz2UASo5p.14tDxeOkaf/jMb1VQkSMe/htuwkQDie', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '2023-01-26 13:36:36', '2023-01-26 13:36:36'),
(7, 'customer1', 'customer1@gmail.com', NULL, '$2y$10$66nXY6OxI/S1.RXzjnBkkuzWfrOMZ5eCujpSiRFOtwEk7OMehOHhS', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '2023-01-26 14:13:08', '2023-01-26 14:13:08'),
(8, 'customer2', 'Customer2@gmail.com', NULL, '$2y$10$3lf24T6y44EKp2mCQGLFMeiws8myjtHTWXlKPJdKVowB4hi.bi6TS', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '2023-01-26 14:13:36', '2023-01-26 14:13:36'),
(9, 'customer3', 'customer3@gmail.com', NULL, '$2y$10$6IQDh.yitBdgJiQ2FrMZnelF5gnd2tiwkBXgsFQoqXOBXH1mm2Xp2', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '2023-01-26 14:14:00', '2023-01-26 14:14:00'),
(10, 'customer4', 'customer4@gmail.com', NULL, '$2y$10$tu44s33bH8WXmGdDF33Gpe/098mc8W1aZIuQPEHVi4XKnQtk6DuPK', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, '2023-01-26 14:14:21', '2023-01-26 14:14:21'),
(11, 'arnab', 'arnab@gmail.com', NULL, '$2y$10$zfTccQ35GlxWbkx/egXpLOpah895k./zWqG/lebii.EWC.5bhWr3a', NULL, NULL, NULL, NULL, NULL, '0', NULL, 'backend/files/profile_pictures/arnab.jpg', NULL, '2023-02-23 07:27:22', '2023-02-23 07:27:42'),
(12, 'sifat ullah', 'padergulla@gmail.com', NULL, '$2y$10$88rrVa3zfY6xApB8hMfwyu2Qyv2uwyxy6hr.JABKZxDkr7EaS2u/u', NULL, NULL, NULL, NULL, NULL, '0', NULL, 'backend/files/profile_pictures/sifat-ullah.jpg', NULL, '2023-02-26 13:45:46', '2023-02-26 13:46:01');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) DEFAULT '0',
  `settings` varchar(255) DEFAULT '0',
  `offers` varchar(255) DEFAULT '0',
  `product` varchar(255) DEFAULT '0',
  `orders` varchar(255) DEFAULT '0',
  `tickets` varchar(255) DEFAULT '0',
  `blogs` varchar(255) DEFAULT '0',
  `reports` varchar(255) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_name` varchar(255) DEFAULT NULL,
  `warehouse_address` varchar(255) DEFAULT NULL,
  `warehouse_phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `warehouse_name`, `warehouse_address`, `warehouse_phone`, `created_at`, `updated_at`) VALUES
(1, 'Sylhet', 'Sylhet', '01409796453', NULL, NULL),
(2, 'Dhaka', 'Dhaka', '01743873476', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `websitereviews`
--

CREATE TABLE `websitereviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `review` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review_date` varchar(255) DEFAULT NULL,
  `review_month` varchar(255) DEFAULT NULL,
  `review_year` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `websitereviews`
--

INSERT INTO `websitereviews` (`id`, `user_id`, `name`, `review`, `rating`, `review_date`, `review_month`, `review_year`, `created_at`, `updated_at`) VALUES
(1, 2, 'admin', 'Beautiful E-commerce website', 5, '04-02-23', '2023', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `date`, `created_at`, `updated_at`) VALUES
(8, 2, 2, '2023-02-05 14:22:56', NULL, NULL),
(9, 2, 9, '2023-02-19 11:50:48', NULL, NULL),
(10, 12, 2, '2023-02-26 19:46:34', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_blog_category_id_foreign` (`blog_category_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigned_products`
--
ALTER TABLE `campaigned_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaigned_products_campaign_id_foreign` (`campaign_id`),
  ADD KEY `campaigned_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `childcategories_category_id_foreign` (`category_id`),
  ADD KEY `childcategories_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
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
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_gateway_bd`
--
ALTER TABLE `payment_gateway_bd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pickup_points`
--
ALTER TABLE `pickup_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_ticket_id_foreign` (`ticket_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp`
--
ALTER TABLE `smtp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `websitereviews`
--
ALTER TABLE `websitereviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `websitereviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlist_user_id_foreign` (`user_id`),
  ADD KEY `wishlist_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `campaigned_products`
--
ALTER TABLE `campaigned_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_gateway_bd`
--
ALTER TABLE `payment_gateway_bd`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pickup_points`
--
ALTER TABLE `pickup_points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smtp`
--
ALTER TABLE `smtp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `websitereviews`
--
ALTER TABLE `websitereviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_blog_category_id_foreign` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `campaigned_products`
--
ALTER TABLE `campaigned_products`
  ADD CONSTRAINT `campaigned_products_campaign_id_foreign` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `campaigned_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD CONSTRAINT `childcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `childcategories_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `websitereviews`
--
ALTER TABLE `websitereviews`
  ADD CONSTRAINT `websitereviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
