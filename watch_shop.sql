-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2024 at 06:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffee_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `house_no` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `save_as` varchar(255) NOT NULL,
  `primary` tinyint(1) NOT NULL DEFAULT 0,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `house_no`, `address`, `landmark`, `city`, `state`, `country`, `pincode`, `save_as`, `primary`, `lat`, `lng`, `created_at`, `updated_at`) VALUES
(1, 1, 'Street', 'De Leon', 'Red Gate', 'Marikina', 'NCR', 'Philippines', '1800', 'Home', 0, NULL, NULL, '2024-11-17 02:07:14', '2024-11-17 02:13:29'),
(2, 1, 'Building', 'Aurora Blvd', 'TIP', 'Quezon City', 'NCR', 'Philippines', '1109', 'Work', 0, NULL, NULL, '2024-11-17 02:13:29', '2024-11-23 05:28:07'),
(3, 3, '120 J.P Rizal', 'San Roque', 'Queen Annie', 'Marikina City', 'Metro Manila', 'Philippines', '1801', 'Home', 0, NULL, NULL, '2024-11-23 05:28:07', '2024-11-26 06:23:10'),
(4, 4, '123', 'San Roque', 'Church', 'Marikina City', 'Metro Manila', 'Philippines', '1801', 'Home', 0, NULL, NULL, '2024-11-26 06:23:10', '2024-11-27 09:28:39'),
(5, 6, '232 - A', 'J.P. Rizal St., San Roque', 'Church', 'Marikina City', 'Metro Manila', 'Philippines', '1190', 'Home', 1, NULL, NULL, '2024-11-27 09:28:39', '2024-11-27 09:28:39');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coffees`
--

CREATE TABLE `coffees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `rating` decimal(10,1) NOT NULL DEFAULT 0.0,
  `cover` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coffees`
--

INSERT INTO `coffees` (`id`, `name`, `price`, `status`, `rating`, `cover`, `description`, `created_at`, `updated_at`) VALUES
(17, 'Rolex Submariner', 550000.00, 1, 4.8, '/coffees/rolexsubmariner_1732635370.png', 'The Submariner\'s rotatable bezel, with 60-minute graduations, helps divers track dive time and decompression stops. Made of durable, scratchproof Cerachrom ceramic, it features a luminescent zero marker for visibility in the dark. Its knurled edge ensures a secure grip, even with gloves.', '2024-11-26 07:36:11', '2024-11-26 08:53:09'),
(18, 'Rolex GMT-Master II', 595000.00, 1, 4.7, '/coffees/rolexgmt_1732635536.png', 'This model features a black dial and a two-tone grey and black Cerachrom bezel. In addition to the usual hour, minute, and second hands, the GMT-Master II has a 24-hour arrow-tipped hand and a rotatable 24-hour bezel. The 24-hour hand shows the \"home\" time zone, while the local time is easily adjusted by \"jumping\" the hour hand forward or backward without affecting the minute and second hands, ideal for travelers.', '2024-11-26 07:38:56', '2024-11-26 07:38:56'),
(19, 'Rolex Yacht-Master 40', 650000.00, 1, 4.6, '/coffees/rolexyacht_1732635641.png', 'The Yacht-Master features a bidirectional 60-minute bezel, made from precious metals or with a Cerachrom ceramic insert. The polished numerals and graduations contrast against a matte, sand-blasted background. This functional bezel helps calculate sailing times and contributes to the model’s unique design.', '2024-11-26 07:40:41', '2024-11-26 07:40:41'),
(20, 'Rolex Oyster Perpetual 41', 350000.00, 1, 4.6, '/coffees/rolexoyster_1732635707.png', 'The sunray finish on many Oyster Perpetual dials creates subtle light reflections through grooves brushed outward from the center. This effect gives the dial a dynamic glow that changes with wrist movement. The dial color is then applied using Physical Vapour Deposition or electroplating, followed by a light varnish coat for the final look.', '2024-11-26 07:41:47', '2024-11-26 07:41:47'),
(21, 'Rolex Daytona', 830000.00, 1, 4.9, '/coffees/rolexdaytona_1732635815.png', 'A key feature of the model is its tachymetric bezel, which measures speeds up to 400 miles or kilometers per hour. The black Cerachrom bezel, inspired by the 1965 model’s Plexiglas insert, is corrosion-resistant, scratchproof, and UV-resistant. The tachymetric scale is highly legible, with platinum-filled numerals applied via PVD. The monobloc design ensures durability and keeps the crystal securely in place for waterproofness.', '2024-11-26 07:43:35', '2024-11-26 07:57:57'),
(22, 'Rolex Day-Date 40', 2200000.00, 1, 4.7, '/coffees/rolexdaydate_1732635910.png', 'The Rolex fluted bezel, originally designed to secure the bezel and case for waterproofness, has evolved into a signature aesthetic feature. Once serving a functional purpose, it is now a symbol of distinction, with the Day-Date 40 showcasing it in gold.', '2024-11-26 07:45:10', '2024-11-26 07:45:10'),
(23, 'Cartier Tank Francaise', 580000.00, 1, 4.5, '/coffees/cartierfrancaise_1732636286.png', 'Tank Française medium model, quartz movement. Steel case set with 26 diamonds (1.09 carats), steel crown with blue spinel. Silvered sunray dial, blued-steel sword hands, sapphire crystal. Steel bracelet. Case: 32 x 27 mm, thickness: 7.1 mm. Water-resistant to 3 bar (30m/100ft).', '2024-11-26 07:51:26', '2024-11-26 07:51:26'),
(24, 'Panthere de Cartier', 1900000.00, 1, 4.4, '/coffees/cartierpanthere_1732636335.png', 'Panthère de Cartier medium model, quartz movement. Yellow gold 750/1000 case set with diamonds, dimensions: 27 x 36 mm, thickness: 6 mm, diamond-set crown. Silvered dial, blued-steel sword hands, yellow gold bracelet. Water-resistant to 3 bar (30m).', '2024-11-26 07:52:15', '2024-11-26 07:52:15'),
(25, 'Cartier Santos-Dumont', 370000.00, 1, 4.5, '/coffees/cartierdumont_1732636379.png', 'Santos-Dumont extra-large model, mechanical manual-wind movement, caliber 430 MC. Steel case, beaded crown with blue synthetic spinel, silver satin-finish dial with sunray effect, Roman numerals, blued-steel sword hands, sapphire crystal. Navy alligator strap with steel ardillon buckle. Case: 46.6 x 33.9 mm, thickness: 7.5 mm. Water-resistant to 3 bar (30m/100ft).', '2024-11-26 07:52:59', '2024-11-26 07:52:59'),
(26, 'Santos de Cartier', 870000.00, 1, 4.8, '/coffees/cartierchronograph_1732636455.png', 'Santos extra-large model, chronograph automatic movement, caliber 1904 CH MC. Steel case with yellow gold 750/1000 bezel, 7-sided crown set with blue synthetic spinel, satin-brushed silver dial, black steel sword hands with luminescence, sapphire crystal. Steel bracelet with \"SmartLink\" system and rubber strap with steel folding buckle, both featuring the \"QuickSwitch\" system. Case: 44.9 mm, thickness: 12.4 mm. Water-resistant to 10 bar (100m).', '2024-11-26 07:54:15', '2024-11-26 07:57:24'),
(27, 'Ballon Bleu de Cartier', 970000.00, 1, 4.6, '/coffees/cartierballon_1732636489.png', 'Ballon Bleu de Cartier, 33 mm, automatic mechanical movement. Steel case with fluted rose gold 750/1000 crown and synthetic spinel, rose gold bezel, silver guilloché dial set with 61 diamonds (0.63 carat). Blued-steel sword hands, sapphire crystal. Rose gold and steel interchangeable bracelet. Case thickness: 10.16 mm. Water-resistant to 3 bar (30m).', '2024-11-26 07:54:49', '2024-11-26 07:54:49'),
(28, 'Baignoire de Cartier', 1000000.00, 1, 4.5, '/coffees/cartierbaignoire_1732636557.png', 'Baignoire de Cartier small model, size 15, quartz movement. 18K yellow gold case, beaded crown with sapphire cabochon, rigid gold bracelet. Silvered dial, blued-steel sword hands, sapphire crystal. Length: 31.4 mm, width: 23.1 mm, thickness: 6.9 mm. Water-resistant to 3 bar (30m).', '2024-11-26 07:55:57', '2024-11-26 07:55:57'),
(29, 'Omega Seamaster Diver', 330000.00, 1, 4.4, '/coffees/omegadiver_1732637250.png', 'The Seamaster Diver 300M (42mm) features a stainless steel case, black ceramic bezel, and polished black ceramic dial with laser-engraved waves and a date at 6 o’clock. Rhodium-plated hands and raised indexes filled with Super-LumiNova. Powered by OMEGA Calibre 8800, visible through the sapphire caseback, on a black rubber strap.', '2024-11-26 08:07:30', '2024-11-26 08:07:30'),
(30, 'Omega Seamaster Aqua', 370000.00, 1, 4.5, '/coffees/omegaaqua_1732637351.png', 'The Seamaster Aqua Terra (41mm) honors OMEGA’s maritime heritage with a stainless steel case and wave-edged design. The sun-brushed blue dial features a teak pattern, date at 6 o’clock, and rhodium-plated hands with Super-LumiNova. Powered by the OMEGA Master Chronometer calibre 8900, certified by METAS, and presented on a polished and brushed bracelet.', '2024-11-26 08:09:11', '2024-11-26 08:09:11'),
(31, 'Omega Constellation', 1500000.00, 1, 4.3, '/coffees/omegaconstellation_1732637414.png', 'The OMEGA Constellation (41mm) features iconic half-moons and \"claws\" on the case. Crafted in 18K Sedna™ gold, it has a polished blue ceramic bezel with Ceragold™ Roman numerals, a sun-brushed blue dial, and a date at 6 o’clock. Powered by the OMEGA Co-Axial Master Chronometer Calibre 8901, visible through the domed sapphire crystal. Presented on a blue leather strap with rubber lining.', '2024-11-26 08:10:14', '2024-11-26 08:10:14'),
(32, 'Omega Seamaster Regatta', 430000.00, 1, 4.6, '/coffees/omegaseamaster_1732637475.png', 'The 46.75mm Seamaster Regatta, made of titanium, features analogue and digital displays with tools like a moonphase, chronograph, and regatta timer. Powered by OMEGA\'s Calibre 5701 quartz movement, it has a wave-pattern caseback, rubber pushers, and a blue rubber strap with Quick-Change system. Presented in a commemorative box for the 37th America’s Cup.', '2024-11-26 08:11:16', '2024-11-26 08:11:16'),
(33, 'Omega Speedmaster', 3000000.00, 1, 4.8, '/coffees/omegaspeedmaster_1732637558.png', 'The 43mm Chronoscope, celebrating Paris 2024, combines Speedmaster design with 1940s chronograph features. Made in 18K Moonshine™ Gold, it has a silvery white opaline dial, black subdials, and a ceramic bezel with OMEGA Ceragold™ tachymeter. The 18K Moonshine™ Gold caseback features a Paris 2024 medallion. Powered by the OMEGA Co-Axial Master Chronometer Calibre 9909, it comes on a matching bracelet with a comfort release system.', '2024-11-26 08:12:38', '2024-11-26 08:12:38'),
(34, 'Omega De Ville Ladymatic', 4700000.00, 1, 4.6, '/coffees/omegaladymatic_1732637624.png', 'The OMEGA Ladymatic combines elegant design with innovative watchmaking. It features a pearled mother-of-pearl dial with 11 diamond hour markers, protected by a sapphire crystal. The 34mm 18K Sedna™ gold case is adorned with 60 baguette-cut diamonds, and the bracelet has inlaid white mother-of-pearl links. The transparent caseback reveals the OMEGA Co-Axial calibre 8521 movement.', '2024-11-26 08:13:44', '2024-11-26 08:13:44'),
(35, 'Audemars Piguet 11:59', 22000000.00, 1, 4.5, '/coffees/audemars1159_1732637870.png', 'The highly contemporary 41 mm case of this complicated timepiece combines 18-carat white gold with black ceramic. It is complemented by an architectural movement in contrasting shades of black and anthracite grey. Subtle pink gold accents add the finishing touch.', '2024-11-26 08:17:50', '2024-11-26 08:18:31'),
(36, 'Audemars Piguet Comp', 13000000.00, 1, 4.4, '/coffees/audemarscompanion_1732638066.png', 'Fully crafted in titanium, the timepiece is imbued with the aesthetic DNA of the New York-based artist, who has placed a miniature COMPANION at the very heart of the watch, and features an innovative peripheral time display.', '2024-11-26 08:21:06', '2024-11-26 08:21:06'),
(37, 'Audemars Piguet Self 34', 3600000.00, 1, 4.7, '/coffees/audemarsroyaloak_1732638194.png', 'This 34 mm timepiece in 18-carat white gold shimmers with Frosted Gold. It is enhanced by a dial with the Manufacture’s new embossed “Crystal Sand” finish, which lends depth and brilliance to the piece.', '2024-11-26 08:23:14', '2024-11-26 08:24:22'),
(38, 'Audemars Piguet Quartz', 5000000.00, 1, 4.8, '/coffees/audemarsfrosted_1732638383.png', 'Baguette-cut diamonds enliven the pink-gold case, bracelet and bezel, while the burgundy \"Grande Tapisserie\" dial and Eastern Arabic numerals clearly impart meaning.', '2024-11-26 08:26:23', '2024-11-26 08:26:23'),
(39, 'Audemars Piguet Offshore', 5000000.00, 1, 4.3, '/coffees/audemarsoffshore_1732638422.png', 'Black ceramic case, glareproofed sapphire crystal and sapphire titanium caseback, black ceramic pushpieces and screw-locked crown.', '2024-11-26 08:27:02', '2024-11-26 08:27:02'),
(40, 'Audemars Piguet Self', 2200000.00, 1, 4.5, '/coffees/audemarsoakoffshore_1732638481.png', 'There’s a wealth of choice for adventurous spirits in this new 37 mm range with its mix of diamond set bezel, stainless steel case and rubber strap. Five new colours including white to wow.', '2024-11-26 08:28:01', '2024-11-26 08:28:01'),
(41, 'Patek Philippe Gondolo', 14000000.00, 1, 4.9, '/coffees/patekgondolo_1732638873.png', 'The Gondolo collection from Patek Philippe features rectangular, tonneau, and cushion-shaped cases, showcasing the brand\'s \"form\" watches. With strong lines and geometric simplicity, these timepieces offer a contemporary take on Art Deco style, reflecting a golden era for Patek Philippe. The collection subtly blends modern design with historical influences, inspired by pieces in the Patek Philippe museum.', '2024-11-26 08:34:33', '2024-11-26 08:34:33'),
(42, 'Patek Philippe Grand', 17000000.00, 1, 4.5, '/coffees/patekcomplications_1732638910.png', 'Patek Philippe introduces a new self-winding grand complication featuring its \"Travel Time\" dual time zone system and a 24-hour alarm with a hammer striking a classic gong. The watch is powered by a new integrated movement, with four patents for the alarm. Presented in an elegant Pilot-style platinum case, it’s a perfect travel companion.', '2024-11-26 08:35:10', '2024-11-26 08:47:45'),
(43, 'Patek Philippe Calatrava', 2500000.00, 1, 4.4, '/coffees/patekcalatrava_1732638950.png', 'With its pure lines, the calatrava is recognized as the very essence of the round wristwatch and one of the finest symbols of the Patek Philippe style. Supremely elegant, it charms each new generation of watch lovers by its timeless understated perfection.', '2024-11-26 08:35:50', '2024-11-26 08:35:50'),
(44, 'Patek Philippe Ellipse', 4800000.00, 1, 4.2, '/coffees/patekellipse_1732639499.png', 'The Golden Ellipse combines timeless design with rare craftsmanship in a new white gold model. The 18K gold dial features a champlevé technique, with cavities filled with Grand Feu black enamel. The raised gold areas are hand-engraved with arabesque and volute patterns. Beneath this artistic dial beats the ultra-thin self-winding caliber 240.', '2024-11-26 08:44:59', '2024-11-26 08:44:59'),
(45, 'Patek Philippe Nautilus', 26000000.00, 1, 4.5, '/coffees/pateknautilus_1732639551.png', 'Patek Philippe\'s Nautilus Haute Joaillerie 7118/1450 in white gold features a snow-set diamond case, bezel, and bracelet, with a dial set in the signature raised wave pattern. Powered by the self-winding caliber 324 S, visible through a sapphire caseback, it sparkles with 2,364 brilliant-cut diamonds (11.63 carats) of Top Wesselton quality. The bracelet has a patented fold-over clasp.', '2024-11-26 08:45:51', '2024-11-26 08:45:51'),
(46, 'Patek Philippe Aquanaut', 14000000.00, 1, 4.7, '/coffees/patekaquanaut_1732639589.png', 'Patek Philippe’s white gold Aquanaut Luce combines contemporary design with Haute Joaillerie. The dial features a checkerboard pattern of baguette-cut diamonds and blue sapphires, with a gradient sapphire bezel. Powered by the self-winding 26-330 S caliber, visible through a sapphire caseback, and complemented by a dark blue composite strap.', '2024-11-26 08:46:29', '2024-11-26 08:46:29');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `isPercentage` tinyint(1) NOT NULL,
  `description` text NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `expiryDate` varchar(255) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT 0,
  `minimumOrderAmount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `isPercentage`, `description`, `isActive`, `expiryDate`, `discount`, `minimumOrderAmount`, `created_at`, `updated_at`) VALUES
(1, 'SAVE10', 1, 'Get 10% off on your order', 1, '2024-12-31', 20, 50.00, NULL, NULL),
(2, 'FREESHIP', 0, 'Flat 50 pesos off on all orders', 1, '2024-12-31', 50, 50.00, NULL, NULL),
(3, 'BUNDLEDEAL', 1, 'Buy one get one 50% off', 0, '2024-09-15', 20, 0.00, NULL, NULL),
(4, 'COFFEESHOP', 1, 'Get 30 off on orders above 1000', 0, '2024-12-31', 30, 1000.00, NULL, NULL);

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_11_172746_create_coffees_table', 1),
(5, '2024_11_11_173709_add_phone_to_users_table', 2),
(6, '2024_11_11_185355_create_personal_access_tokens_table', 3),
(7, '2024_11_14_060325_create_coupons_table', 4),
(8, '2024_11_16_021253_create_personal_access_tokens_table', 5),
(9, '2024_11_16_031053_create_personal_access_tokens_table', 6),
(10, '2024_11_16_140122_create_addresses_table', 6),
(11, '2024_11_17_095741_create_addresses_table', 7),
(12, '2024_11_17_095852_create_addresses_table', 8),
(13, '2024_11_17_151736_create_orders_table', 9),
(14, '2024_11_17_152617_create_order_items_table', 9),
(15, '2024_11_17_195026_create_order_items_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `grandTotal` decimal(10,2) NOT NULL,
  `totalItem` int(11) NOT NULL,
  `totalPrice` decimal(10,2) NOT NULL,
  `total_delivery_charge` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `coupon` varchar(255) DEFAULT NULL,
  `tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `payment_status` tinyint(1) DEFAULT 0,
  `payment_mode` varchar(255) NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `grandTotal`, `totalItem`, `totalPrice`, `total_delivery_charge`, `discount`, `coupon`, `tax`, `payment_status`, `payment_mode`, `transaction_id`, `address`, `created_at`, `updated_at`) VALUES
(13, 3, 205.00, 1, 100.00, 100.00, 0.00, NULL, 0.00, 0, 'Cod', NULL, '{\"id\":3,\"user_id\":3,\"house_no\":\"120 J.P Rizal\",\"address\":\"San Roque\",\"landmark\":\"Queen Annie\",\"city\":\"Marikina City\",\"state\":\"Metro Manila\",\"country\":\"Philippines\",\"pincode\":\"1801\",\"save_as\":\"Home\",\"primary\":1,\"lat\":null,\"lng\":null,\"created_at\":\"2024-11-23T13:28:07.000000Z\",\"updated_at\":\"2024-11-23T13:28:07.000000Z\"}', '2024-11-23 06:47:44', '2024-11-23 06:47:44'),
(14, 3, 205.00, 1, 100.00, 100.00, 0.00, NULL, 0.00, 0, 'Cod', NULL, '{\"id\":3,\"user_id\":3,\"house_no\":\"120 J.P Rizal\",\"address\":\"San Roque\",\"landmark\":\"Queen Annie\",\"city\":\"Marikina City\",\"state\":\"Metro Manila\",\"country\":\"Philippines\",\"pincode\":\"1801\",\"save_as\":\"Home\",\"primary\":1,\"lat\":null,\"lng\":null,\"created_at\":\"2024-11-23T13:28:07.000000Z\",\"updated_at\":\"2024-11-23T13:28:07.000000Z\"}', '2024-11-23 16:06:09', '2024-11-23 16:06:09'),
(15, 3, 268.00, 1, 160.00, 100.00, 0.00, NULL, 0.00, 0, 'Cod', NULL, '{\"id\":3,\"user_id\":3,\"house_no\":\"120 J.P Rizal\",\"address\":\"San Roque\",\"landmark\":\"Queen Annie\",\"city\":\"Marikina City\",\"state\":\"Metro Manila\",\"country\":\"Philippines\",\"pincode\":\"1801\",\"save_as\":\"Home\",\"primary\":1,\"lat\":null,\"lng\":null,\"created_at\":\"2024-11-23T13:28:07.000000Z\",\"updated_at\":\"2024-11-23T13:28:07.000000Z\"}', '2024-11-23 16:11:36', '2024-11-23 16:11:36'),
(16, 3, 226.00, 1, 120.00, 100.00, 0.00, NULL, 0.00, 0, 'Cod', NULL, '{\"id\":3,\"user_id\":3,\"house_no\":\"120 J.P Rizal\",\"address\":\"San Roque\",\"landmark\":\"Queen Annie\",\"city\":\"Marikina City\",\"state\":\"Metro Manila\",\"country\":\"Philippines\",\"pincode\":\"1801\",\"save_as\":\"Home\",\"primary\":1,\"lat\":null,\"lng\":null,\"created_at\":\"2024-11-23T13:28:07.000000Z\",\"updated_at\":\"2024-11-23T13:28:07.000000Z\"}', '2024-11-23 16:19:16', '2024-11-23 16:19:16'),
(17, 3, 226.00, 1, 120.00, 100.00, 0.00, NULL, 0.00, 1, 'Stripe', '1', '{\"id\":3,\"user_id\":3,\"house_no\":\"120 J.P Rizal\",\"address\":\"San Roque\",\"landmark\":\"Queen Annie\",\"city\":\"Marikina City\",\"state\":\"Metro Manila\",\"country\":\"Philippines\",\"pincode\":\"1801\",\"save_as\":\"Home\",\"primary\":1,\"lat\":null,\"lng\":null,\"created_at\":\"2024-11-23T13:28:07.000000Z\",\"updated_at\":\"2024-11-23T13:28:07.000000Z\"}', '2024-11-23 16:28:20', '2024-11-23 16:28:20'),
(18, 3, 226.00, 1, 120.00, 100.00, 0.00, NULL, 0.00, 0, 'Cod', NULL, '{\"id\":3,\"user_id\":3,\"house_no\":\"120 J.P Rizal\",\"address\":\"San Roque\",\"landmark\":\"Queen Annie\",\"city\":\"Marikina City\",\"state\":\"Metro Manila\",\"country\":\"Philippines\",\"pincode\":\"1801\",\"save_as\":\"Home\",\"primary\":1,\"lat\":null,\"lng\":null,\"created_at\":\"2024-11-23T13:28:07.000000Z\",\"updated_at\":\"2024-11-23T13:28:07.000000Z\"}', '2024-11-23 16:29:42', '2024-11-23 16:29:42'),
(19, 3, 226.00, 1, 120.00, 100.00, 0.00, NULL, 0.00, 0, 'Cod', NULL, '{\"id\":3,\"user_id\":3,\"house_no\":\"120 J.P Rizal\",\"address\":\"San Roque\",\"landmark\":\"Queen Annie\",\"city\":\"Marikina City\",\"state\":\"Metro Manila\",\"country\":\"Philippines\",\"pincode\":\"1801\",\"save_as\":\"Home\",\"primary\":1,\"lat\":null,\"lng\":null,\"created_at\":\"2024-11-23T13:28:07.000000Z\",\"updated_at\":\"2024-11-23T13:28:07.000000Z\"}', '2024-11-23 16:30:07', '2024-11-23 16:30:07'),
(20, 3, 226.00, 1, 120.00, 100.00, 0.00, NULL, 0.00, 0, 'Cod', NULL, '{\"id\":3,\"user_id\":3,\"house_no\":\"120 J.P Rizal\",\"address\":\"San Roque\",\"landmark\":\"Queen Annie\",\"city\":\"Marikina City\",\"state\":\"Metro Manila\",\"country\":\"Philippines\",\"pincode\":\"1801\",\"save_as\":\"Home\",\"primary\":1,\"lat\":null,\"lng\":null,\"created_at\":\"2024-11-23T13:28:07.000000Z\",\"updated_at\":\"2024-11-23T13:28:07.000000Z\"}', '2024-11-23 16:34:54', '2024-11-23 16:34:54'),
(21, 3, 205.00, 1, 100.00, 100.00, 0.00, NULL, 0.00, 0, 'Cod', NULL, '{\"id\":3,\"user_id\":3,\"house_no\":\"120 J.P Rizal\",\"address\":\"San Roque\",\"landmark\":\"Queen Annie\",\"city\":\"Marikina City\",\"state\":\"Metro Manila\",\"country\":\"Philippines\",\"pincode\":\"1801\",\"save_as\":\"Home\",\"primary\":1,\"lat\":null,\"lng\":null,\"created_at\":\"2024-11-23T13:28:07.000000Z\",\"updated_at\":\"2024-11-23T13:28:07.000000Z\"}', '2024-11-23 16:38:22', '2024-11-23 16:38:22'),
(22, 3, 205.00, 1, 100.00, 100.00, 0.00, NULL, 0.00, 0, 'Cod', NULL, '{\"id\":3,\"user_id\":3,\"house_no\":\"120 J.P Rizal\",\"address\":\"San Roque\",\"landmark\":\"Queen Annie\",\"city\":\"Marikina City\",\"state\":\"Metro Manila\",\"country\":\"Philippines\",\"pincode\":\"1801\",\"save_as\":\"Home\",\"primary\":1,\"lat\":null,\"lng\":null,\"created_at\":\"2024-11-23T13:28:07.000000Z\",\"updated_at\":\"2024-11-23T13:28:07.000000Z\"}', '2024-11-23 16:38:31', '2024-11-23 16:38:31'),
(23, 3, 226.00, 1, 120.00, 100.00, 0.00, NULL, 0.00, 0, 'Cod', NULL, '{\"id\":3,\"user_id\":3,\"house_no\":\"120 J.P Rizal\",\"address\":\"San Roque\",\"landmark\":\"Queen Annie\",\"city\":\"Marikina City\",\"state\":\"Metro Manila\",\"country\":\"Philippines\",\"pincode\":\"1801\",\"save_as\":\"Home\",\"primary\":1,\"lat\":null,\"lng\":null,\"created_at\":\"2024-11-23T13:28:07.000000Z\",\"updated_at\":\"2024-11-23T13:28:07.000000Z\"}', '2024-11-23 20:38:11', '2024-11-23 20:38:11'),
(24, 4, 226.00, 1, 120.00, 100.00, 0.00, NULL, 0.00, 0, 'Cod', NULL, '{\"pincode\":1801,\"address\":\"San Roque\",\"house_no\":\"123\",\"city\":\"Marikina City\",\"state\":\"Metro Manila\",\"country\":\"Philippines\",\"save_as\":\"Home\",\"landmark\":\"Church\",\"primary\":true,\"user_id\":4,\"updated_at\":\"2024-11-26T14:23:10.000000Z\",\"created_at\":\"2024-11-26T14:23:10.000000Z\",\"id\":4}', '2024-11-26 06:23:14', '2024-11-26 06:23:14'),
(25, 4, 236.50, 1, 130.00, 100.00, 0.00, NULL, 0.00, 0, 'Cod', NULL, '{\"id\":4,\"user_id\":4,\"house_no\":\"123\",\"address\":\"San Roque\",\"landmark\":\"Church\",\"city\":\"Marikina City\",\"state\":\"Metro Manila\",\"country\":\"Philippines\",\"pincode\":\"1801\",\"save_as\":\"Home\",\"primary\":1,\"lat\":null,\"lng\":null,\"created_at\":\"2024-11-26T14:23:10.000000Z\",\"updated_at\":\"2024-11-26T14:23:10.000000Z\"}', '2024-11-26 07:15:43', '2024-11-26 07:15:43'),
(26, 4, 577600.00, 1, 550000.00, 100.00, 0.00, NULL, 0.00, 0, 'Cod', NULL, '{\"id\":4,\"user_id\":4,\"house_no\":\"123\",\"address\":\"San Roque\",\"landmark\":\"Church\",\"city\":\"Marikina City\",\"state\":\"Metro Manila\",\"country\":\"Philippines\",\"pincode\":\"1801\",\"save_as\":\"Home\",\"primary\":1,\"lat\":null,\"lng\":null,\"created_at\":\"2024-11-26T14:23:10.000000Z\",\"updated_at\":\"2024-11-26T14:23:10.000000Z\"}', '2024-11-26 09:36:53', '2024-11-26 09:36:53'),
(27, 4, 577600.00, 1, 550000.00, 100.00, 0.00, NULL, 0.00, 1, 'Stripe', '1', '{\"id\":4,\"user_id\":4,\"house_no\":\"123\",\"address\":\"San Roque\",\"landmark\":\"Church\",\"city\":\"Marikina City\",\"state\":\"Metro Manila\",\"country\":\"Philippines\",\"pincode\":\"1801\",\"save_as\":\"Home\",\"primary\":1,\"lat\":null,\"lng\":null,\"created_at\":\"2024-11-26T14:23:10.000000Z\",\"updated_at\":\"2024-11-26T14:23:10.000000Z\"}', '2024-11-26 09:37:06', '2024-11-26 09:37:06'),
(28, 4, 624850.00, 1, 595000.00, 100.00, 0.00, NULL, 0.00, 0, 'Cod', NULL, '{\"id\":4,\"user_id\":4,\"house_no\":\"123\",\"address\":\"San Roque\",\"landmark\":\"Church\",\"city\":\"Marikina City\",\"state\":\"Metro Manila\",\"country\":\"Philippines\",\"pincode\":\"1801\",\"save_as\":\"Home\",\"primary\":1,\"lat\":null,\"lng\":null,\"created_at\":\"2024-11-26T14:23:10.000000Z\",\"updated_at\":\"2024-11-26T14:23:10.000000Z\"}', '2024-11-26 09:38:18', '2024-11-26 09:38:18'),
(29, 4, 624850.00, 1, 595000.00, 100.00, 0.00, NULL, 0.00, 0, 'Cod', NULL, '{\"id\":4,\"user_id\":4,\"house_no\":\"123\",\"address\":\"San Roque\",\"landmark\":\"Church\",\"city\":\"Marikina City\",\"state\":\"Metro Manila\",\"country\":\"Philippines\",\"pincode\":\"1801\",\"save_as\":\"Home\",\"primary\":1,\"lat\":null,\"lng\":null,\"created_at\":\"2024-11-26T14:23:10.000000Z\",\"updated_at\":\"2024-11-26T14:23:10.000000Z\"}', '2024-11-26 09:46:52', '2024-11-26 09:46:52'),
(30, 4, 624850.00, 1, 595000.00, 100.00, 0.00, NULL, 0.00, 0, 'Cod', NULL, '{\"id\":4,\"user_id\":4,\"house_no\":\"123\",\"address\":\"San Roque\",\"landmark\":\"Church\",\"city\":\"Marikina City\",\"state\":\"Metro Manila\",\"country\":\"Philippines\",\"pincode\":\"1801\",\"save_as\":\"Home\",\"primary\":1,\"lat\":null,\"lng\":null,\"created_at\":\"2024-11-26T14:23:10.000000Z\",\"updated_at\":\"2024-11-26T14:23:10.000000Z\"}', '2024-11-26 10:07:43', '2024-11-26 10:07:43'),
(31, 4, 467600.00, 1, 550000.00, 100.00, 110000.00, 'SAVE10', 0.00, 0, 'Cod', NULL, '{\"id\":4,\"user_id\":4,\"house_no\":\"123\",\"address\":\"San Roque\",\"landmark\":\"Church\",\"city\":\"Marikina City\",\"state\":\"Metro Manila\",\"country\":\"Philippines\",\"pincode\":\"1801\",\"save_as\":\"Home\",\"primary\":1,\"lat\":null,\"lng\":null,\"created_at\":\"2024-11-26T14:23:10.000000Z\",\"updated_at\":\"2024-11-26T14:23:10.000000Z\"}', '2024-11-26 10:12:09', '2024-11-26 10:12:09'),
(32, 4, 467600.00, 1, 550000.00, 100.00, 110000.00, 'SAVE10', 0.00, 0, 'Cod', NULL, '{\"id\":4,\"user_id\":4,\"house_no\":\"123\",\"address\":\"San Roque\",\"landmark\":\"Church\",\"city\":\"Marikina City\",\"state\":\"Metro Manila\",\"country\":\"Philippines\",\"pincode\":\"1801\",\"save_as\":\"Home\",\"primary\":1,\"lat\":null,\"lng\":null,\"created_at\":\"2024-11-26T14:23:10.000000Z\",\"updated_at\":\"2024-11-26T14:23:10.000000Z\"}', '2024-11-26 10:20:11', '2024-11-26 10:20:11'),
(33, 4, 467600.00, 1, 550000.00, 100.00, 110000.00, 'SAVE10', 0.00, 0, 'Cod', NULL, '{\"id\":4,\"user_id\":4,\"house_no\":\"123\",\"address\":\"San Roque\",\"landmark\":\"Church\",\"city\":\"Marikina City\",\"state\":\"Metro Manila\",\"country\":\"Philippines\",\"pincode\":\"1801\",\"save_as\":\"Home\",\"primary\":1,\"lat\":null,\"lng\":null,\"created_at\":\"2024-11-26T14:23:10.000000Z\",\"updated_at\":\"2024-11-26T14:23:10.000000Z\"}', '2024-11-26 10:26:12', '2024-11-26 10:26:12'),
(34, 4, 467600.00, 1, 550000.00, 100.00, 110000.00, 'SAVE10', 0.00, 0, 'Cod', NULL, '{\"id\":4,\"user_id\":4,\"house_no\":\"123\",\"address\":\"San Roque\",\"landmark\":\"Church\",\"city\":\"Marikina City\",\"state\":\"Metro Manila\",\"country\":\"Philippines\",\"pincode\":\"1801\",\"save_as\":\"Home\",\"primary\":1,\"lat\":null,\"lng\":null,\"created_at\":\"2024-11-26T14:23:10.000000Z\",\"updated_at\":\"2024-11-26T14:23:10.000000Z\"}', '2024-11-26 10:30:36', '2024-11-26 10:30:36'),
(35, 4, 577600.00, 1, 550000.00, 100.00, 0.00, NULL, 0.00, 0, 'Cod', NULL, '{\"id\":4,\"user_id\":4,\"house_no\":\"123\",\"address\":\"San Roque\",\"landmark\":\"Church\",\"city\":\"Marikina City\",\"state\":\"Metro Manila\",\"country\":\"Philippines\",\"pincode\":\"1801\",\"save_as\":\"Home\",\"primary\":1,\"lat\":null,\"lng\":null,\"created_at\":\"2024-11-26T14:23:10.000000Z\",\"updated_at\":\"2024-11-26T14:23:10.000000Z\"}', '2024-11-26 10:39:31', '2024-11-26 10:39:31'),
(36, 6, 577550.00, 1, 550000.00, 100.00, 50.00, 'FREESHIP', 0.00, 0, 'Cod', NULL, '{\"pincode\":1190,\"address\":\"J.P. Rizal St., San Roque\",\"house_no\":\"232 - A\",\"city\":\"Marikina City\",\"state\":\"Metro Manila\",\"country\":\"Philippines\",\"save_as\":\"Home\",\"landmark\":\"Church\",\"primary\":true,\"user_id\":6,\"updated_at\":\"2024-11-27T17:28:39.000000Z\",\"created_at\":\"2024-11-27T17:28:39.000000Z\",\"id\":5}', '2024-11-27 09:29:07', '2024-11-27 09:29:07');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cover` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `item_id`, `name`, `price`, `quantity`, `cover`, `description`, `created_at`, `updated_at`) VALUES
(6, 34, 17, 'Rolex Submariner', 550000.00, 1, '/coffees/rolexsubmariner_1732635370.png', 'The Submariner\'s rotatable bezel, with 60-minute graduations, helps divers track dive time and decompression stops. Made of durable, scratchproof Cerachrom ceramic, it features a luminescent zero marker for visibility in the dark. Its knurled edge ensures a secure grip, even with gloves.', '2024-11-26 10:30:36', '2024-11-26 10:30:36'),
(7, 35, 17, 'Rolex Submariner', 550000.00, 1, '/coffees/rolexsubmariner_1732635370.png', 'The Submariner\'s rotatable bezel, with 60-minute graduations, helps divers track dive time and decompression stops. Made of durable, scratchproof Cerachrom ceramic, it features a luminescent zero marker for visibility in the dark. Its knurled edge ensures a secure grip, even with gloves.', '2024-11-26 10:39:31', '2024-11-26 10:39:31'),
(8, 36, 17, 'Rolex Submariner', 550000.00, 1, '/coffees/rolexsubmariner_1732635370.png', 'The Submariner\'s rotatable bezel, with 60-minute graduations, helps divers track dive time and decompression stops. Made of durable, scratchproof Cerachrom ceramic, it features a luminescent zero marker for visibility in the dark. Its knurled edge ensures a secure grip, even with gloves.', '2024-11-27 09:29:07', '2024-11-27 09:29:07');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(3, 'App\\Models\\User', 1, 'fritzdc@gmail.com', '67189f1f2a1f45c36e38870d7feac1a9203e5c3277963d3c405d45d4a7521889', '[\"*\"]', '2024-11-21 07:26:15', NULL, '2024-11-20 22:17:03', '2024-11-21 07:26:15'),
(23, 'App\\Models\\User', 4, 'qkmlcagampan@tip.edu.ph', '56ff4c33f07619d5c27ba6c287ba940c06c791130da0cdecaa7024c1cbbf54db', '[\"*\"]', '2024-11-27 08:40:43', NULL, '2024-11-27 08:36:13', '2024-11-27 08:40:43'),
(26, 'App\\Models\\User', 6, 'keithmarclcagampan@gmail.com', '4fecb54ec3b368f49a6482ee0bc69fb6b57cd028fd5873c77a47f7ecdbc96cb9', '[\"*\"]', '2024-11-27 09:30:56', NULL, '2024-11-27 09:13:34', '2024-11-27 09:30:56');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Ed4dJbvYXg4RDcyoWEQrF44QD6JEGFr7v5NfRR0z', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUnVXbXFlMDNEeGFjWDZubW9mazhWa0FHRHNTd2hzWldVWWxoM0hreCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1732646344),
('ohzCX4GNuYvJvU98mFelbVq2jUNkuY5byD4YDGbg', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiREwzejBpeTlDR2dUak1zRXhXTkZvSENLMElMaFpCcVl1cUw2NVE4aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732176409);

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`) VALUES
(1, 'Fritz Dela Cruz', 'fritzdc@gmail.com', NULL, '$2y$12$oh1WmfYSXMqgyG/xiGqQUeTGyRi0WquRJoetg.y8XFEDQSAh2ASIS', NULL, '2024-11-15 07:57:35', '2024-11-15 07:57:35', '09918944799'),
(2, 'charles', 'charles@gmai.com', NULL, '$2y$12$.72NjR9H4rND/JcderL.ReR1VnPfGF0urJCMkGeAUv5YPcwhUM02K', NULL, '2024-11-15 18:53:52', '2024-11-15 18:53:52', '09999999999'),
(3, 'Charles Luigi Mesa', 'qclgmesa@tip.edu.ph', NULL, '$2y$12$SG2i7k.N.rJRJHl5UcCKaOSpTnPtjkgWlJrHy44/F5tTRv5xyAeYm', NULL, '2024-11-23 05:27:16', '2024-11-23 05:27:16', '09391482211'),
(4, 'Keith Cagampan', 'qkmlcagampan@tip.edu.ph', NULL, '$2y$12$Rts9UIkK1nEufrWaakZgROfxtf6m6sEb9rkI66K5..f8Iq6/f/FK.', NULL, '2024-11-26 06:14:10', '2024-11-26 06:14:10', '09664970102'),
(5, 'Keith Marc L. Cagampan', 'keithmarccagampan@gmail.com', NULL, '$2y$12$CqXvDGlc.eHZGr/dQfpUyuYMkWLAId1g8ggLECVA386lckMIGcN9K', NULL, '2024-11-27 09:01:13', '2024-11-27 09:01:13', '09664970112'),
(6, 'Keith Marc Cagampan', 'keithmarclcagampan@gmail.com', NULL, '$2y$12$ve0pGtO495W65TE9qgNIze40bQEqmzIo/sF/Cdmi9JQANYL4u3vY6', NULL, '2024-11-27 09:02:53', '2024-11-27 09:02:53', '09664970120');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `coffees`
--
ALTER TABLE `coffees`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_item_id_foreign` (`item_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `coffees`
--
ALTER TABLE `coffees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `coffees` (`id`),
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
