-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 07, 2023 at 05:46 AM
-- Server version: 10.5.19-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopingbooking_shoping`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_info`
--

CREATE TABLE `account_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` text DEFAULT NULL,
  `userId` text NOT NULL,
  `tradeLicence` text DEFAULT NULL,
  `drivingLicence` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `pass` text DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_info`
--

INSERT INTO `account_info` (`id`, `country`, `userId`, `tradeLicence`, `drivingLicence`, `email`, `phone`, `pass`, `address`) VALUES
(1, NULL, '11', NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, '13', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Bangladesh', '14', 'asfg sdf', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` text NOT NULL,
  `Subcategory` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `air`
--

CREATE TABLE `air` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `model` text NOT NULL,
  `img` text NOT NULL,
  `class` text NOT NULL,
  `form` text NOT NULL,
  `to` text NOT NULL,
  `date` text NOT NULL,
  `description` longtext NOT NULL,
  `start_at` text NOT NULL,
  `end_at` text NOT NULL,
  `price` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `air`
--

INSERT INTO `air` (`id`, `name`, `model`, `img`, `class`, `form`, `to`, `date`, `description`, `start_at`, `end_at`, `price`) VALUES
(8, 'Boeing', '787', 'air/202308330131aircraft-jet-landing-cloud-46148.webp', 'premium economy', 'Bangladesh', 'Singapur', '2023-01-16', '', '14:36', '14:37', '10000'),
(9, 'US-bangla', '888', 'air/202308340131ezgif-sixteen_nine_60.jpg', 'first class', 'Dhaka', 'khulna', '2023-01-17', '', '14:37', '14:36', '98520'),
(10, 'Bd Air', '999', 'air/202308370131Gulfstream-G450-business-jet-passengers.webp', 'business class', 'Saudi', 'Bangla', '2023-01-31', '', '14:37', '06:37', '95282'),
(11, 'No Name', '777', 'air/202308380131aircraft-jet-landing-cloud-46148.webp', 'business class', 'Germany', 'Singapur', '2023-01-31', '', '20:43', '17:44', '75312189'),
(12, 'Private', 'LM-001', 'air/202305180204Gulfstream-G450-business-jet-passengers.webp', 'premium economy', 'Sylth', 'Uttara', '2023-02-18', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>&nbsp;</p>', '03:23', '02:24', '999');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` text NOT NULL,
  `Subcategory` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `category`, `Subcategory`, `img`) VALUES
(2, '3', '1', 'banner/202302010600preview-travelling-banner-template-free-banner-design-1621008240.jpg'),
(3, '1', '1', 'banner/202302010601ezgif-sixteen_nine_60.jpg'),
(4, '3', '1', 'banner/202302010603aircraft-jet-landing-cloud-46148.webp');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `category` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`, `category`, `img`) VALUES
(1, 'Test', '1', 'BrandImg/202301310916partner_1.jpg'),
(2, 'Test', '1', 'BrandImg/202301310916partner_2.png'),
(3, 'Test', '1', 'BrandImg/202301310917partner_3.jpg'),
(7, 'Test', '3', 'BrandImg/202302040930building-a-strong-brand-e1519072390772.jpeg'),
(8, 'Test', '3', 'BrandImg/202302040930strong-brand-reputation-management-in-gurgaon-1024x634.jpg'),
(9, 'Test', '3', 'BrandImg/202302040930building-brand.webp'),
(10, 'Test', '3', 'BrandImg/202302040930branding-increase-sales.webp');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `model` text NOT NULL,
  `img` text NOT NULL,
  `coach` text NOT NULL,
  `form` text NOT NULL,
  `to` text NOT NULL,
  `date` text NOT NULL,
  `description` longtext NOT NULL,
  `price` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `name`, `model`, `img`, `coach`, `form`, `to`, `date`, `description`, `price`) VALUES
(4, 'Volvo', '999', 'bus/202308450131bus_2.png', 'non ac', 'Dhaka', 'Khulna', '2023-01-04', '', '9855'),
(5, 'Hino aj', '985', 'bus/202308460131bus_1.png', 'ac', 'Sylth', 'joshor', '2023-01-02', '', '988'),
(6, 'Bla Bla', 'bla-60', 'bus/202308470131bus_3.png', 'ac', 'Mipur', 'Uttara', '2023-01-21', '', '1000'),
(7, 'Combo', '300', 'bus/202308470131bus_4.png', 'non ac', 'Dhaka', 'Cox\'s', '2023-02-03', '', '90'),
(8, 'New Bus', '9000', 'bus/2023052002042019-honda-civic-sedan-1558453497.jpg', 'non ac', 'Dhaka', 'Germany', '2023-02-25', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>&nbsp;</p>', '6000');

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `model` text NOT NULL,
  `img` text NOT NULL,
  `type` text NOT NULL,
  `form` text NOT NULL,
  `to` text NOT NULL,
  `date` text NOT NULL,
  `description` longtext NOT NULL,
  `price` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `name`, `model`, `img`, `type`, `form`, `to`, `date`, `description`, `price`) VALUES
(2, 'Sedan', '888', 'car/2023101901291610871666_ambulanceservice.jpg', 'convertible', 'Dhaka', 'khulna', '2023-01-12', '', '1000'),
(3, 'Sedan', '00a', 'car/2023103801292019-honda-civic-sedan-1558453497.jpg', 'sedan', 'Mipur', 'Uttara', '2023-01-30', '', '10000'),
(4, 'Sedan', '888', 'car/2023101901291610871666_ambulanceservice.jpg', 'convertible', 'Dhaka', 'khulna', '2023-01-12', '', '1000'),
(5, 'Sedan', '00a', 'car/2023103801292019-honda-civic-sedan-1558453497.jpg', 'sedan', 'Mipur', 'Uttara', '2023-01-30', '', '10000'),
(6, 'Boeing', '888', 'car/202305220204220608020957-01-airbus-a330-into-yacht.jpg', 'offroaders', 'Germany', 'Uttara', '2023-02-17', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>&nbsp;</p>', '8000');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` text NOT NULL,
  `productid` text NOT NULL,
  `quantity` text NOT NULL,
  `price` text NOT NULL,
  `type` text NOT NULL,
  `discount` text NOT NULL,
  `attime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `userId`, `productid`, `quantity`, `price`, `type`, `discount`, `attime`) VALUES
(1, '1', '6', '1', '10000', 'hotel', '', '2023-02-08 09:14:47'),
(2, '1', '16', '1', '8000', 'shopping', '', '2023-02-08 09:14:59'),
(3, '1', '2', '1', '90000', 'package', '', '2023-02-08 09:15:45'),
(4, '1', '15', '1', '850545', 'shopping', '', '2023-02-08 09:16:53'),
(5, '1', '8', '1', '32000', 'shopping', '', '2023-02-08 09:17:49'),
(6, '1', '12', '1', '999', 'air', '', '2023-02-08 09:19:22'),
(7, '1', '32', '1', '100', 'shopping', '', '2023-02-08 09:19:48'),
(8, '1', '4', '1', '32000', 'shopping', '', '2023-02-08 09:20:24'),
(9, '1', '30', '1', '30000', 'shopping', '', '2023-02-08 09:20:35'),
(10, '1', '31', '1', '32000', 'shopping', '', '2023-02-08 09:20:50'),
(11, '1', '4', '1', '95020', 'hotel', '', '2023-02-08 09:21:18'),
(12, '1', '1', '1', '9000', 'hotel', '', '2023-02-08 09:35:15');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Priority` text NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `img` text NOT NULL,
  `sqIng` text DEFAULT NULL,
  `smImg` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `Priority`, `name`, `description`, `img`, `sqIng`, `smImg`) VALUES
(1, '1', 'Tour ', '<p>sdfg sdgdsf gfdsg dsfg sd</p>', 'CategoryImg/202309150131Rectangle_1.png', NULL, NULL),
(3, '1', 'Travle and Tour', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. &nbsp;when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. &nbsp;when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', 'CategoryImg/202306000201Coxbazar-Picnic-Banner-Design.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `code` text NOT NULL,
  `type` text NOT NULL,
  `amount` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`id`, `title`, `code`, `type`, `amount`) VALUES
(2, 'Eid Offer', 'eid2024', 'fixed', '300'),
(3, 'New Year Offer', 'newyear20258', 'persent', '30'),
(4, 'Today\'s Offer', '1stFeb2023', 'persent', '23');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`) VALUES
(1, 'Why choose us?', '<p>aesf asdgsd gsdgsdgsdg</p>');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `gallery_id` text NOT NULL,
  `checkin` text NOT NULL,
  `checkout` text NOT NULL,
  `description` longtext NOT NULL,
  `type` text NOT NULL,
  `num_of_room` text NOT NULL,
  `room_capacity` text NOT NULL,
  `price` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `name`, `address`, `gallery_id`, `checkin`, `checkout`, `description`, `type`, `num_of_room`, `room_capacity`, `price`) VALUES
(1, 'Swissotel Al Maqam', 'King Abdul Aziz Endowment, Ibrahim Al Khalil Street, Mecca 21955 Saudi Arabia', '202306270130', '18:32', '12:29', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>&nbsp;</p>', '', '500', '10', '9000'),
(2, 'The Hotel 00', 'Khulna , Joshor', '202306280130', '14:27', '15:29', '<p><strong>Lorem Ipsum</strong> is simply dummy te...', '', '500', '10', '9000'),
(3, 'The parkview', 'Jamaica , 255', '202308400131', '16:40', '16:24', '<p><strong>Lorem Ipsum</strong> is simply dummy te...', '', '2', '10', '3000'),
(4, 'Lakview', 'sonargoan', '202308420131', '06:47', '06:46', '<p><strong>Lorem Ipsum</strong> is simply dummy te...', '', '90', '100', '95020'),
(5, 'The New Hotel', 'Sundarban', '202303360206', '23:40', '02:36', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>&nbsp;</p>', '5 Star', '10', '5', '1000'),
(6, 'Test', 'Uttara', '202304450206', '22:45', '14:51', '<p>asfg sdg sdfgh sdfhn dhdsfh sdtbw3yrtjmne5t usdFh</p>', 'Electronics', '3', '8', '10000');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_gallery`
--

CREATE TABLE `hotel_gallery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `galleryId` text NOT NULL,
  `src` text NOT NULL,
  `time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotel_gallery`
--

INSERT INTO `hotel_gallery` (`id`, `galleryId`, `src`, `time`) VALUES
(1, '202306270130', 'hotel/2023062701305ba628e6ebcdfd027e4ce4c63df74e91-marina-bay-sands-king-beds.jpg', '2023-01-30 06:27:56'),
(2, '202306270130', 'hotel/202306270130hotel-booking3.jpg', '2023-01-30 06:27:56'),
(3, '202306270130', 'hotel/2023062701301407953244000-177513283.webp', '2023-01-30 06:27:56'),
(4, '202306270130', 'hotel/202306270130photo-1615460549969-36fa19521a4f.jpg', '2023-01-30 06:27:56'),
(5, '202306280130', 'hotel/2023062801301407953244000-177513283.webp', '2023-01-30 06:28:57'),
(6, '202306280130', 'hotel/202306280130photo-1615460549969-36fa19521a4f.jpg', '2023-01-30 06:28:57'),
(7, '202308400131', 'hotel/2023084001315ba628e6ebcdfd027e4ce4c63df74e91-marina-bay-sands-king-beds.jpg', '2023-01-31 08:40:39'),
(8, '202308420131', 'hotel/202308420131hotel-booking3.jpg', '2023-01-31 08:42:04'),
(9, '202303360206', 'hotel/202303360206image-5910-1600964295.jpg', '2023-02-06 03:36:41'),
(10, '202304450206', 'hotel/202304450206Chevron-Clinical-Laboratory.jpg', '2023-02-06 04:45:59'),
(11, '202306270130', 'hotel/202306270130hotel-booking3.jpg', '2023-01-30 06:27:56'),
(12, '202306270130', 'hotel/2023062701305ba628e6ebcdfd027e4ce4c63df74e91-marina-bay-sands-king-beds.jpg', '2023-01-30 06:27:56');

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_11_07_022158_users', 1),
(3, '2022_11_07_041710_category', 1),
(4, '2022_11_07_060910_sub_category', 1),
(5, '2022_11_07_070808_brand', 1),
(6, '2022_11_07_090021_slider', 1),
(7, '2022_11_07_100212_banner', 1),
(8, '2022_11_09_093936_ads', 1),
(9, '2022_11_14_023354_special_offer', 1),
(10, '2022_11_14_032040_special_offer_taline', 1),
(11, '2022_11_15_023302_faq', 1),
(12, '2022_12_04_031025_about', 1),
(13, '2023_01_29_065921_air', 2),
(14, '2023_01_29_093642_buses', 3),
(15, '2023_01_29_095807_car', 4),
(16, '2023_01_30_024742_hotel', 5),
(17, '2023_01_30_050036_hotel_gallery', 6),
(18, '2023_02_01_025242_packages', 7),
(19, '2023_02_01_074009_coupon', 8),
(20, '2023_02_01_085049_shoppoing', 9),
(21, '2023_02_01_092657_product_gallery', 10),
(23, '2023_02_07_063052_shopping_category', 12),
(25, '2023_02_06_095749_cart', 13),
(26, '2023_02_09_083751_account_info', 14);

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` text NOT NULL,
  `title` text NOT NULL,
  `details` longtext NOT NULL,
  `location` text NOT NULL,
  `duration` text NOT NULL,
  `date` text NOT NULL,
  `price` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `img`, `title`, `details`, `location`, `duration`, `date`, `price`) VALUES
(1, 'package/202304150201plan-your-amazing-holidays2.jpg', 'Family Package.', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n</p>', 'Barlin', '10 Day', '2023-02-15', '90000'),
(2, 'package/202304150201Coxbazar-Picnic-Banner-Design.jpg', 'One Day Pack', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n</p>', 'Barlin', '10 Day', '2023-02-15', '90000'),
(4, 'package/202307330201Coxbazar-Picnic-Banner-Design.jpg', 'Single package', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n</p>', 'Cox\'s', '5 Day', '2023-02-23', '10000'),
(5, 'package/202307340201plan-your-amazing-holidays2.jpg', 'Haliday', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n</p>', 'unknown', '5 Days', '2023-02-22', '1000000'),
(6, 'package/202306270205Coxbazar-Picnic-Banner-Design.jpg', 'Cox\'s Tour', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>&nbsp;</p>', 'Cox\'s', '5 Days', '2023-02-21', '10000'),
(7, 'package/202306280205plan-your-amazing-holidays2.jpg', 'Holidays', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>&nbsp;</p>', 'Uganda', '10 Days', '2023-03-03', '900000');

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
-- Table structure for table `product_gallery`
--

CREATE TABLE `product_gallery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `galleryId` text NOT NULL,
  `src` text NOT NULL,
  `time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_gallery`
--

INSERT INTO `product_gallery` (`id`, `galleryId`, `src`, `time`) VALUES
(1, '202303480202', 'shopping/202303480202androidphones-2048px-all-2x1-1.webp', '2023-02-02 03:48:34'),
(2, '202303480202', 'shopping/202303480202androidphones-2048px-top-2x1-1.webp', '2023-02-02 03:48:34'),
(3, '202303480202', 'shopping/202303480202Gear-Samsung-S22-Series.webp', '2023-02-02 03:48:34'),
(4, '202303500202', 'shopping/202303500202androidphones-2048px-all-2x1-1.webp', '2023-02-02 03:50:28'),
(5, '202303500202', 'shopping/202303500202androidphones-2048px-top-2x1-1.webp', '2023-02-02 03:50:28'),
(6, '202303500202', 'shopping/202303500202Gear-Samsung-S22-Series.webp', '2023-02-02 03:50:28'),
(7, '202303500202', 'shopping/202303500202Nothing-Phone-1-White.jpg', '2023-02-02 03:50:28'),
(8, '202305000202', 'shopping/202305000202bbf53920a03039e3eea7e351cbe77f52.jpg', '2023-02-02 05:00:28'),
(9, '202305020202', 'shopping/202305020202SD_01_T69_1690_Y0_X_EC_90.webp', '2023-02-02 05:02:00'),
(10, '202307100207', 'shopping/2023071002075ba628e6ebcdfd027e4ce4c63df74e91-marina-bay-sands-king-beds.jpg', '2023-02-07 07:10:49'),
(11, '202307100207', 'shopping/202307100207hotel-booking3.jpg', '2023-02-07 07:10:49'),
(12, '202307100207', 'shopping/2023071002071407953244000-177513283.webp', '2023-02-07 07:10:49'),
(13, '202308170207', 'shopping/202308170207bbf53920a03039e3eea7e351cbe77f52.jpg', '2023-02-07 08:17:21'),
(14, '202308170207', 'shopping/202308170207SD_01_T69_1690_Y0_X_EC_90.webp', '2023-02-07 08:17:21'),
(15, '202308170207', 'shopping/202308170207androidphones-2048px-all-2x1-1.webp', '2023-02-07 08:17:21'),
(16, '202308310207', 'shopping/202308310207photo-1618886614638-80e3c103d31a.jpg', '2023-02-07 08:31:11'),
(17, '202308310207', 'shopping/202308310207rsz_bbf53920a03039e3eea7e351cbe77f52.jpg', '2023-02-07 08:31:11'),
(18, '202308540207', 'shopping/2023085402072016-New-Korean-Fashion-Style-Cute-Girls-Kids-Baby-Cotton-Sleeveless-Round-Neck-Beach-Party-Sundress-Dress-Item-No-16828-.jpg', '2023-02-07 08:54:05'),
(19, '202308540207', 'shopping/202308540207b_7095c01d324ef460742efff2aa3b90387d7abeef.jpg', '2023-02-07 08:54:05'),
(20, '202308550207', 'shopping/202308550207b_7095c01d324ef460742efff2aa3b90387d7abeef.jpg', '2023-02-07 08:55:50'),
(21, '202308550207', 'shopping/202308550207photo-1618886614638-80e3c103d31a.jpg', '2023-02-07 08:55:50'),
(22, '202309020207', 'shopping/202309020207photo-1618886614638-80e3c103d31a.jpg', '2023-02-07 09:02:58'),
(23, '202309020207', 'shopping/202309020207rsz_bbf53920a03039e3eea7e351cbe77f52.jpg', '2023-02-07 09:02:58'),
(24, '202309060207', 'shopping/2023090602073f477c11-9550-4db8-b360-7621b5fddd9b1634625769534-Antheaa-Women-Dresses-7701634625767867-1.webp', '2023-02-07 09:06:19'),
(25, '202309090207', 'shopping/202309090207m-ut-3006-aask-original-imag7xssme44aynm-bb.webp', '2023-02-07 09:09:12'),
(26, '202309090207', 'shopping/2023090902073f477c11-9550-4db8-b360-7621b5fddd9b1634625769534-Antheaa-Women-Dresses-7701634625767867-1.webp', '2023-02-07 09:09:12'),
(27, '202309090207', 'shopping/202309090207m-ut-3006-aask-original-imag7xssme44aynm-bb.webp', '2023-02-07 09:09:36'),
(28, '202309090207', 'shopping/2023090902073f477c11-9550-4db8-b360-7621b5fddd9b1634625769534-Antheaa-Women-Dresses-7701634625767867-1.webp', '2023-02-07 09:09:36'),
(29, '202309110207', 'shopping/202309110207dress01a_1.jpg', '2023-02-07 09:11:11'),
(30, '202309110207', 'shopping/202309110207m-ut-3006-aask-original-imag7xssme44aynm-bb.webp', '2023-02-07 09:11:11'),
(31, '202309110207', 'shopping/2023091102073f477c11-9550-4db8-b360-7621b5fddd9b1634625769534-Antheaa-Women-Dresses-7701634625767867-1.webp', '2023-02-07 09:11:11'),
(32, '202309140207', 'shopping/202309140207photo-1618886614638-80e3c103d31a.jpg', '2023-02-07 09:14:57'),
(33, '202309140207', 'shopping/202309140207rsz_bbf53920a03039e3eea7e351cbe77f52.jpg', '2023-02-07 09:14:57'),
(34, '202309180207', 'shopping/202309180207b_7095c01d324ef460742efff2aa3b90387d7abeef.jpg', '2023-02-07 09:18:43'),
(35, '202309180207', 'shopping/202309180207photo-1618886614638-80e3c103d31a.jpg', '2023-02-07 09:18:43'),
(36, '202309180207', 'shopping/202309180207rsz_bbf53920a03039e3eea7e351cbe77f52.jpg', '2023-02-07 09:18:43'),
(37, '202309220207', 'shopping/202309220207image.jpg', '2023-02-07 09:22:34'),
(38, '202309220207', 'shopping/202309220207af2ef6a0e2c9c528b09655df79f3b312_XL.jpg', '2023-02-07 09:22:34'),
(39, '202309220207', 'shopping/202309220207Appliances-9374530.jpg', '2023-02-07 09:22:34'),
(40, '202309250207', 'shopping/202309250207image.jpg', '2023-02-07 09:25:00'),
(41, '202309250207', 'shopping/202309250207af2ef6a0e2c9c528b09655df79f3b312_XL.jpg', '2023-02-07 09:25:00'),
(42, '202309250207', 'shopping/202309250207Appliances-9374530.jpg', '2023-02-07 09:25:00'),
(43, '202310420207', 'shopping/202310420207image.jpg', '2023-02-07 10:42:19'),
(44, '202310420207', 'shopping/202310420207af2ef6a0e2c9c528b09655df79f3b312_XL.jpg', '2023-02-07 10:42:19'),
(45, '202310420207', 'shopping/202310420207Appliances-9374530.jpg', '2023-02-07 10:42:19'),
(46, '202310430207', 'shopping/202310430207dress01a_1.jpg', '2023-02-07 10:43:38'),
(47, '202310430207', 'shopping/202310430207m-ut-3006-aask-original-imag7xssme44aynm-bb.webp', '2023-02-07 10:43:38'),
(48, '202310430207', 'shopping/2023104302073f477c11-9550-4db8-b360-7621b5fddd9b1634625769534-Antheaa-Women-Dresses-7701634625767867-1.webp', '2023-02-07 10:43:38'),
(49, '202310450207', 'shopping/202310450207dress01a_1.jpg', '2023-02-07 10:45:00'),
(50, '202310450207', 'shopping/202310450207m-ut-3006-aask-original-imag7xssme44aynm-bb.webp', '2023-02-07 10:45:00'),
(51, '202310450207', 'shopping/2023104502073f477c11-9550-4db8-b360-7621b5fddd9b1634625769534-Antheaa-Women-Dresses-7701634625767867-1.webp', '2023-02-07 10:45:00'),
(52, '202310460207', 'shopping/202310460207dress01a_1.jpg', '2023-02-07 10:46:00'),
(53, '202310460207', 'shopping/202310460207m-ut-3006-aask-original-imag7xssme44aynm-bb.webp', '2023-02-07 10:46:00'),
(54, '202310460207', 'shopping/2023104602072016-New-Korean-Fashion-Style-Cute-Girls-Kids-Baby-Cotton-Sleeveless-Round-Neck-Beach-Party-Sundress-Dress-Item-No-16828-.jpg', '2023-02-07 10:46:00'),
(55, '202310460207', 'shopping/202310460207dress01a_1.jpg', '2023-02-07 10:46:41'),
(56, '202310460207', 'shopping/202310460207m-ut-3006-aask-original-imag7xssme44aynm-bb.webp', '2023-02-07 10:46:41'),
(57, '202310460207', 'shopping/2023104602072016-New-Korean-Fashion-Style-Cute-Girls-Kids-Baby-Cotton-Sleeveless-Round-Neck-Beach-Party-Sundress-Dress-Item-No-16828-.jpg', '2023-02-07 10:46:41'),
(58, '202310470207', 'shopping/202310470207dress01a_1.jpg', '2023-02-07 10:47:27'),
(59, '202310470207', 'shopping/202310470207m-ut-3006-aask-original-imag7xssme44aynm-bb.webp', '2023-02-07 10:47:27'),
(60, '202310480207', 'shopping/202310480207dress01a_1.jpg', '2023-02-07 10:48:16'),
(61, '202310480207', 'shopping/202310480207m-ut-3006-aask-original-imag7xssme44aynm-bb.webp', '2023-02-07 10:48:16'),
(62, '202310480207', 'shopping/202310480207m-ut-3006-aask-original-imag7xssme44aynm-bb.webp', '2023-02-07 10:48:55'),
(63, '202310490207', 'shopping/202310490207dress01a_1.jpg', '2023-02-07 10:49:47'),
(64, '202310490207', 'shopping/202310490207m-ut-3006-aask-original-imag7xssme44aynm-bb.webp', '2023-02-07 10:49:47'),
(65, '202310500207', 'shopping/202310500207dress01a_1.jpg', '2023-02-07 10:50:36'),
(66, '202310510207', 'shopping/202310510207m-ut-3006-aask-original-imag7xssme44aynm-bb.webp', '2023-02-07 10:51:12'),
(67, '202310510207', 'shopping/202310510207dress01a_1.jpg', '2023-02-07 10:51:51'),
(68, '202310520207', 'shopping/202310520207m-ut-3006-aask-original-imag7xssme44aynm-bb.webp', '2023-02-07 10:52:32'),
(69, '202310530207', 'shopping/202310530207na-xl-3-4-sleeve-stitched-pankhudisarees-166-pankhudi-sarees-na-original-imagg477y2szsq2n.webp', '2023-02-07 10:53:08'),
(70, '202310540207', 'shopping/202310540207photo-1618886614638-80e3c103d31a.jpg', '2023-02-07 10:54:02'),
(71, '202310540207', 'shopping/202310540207photo-1618886614638-80e3c103d31a.jpg', '2023-02-07 10:54:37'),
(72, '202310540207', 'shopping/202310540207rsz_bbf53920a03039e3eea7e351cbe77f52.jpg', '2023-02-07 10:54:37'),
(73, '202311030207', 'shopping/202311030207image.jpg', '2023-02-07 11:03:42'),
(74, '202311030207', 'shopping/202311030207af2ef6a0e2c9c528b09655df79f3b312_XL.jpg', '2023-02-07 11:03:42'),
(75, '202311040207', 'shopping/202311040207image.jpg', '2023-02-07 11:04:19'),
(76, '202311040207', 'shopping/202311040207af2ef6a0e2c9c528b09655df79f3b312_XL.jpg', '2023-02-07 11:04:19'),
(77, '202311040207', 'shopping/202311040207X40.png', '2023-02-07 11:04:58'),
(78, '202311040207', 'shopping/202311040207image.jpg', '2023-02-07 11:04:58'),
(79, '202311040207', 'shopping/202311040207af2ef6a0e2c9c528b09655df79f3b312_XL.jpg', '2023-02-07 11:04:58'),
(80, '202302390208', 'shopping/202302390208bbf53920a03039e3eea7e351cbe77f52.jpg', '2023-02-08 02:39:59'),
(81, '202302390208', 'shopping/202302390208SD_01_T69_1690_Y0_X_EC_90.webp', '2023-02-08 02:39:59'),
(82, '202303280208', 'shopping/202303280208dress01a_1.jpg', '2023-02-08 03:28:07'),
(83, '202303280208', 'shopping/202303280208m-ut-3006-aask-original-imag7xssme44aynm-bb.webp', '2023-02-08 03:28:07'),
(84, '202303300208', 'shopping/202303300208image.jpg', '2023-02-08 03:30:30'),
(85, '202303300208', 'shopping/202303300208af2ef6a0e2c9c528b09655df79f3b312_XL.jpg', '2023-02-08 03:30:30');

-- --------------------------------------------------------

--
-- Table structure for table `shopping`
--

CREATE TABLE `shopping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `img` text NOT NULL,
  `imgGallery` text NOT NULL,
  `price` text NOT NULL,
  `brand` text NOT NULL,
  `tag` text DEFAULT NULL,
  `category` text DEFAULT NULL,
  `rating` text DEFAULT NULL,
  `shortdesc` text NOT NULL,
  `longdesc` longtext NOT NULL,
  `qnt` text NOT NULL,
  `delevery_crg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shopping`
--

INSERT INTO `shopping` (`id`, `title`, `img`, `imgGallery`, `price`, `brand`, `tag`, `category`, `rating`, `shortdesc`, `longdesc`, `qnt`, `delevery_crg`) VALUES
(1, 'Dress 1', 'shopping/202310460207dress01a_1.jpg', '202310460207', '100', 'Woman', 'dress,', 'V29tYW4gJiBLaWQncw==', NULL, 'this is a dress', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</p>', '100', '100'),
(2, 'Dress 2', 'shopping/2023104602073f477c11-9550-4db8-b360-7621b5fddd9b1634625769534-Antheaa-Women-Dresses-7701634625767867-1.webp', '202310460207', '10000', 'Girls', 'dress ,', 'V29tYW4gJiBLaWQncw==', NULL, 'this is a phone', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</p>', '2000', '300'),
(3, 'Dress 3', 'shopping/202310470207na-xl-3-4-sleeve-stitched-pankhudisarees-166-pankhudi-sarees-na-original-imagg477y2szsq2n.webp', '202310470207', '1000', 'Girls dress', 'dress,,', 'V29tYW4gJiBLaWQncw==', NULL, 'this is a dress', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</p>', '100', '300'),
(4, 'Dress 4', 'shopping/202310480207m-ut-3006-aask-original-imag7xssme44aynm-bb.webp', '202310480207', '32000', 'Girls dress', 'dress,,', 'V29tYW4gJiBLaWQncw==', NULL, 'this is a shirt', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</p>', '300', '50'),
(5, 'Dress 5', 'shopping/202310480207dress01a_1.jpg', '202310480207', '3605', 'Woman', 'dress,', 'V29tYW4gJiBLaWQncw==', NULL, 'this is a dress', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</p>', '300', '300'),
(6, 'Dress 6', 'shopping/2023104902072016-New-Korean-Fashion-Style-Cute-Girls-Kids-Baby-Cotton-Sleeveless-Round-Neck-Beach-Party-Sundress-Dress-Item-No-16828-.jpg', '202310490207', '3000', 'Woman', 'dress,', 'V29tYW4gJiBLaWQncw==', NULL, 'this is a dress', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</p>', '20', '20'),
(7, 'Dress', 'shopping/202310510207m-ut-3006-aask-original-imag7xssme44aynm-bb.webp', '202310510207', '3000', 'Woman', 'fredd,', 'V29tYW4gJiBLaWQncw==', NULL, 'this is a dress', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</p>', '502', '1400'),
(8, 'Boeing', 'shopping/202310510207na-xl-3-4-sleeve-stitched-pankhudisarees-166-pankhudi-sarees-na-original-imagg477y2szsq2n.webp', '202310510207', '32000', 'Girls dress', 'dsad,', 'V29tYW4gJiBLaWQncw==', NULL, 'this is a girls dress', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,<strong>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</strong></p>', '5200', '300'),
(9, 'Boeing', 'shopping/202310520207m-ut-3006-aask-original-imag7xssme44aynm-bb.webp', '202310520207', '300', 'Woman', 'dree,,', 'V29tYW4gJiBLaWQncw==', NULL, 'this is a phone', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</p>', '500', '100'),
(10, 'Dress 95', 'shopping/2023105302073f477c11-9550-4db8-b360-7621b5fddd9b1634625769534-Antheaa-Women-Dresses-7701634625767867-1.webp', '202310530207', '32000', 'Girls dress', 'trsew,', 'V29tYW4gJiBLaWQncw==', NULL, 'this is a phone', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</p>', '100', '100'),
(11, 'Shirt', 'shopping/202310540207bbf53920a03039e3eea7e351cbe77f52.jpg', '202310540207', '850545', 'Bagian Human', 'shirt,', 'TWFuICYgS2lkJ3M=', NULL, 'this is a shirt', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</p>', '44545', '100'),
(12, 'Dress for man', 'shopping/202310540207photo-1618886614638-80e3c103d31a.jpg', '202310540207', '8000', 'Bagian Human', 'asdfgasdgf,', 'TWFuICYgS2lkJ3M=', NULL, 'asf asd sdg sdg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</p>', '3020', '100'),
(13, 'Shirt', 'shopping/202310540207bbf53920a03039e3eea7e351cbe77f52.jpg', '202310540207', '850545', 'Bagian Human', 'shirt,', 'TWFuICYgS2lkJ3M=', NULL, 'this is a shirt', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</p>', '44545', '100'),
(14, 'Dress for man', 'shopping/202310540207photo-1618886614638-80e3c103d31a.jpg', '202310540207', '8000', 'Bagian Human', 'asdfgasdgf,', 'TWFuICYgS2lkJ3M=', NULL, 'asf asd sdg sdg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</p>', '3020', '100'),
(15, 'Shirt', 'shopping/202310540207bbf53920a03039e3eea7e351cbe77f52.jpg', '202310540207', '850545', 'Bagian Human', 'shirt,', 'TWFuICYgS2lkJ3M=', NULL, 'this is a shirt', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</p>', '44545', '100'),
(16, 'Dress for man', 'shopping/202310540207photo-1618886614638-80e3c103d31a.jpg', '202310540207', '8000', 'Bagian Human', 'asdfgasdgf,', 'TWFuICYgS2lkJ3M=', NULL, 'asf asd sdg sdg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</p>', '3020', '100'),
(17, 'Shirt', 'shopping/202310540207bbf53920a03039e3eea7e351cbe77f52.jpg', '202310540207', '850545', 'Bagian Human', 'shirt,', 'TWFuICYgS2lkJ3M=', NULL, 'this is a shirt', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</p>', '44545', '100'),
(18, 'Dress for man', 'shopping/202310540207photo-1618886614638-80e3c103d31a.jpg', '202310540207', '8000', 'Bagian Human', 'asdfgasdgf,', 'TWFuICYgS2lkJ3M=', NULL, 'asf asd sdg sdg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</p>', '3020', '100'),
(19, 'Shirt', 'shopping/202310540207bbf53920a03039e3eea7e351cbe77f52.jpg', '202310540207', '850545', 'Bagian Human', 'shirt,', 'TWFuICYgS2lkJ3M=', NULL, 'this is a shirt', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</p>', '44545', '100'),
(20, 'Dress for man', 'shopping/202310540207photo-1618886614638-80e3c103d31a.jpg', '202310540207', '8000', 'Bagian Human', 'asdfgasdgf,', 'TWFuICYgS2lkJ3M=', NULL, 'asf asd sdg sdg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</p>', '3020', '100'),
(21, 'Refrigerator', 'shopping/202311030207image.jpg', '202311030207', '32000', 'Walton', 'refirz,', 'RWxlY3Ryb25pY3MgRW1waXJl', NULL, 'this is a phone', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>&nbsp;</p>', '100', '100'),
(22, 'Bland', 'shopping/202311040207af2ef6a0e2c9c528b09655df79f3b312_XL.jpg', '202311040207', '600', 'Walton', 'electro,', 'RWxlY3Ryb25pY3MgRW1waXJl', NULL, 'this is a phone', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>&nbsp;</p>', '100', '100'),
(23, 'TV', 'shopping/202311040207X40.png', '202311040207', '30000', 'Walton', 'TV,', 'RWxlY3Ryb25pY3MgRW1waXJl', NULL, 'this is a phone', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>&nbsp;</p>', '100', '100'),
(24, 'Refrigerator', 'shopping/202311030207image.jpg', '202311030207', '32000', 'Walton', 'refirz,', 'RWxlY3Ryb25pY3MgRW1waXJl', NULL, 'this is a phone', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>&nbsp;</p>', '100', '100'),
(25, 'Bland', 'shopping/202311040207af2ef6a0e2c9c528b09655df79f3b312_XL.jpg', '202311040207', '600', 'Walton', 'electro,', 'RWxlY3Ryb25pY3MgRW1waXJl', NULL, 'this is a phone', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>&nbsp;</p>', '100', '100'),
(26, 'TV', 'shopping/202311040207X40.png', '202311040207', '30000', 'Walton', 'TV,', 'RWxlY3Ryb25pY3MgRW1waXJl', NULL, 'this is a phone', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>&nbsp;</p>', '100', '100'),
(27, 'TV', 'shopping/202311040207X40.png', '202311040207', '30000', 'Walton', 'TV,', 'RWxlY3Ryb25pY3MgRW1waXJl', NULL, 'this is a phone', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>&nbsp;</p>', '100', '100'),
(28, 'Refrigerator', 'shopping/202311030207image.jpg', '202311030207', '32000', 'Walton', 'refirz,', 'RWxlY3Ryb25pY3MgRW1waXJl', NULL, 'this is a phone', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>&nbsp;</p>', '100', '100'),
(29, 'Bland', 'shopping/202311040207af2ef6a0e2c9c528b09655df79f3b312_XL.jpg', '202311040207', '600', 'Walton', 'electro,', 'RWxlY3Ryb25pY3MgRW1waXJl', NULL, 'this is a phone', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>&nbsp;</p>', '100', '100'),
(30, 'TV', 'shopping/202311040207X40.png', '202311040207', '30000', 'Walton', 'TV,', 'RWxlY3Ryb25pY3MgRW1waXJl', NULL, 'this is a phone', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>&nbsp;</p>', '100', '100'),
(31, 'Man Item', 'shopping/202302390208photo-1618886614638-80e3c103d31a.jpg', '202302390208', '32000', 'Man', 'man,', 'TWFuICYgS2lkJ3M=', NULL, 'this is a phone', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>&nbsp;</p>', '100', '100'),
(32, 'Woman', 'shopping/202303280208m-ut-3006-aask-original-imag7xssme44aynm-bb.webp', '202303280208', '100', 'womans', 'woman,', 'V29tYW4gJiBLaWQncw==', NULL, 'this is a phone', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,<strong>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,</strong></p>', '100', '100'),
(33, 'Refrigerator', 'shopping/202303300208Appliances-9374530.jpg', '202303300208', '1000', 'Singer', 'ref,', 'RWxlY3Ryb25pY3MgRW1waXJl', NULL, 'this is a kid\'s', '<p>,mas hfasklfjsgjase;iaropyweo yigporehkasdl;hkprekjaepr3o-=]tkreiop erhasrtj&nbsp;</p>', '101', '100');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_category`
--

CREATE TABLE `shopping_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shopping_category`
--

INSERT INTO `shopping_category` (`id`, `category`) VALUES
(1, 'V29tYW4gJiBLaWQncw=='),
(2, 'TWFuICYgS2lkJ3M='),
(3, 'RWxlY3Ryb25pY3MgRW1waXJl');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `category`, `img`) VALUES
(1, '3', 'slider/202302050251photo-1615460549969-36fa19521a4f.jpg'),
(2, '3', 'slider/2023020502515ba628e6ebcdfd027e4ce4c63df74e91-marina-bay-sands-king-beds.jpg'),
(3, '1', 'slider/202302050251plan-your-amazing-holidays2.jpg'),
(4, '1', 'slider/202302050252Gulfstream-G450-business-jet-passengers.webp'),
(5, '1', 'slider/202302050252aircraft-jet-landing-cloud-46148.webp');

-- --------------------------------------------------------

--
-- Table structure for table `specialoffer`
--

CREATE TABLE `specialoffer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `priority` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `specialoffertagline`
--

CREATE TABLE `specialoffertagline` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `category` text NOT NULL,
  `subcategory` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `img` text NOT NULL,
  `mainCategory` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `name`, `description`, `img`, `mainCategory`) VALUES
(1, 'saf vasf', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>', 'CategoryImg/SubCategoryImg/202302010536Coxbazar-Picnic-Banner-Design.jpg', '2');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `mail` text DEFAULT NULL,
  `pass` text DEFAULT NULL,
  `role` int(11) DEFAULT 0,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `logo`, `mail`, `pass`, `role`, `status`) VALUES
(1, 'sdff', '', 'userLogo/202301290646image-5910-1600964295.jpg', 'imtanvir70@gmail.com', '25f9e794323b453885f5181f1b624d0b', 1, 1),
(2, NULL, '0178525852', NULL, 'navieasoft@gmail.com', 'd1febbf55be86fc9218f65ffd3691b98', 0, 0),
(3, 'Md Tanvir Hossain', '0178525852', NULL, 'navieasoft@gmail.com', 'be251981e1bfe02001790244151e3b2b', 0, 0),
(4, 'Md Tanvir Hossain', '0178525852', NULL, 'navieasoft@gmail.com', 'be251981e1bfe02001790244151e3b2b', 0, 0),
(11, 'Test', '0156546', NULL, 'fasfasf@gmail.com', '80d43e761287d503599db02758c969a7', 1, 0),
(12, 'Test', '0156546', NULL, 'fasfasf@gmail.com', '80d43e761287d503599db02758c969a7', 1, 0),
(13, 'Test', NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', 1, 0),
(14, '246546', '56546456', NULL, 'ffs@gmail.com', 'e0836ec71fed7d66eefb0c7cb3037896', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_info`
--
ALTER TABLE `account_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `air`
--
ALTER TABLE `air`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_gallery`
--
ALTER TABLE `hotel_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product_gallery`
--
ALTER TABLE `product_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping`
--
ALTER TABLE `shopping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_category`
--
ALTER TABLE `shopping_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialoffer`
--
ALTER TABLE `specialoffer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialoffertagline`
--
ALTER TABLE `specialoffertagline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_info`
--
ALTER TABLE `account_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `air`
--
ALTER TABLE `air`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hotel_gallery`
--
ALTER TABLE `hotel_gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_gallery`
--
ALTER TABLE `product_gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `shopping`
--
ALTER TABLE `shopping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `shopping_category`
--
ALTER TABLE `shopping_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `specialoffer`
--
ALTER TABLE `specialoffer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specialoffertagline`
--
ALTER TABLE `specialoffertagline`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
