-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Máj 02. 09:30
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `hbwebsite`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `admin_cred`
--

CREATE TABLE `admin_cred` (
  `sr_no` int(11) NOT NULL,
  `admin_name` varchar(150) NOT NULL,
  `admin_pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `admin_cred`
--

INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`) VALUES
(1, 'azti', '12345');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `booking_details`
--

CREATE TABLE `booking_details` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `total_pay` int(11) NOT NULL,
  `room_no` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `booking_details`
--

INSERT INTO `booking_details` (`sr_no`, `booking_id`, `room_name`, `price`, `total_pay`, `room_no`, `user_name`, `phonenum`, `address`) VALUES
(1, 1, 'Simple Room', 300, 300, NULL, 'aszti', '123', 'ad'),
(2, 2, 'Simple Room', 300, 600, 'a2', 'aszti', '123', 'ad'),
(3, 3, 'Simple Room', 300, 1800, NULL, 'aszti', '123', 'ad'),
(4, 4, 'Supreme deluxe room', 900, 4500, NULL, 'aszti', '123', 'ad'),
(5, 5, 'Supreme deluxe room', 900, 900, NULL, 'aszti', '123', 'ad'),
(6, 6, 'Supreme deluxe room', 900, 7200, '52', 'aszti', '12323432', 'ad2342343'),
(7, 7, 'Supreme deluxe room', 900, 900, NULL, 'aszti', '123', 'ad'),
(8, 8, 'Simple Room', 300, 600, NULL, 'aszti', '123', 'ad'),
(9, 9, 'Luxury Room', 600, 3000, '159A', 'aszti', '123', 'ad'),
(10, 10, 'Luxury Room', 600, 1800, '15S', 'aszti', '123', 'ad'),
(11, 11, 'Supreme deluxe room', 900, 2700, '1', 'aszti', '123', 'ad'),
(12, 12, 'Simple Room', 300, 1200, '2', 'aszti', '123', 'ad'),
(13, 13, 'Deluxe Room', 500, 3000, '23', 'aszti', '123', 'ad'),
(14, 14, 'Luxury Room', 600, 2400, '44', 'aszti', '123', 'ad'),
(15, 15, 'Luxury Room', 600, 1200, NULL, 'aszti', '123', 'ad'),
(16, 16, 'Luxury Room', 600, 1200, '1', 'aszti', '123', 'ad'),
(17, 17, 'Simple Room', 300, 900, '20A', 'aszti', '123', 'ad'),
(18, 18, 'Simple Room', 300, 300, NULL, 'Tom Bombadil', '36302852704', 'Pécs 1212'),
(19, 19, 'Simple Room', 300, 3300, NULL, 'Tom Bombadil', '36302852704', 'Pécs 1212'),
(20, 20, 'Supreme deluxe room', 900, 900, NULL, 'Tom Bombadil', '36302852704', 'Pécs 1212'),
(21, 21, 'Supreme deluxe room', 900, 900, NULL, 'Tom Bombadil', '36302852704', 'Pécs 1212'),
(22, 22, 'Supreme deluxe room', 900, 2700, NULL, 'Tom Bombadil', '36302852704', 'Pécs 1212'),
(23, 28, 'Luxury Room', 600, 600, NULL, 'Tom Bombadil', '36302852704', 'Pécs 1212'),
(24, 29, 'Luxury Room', 600, 600, NULL, 'Tom Bombadil', '36302852704', 'Pécs 1212'),
(25, 30, 'Luxury Room', 600, 600, '1', 'Tom Bombadil', '36302852704', 'Pécs 1212'),
(26, 31, 'Deluxe Room', 500, 3500, '2', 'Tom Bombadil', '36302852704', 'Pécs 1212'),
(27, 32, 'Deluxe Room', 500, 500, '3', 'Tom Bombadil', '36302852704', 'Pécs 1212'),
(28, 33, 'Luxury Room', 600, 600, NULL, 'Tom Bombadil', '36302852704', 'Pécs 1212'),
(29, 34, 'Supreme deluxe room', 900, 900, NULL, 'Tom Bombadil', '36302852704', 'Pécs 1212'),
(30, 35, 'Supreme deluxe room', 900, 900, NULL, 'Tom Bombadil', '36302852704', 'Pécs 1212'),
(31, 36, 'Deluxe Room', 500, 500, NULL, 'Tom Bombadil', '36302852704', 'Pécs 1212'),
(32, 37, 'Simple Room', 300, 300, NULL, 'Tom Bombadil', '36302852704', 'Pécs 1212'),
(33, 38, 'Supreme deluxe room', 900, 900, NULL, 'Tom Bombadil', '36302852704', 'Pécs 1212'),
(34, 39, 'Simple Room', 300, 300, '2', 'Tom Bombadil', '36302852704', 'Pécs 1212');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `booking_order`
--

CREATE TABLE `booking_order` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `arrival` int(11) NOT NULL DEFAULT 0,
  `refund` int(11) DEFAULT NULL,
  `booking_status` varchar(100) NOT NULL DEFAULT 'pending',
  `order_id` varchar(150) NOT NULL,
  `trans_id` varchar(200) DEFAULT NULL,
  `trans_amt` int(11) NOT NULL,
  `trans_status` varchar(100) NOT NULL DEFAULT 'pending',
  `trans_resp_msg` varchar(200) DEFAULT NULL,
  `rate_review` int(11) DEFAULT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `booking_order`
--

INSERT INTO `booking_order` (`booking_id`, `user_id`, `room_id`, `check_in`, `check_out`, `arrival`, `refund`, `booking_status`, `order_id`, `trans_id`, `trans_amt`, `trans_status`, `trans_resp_msg`, `rate_review`, `datentime`) VALUES
(1, 2, 3, '2023-07-20', '2023-07-21', 0, NULL, 'pending', 'ORD_21055700', NULL, 0, 'pending', NULL, NULL, '2023-07-20 01:50:12'),
(2, 2, 3, '2023-07-20', '2023-07-22', 1, NULL, 'booked', 'ORD_24215693', '20220720111212800110168128204225279', 600, 'TXN_SUCCESS', 'Txn Success', NULL, '2023-07-20 02:14:44'),
(3, 2, 3, '2023-07-20', '2023-07-26', 0, 1, 'cancelled', 'ORD_26312547', '20220720111212800110168165603901976', 1800, 'TXN_SUCCESS', 'Txn Success', NULL, '2023-07-20 02:19:00'),
(4, 2, 6, '2023-07-20', '2023-07-25', 0, NULL, 'payment failed', 'ORD_28394638', '20220720111212800110168372503893816', 4500, 'TXN_FAILURE', 'Your payment has been declined by your bank. Please try again or use a different method to complete the payment.', NULL, '2023-07-20 02:30:52'),
(5, 2, 6, '2023-07-20', '2023-07-21', 0, 1, 'cancelled', 'ORD_22877860', '20220720111212800110168627705312020', 900, 'TXN_SUCCESS', 'Txn Success', NULL, '2023-07-20 02:32:09'),
(6, 2, 6, '2023-07-20', '2023-07-28', 1, NULL, 'booked', 'ORD_28689687', '20220720111212800110168303704048087', 7200, 'TXN_SUCCESS', 'Txn Success', 1, '2023-07-20 02:34:46'),
(7, 2, 6, '2023-07-29', '2023-07-30', 0, NULL, 'pending', 'ORD_24272313', NULL, 0, 'pending', NULL, NULL, '2023-07-29 01:13:42'),
(8, 2, 3, '2023-08-14', '2023-08-16', 0, 1, 'cancelled', 'ORD_22541670', '20220814111212800110168092803967754', 600, 'TXN_SUCCESS', 'Txn Success', NULL, '2023-08-14 01:16:05'),
(9, 2, 5, '2023-08-15', '2023-08-20', 1, NULL, 'booked', 'ORD_25267746', '20220815111212800110168656003990120', 3000, 'TXN_SUCCESS', 'Txn Success', 1, '2023-08-15 19:32:05'),
(10, 2, 5, '2023-08-18', '2023-08-21', 1, NULL, 'booked', 'ORD_27668816', '20220815111212800110168905703947446', 1800, 'TXN_SUCCESS', 'Txn Success', 1, '2023-08-15 19:32:58'),
(11, 2, 6, '2023-08-20', '2023-08-23', 1, NULL, 'booked', 'ORD_25750549', '20220820111212800110168431303975409', 2700, 'TXN_SUCCESS', 'Txn Success', 1, '2023-08-20 00:19:57'),
(12, 2, 3, '2023-08-20', '2023-08-24', 1, NULL, 'booked', 'ORD_2445093', '20220820111212800110168173403969278', 1200, 'TXN_SUCCESS', 'Txn Success', 1, '2023-08-20 00:20:23'),
(13, 2, 4, '2023-08-20', '2023-08-26', 1, NULL, 'booked', 'ORD_29233995', '20220820111212800110168584503978338', 3000, 'TXN_SUCCESS', 'Txn Success', 1, '2023-08-20 00:20:45'),
(14, 2, 5, '2023-08-20', '2023-08-24', 1, NULL, 'booked', 'ORD_28902800', '20220820111212800110168816503988359', 2400, 'TXN_SUCCESS', 'Txn Success', 1, '2023-08-20 00:21:06'),
(15, 2, 5, '2023-08-25', '2023-08-27', 0, 1, 'cancelled', 'ORD_2240367', '20220825111212800110168807304010818', 1200, 'TXN_SUCCESS', 'Txn Success', NULL, '2023-08-21 01:51:28'),
(16, 2, 5, '2023-08-26', '2023-08-28', 1, NULL, 'booked', 'ORD_28784829', '20220825111212800110168627505415606', 1200, 'TXN_SUCCESS', 'Txn Success', 1, '2023-08-25 01:52:04'),
(17, 2, 3, '2023-09-08', '2023-09-11', 1, NULL, 'booked', 'ORD_21289330', '20220908111212800110168809204050263', 900, 'TXN_SUCCESS', 'Txn Success', 0, '2023-09-08 01:15:30'),
(18, 5, 3, '2024-04-21', '2024-04-22', 0, NULL, 'pending', 'ORD_51296988', NULL, 0, 'pending', NULL, NULL, '2024-04-20 16:44:40'),
(19, 5, 3, '2024-12-01', '2024-12-12', 0, NULL, 'pending', 'ORD_52667610', NULL, 0, 'pending', NULL, NULL, '2024-04-20 16:51:33'),
(20, 5, 6, '2024-04-20', '2024-04-21', 0, NULL, 'pending', 'ORD_55896241', NULL, 0, 'pending', NULL, NULL, '2024-04-20 17:09:10'),
(21, 5, 6, '2024-12-01', '2024-12-02', 0, NULL, 'pending', 'ORD_54221227', NULL, 0, 'pending', NULL, NULL, '2024-04-20 17:56:42'),
(22, 5, 6, '2024-12-01', '2024-12-04', 0, NULL, 'pending', 'ORD_58702671', NULL, 0, 'pending', NULL, NULL, '2024-04-20 18:24:37'),
(23, 5, 5, '2024-04-27', '2024-04-30', 0, NULL, 'confirmed', '', NULL, 0, 'pending', NULL, NULL, '2024-04-26 20:09:10'),
(24, 5, 6, '2024-04-28', '2024-04-30', 0, NULL, 'confirmed', '', NULL, 0, 'pending', NULL, NULL, '2024-04-26 20:09:34'),
(25, 5, 6, '2024-04-28', '2024-05-01', 0, NULL, 'confirmed', '', NULL, 0, 'pending', NULL, NULL, '2024-04-26 20:10:01'),
(26, 5, 3, '2024-04-27', '2024-04-28', 0, NULL, 'confirmed', '', NULL, 0, 'pending', NULL, NULL, '2024-04-26 20:46:11'),
(27, 5, 3, '2024-04-27', '2024-04-28', 0, NULL, 'confirmed', '', NULL, 0, 'pending', NULL, NULL, '2024-04-26 20:47:24'),
(28, 5, 5, '2024-04-27', '2024-04-28', 0, NULL, 'pending', 'ORD_58268251', NULL, 0, 'pending', NULL, NULL, '2024-04-26 20:49:57'),
(29, 5, 5, '2024-04-28', '2024-04-29', 0, NULL, 'pending', 'ORD_56905210', NULL, 0, 'pending', NULL, NULL, '2024-04-26 20:51:35'),
(30, 5, 5, '2024-04-27', '2024-04-28', 1, NULL, 'booked', 'ORD_54243555', NULL, 0, 'pending', NULL, 1, '2024-04-26 21:02:43'),
(31, 5, 4, '2024-05-24', '2024-05-31', 1, NULL, 'booked', 'ORD_58583740', NULL, 0, 'pending', NULL, 1, '2024-04-26 21:03:41'),
(32, 5, 4, '2024-06-28', '2024-06-29', 1, NULL, 'booked', 'ORD_52289113', NULL, 0, 'pending', NULL, 1, '2024-04-26 21:09:57'),
(33, 5, 5, '2024-04-27', '2024-04-28', 0, 1, 'cancelled', 'ORD_5152974', NULL, 0, 'pending', NULL, NULL, '2024-04-26 21:15:45'),
(34, 5, 6, '2024-04-30', '2024-05-01', 0, NULL, 'booked', 'ORD_52142404', NULL, 0, 'pending', NULL, NULL, '2024-04-26 21:16:09'),
(35, 5, 6, '2024-05-09', '2024-05-11', 0, 0, 'cancelled', 'ORD_57702794', NULL, 0, 'pending', NULL, NULL, '2024-04-26 21:27:47'),
(36, 5, 4, '2024-04-27', '2024-04-28', 0, NULL, 'booked', 'ORD_56968919', NULL, 0, 'pending', NULL, NULL, '2024-04-26 21:33:26'),
(37, 5, 3, '2024-04-27', '2024-04-28', 0, 0, 'cancelled', 'ORD_59175184', NULL, 0, 'pending', NULL, NULL, '2024-04-26 21:35:47'),
(38, 5, 6, '2024-06-13', '2024-06-14', 0, NULL, 'booked', 'ORD_57492182', NULL, 0, 'pending', NULL, NULL, '2024-04-26 21:38:15'),
(39, 5, 3, '2024-05-16', '2024-05-17', 1, NULL, 'booked', 'ORD_59229229', NULL, 0, 'pending', NULL, 1, '2024-04-27 17:41:23');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `carousel`
--

CREATE TABLE `carousel` (
  `sr_no` int(11) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `carousel`
--

INSERT INTO `carousel` (`sr_no`, `image`) VALUES
(4, 'IMG_62045.png'),
(5, 'IMG_93127.png'),
(6, 'IMG_99736.png'),
(8, 'IMG_40905.png'),
(9, 'IMG_55677.png');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gmap` varchar(100) NOT NULL,
  `pn1` bigint(20) NOT NULL,
  `pn2` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `insta` varchar(100) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `iframe` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
(1, '7624, Pécs, Ifjúság útja 6', 'https://maps.app.goo.gl/RenWxiJadVNp8dMD8', 36302882704, 36705382828, 'asztalostamas88@gmail.com', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.twitter.com/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2767.7121305269634!2d18.204774526894408!3d46.07678089235743!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4742b194d0cf0d0f:0xc9623fb80db35e9f!2zUFRFIFRUSyBGw7ZsZHJhanppIMOpcyBGw7ZsZHR1ZG9tw6FueWkgSW50w6l6ZXQ!5e0!3m2!1shu!2shu!4v1712565882');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
(13, 'IMG_43553.svg', 'Wifi', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus incidunt odio quos dolore commodi repudiandae tenetur.'),
(14, 'IMG_49949.svg', 'Air conditioner', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus incidunt odio quos dolore commodi repudiandae tenetur.'),
(15, 'IMG_41622.svg', 'Television', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus incidunt odio quos dolore commodi repudiandae tenetur.'),
(17, 'IMG_47816.svg', 'Spa', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus incidunt odio quos dolore commodi repudiandae tenetur.'),
(18, 'IMG_96423.svg', 'Room Heater', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus incidunt odio quos dolore commodi repudiandae tenetur.'),
(19, 'IMG_27079.svg', 'Sauna', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus incidunt odio quos dolore commodi repudiandae tenetur.');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(13, 'bedroom'),
(14, 'balcony'),
(15, 'kitchen'),
(17, 'sofa');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rating_review`
--

CREATE TABLE `rating_review` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(200) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `rating_review`
--

INSERT INTO `rating_review` (`sr_no`, `booking_id`, `room_id`, `user_id`, `rating`, `review`, `seen`, `datentime`) VALUES
(12, 32, 4, 5, 4, 'It was pretty good', 0, '2024-04-26 21:12:28'),
(14, 30, 5, 5, 5, '5 stars no complaints!', 0, '2024-04-26 21:12:54'),
(15, 39, 3, 5, 4, 'fantörpikus volt', 1, '2024-04-27 17:42:39');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `area` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `description` varchar(350) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `removed` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `area`, `price`, `quantity`, `adult`, `children`, `description`, `status`, `removed`) VALUES
(1, 'simple room', 159, 58, 56, 12, 2, 'asdf asd', 1, 1),
(2, 'simple room 2', 785, 159, 85, 452, 10, 'adfasdfa sd', 1, 1),
(3, 'Simple Room', 250, 300, 10, 5, 3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dicta quia nisi voluptates impedit perspiciatis, nobis libero culpa error officiis totam?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dic', 1, 0),
(4, 'Deluxe Room', 300, 500, 10, 3, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dicta quia nisi voluptates impedit perspiciatis, nobis libero culpa error officiis totam?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dic', 1, 0),
(5, 'Luxury Room', 600, 600, 2, 8, 6, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dicta quia nisi voluptates impedit perspiciatis, nobis libero culpa error officiis totam?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dic', 1, 0),
(6, 'Supreme deluxe room', 500, 900, 12, 9, 10, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dicta quia nisi voluptates impedit perspiciatis, nobis libero culpa error officiis totam?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dic', 1, 0),
(7, 'test room', 100, 100, 2, 2, 2, 'szoba', 0, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `room_facilities`
--

CREATE TABLE `room_facilities` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `room_facilities`
--

INSERT INTO `room_facilities` (`sr_no`, `room_id`, `facilities_id`) VALUES
(29, 4, 14),
(30, 4, 18),
(31, 4, 19),
(35, 6, 13),
(36, 6, 14),
(37, 6, 18),
(38, 6, 19),
(39, 5, 13),
(40, 5, 14),
(41, 5, 18),
(50, 3, 14),
(51, 3, 15),
(52, 3, 18),
(53, 3, 19),
(54, 7, 13),
(55, 7, 14);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `room_features`
--

CREATE TABLE `room_features` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `features_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `room_features`
--

INSERT INTO `room_features` (`sr_no`, `room_id`, `features_id`) VALUES
(16, 4, 13),
(17, 4, 14),
(18, 4, 15),
(22, 6, 13),
(23, 6, 14),
(24, 6, 15),
(25, 5, 13),
(26, 5, 14),
(27, 5, 15),
(35, 3, 13),
(36, 3, 14),
(37, 3, 17),
(38, 7, 13),
(39, 7, 14);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `room_images`
--

CREATE TABLE `room_images` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `thumb` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `room_images`
--

INSERT INTO `room_images` (`sr_no`, `room_id`, `image`, `thumb`) VALUES
(15, 3, 'IMG_39782.png', 0),
(16, 3, 'IMG_65019.png', 1),
(17, 4, 'IMG_44867.png', 0),
(18, 4, 'IMG_78809.png', 1),
(19, 4, 'IMG_11892.png', 0),
(21, 5, 'IMG_17474.png', 0),
(22, 5, 'IMG_42663.png', 1),
(23, 5, 'IMG_70583.png', 0),
(24, 6, 'IMG_67761.png', 0),
(25, 6, 'IMG_69824.png', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `site_about` varchar(250) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, 'Aszti Website', 'asdlkfj Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dicta quia nisi voluptates impedit perspiciatis, nobis libero culpa error officiis totam?', 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `team_details`
--

CREATE TABLE `team_details` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `team_details`
--

INSERT INTO `team_details` (`sr_no`, `name`, `picture`) VALUES
(9, 'person 1', 'IMG_69318.jpg'),
(13, 'Person 2', 'IMG_81764.jpg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user_cred`
--

CREATE TABLE `user_cred` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `dob` date NOT NULL,
  `profile` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `token` varchar(200) DEFAULT NULL,
  `t_expire` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `user_cred`
--

INSERT INTO `user_cred` (`id`, `name`, `email`, `address`, `phonenum`, `pincode`, `dob`, `profile`, `password`, `is_verified`, `token`, `t_expire`, `status`, `datentime`) VALUES
(2, 'aszti', 'asztalostamas88@]mai.com', 'ad', '123', 123324, '1997-06-24', 'IMG_91058.jpeg', '$2y$10$2IsUjaIwxb/UuaR7abvUNOs/VKmwy848VPsNnswF4bIFRIMDE36zm', 1, NULL, NULL, 1, '2024-03-12 16:05:59'),
(5, 'Tom Bombadil', 'ryzewins@gmail.com', 'Pécs 1212', '36302852704', 12345, '1976-12-12', 'IMG_52056.jpeg', '$2y$10$H8aYn2FN35GO8168JR5aMOV9jlv.O9DJNBaYxbgwRjOyCPOEgo50e', 1, 'c4fb917bdc5be78182a70091db95406c', '2024-05-01', 1, '2024-04-20 16:42:30');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `user_queries`
--

INSERT INTO `user_queries` (`sr_no`, `name`, `email`, `subject`, `message`, `datentime`, `seen`) VALUES
(13, 'Tholdaren', 'asztalostamas8@gmail.com', 'how do i get there?', 'I dont know how to get there can you help me?', '2024-04-20 17:03:03', 1),
(14, 'Lajos Komáromi', 'feketelaci@gmail.com', 'nagyon szeretnék menni', 'heló', '2024-04-27 17:26:59', 0),
(15, 'Teszt', 'tesztemail@gmail.com', 'teszt', 'teszt?', '2024-04-29 11:05:31', 1),
(16, 'Miszter Lorem', 'ryzewins@gmail.com', 'kérdésem az', 'hogy mizu?', '2024-04-29 11:14:16', 1);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`sr_no`);

--
-- A tábla indexei `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`);

--
-- A tábla indexei `booking_order`
--
ALTER TABLE `booking_order`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `room_id` (`room_id`);

--
-- A tábla indexei `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`sr_no`);

--
-- A tábla indexei `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- A tábla indexei `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `rating_review`
--
ALTER TABLE `rating_review`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `user_id` (`user_id`);

--
-- A tábla indexei `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `facilities id` (`facilities_id`),
  ADD KEY `room id` (`room_id`);

--
-- A tábla indexei `room_features`
--
ALTER TABLE `room_features`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `features id` (`features_id`),
  ADD KEY `rm id` (`room_id`);

--
-- A tábla indexei `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room_id` (`room_id`);

--
-- A tábla indexei `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- A tábla indexei `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- A tábla indexei `user_cred`
--
ALTER TABLE `user_cred`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT a táblához `booking_order`
--
ALTER TABLE `booking_order`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT a táblához `carousel`
--
ALTER TABLE `carousel`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT a táblához `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT a táblához `rating_review`
--
ALTER TABLE `rating_review`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT a táblához `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT a táblához `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT a táblához `room_features`
--
ALTER TABLE `room_features`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT a táblához `room_images`
--
ALTER TABLE `room_images`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT a táblához `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `team_details`
--
ALTER TABLE `team_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT a táblához `user_cred`
--
ALTER TABLE `user_cred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `booking_details`
--
ALTER TABLE `booking_details`
  ADD CONSTRAINT `booking_details_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`);

--
-- Megkötések a táblához `booking_order`
--
ALTER TABLE `booking_order`
  ADD CONSTRAINT `booking_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`),
  ADD CONSTRAINT `booking_order_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Megkötések a táblához `rating_review`
--
ALTER TABLE `rating_review`
  ADD CONSTRAINT `rating_review_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`),
  ADD CONSTRAINT `rating_review_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `rating_review_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`);

--
-- Megkötések a táblához `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD CONSTRAINT `facilities id` FOREIGN KEY (`facilities_id`) REFERENCES `facilities` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `room id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Megkötések a táblához `room_features`
--
ALTER TABLE `room_features`
  ADD CONSTRAINT `features id` FOREIGN KEY (`features_id`) REFERENCES `features` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `rm id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Megkötések a táblához `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
