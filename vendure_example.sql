-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 04-08-2021 a las 16:07:50
-- Versión del servidor: 8.0.13
-- Versión de PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vendure_example`
--
CREATE DATABASE IF NOT EXISTS `vendure_example` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `vendure_example`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `address`
--

CREATE TABLE `address` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `fullName` varchar(255) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `streetLine1` varchar(255) NOT NULL,
  `streetLine2` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `province` varchar(255) NOT NULL DEFAULT '',
  `postalCode` varchar(255) NOT NULL DEFAULT '',
  `phoneNumber` varchar(255) NOT NULL DEFAULT '',
  `defaultShippingAddress` tinyint(4) NOT NULL DEFAULT '0',
  `defaultBillingAddress` tinyint(4) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `customerId` int(11) DEFAULT NULL,
  `countryId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrator`
--

CREATE TABLE `administrator` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime DEFAULT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `administrator`
--

INSERT INTO `administrator` (`createdAt`, `updatedAt`, `deletedAt`, `firstName`, `lastName`, `emailAddress`, `id`, `userId`) VALUES
('2021-04-28 13:14:25.797347', '2021-04-28 13:14:25.797347', NULL, 'Super', 'Admin', 'superadmin', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asset`
--

CREATE TABLE `asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `mimeType` varchar(255) NOT NULL,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `fileSize` int(11) NOT NULL,
  `source` varchar(255) NOT NULL,
  `preview` varchar(255) NOT NULL,
  `focalPoint` text,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `asset`
--

INSERT INTO `asset` (`createdAt`, `updatedAt`, `name`, `type`, `mimeType`, `width`, `height`, `fileSize`, `source`, `preview`, `focalPoint`, `id`) VALUES
('2021-04-28 13:14:30.667259', '2021-04-28 13:14:30.667259', 'derick-david-409858-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1200, 44525, 'source\\b6\\derick-david-409858-unsplash.jpg', 'preview\\71\\derick-david-409858-unsplash__preview.jpg', NULL, 1),
('2021-04-28 13:14:31.016477', '2021-04-28 13:14:31.016477', 'kelly-sikkema-685291-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 47714, 'source\\5a\\kelly-sikkema-685291-unsplash.jpg', 'preview\\b8\\kelly-sikkema-685291-unsplash__preview.jpg', NULL, 2),
('2021-04-28 13:14:31.129940', '2021-04-28 13:14:31.129940', 'oscar-ivan-esquivel-arteaga-687447-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1071, 76870, 'source\\0b\\oscar-ivan-esquivel-arteaga-687447-unsplash.jpg', 'preview\\a1\\oscar-ivan-esquivel-arteaga-687447-unsplash__preview.jpg', NULL, 3),
('2021-04-28 13:14:31.219559', '2021-04-28 13:14:31.219559', 'daniel-korpai-1302051-unsplash.jpg', 'IMAGE', 'image/jpeg', 1280, 1600, 201064, 'source\\28\\daniel-korpai-1302051-unsplash.jpg', 'preview\\d2\\daniel-korpai-1302051-unsplash__preview.jpg', NULL, 4),
('2021-04-28 13:14:31.296123', '2021-04-28 13:14:31.296123', 'alexandru-acea-686569-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 71196, 'source\\e8\\alexandru-acea-686569-unsplash.jpg', 'preview\\9c\\alexandru-acea-686569-unsplash__preview.jpg', NULL, 5),
('2021-04-28 13:14:31.401323', '2021-04-28 13:14:31.401323', 'liam-briese-1128307-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 120523, 'source\\2e\\liam-briese-1128307-unsplash.jpg', 'preview\\58\\liam-briese-1128307-unsplash__preview.jpg', NULL, 6),
('2021-04-28 13:14:31.559749', '2021-04-28 13:14:31.559749', 'florian-olivo-1166419-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 73904, 'source\\63\\florian-olivo-1166419-unsplash.jpg', 'preview\\5a\\florian-olivo-1166419-unsplash__preview.jpg', NULL, 7),
('2021-04-28 13:14:31.783600', '2021-04-28 13:14:31.783600', 'vincent-botta-736919-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1200, 87075, 'source\\59\\vincent-botta-736919-unsplash.jpg', 'preview\\96\\vincent-botta-736919-unsplash__preview.jpg', NULL, 8),
('2021-04-28 13:14:31.994629', '2021-04-28 13:14:31.994629', 'juan-gomez-674574-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1060, 60470, 'source\\b8\\juan-gomez-674574-unsplash.jpg', 'preview\\09\\juan-gomez-674574-unsplash__preview.jpg', NULL, 9),
('2021-04-28 13:14:32.047549', '2021-04-28 13:14:32.047549', 'thomas-q-1229169-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1600, 94113, 'source\\86\\thomas-q-1229169-unsplash.jpg', 'preview\\7b\\thomas-q-1229169-unsplash__preview.jpg', NULL, 10),
('2021-04-28 13:14:32.088011', '2021-04-28 13:14:32.088011', 'adam-birkett-239153-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 17676, 'source\\3c\\adam-birkett-239153-unsplash.jpg', 'preview\\64\\adam-birkett-239153-unsplash__preview.jpg', NULL, 11),
('2021-04-28 13:14:32.132841', '2021-04-28 13:14:32.132841', 'eniko-kis-663725-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 42943, 'source\\1d\\eniko-kis-663725-unsplash.jpg', 'preview\\b5\\eniko-kis-663725-unsplash__preview.jpg', NULL, 12),
('2021-04-28 13:14:32.215318', '2021-04-28 13:14:32.215318', 'brandi-redd-104140-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1110, 91458, 'source\\21\\brandi-redd-104140-unsplash.jpg', 'preview\\9b\\brandi-redd-104140-unsplash__preview.jpg', NULL, 13),
('2021-04-28 13:14:32.271967', '2021-04-28 13:14:32.271967', 'jonathan-talbert-697262-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 103011, 'source\\69\\jonathan-talbert-697262-unsplash.jpg', 'preview\\3c\\jonathan-talbert-697262-unsplash__preview.jpg', NULL, 14),
('2021-04-28 13:14:32.324859', '2021-04-28 13:14:32.324859', 'zoltan-tasi-423051-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 49099, 'source\\92\\zoltan-tasi-423051-unsplash.jpg', 'preview\\21\\zoltan-tasi-423051-unsplash__preview.jpg', NULL, 15),
('2021-04-28 13:14:32.395763', '2021-04-28 13:14:32.395763', 'jakob-owens-274337-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 213089, 'source\\cf\\jakob-owens-274337-unsplash.jpg', 'preview\\5b\\jakob-owens-274337-unsplash__preview.jpg', NULL, 16),
('2021-04-28 13:14:32.453318', '2021-04-28 13:14:32.453318', 'patrick-brinksma-663044-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 190811, 'source\\0f\\patrick-brinksma-663044-unsplash.jpg', 'preview\\bc\\patrick-brinksma-663044-unsplash__preview.jpg', NULL, 17),
('2021-04-28 13:14:32.526506', '2021-04-28 13:14:32.526506', 'chuttersnap-324234-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1068, 118442, 'source\\df\\chuttersnap-324234-unsplash.jpg', 'preview\\95\\chuttersnap-324234-unsplash__preview.jpg', NULL, 18),
('2021-04-28 13:14:32.568323', '2021-04-28 13:14:32.568323', 'robert-shunev-528016-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 36204, 'source\\9e\\robert-shunev-528016-unsplash.jpg', 'preview\\9d\\robert-shunev-528016-unsplash__preview.jpg', NULL, 19),
('2021-04-28 13:14:32.637070', '2021-04-28 13:14:32.637070', 'alexander-andrews-260988-unsplash.jpg', 'IMAGE', 'image/jpeg', 1050, 1600, 65460, 'source\\f8\\alexander-andrews-260988-unsplash.jpg', 'preview\\ef\\alexander-andrews-260988-unsplash__preview.jpg', NULL, 20),
('2021-04-28 13:14:32.718532', '2021-04-28 13:14:32.718532', 'mikkel-bech-748940-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1130, 62785, 'source\\29\\mikkel-bech-748940-unsplash.jpg', 'preview\\2f\\mikkel-bech-748940-unsplash__preview.jpg', NULL, 21),
('2021-04-28 13:14:32.858728', '2021-04-28 13:14:32.858728', 'stoica-ionela-530966-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1600, 50995, 'source\\b1\\stoica-ionela-530966-unsplash.jpg', 'preview\\34\\stoica-ionela-530966-unsplash__preview.jpg', NULL, 22),
('2021-04-28 13:14:32.930256', '2021-04-28 13:14:32.930256', 'neonbrand-428982-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1332, 169677, 'source\\3c\\neonbrand-428982-unsplash.jpg', 'preview\\4f\\neonbrand-428982-unsplash__preview.jpg', NULL, 23),
('2021-04-28 13:14:32.966703', '2021-04-28 13:14:32.966703', 'michael-guite-571169-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 240247, 'source\\ab\\michael-guite-571169-unsplash.jpg', 'preview\\96\\michael-guite-571169-unsplash__preview.jpg', NULL, 24),
('2021-04-28 13:14:33.030165', '2021-04-28 13:14:33.030165', 'max-tarkhov-737999-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1280, 192508, 'source\\ed\\max-tarkhov-737999-unsplash.jpg', 'preview\\35\\max-tarkhov-737999-unsplash__preview.jpg', NULL, 25),
('2021-04-28 13:14:33.070047', '2021-04-28 13:14:33.070047', 'nik-shuliahin-619349-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1020, 130437, 'source\\87\\nik-shuliahin-619349-unsplash.jpg', 'preview\\d6\\nik-shuliahin-619349-unsplash__preview.jpg', NULL, 26),
('2021-04-28 13:14:33.124704', '2021-04-28 13:14:33.124704', 'ben-hershey-574483-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1070, 77118, 'source\\f3\\ben-hershey-574483-unsplash.jpg', 'preview\\30\\ben-hershey-574483-unsplash__preview.jpg', NULL, 27),
('2021-04-28 13:14:33.180164', '2021-04-28 13:14:33.180164', 'tommy-bebo-600358-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 262335, 'source\\ac\\tommy-bebo-600358-unsplash.jpg', 'preview\\0f\\tommy-bebo-600358-unsplash__preview.jpg', NULL, 28),
('2021-04-28 13:14:33.225672', '2021-04-28 13:14:33.225672', 'chuttersnap-584518-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1068, 76330, 'source\\20\\chuttersnap-584518-unsplash.jpg', 'preview\\ed\\chuttersnap-584518-unsplash__preview.jpg', NULL, 29),
('2021-04-28 13:14:33.457354', '2021-04-28 13:14:33.457354', 'imani-clovis-234736-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1600, 99111, 'source\\de\\imani-clovis-234736-unsplash.jpg', 'preview\\0f\\imani-clovis-234736-unsplash__preview.jpg', NULL, 30),
('2021-04-28 13:14:33.635552', '2021-04-28 13:14:33.635552', 'xavier-teo-469050-unsplash.jpg', 'IMAGE', 'image/jpeg', 1200, 1600, 167599, 'source\\5c\\xavier-teo-469050-unsplash.jpg', 'preview\\3c\\xavier-teo-469050-unsplash__preview.jpg', NULL, 31),
('2021-04-28 13:14:33.806665', '2021-04-28 13:14:33.806665', 'thomas-serer-420833-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1223, 78999, 'source\\55\\thomas-serer-420833-unsplash.jpg', 'preview\\a2\\thomas-serer-420833-unsplash__preview.jpg', NULL, 32),
('2021-04-28 13:14:33.963676', '2021-04-28 13:14:33.963676', 'nikolai-chernichenko-1299748-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 56282, 'source\\01\\nikolai-chernichenko-1299748-unsplash.jpg', 'preview\\00\\nikolai-chernichenko-1299748-unsplash__preview.jpg', NULL, 33),
('2021-04-28 13:14:34.112641', '2021-04-28 13:14:34.112641', 'mitch-lensink-256007-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 154988, 'source\\2b\\mitch-lensink-256007-unsplash.jpg', 'preview\\aa\\mitch-lensink-256007-unsplash__preview.jpg', NULL, 34),
('2021-04-28 13:14:34.270812', '2021-04-28 13:14:34.270812', 'charles-deluvio-695736-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1600, 54419, 'source\\92\\charles-deluvio-695736-unsplash.jpg', 'preview\\78\\charles-deluvio-695736-unsplash__preview.jpg', NULL, 35),
('2021-04-28 13:14:34.367534', '2021-04-28 13:14:34.367534', 'natalia-y-345738-unsplash.jpg', 'IMAGE', 'image/jpeg', 900, 1600, 97819, 'source\\17\\natalia-y-345738-unsplash.jpg', 'preview\\14\\natalia-y-345738-unsplash__preview.jpg', NULL, 36),
('2021-04-28 13:14:34.434740', '2021-04-28 13:14:34.434740', 'alex-rodriguez-santibanez-200278-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 176280, 'source\\ff\\alex-rodriguez-santibanez-200278-unsplash.jpg', 'preview\\5b\\alex-rodriguez-santibanez-200278-unsplash__preview.jpg', NULL, 37),
('2021-04-28 13:14:34.506305', '2021-04-28 13:14:34.506305', 'silvia-agrasar-227575-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1063, 119654, 'source\\d5\\silvia-agrasar-227575-unsplash.jpg', 'preview\\29\\silvia-agrasar-227575-unsplash__preview.jpg', NULL, 38),
('2021-04-28 13:14:34.546188', '2021-04-28 13:14:34.546188', 'caleb-george-536388-unsplash.jpg', 'IMAGE', 'image/jpeg', 1200, 1600, 184968, 'source\\f0\\caleb-george-536388-unsplash.jpg', 'preview\\6d\\caleb-george-536388-unsplash__preview.jpg', NULL, 39),
('2021-04-28 13:14:34.626343', '2021-04-28 13:14:34.626343', 'annie-spratt-78044-unsplash.jpg', 'IMAGE', 'image/jpeg', 1115, 1600, 173536, 'source\\f1\\annie-spratt-78044-unsplash.jpg', 'preview\\81\\annie-spratt-78044-unsplash__preview.jpg', NULL, 40),
('2021-04-28 13:14:34.754057', '2021-04-28 13:14:34.754057', 'mark-tegethoff-667351-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1200, 79857, 'source\\e6\\mark-tegethoff-667351-unsplash.jpg', 'preview\\f3\\mark-tegethoff-667351-unsplash__preview.jpg', NULL, 42),
('2021-04-28 13:14:34.823784', '2021-04-28 13:14:34.823784', 'vincent-liu-525429-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 77358, 'source\\10\\vincent-liu-525429-unsplash.jpg', 'preview\\44\\vincent-liu-525429-unsplash__preview.jpg', NULL, 43),
('2021-04-28 13:14:34.893115', '2021-04-28 13:14:34.893115', 'neslihan-gunaydin-3493-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 152486, 'source\\01\\neslihan-gunaydin-3493-unsplash.jpg', 'preview\\7d\\neslihan-gunaydin-3493-unsplash__preview.jpg', NULL, 44),
('2021-04-28 13:14:34.948775', '2021-04-28 13:14:34.948775', 'florian-klauer-14840-unsplash.jpg', 'IMAGE', 'image/jpeg', 800, 1200, 17149, 'source\\a9\\florian-klauer-14840-unsplash.jpg', 'preview\\ef\\florian-klauer-14840-unsplash__preview.jpg', NULL, 45),
('2021-05-17 14:00:53.036883', '2021-05-17 14:00:53.036883', 'img-aire-acondicionado.jpg', 'IMAGE', 'image/jpeg', 800, 800, 25023, 'source\\66\\img-aire-acondicionado.jpg', 'preview\\8d\\img-aire-acondicionado__preview.jpg', NULL, 55),
('2021-05-17 14:00:53.051825', '2021-05-17 14:00:53.051825', 'img-apple-magic-keyboard.jpg', 'IMAGE', 'image/jpeg', 800, 800, 78823, 'source\\ea\\img-apple-magic-keyboard.jpg', 'preview\\0f\\img-apple-magic-keyboard__preview.jpg', NULL, 56),
('2021-05-17 14:00:53.062647', '2021-05-17 14:00:53.062647', 'img-bicicleta-fierce.jpg', 'IMAGE', 'image/jpeg', 800, 800, 103623, 'source\\6c\\img-bicicleta-fierce.jpg', 'preview\\cb\\img-bicicleta-fierce__preview.jpg', NULL, 57),
('2021-05-17 14:00:53.072031', '2021-05-17 14:00:53.072031', 'img-cafetera-moulinex.jpg', 'IMAGE', 'image/jpeg', 800, 800, 151245, 'source\\1b\\img-cafetera-moulinex.jpg', 'preview\\f9\\img-cafetera-moulinex__preview.jpg', NULL, 58),
('2021-05-17 14:00:53.080845', '2021-05-17 14:00:53.080845', 'img-camara-nikon.jpg', 'IMAGE', 'image/jpeg', 800, 800, 113606, 'source\\3f\\img-camara-nikon.jpg', 'preview\\a1\\img-camara-nikon__preview.jpg', NULL, 59),
('2021-05-17 14:00:53.088957', '2021-05-17 14:00:53.088957', 'img-heladera-whirpool.jpg', 'IMAGE', 'image/jpeg', 800, 800, 27139, 'source\\df\\img-heladera-whirpool.jpg', 'preview\\99\\img-heladera-whirpool__preview.jpg', NULL, 60),
('2021-05-17 14:00:53.097835', '2021-05-17 14:00:53.097835', 'img-home-theater-sony.jpg', 'IMAGE', 'image/jpeg', 800, 800, 46505, 'source\\86\\img-home-theater-sony.jpg', 'preview\\32\\img-home-theater-sony__preview.jpg', NULL, 61),
('2021-05-17 14:00:53.109251', '2021-05-17 14:00:53.109251', 'img-iphone-11.jpg', 'IMAGE', 'image/jpeg', 800, 800, 89331, 'source\\14\\img-iphone-11.jpg', 'preview\\14\\img-iphone-11__preview.jpg', NULL, 62),
('2021-05-17 14:00:53.119360', '2021-05-17 14:00:53.119360', 'img-laptop-lenovo.jpg', 'IMAGE', 'image/jpeg', 800, 800, 189851, 'source\\68\\img-laptop-lenovo.jpg', 'preview\\21\\img-laptop-lenovo__preview.jpg', NULL, 63),
('2021-05-17 14:00:53.132055', '2021-05-17 14:00:53.132055', 'img-macbook-pro-2019.jpg', 'IMAGE', 'image/jpeg', 800, 800, 268724, 'source\\9e\\img-macbook-pro-2019.jpg', 'preview\\4b\\img-macbook-pro-2019__preview.jpg', NULL, 64),
('2021-05-17 14:00:53.141800', '2021-05-17 14:00:53.141800', 'img-mouse-logitech.jpg', 'IMAGE', 'image/jpeg', 800, 800, 63236, 'source\\b3\\img-mouse-logitech.jpg', 'preview\\30\\img-mouse-logitech__preview.jpg', NULL, 65),
('2021-05-17 14:00:53.150312', '2021-05-17 14:00:53.150312', 'img-parlante-bose.jpg', 'IMAGE', 'image/jpeg', 800, 800, 228462, 'source\\21\\img-parlante-bose.jpg', 'preview\\33\\img-parlante-bose__preview.jpg', NULL, 66),
('2021-05-17 14:00:53.160850', '2021-05-17 14:00:53.160850', 'img-parlante-sony.jpg', 'IMAGE', 'image/jpeg', 800, 800, 105877, 'source\\e9\\img-parlante-sony.jpg', 'preview\\e8\\img-parlante-sony__preview.jpg', NULL, 67),
('2021-05-17 14:00:53.169240', '2021-05-17 14:00:53.169240', 'img-samsung-galaxy-s10.jpg', 'IMAGE', 'image/jpeg', 800, 800, 125792, 'source\\ad\\img-samsung-galaxy-s10.jpg', 'preview\\43\\img-samsung-galaxy-s10__preview.jpg', NULL, 68),
('2021-05-17 14:00:53.177436', '2021-05-17 14:00:53.177436', 'img-sony-blueray.jpg', 'IMAGE', 'image/jpeg', 800, 800, 31637, 'source\\82\\img-sony-blueray.jpg', 'preview\\a8\\img-sony-blueray__preview.jpg', NULL, 69),
('2021-05-17 14:00:53.186365', '2021-05-17 14:00:53.186365', 'img-tv-samsung-smart.jpg', 'IMAGE', 'image/jpeg', 800, 800, 366630, 'source\\f7\\img-tv-samsung-smart.jpg', 'preview\\74\\img-tv-samsung-smart__preview.jpg', NULL, 70);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asset_channels_channel`
--

CREATE TABLE `asset_channels_channel` (
  `assetId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `asset_channels_channel`
--

INSERT INTO `asset_channels_channel` (`assetId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asset_tags_tag`
--

CREATE TABLE `asset_tags_tag` (
  `assetId` int(11) NOT NULL,
  `tagId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authentication_method`
--

CREATE TABLE `authentication_method` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `identifier` varchar(255) DEFAULT NULL,
  `passwordHash` varchar(255) DEFAULT NULL,
  `verificationToken` varchar(255) DEFAULT NULL,
  `passwordResetToken` varchar(255) DEFAULT NULL,
  `identifierChangeToken` varchar(255) DEFAULT NULL,
  `pendingIdentifier` varchar(255) DEFAULT NULL,
  `strategy` varchar(255) DEFAULT NULL,
  `externalIdentifier` varchar(255) DEFAULT NULL,
  `metadata` text,
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `authentication_method`
--

INSERT INTO `authentication_method` (`createdAt`, `updatedAt`, `identifier`, `passwordHash`, `verificationToken`, `passwordResetToken`, `identifierChangeToken`, `pendingIdentifier`, `strategy`, `externalIdentifier`, `metadata`, `id`, `type`, `userId`) VALUES
('2021-04-28 13:14:25.775095', '2021-04-28 13:14:25.000000', 'superadmin', '$2b$12$Vf0.7Vo3BCcbqQnrPB8M8ephRMDR.YL2o2QVs81Dkyj9ON1n4vuMi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'NativeAuthenticationMethod', 1),
('2021-05-11 12:16:52.367383', '2021-05-18 12:13:23.000000', 'mativiscusso@gmail.com', '$2b$12$uHlDONCBlBE.7FIoVAlTDOSbm5DXBaPH21jQhCgw78.L63Rjv35V2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NativeAuthenticationMethod', 2),
('2021-05-19 12:03:42.851918', '2021-05-19 12:04:03.000000', 'juanmame@gmail.com', '$2b$12$lRsAsBogDf6PCOjeNQN5Be9Zx/DBlUpqho75JYHXKLR3ZCSBvslSe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'NativeAuthenticationMethod', 3),
('2021-05-19 12:12:33.162969', '2021-05-19 12:12:49.000000', 'elegante@gmail.com', '$2b$12$gMTrzWMaxHnP1Z9XOHsCBO1qp2NO55v3ddp68wL0tiV6Fnv9nn/YG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'NativeAuthenticationMethod', 4),
('2021-05-19 12:20:36.734840', '2021-05-19 12:20:51.000000', 'matutemorales@gmail.com', '$2b$12$vdRESIWmHg5jYlMWKXptyeonwC5v/veCLOcpcFIPFuhEJ52chgWMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'NativeAuthenticationMethod', 5),
('2021-05-19 12:26:29.936495', '2021-05-19 12:27:04.000000', 'juanperez@gmail.com', '$2b$12$vjftoPeJfBHtuPSR8G6UpeMAhkc0WwVBO.p.osIQliL8PjsM1Z4QC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 'NativeAuthenticationMethod', 6),
('2021-05-19 12:28:43.880459', '2021-05-19 12:28:43.880000', 'aaa@aaa.com', '$2b$12$e5lgbGVyVIoHECw80V4YIeDZ6E5TKWIrzwrFlZUDXFkU3CDqY.9gu', 'MjAyMS0wNS0xOVQxNToyODo0My44OTJa_USJKH7DCDFBK7FSX', NULL, NULL, NULL, NULL, NULL, NULL, 7, 'NativeAuthenticationMethod', 7),
('2021-05-19 12:30:33.488755', '2021-05-19 12:30:51.000000', 'tt@gmail.com', '$2b$12$X6BI59rSjz3/V3bfBOngPuGgO5u9w4nSIP.e0l8Qiz/BwVhESzc7K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 'NativeAuthenticationMethod', 8),
('2021-05-19 12:50:07.658718', '2021-05-19 12:50:14.000000', 'tutue@gmail.com', '$2b$12$jCQ.Fo59ngMnO3AlSonynuLUokrwLlnkD.ih/nbxJ36UTyocXmYmC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'NativeAuthenticationMethod', 9),
('2021-05-19 13:04:29.552024', '2021-05-19 13:04:46.000000', 'elmati@gmail.com', '$2b$12$50/LV5uWIX2oELFBTU9MAO2uHKy9s.gqhhVl5WH5QvPgeQ03hERU.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 'NativeAuthenticationMethod', 10),
('2021-05-19 13:37:42.318365', '2021-05-19 13:37:57.000000', 'test@example.com', '$2b$12$Stc/Kyrk3kyjLf3RbQm6fOAFSsTNZFDUzZfJyUmjHMaHvUbyIwPUu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 'NativeAuthenticationMethod', 11),
('2021-05-19 14:18:07.574564', '2021-05-19 14:18:07.574000', 'vendure@gmail.com', '$2b$12$i.zy6BovECSyeKCCNpEwo.xKO57zyJVxij3R0uQxukmg0MSC9f6Qu', 'MjAyMS0wNS0xOVQxNzoxODowNy41ODZa_TXT831WRA4GFGZPA', NULL, NULL, NULL, NULL, NULL, NULL, 12, 'NativeAuthenticationMethod', 12),
('2021-05-19 14:19:08.878486', '2021-05-19 14:19:08.878000', 'lala@gmail.com', '$2b$12$0oTxwgKjmIPerbWtExMrMOgWB1ekqr/ZKSBFCw4KPdwB23CI6q8/e', 'MjAyMS0wNS0xOVQxNzoxOTowOC44OTFa_K93UDHP36E4FYVCZ', NULL, NULL, NULL, NULL, NULL, NULL, 13, 'NativeAuthenticationMethod', 13),
('2021-05-19 14:39:00.892617', '2021-05-19 14:39:23.000000', 'liomessi@gmail.com', '$2b$12$DCE2/TT31Y2KN2ad2Z3iZeIVxeYfZ7hK7Fb7dRrU1h3mvVmVoUoGS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 'NativeAuthenticationMethod', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `channel`
--

CREATE TABLE `channel` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `code` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `defaultLanguageCode` varchar(255) NOT NULL,
  `currencyCode` varchar(255) NOT NULL,
  `pricesIncludeTax` tinyint(4) NOT NULL,
  `id` int(11) NOT NULL,
  `defaultTaxZoneId` int(11) DEFAULT NULL,
  `defaultShippingZoneId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `channel`
--

INSERT INTO `channel` (`createdAt`, `updatedAt`, `code`, `token`, `defaultLanguageCode`, `currencyCode`, `pricesIncludeTax`, `id`, `defaultTaxZoneId`, `defaultShippingZoneId`) VALUES
('2021-04-28 13:14:25.414999', '2021-04-28 13:14:30.000000', '__default_channel__', 'g766ixvk1khux9lv5', 'en', 'USD', 0, 1, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `collection`
--

CREATE TABLE `collection` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `isRoot` tinyint(4) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL,
  `isPrivate` tinyint(4) NOT NULL DEFAULT '0',
  `filters` text NOT NULL,
  `id` int(11) NOT NULL,
  `featuredAssetId` int(11) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `collection`
--

INSERT INTO `collection` (`createdAt`, `updatedAt`, `isRoot`, `position`, `isPrivate`, `filters`, `id`, `featuredAssetId`, `parentId`) VALUES
('2021-04-28 13:14:35.554284', '2021-04-28 13:14:35.554284', 1, 0, 0, '[]', 1, NULL, NULL),
('2021-04-28 13:14:35.565445', '2021-04-28 13:14:35.565445', 0, 1, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[1]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 2, 16, 1),
('2021-04-28 13:14:35.672325', '2021-04-28 13:14:35.672325', 0, 1, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[2]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 3, 5, 2),
('2021-04-28 13:14:35.766705', '2021-04-28 13:14:35.766705', 0, 2, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[9]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 4, 12, 2),
('2021-04-28 13:14:35.815994', '2021-04-28 13:14:35.815994', 0, 2, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[30]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 5, NULL, 1),
('2021-04-28 13:14:35.848666', '2021-04-28 13:14:35.848666', 0, 1, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[34]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 6, NULL, 5),
('2021-04-28 13:14:35.928475', '2021-04-28 13:14:35.928475', 0, 2, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[31]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 7, 37, 5),
('2021-04-28 13:14:36.100404', '2021-04-28 13:14:36.100404', 0, 3, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[17]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 8, 24, 1),
('2021-04-28 13:14:36.216814', '2021-04-28 13:14:36.216814', 0, 1, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[18]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 9, 23, 8),
('2021-04-28 13:14:36.323883', '2021-04-28 13:14:36.323883', 0, 2, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[23]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 10, 32, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `collection_asset`
--

CREATE TABLE `collection_asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `assetId` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `collectionId` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `collection_asset`
--

INSERT INTO `collection_asset` (`createdAt`, `updatedAt`, `assetId`, `position`, `collectionId`, `id`) VALUES
('2021-04-28 13:14:35.596881', '2021-04-28 13:14:35.596881', 16, 0, 2, 1),
('2021-04-28 13:14:35.690485', '2021-04-28 13:14:35.690485', 5, 0, 3, 2),
('2021-04-28 13:14:35.775470', '2021-04-28 13:14:35.775470', 12, 0, 4, 3),
('2021-04-28 13:14:35.968656', '2021-04-28 13:14:35.968656', 37, 0, 7, 6),
('2021-04-28 13:14:36.133516', '2021-04-28 13:14:36.133516', 24, 0, 8, 7),
('2021-04-28 13:14:36.249659', '2021-04-28 13:14:36.249659', 23, 0, 9, 8),
('2021-04-28 13:14:36.335759', '2021-04-28 13:14:36.335759', 32, 0, 10, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `collection_channels_channel`
--

CREATE TABLE `collection_channels_channel` (
  `collectionId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `collection_channels_channel`
--

INSERT INTO `collection_channels_channel` (`collectionId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `collection_product_variants_product_variant`
--

CREATE TABLE `collection_product_variants_product_variant` (
  `collectionId` int(11) NOT NULL,
  `productVariantId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `collection_product_variants_product_variant`
--

INSERT INTO `collection_product_variants_product_variant` (`collectionId`, `productVariantId`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 24),
(3, 25),
(4, 26),
(4, 27),
(4, 28),
(4, 29),
(4, 30),
(4, 31),
(4, 32),
(4, 33),
(4, 34),
(5, 67),
(5, 68),
(5, 69),
(5, 70),
(5, 71),
(5, 72),
(5, 73),
(5, 74),
(5, 75),
(5, 76),
(5, 77),
(5, 78),
(5, 79),
(5, 80),
(5, 81),
(5, 82),
(5, 83),
(5, 84),
(5, 85),
(5, 86),
(5, 87),
(5, 88),
(6, 75),
(6, 77),
(6, 78),
(6, 79),
(6, 80),
(6, 81),
(6, 82),
(6, 83),
(6, 84),
(6, 85),
(6, 86),
(6, 87),
(6, 88),
(7, 67),
(7, 68),
(7, 69),
(7, 70),
(7, 71),
(7, 72),
(7, 73),
(7, 74),
(7, 76),
(8, 35),
(8, 36),
(8, 37),
(8, 38),
(8, 39),
(8, 40),
(8, 41),
(8, 42),
(8, 43),
(8, 44),
(8, 45),
(8, 46),
(8, 47),
(8, 48),
(8, 49),
(8, 50),
(8, 51),
(8, 52),
(8, 53),
(8, 54),
(8, 55),
(8, 56),
(8, 57),
(8, 58),
(8, 59),
(8, 60),
(8, 61),
(8, 62),
(8, 63),
(8, 64),
(8, 65),
(8, 66),
(9, 35),
(9, 36),
(9, 37),
(9, 38),
(9, 39),
(9, 40),
(9, 41),
(9, 42),
(10, 43),
(10, 44),
(10, 45),
(10, 46),
(10, 47),
(10, 48),
(10, 49),
(10, 50),
(10, 51),
(10, 52),
(10, 53),
(10, 54),
(10, 55),
(10, 56),
(10, 57),
(10, 58),
(10, 59),
(10, 60),
(10, 61),
(10, 62),
(10, 63),
(10, 64),
(10, 65),
(10, 66);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `collection_translation`
--

CREATE TABLE `collection_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `collection_translation`
--

INSERT INTO `collection_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `slug`, `description`, `id`, `baseId`) VALUES
('2021-04-28 13:14:35.542261', '2021-04-28 13:14:35.000000', 'en', 'Electronics', 'electronics', '', 1, 2),
('2021-04-28 13:14:35.550382', '2021-04-28 13:14:35.000000', 'en', '__root_collection__', '__root_collection__', 'The root of the Collection tree.', 2, 1),
('2021-04-28 13:14:35.626009', '2021-04-28 13:14:35.000000', 'en', 'Computers', 'computers', '', 3, 3),
('2021-04-28 13:14:35.734694', '2021-04-28 13:14:35.000000', 'en', 'Camera & Photo', 'camera-photo', '', 4, 4),
('2021-04-28 13:14:35.794446', '2021-04-28 13:14:35.000000', 'en', 'Home & Garden', 'home-garden', '', 5, 5),
('2021-04-28 13:14:35.839802', '2021-04-28 13:14:35.000000', 'en', 'Furniture', 'furniture', '', 6, 6),
('2021-04-28 13:14:35.871887', '2021-04-28 13:14:35.000000', 'en', 'Plants', 'plants', '', 7, 7),
('2021-04-28 13:14:36.081302', '2021-04-28 13:14:36.000000', 'en', 'Sports & Outdoor', 'sports-outdoor', '', 8, 8),
('2021-04-28 13:14:36.173801', '2021-04-28 13:14:36.000000', 'en', 'Equipment', 'equipment', '', 9, 9),
('2021-04-28 13:14:36.301497', '2021-04-28 13:14:36.000000', 'en', 'Footwear', 'footwear', '', 10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country`
--

CREATE TABLE `country` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `code` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `country`
--

INSERT INTO `country` (`createdAt`, `updatedAt`, `code`, `enabled`, `id`) VALUES
('2021-04-28 13:14:25.874595', '2021-04-28 13:14:25.874595', 'AF', 1, 1),
('2021-04-28 13:14:25.922800', '2021-04-28 13:14:25.922800', 'AX', 1, 2),
('2021-04-28 13:14:25.952893', '2021-04-28 13:14:25.952893', 'AL', 1, 3),
('2021-04-28 13:14:25.968675', '2021-04-28 13:14:25.968675', 'DZ', 1, 4),
('2021-04-28 13:14:26.001582', '2021-04-28 13:14:26.001582', 'AS', 1, 5),
('2021-04-28 13:14:26.045977', '2021-04-28 13:14:26.045977', 'AD', 1, 6),
('2021-04-28 13:14:26.063912', '2021-04-28 13:14:26.063912', 'AO', 1, 7),
('2021-04-28 13:14:26.092442', '2021-04-28 13:14:26.092442', 'AI', 1, 8),
('2021-04-28 13:14:26.123659', '2021-04-28 13:14:26.123659', 'AG', 1, 9),
('2021-04-28 13:14:26.143366', '2021-04-28 13:14:26.143366', 'AR', 1, 10),
('2021-04-28 13:14:26.168257', '2021-04-28 13:14:26.168257', 'AM', 1, 11),
('2021-04-28 13:14:26.184656', '2021-04-28 13:14:26.184656', 'AW', 1, 12),
('2021-04-28 13:14:26.201691', '2021-04-28 13:14:26.201691', 'AU', 1, 13),
('2021-04-28 13:14:26.219422', '2021-04-28 13:14:26.219422', 'AT', 1, 14),
('2021-04-28 13:14:26.235691', '2021-04-28 13:14:26.235691', 'AZ', 1, 15),
('2021-04-28 13:14:26.248740', '2021-04-28 13:14:26.248740', 'BS', 1, 16),
('2021-04-28 13:14:26.263013', '2021-04-28 13:14:26.263013', 'BH', 1, 17),
('2021-04-28 13:14:26.286689', '2021-04-28 13:14:26.286689', 'BD', 1, 18),
('2021-04-28 13:14:26.304635', '2021-04-28 13:14:26.304635', 'BB', 1, 19),
('2021-04-28 13:14:26.333981', '2021-04-28 13:14:26.333981', 'BY', 1, 20),
('2021-04-28 13:14:26.349200', '2021-04-28 13:14:26.349200', 'BE', 1, 21),
('2021-04-28 13:14:26.372299', '2021-04-28 13:14:26.372299', 'BZ', 1, 22),
('2021-04-28 13:14:26.385660', '2021-04-28 13:14:26.385660', 'BJ', 1, 23),
('2021-04-28 13:14:26.401627', '2021-04-28 13:14:26.401627', 'BM', 1, 24),
('2021-04-28 13:14:26.436330', '2021-04-28 13:14:26.436330', 'BT', 1, 25),
('2021-04-28 13:14:26.455726', '2021-04-28 13:14:26.455726', 'BO', 1, 26),
('2021-04-28 13:14:26.480613', '2021-04-28 13:14:26.480613', 'BQ', 1, 27),
('2021-04-28 13:14:26.509079', '2021-04-28 13:14:26.509079', 'BA', 1, 28),
('2021-04-28 13:14:26.521406', '2021-04-28 13:14:26.521406', 'BW', 1, 29),
('2021-04-28 13:14:26.543831', '2021-04-28 13:14:26.543831', 'BV', 1, 30),
('2021-04-28 13:14:26.574571', '2021-04-28 13:14:26.574571', 'BR', 1, 31),
('2021-04-28 13:14:26.595197', '2021-04-28 13:14:26.595197', 'IO', 1, 32),
('2021-04-28 13:14:26.618207', '2021-04-28 13:14:26.618207', 'BN', 1, 33),
('2021-04-28 13:14:26.634160', '2021-04-28 13:14:26.634160', 'BG', 1, 34),
('2021-04-28 13:14:26.652776', '2021-04-28 13:14:26.652776', 'BF', 1, 35),
('2021-04-28 13:14:26.674260', '2021-04-28 13:14:26.674260', 'BI', 1, 36),
('2021-04-28 13:14:26.696440', '2021-04-28 13:14:26.696440', 'CV', 1, 37),
('2021-04-28 13:14:26.724142', '2021-04-28 13:14:26.724142', 'KH', 1, 38),
('2021-04-28 13:14:26.743694', '2021-04-28 13:14:26.743694', 'CM', 1, 39),
('2021-04-28 13:14:26.763580', '2021-04-28 13:14:26.763580', 'CA', 1, 40),
('2021-04-28 13:14:26.776885', '2021-04-28 13:14:26.776885', 'KY', 1, 41),
('2021-04-28 13:14:26.787502', '2021-04-28 13:14:26.787502', 'CF', 1, 42),
('2021-04-28 13:14:26.800037', '2021-04-28 13:14:26.800037', 'TD', 1, 43),
('2021-04-28 13:14:26.811007', '2021-04-28 13:14:26.811007', 'CL', 1, 44),
('2021-04-28 13:14:26.836839', '2021-04-28 13:14:26.836839', 'CN', 1, 45),
('2021-04-28 13:14:26.863397', '2021-04-28 13:14:26.863397', 'CX', 1, 46),
('2021-04-28 13:14:26.883220', '2021-04-28 13:14:26.883220', 'CC', 1, 47),
('2021-04-28 13:14:26.912572', '2021-04-28 13:14:26.912572', 'CO', 1, 48),
('2021-04-28 13:14:26.924856', '2021-04-28 13:14:26.924856', 'KM', 1, 49),
('2021-04-28 13:14:26.936227', '2021-04-28 13:14:26.936227', 'CG', 1, 50),
('2021-04-28 13:14:26.946806', '2021-04-28 13:14:26.946806', 'CD', 1, 51),
('2021-04-28 13:14:26.971532', '2021-04-28 13:14:26.971532', 'CK', 1, 52),
('2021-04-28 13:14:27.007493', '2021-04-28 13:14:27.007493', 'CR', 1, 53),
('2021-04-28 13:14:27.035786', '2021-04-28 13:14:27.035786', 'CI', 1, 54),
('2021-04-28 13:14:27.052911', '2021-04-28 13:14:27.052911', 'HR', 1, 55),
('2021-04-28 13:14:27.080196', '2021-04-28 13:14:27.080196', 'CU', 1, 56),
('2021-04-28 13:14:27.094207', '2021-04-28 13:14:27.094207', 'CW', 1, 57),
('2021-04-28 13:14:27.110326', '2021-04-28 13:14:27.110326', 'CY', 1, 58),
('2021-04-28 13:14:27.122160', '2021-04-28 13:14:27.122160', 'CZ', 1, 59),
('2021-04-28 13:14:27.135023', '2021-04-28 13:14:27.135023', 'DK', 1, 60),
('2021-04-28 13:14:27.146055', '2021-04-28 13:14:27.146055', 'DJ', 1, 61),
('2021-04-28 13:14:27.156882', '2021-04-28 13:14:27.156882', 'DM', 1, 62),
('2021-04-28 13:14:27.169226', '2021-04-28 13:14:27.169226', 'DO', 1, 63),
('2021-04-28 13:14:27.180527', '2021-04-28 13:14:27.180527', 'EC', 1, 64),
('2021-04-28 13:14:27.207009', '2021-04-28 13:14:27.207009', 'EG', 1, 65),
('2021-04-28 13:14:27.224787', '2021-04-28 13:14:27.224787', 'SV', 1, 66),
('2021-04-28 13:14:27.254456', '2021-04-28 13:14:27.254456', 'GQ', 1, 67),
('2021-04-28 13:14:27.283527', '2021-04-28 13:14:27.283527', 'ER', 1, 68),
('2021-04-28 13:14:27.299512', '2021-04-28 13:14:27.299512', 'EE', 1, 69),
('2021-04-28 13:14:27.313227', '2021-04-28 13:14:27.313227', 'SZ', 1, 70),
('2021-04-28 13:14:27.341215', '2021-04-28 13:14:27.341215', 'ET', 1, 71),
('2021-04-28 13:14:27.355829', '2021-04-28 13:14:27.355829', 'FK', 1, 72),
('2021-04-28 13:14:27.367791', '2021-04-28 13:14:27.367791', 'FO', 1, 73),
('2021-04-28 13:14:27.378616', '2021-04-28 13:14:27.378616', 'FJ', 1, 74),
('2021-04-28 13:14:27.391295', '2021-04-28 13:14:27.391295', 'FI', 1, 75),
('2021-04-28 13:14:27.410189', '2021-04-28 13:14:27.410189', 'FR', 1, 76),
('2021-04-28 13:14:27.440751', '2021-04-28 13:14:27.440751', 'GF', 1, 77),
('2021-04-28 13:14:27.474623', '2021-04-28 13:14:27.474623', 'PF', 1, 78),
('2021-04-28 13:14:27.494728', '2021-04-28 13:14:27.494728', 'TF', 1, 79),
('2021-04-28 13:14:27.507484', '2021-04-28 13:14:27.507484', 'GA', 1, 80),
('2021-04-28 13:14:27.520657', '2021-04-28 13:14:27.520657', 'GM', 1, 81),
('2021-04-28 13:14:27.530885', '2021-04-28 13:14:27.530885', 'GE', 1, 82),
('2021-04-28 13:14:27.548826', '2021-04-28 13:14:27.548826', 'DE', 1, 83),
('2021-04-28 13:14:27.563530', '2021-04-28 13:14:27.563530', 'GH', 1, 84),
('2021-04-28 13:14:27.579344', '2021-04-28 13:14:27.579344', 'GI', 1, 85),
('2021-04-28 13:14:27.591057', '2021-04-28 13:14:27.591057', 'GR', 1, 86),
('2021-04-28 13:14:27.604128', '2021-04-28 13:14:27.604128', 'GL', 1, 87),
('2021-04-28 13:14:27.618144', '2021-04-28 13:14:27.618144', 'GD', 1, 88),
('2021-04-28 13:14:27.642396', '2021-04-28 13:14:27.642396', 'GP', 1, 89),
('2021-04-28 13:14:27.660945', '2021-04-28 13:14:27.660945', 'GU', 1, 90),
('2021-04-28 13:14:27.680055', '2021-04-28 13:14:27.680055', 'GT', 1, 91),
('2021-04-28 13:14:27.693183', '2021-04-28 13:14:27.693183', 'GG', 1, 92),
('2021-04-28 13:14:27.704253', '2021-04-28 13:14:27.704253', 'GN', 1, 93),
('2021-04-28 13:14:27.715142', '2021-04-28 13:14:27.715142', 'GW', 1, 94),
('2021-04-28 13:14:27.736303', '2021-04-28 13:14:27.736303', 'GY', 1, 95),
('2021-04-28 13:14:27.749023', '2021-04-28 13:14:27.749023', 'HT', 1, 96),
('2021-04-28 13:14:27.769186', '2021-04-28 13:14:27.769186', 'HM', 1, 97),
('2021-04-28 13:14:27.785545', '2021-04-28 13:14:27.785545', 'VA', 1, 98),
('2021-04-28 13:14:27.797683', '2021-04-28 13:14:27.797683', 'HN', 1, 99),
('2021-04-28 13:14:27.810255', '2021-04-28 13:14:27.810255', 'HK', 1, 100),
('2021-04-28 13:14:27.824075', '2021-04-28 13:14:27.824075', 'HU', 1, 101),
('2021-04-28 13:14:27.835340', '2021-04-28 13:14:27.835340', 'IS', 1, 102),
('2021-04-28 13:14:27.860826', '2021-04-28 13:14:27.860826', 'IN', 1, 103),
('2021-04-28 13:14:27.873549', '2021-04-28 13:14:27.873549', 'ID', 1, 104),
('2021-04-28 13:14:27.887352', '2021-04-28 13:14:27.887352', 'IR', 1, 105),
('2021-04-28 13:14:27.901172', '2021-04-28 13:14:27.901172', 'IQ', 1, 106),
('2021-04-28 13:14:27.917250', '2021-04-28 13:14:27.917250', 'IE', 1, 107),
('2021-04-28 13:14:27.930275', '2021-04-28 13:14:27.930275', 'IM', 1, 108),
('2021-04-28 13:14:27.940287', '2021-04-28 13:14:27.940287', 'IL', 1, 109),
('2021-04-28 13:14:27.950780', '2021-04-28 13:14:27.950780', 'IT', 1, 110),
('2021-04-28 13:14:27.960463', '2021-04-28 13:14:27.960463', 'JM', 1, 111),
('2021-04-28 13:14:27.970873', '2021-04-28 13:14:27.970873', 'JP', 1, 112),
('2021-04-28 13:14:27.986215', '2021-04-28 13:14:27.986215', 'JE', 1, 113),
('2021-04-28 13:14:27.996503', '2021-04-28 13:14:27.996503', 'JO', 1, 114),
('2021-04-28 13:14:28.009767', '2021-04-28 13:14:28.009767', 'KZ', 1, 115),
('2021-04-28 13:14:28.022537', '2021-04-28 13:14:28.022537', 'KE', 1, 116),
('2021-04-28 13:14:28.036777', '2021-04-28 13:14:28.036777', 'KI', 1, 117),
('2021-04-28 13:14:28.046725', '2021-04-28 13:14:28.046725', 'KP', 1, 118),
('2021-04-28 13:14:28.056646', '2021-04-28 13:14:28.056646', 'KR', 1, 119),
('2021-04-28 13:14:28.067650', '2021-04-28 13:14:28.067650', 'KW', 1, 120),
('2021-04-28 13:14:28.077574', '2021-04-28 13:14:28.077574', 'KG', 1, 121),
('2021-04-28 13:14:28.090329', '2021-04-28 13:14:28.090329', 'LA', 1, 122),
('2021-04-28 13:14:28.101273', '2021-04-28 13:14:28.101273', 'LV', 1, 123),
('2021-04-28 13:14:28.110945', '2021-04-28 13:14:28.110945', 'LB', 1, 124),
('2021-04-28 13:14:28.120917', '2021-04-28 13:14:28.120917', 'LS', 1, 125),
('2021-04-28 13:14:28.131796', '2021-04-28 13:14:28.131796', 'LR', 1, 126),
('2021-04-28 13:14:28.143463', '2021-04-28 13:14:28.143463', 'LY', 1, 127),
('2021-04-28 13:14:28.155842', '2021-04-28 13:14:28.155842', 'LI', 1, 128),
('2021-04-28 13:14:28.165857', '2021-04-28 13:14:28.165857', 'LT', 1, 129),
('2021-04-28 13:14:28.189501', '2021-04-28 13:14:28.189501', 'LU', 1, 130),
('2021-04-28 13:14:28.205987', '2021-04-28 13:14:28.205987', 'MO', 1, 131),
('2021-04-28 13:14:28.217501', '2021-04-28 13:14:28.217501', 'MK', 1, 132),
('2021-04-28 13:14:28.228108', '2021-04-28 13:14:28.228108', 'MG', 1, 133),
('2021-04-28 13:14:28.239477', '2021-04-28 13:14:28.239477', 'MW', 1, 134),
('2021-04-28 13:14:28.266849', '2021-04-28 13:14:28.266849', 'MY', 1, 135),
('2021-04-28 13:14:28.284854', '2021-04-28 13:14:28.284854', 'MV', 1, 136),
('2021-04-28 13:14:28.295747', '2021-04-28 13:14:28.295747', 'ML', 1, 137),
('2021-04-28 13:14:28.305640', '2021-04-28 13:14:28.305640', 'MT', 1, 138),
('2021-04-28 13:14:28.315297', '2021-04-28 13:14:28.315297', 'MH', 1, 139),
('2021-04-28 13:14:28.332574', '2021-04-28 13:14:28.332574', 'MQ', 1, 140),
('2021-04-28 13:14:28.354354', '2021-04-28 13:14:28.354354', 'MR', 1, 141),
('2021-04-28 13:14:28.367489', '2021-04-28 13:14:28.367489', 'MU', 1, 142),
('2021-04-28 13:14:28.379060', '2021-04-28 13:14:28.379060', 'YT', 1, 143),
('2021-04-28 13:14:28.390582', '2021-04-28 13:14:28.390582', 'MX', 1, 144),
('2021-04-28 13:14:28.400497', '2021-04-28 13:14:28.400497', 'FM', 1, 145),
('2021-04-28 13:14:28.409921', '2021-04-28 13:14:28.409921', 'MD', 1, 146),
('2021-04-28 13:14:28.419578', '2021-04-28 13:14:28.419578', 'MC', 1, 147),
('2021-04-28 13:14:28.432724', '2021-04-28 13:14:28.432724', 'MN', 1, 148),
('2021-04-28 13:14:28.448865', '2021-04-28 13:14:28.448865', 'ME', 1, 149),
('2021-04-28 13:14:28.473373', '2021-04-28 13:14:28.473373', 'MS', 1, 150),
('2021-04-28 13:14:28.497488', '2021-04-28 13:14:28.497488', 'MA', 1, 151),
('2021-04-28 13:14:28.508940', '2021-04-28 13:14:28.508940', 'MZ', 1, 152),
('2021-04-28 13:14:28.518720', '2021-04-28 13:14:28.518720', 'MM', 1, 153),
('2021-04-28 13:14:28.530406', '2021-04-28 13:14:28.530406', 'NA', 1, 154),
('2021-04-28 13:14:28.542071', '2021-04-28 13:14:28.542071', 'NR', 1, 155),
('2021-04-28 13:14:28.553065', '2021-04-28 13:14:28.553065', 'NP', 1, 156),
('2021-04-28 13:14:28.564235', '2021-04-28 13:14:28.564235', 'NL', 1, 157),
('2021-04-28 13:14:28.573605', '2021-04-28 13:14:28.573605', 'NC', 1, 158),
('2021-04-28 13:14:28.583436', '2021-04-28 13:14:28.583436', 'NZ', 1, 159),
('2021-04-28 13:14:28.595256', '2021-04-28 13:14:28.595256', 'NI', 1, 160),
('2021-04-28 13:14:28.605248', '2021-04-28 13:14:28.605248', 'NE', 1, 161),
('2021-04-28 13:14:28.614848', '2021-04-28 13:14:28.614848', 'NG', 1, 162),
('2021-04-28 13:14:28.624027', '2021-04-28 13:14:28.624027', 'NU', 1, 163),
('2021-04-28 13:14:28.634916', '2021-04-28 13:14:28.634916', 'NF', 1, 164),
('2021-04-28 13:14:28.653079', '2021-04-28 13:14:28.653079', 'MP', 1, 165),
('2021-04-28 13:14:28.662901', '2021-04-28 13:14:28.662901', 'NO', 1, 166),
('2021-04-28 13:14:28.675013', '2021-04-28 13:14:28.675013', 'OM', 1, 167),
('2021-04-28 13:14:28.687744', '2021-04-28 13:14:28.687744', 'PK', 1, 168),
('2021-04-28 13:14:28.699904', '2021-04-28 13:14:28.699904', 'PW', 1, 169),
('2021-04-28 13:14:28.767524', '2021-04-28 13:14:28.767524', 'PS', 1, 170),
('2021-04-28 13:14:28.824839', '2021-04-28 13:14:28.824839', 'PA', 1, 171),
('2021-04-28 13:14:28.841837', '2021-04-28 13:14:28.841837', 'PG', 1, 172),
('2021-04-28 13:14:28.866461', '2021-04-28 13:14:28.866461', 'PY', 1, 173),
('2021-04-28 13:14:28.883152', '2021-04-28 13:14:28.883152', 'PE', 1, 174),
('2021-04-28 13:14:28.892777', '2021-04-28 13:14:28.892777', 'PH', 1, 175),
('2021-04-28 13:14:28.905868', '2021-04-28 13:14:28.905868', 'PN', 1, 176),
('2021-04-28 13:14:28.926753', '2021-04-28 13:14:28.926753', 'PL', 1, 177),
('2021-04-28 13:14:28.939699', '2021-04-28 13:14:28.939699', 'PT', 1, 178),
('2021-04-28 13:14:28.953182', '2021-04-28 13:14:28.953182', 'PR', 1, 179),
('2021-04-28 13:14:28.966502', '2021-04-28 13:14:28.966502', 'QA', 1, 180),
('2021-04-28 13:14:28.982020', '2021-04-28 13:14:28.982020', 'RE', 1, 181),
('2021-04-28 13:14:28.996242', '2021-04-28 13:14:28.996242', 'RO', 1, 182),
('2021-04-28 13:14:29.007396', '2021-04-28 13:14:29.007396', 'RU', 1, 183),
('2021-04-28 13:14:29.019194', '2021-04-28 13:14:29.019194', 'RW', 1, 184),
('2021-04-28 13:14:29.032518', '2021-04-28 13:14:29.032518', 'BL', 1, 185),
('2021-04-28 13:14:29.045832', '2021-04-28 13:14:29.045832', 'SH', 1, 186),
('2021-04-28 13:14:29.058066', '2021-04-28 13:14:29.058066', 'KN', 1, 187),
('2021-04-28 13:14:29.068743', '2021-04-28 13:14:29.068743', 'LC', 1, 188),
('2021-04-28 13:14:29.080186', '2021-04-28 13:14:29.080186', 'MF', 1, 189),
('2021-04-28 13:14:29.089963', '2021-04-28 13:14:29.089963', 'PM', 1, 190),
('2021-04-28 13:14:29.108378', '2021-04-28 13:14:29.108378', 'VC', 1, 191),
('2021-04-28 13:14:29.124909', '2021-04-28 13:14:29.124909', 'WS', 1, 192),
('2021-04-28 13:14:29.144653', '2021-04-28 13:14:29.144653', 'SM', 1, 193),
('2021-04-28 13:14:29.164238', '2021-04-28 13:14:29.164238', 'ST', 1, 194),
('2021-04-28 13:14:29.175494', '2021-04-28 13:14:29.175494', 'SA', 1, 195),
('2021-04-28 13:14:29.188394', '2021-04-28 13:14:29.188394', 'SN', 1, 196),
('2021-04-28 13:14:29.199745', '2021-04-28 13:14:29.199745', 'RS', 1, 197),
('2021-04-28 13:14:29.209822', '2021-04-28 13:14:29.209822', 'SC', 1, 198),
('2021-04-28 13:14:29.220948', '2021-04-28 13:14:29.220948', 'SL', 1, 199),
('2021-04-28 13:14:29.233012', '2021-04-28 13:14:29.233012', 'SG', 1, 200),
('2021-04-28 13:14:29.245111', '2021-04-28 13:14:29.245111', 'SX', 1, 201),
('2021-04-28 13:14:29.255595', '2021-04-28 13:14:29.255595', 'SK', 1, 202),
('2021-04-28 13:14:29.267007', '2021-04-28 13:14:29.267007', 'SI', 1, 203),
('2021-04-28 13:14:29.278109', '2021-04-28 13:14:29.278109', 'SB', 1, 204),
('2021-04-28 13:14:29.289527', '2021-04-28 13:14:29.289527', 'SO', 1, 205),
('2021-04-28 13:14:29.303778', '2021-04-28 13:14:29.303778', 'ZA', 1, 206),
('2021-04-28 13:14:29.315045', '2021-04-28 13:14:29.315045', 'GS', 1, 207),
('2021-04-28 13:14:29.324859', '2021-04-28 13:14:29.324859', 'SS', 1, 208),
('2021-04-28 13:14:29.346130', '2021-04-28 13:14:29.346130', 'ES', 1, 209),
('2021-04-28 13:14:29.363691', '2021-04-28 13:14:29.363691', 'LK', 1, 210),
('2021-04-28 13:14:29.375146', '2021-04-28 13:14:29.375146', 'SD', 1, 211),
('2021-04-28 13:14:29.387949', '2021-04-28 13:14:29.387949', 'SR', 1, 212),
('2021-04-28 13:14:29.397940', '2021-04-28 13:14:29.397940', 'SJ', 1, 213),
('2021-04-28 13:14:29.407676', '2021-04-28 13:14:29.407676', 'SE', 1, 214),
('2021-04-28 13:14:29.417263', '2021-04-28 13:14:29.417263', 'CH', 1, 215),
('2021-04-28 13:14:29.441989', '2021-04-28 13:14:29.441989', 'SY', 1, 216),
('2021-04-28 13:14:29.451117', '2021-04-28 13:14:29.451117', 'TW', 1, 217),
('2021-04-28 13:14:29.461308', '2021-04-28 13:14:29.461308', 'TJ', 1, 218),
('2021-04-28 13:14:29.475011', '2021-04-28 13:14:29.475011', 'TZ', 1, 219),
('2021-04-28 13:14:29.487778', '2021-04-28 13:14:29.487778', 'TH', 1, 220),
('2021-04-28 13:14:29.499339', '2021-04-28 13:14:29.499339', 'TL', 1, 221),
('2021-04-28 13:14:29.509582', '2021-04-28 13:14:29.509582', 'TG', 1, 222),
('2021-04-28 13:14:29.519141', '2021-04-28 13:14:29.519141', 'TK', 1, 223),
('2021-04-28 13:14:29.528511', '2021-04-28 13:14:29.528511', 'TO', 1, 224),
('2021-04-28 13:14:29.541204', '2021-04-28 13:14:29.541204', 'TT', 1, 225),
('2021-04-28 13:14:29.550591', '2021-04-28 13:14:29.550591', 'TN', 1, 226),
('2021-04-28 13:14:29.561338', '2021-04-28 13:14:29.561338', 'TR', 1, 227),
('2021-04-28 13:14:29.573128', '2021-04-28 13:14:29.573128', 'TM', 1, 228),
('2021-04-28 13:14:29.597509', '2021-04-28 13:14:29.597509', 'TC', 1, 229),
('2021-04-28 13:14:29.607158', '2021-04-28 13:14:29.607158', 'TV', 1, 230),
('2021-04-28 13:14:29.616558', '2021-04-28 13:14:29.616558', 'UG', 1, 231),
('2021-04-28 13:14:29.626371', '2021-04-28 13:14:29.626371', 'UA', 1, 232),
('2021-04-28 13:14:29.637299', '2021-04-28 13:14:29.637299', 'AE', 1, 233),
('2021-04-28 13:14:29.650858', '2021-04-28 13:14:29.650858', 'GB', 1, 234),
('2021-04-28 13:14:29.660673', '2021-04-28 13:14:29.660673', 'US', 1, 235),
('2021-04-28 13:14:29.670434', '2021-04-28 13:14:29.670434', 'UM', 1, 236),
('2021-04-28 13:14:29.681951', '2021-04-28 13:14:29.681951', 'UY', 1, 237),
('2021-04-28 13:14:29.692720', '2021-04-28 13:14:29.692720', 'UZ', 1, 238),
('2021-04-28 13:14:29.701998', '2021-04-28 13:14:29.701998', 'VU', 1, 239),
('2021-04-28 13:14:29.711912', '2021-04-28 13:14:29.711912', 'VE', 1, 240),
('2021-04-28 13:14:29.723724', '2021-04-28 13:14:29.723724', 'VN', 1, 241),
('2021-04-28 13:14:29.733353', '2021-04-28 13:14:29.733353', 'VG', 1, 242),
('2021-04-28 13:14:29.743314', '2021-04-28 13:14:29.743314', 'VI', 1, 243),
('2021-04-28 13:14:29.754177', '2021-04-28 13:14:29.754177', 'WF', 1, 244),
('2021-04-28 13:14:29.763440', '2021-04-28 13:14:29.763440', 'EH', 1, 245),
('2021-04-28 13:14:29.775903', '2021-04-28 13:14:29.775903', 'YE', 1, 246),
('2021-04-28 13:14:29.785285', '2021-04-28 13:14:29.785285', 'ZM', 1, 247),
('2021-04-28 13:14:29.796390', '2021-04-28 13:14:29.796390', 'ZW', 1, 248);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country_translation`
--

CREATE TABLE `country_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `country_translation`
--

INSERT INTO `country_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2021-04-28 13:14:25.866805', '2021-04-28 13:14:25.000000', 'en', 'Afghanistan', 1, 1),
('2021-04-28 13:14:25.912234', '2021-04-28 13:14:25.000000', 'en', 'Åland Islands', 2, 2),
('2021-04-28 13:14:25.942449', '2021-04-28 13:14:25.000000', 'en', 'Albania', 3, 3),
('2021-04-28 13:14:25.961866', '2021-04-28 13:14:25.000000', 'en', 'Algeria', 4, 4),
('2021-04-28 13:14:25.988823', '2021-04-28 13:14:26.000000', 'en', 'American Samoa', 5, 5),
('2021-04-28 13:14:26.040593', '2021-04-28 13:14:26.000000', 'en', 'Andorra', 6, 6),
('2021-04-28 13:14:26.059738', '2021-04-28 13:14:26.000000', 'en', 'Angola', 7, 7),
('2021-04-28 13:14:26.077906', '2021-04-28 13:14:26.000000', 'en', 'Anguilla', 8, 8),
('2021-04-28 13:14:26.116569', '2021-04-28 13:14:26.000000', 'en', 'Antigua and Barbuda', 9, 9),
('2021-04-28 13:14:26.132516', '2021-04-28 13:14:26.000000', 'en', 'Argentina', 10, 10),
('2021-04-28 13:14:26.162829', '2021-04-28 13:14:26.000000', 'en', 'Armenia', 11, 11),
('2021-04-28 13:14:26.179807', '2021-04-28 13:14:26.000000', 'en', 'Aruba', 12, 12),
('2021-04-28 13:14:26.194273', '2021-04-28 13:14:26.000000', 'en', 'Australia', 13, 13),
('2021-04-28 13:14:26.214937', '2021-04-28 13:14:26.000000', 'en', 'Austria', 14, 14),
('2021-04-28 13:14:26.231530', '2021-04-28 13:14:26.000000', 'en', 'Azerbaijan', 15, 15),
('2021-04-28 13:14:26.245071', '2021-04-28 13:14:26.000000', 'en', 'Bahamas', 16, 16),
('2021-04-28 13:14:26.256591', '2021-04-28 13:14:26.000000', 'en', 'Bahrain', 17, 17),
('2021-04-28 13:14:26.271138', '2021-04-28 13:14:26.000000', 'en', 'Bangladesh', 18, 18),
('2021-04-28 13:14:26.300577', '2021-04-28 13:14:26.000000', 'en', 'Barbados', 19, 19),
('2021-04-28 13:14:26.329450', '2021-04-28 13:14:26.000000', 'en', 'Belarus', 20, 20),
('2021-04-28 13:14:26.345336', '2021-04-28 13:14:26.000000', 'en', 'Belgium', 21, 21),
('2021-04-28 13:14:26.362265', '2021-04-28 13:14:26.000000', 'en', 'Belize', 22, 22),
('2021-04-28 13:14:26.381203', '2021-04-28 13:14:26.000000', 'en', 'Benin', 23, 23),
('2021-04-28 13:14:26.397800', '2021-04-28 13:14:26.000000', 'en', 'Bermuda', 24, 24),
('2021-04-28 13:14:26.411442', '2021-04-28 13:14:26.000000', 'en', 'Bhutan', 25, 25),
('2021-04-28 13:14:26.451621', '2021-04-28 13:14:26.000000', 'en', 'Bolivia (Plurinational State of)', 26, 26),
('2021-04-28 13:14:26.464131', '2021-04-28 13:14:26.000000', 'en', 'Bonaire, Sint Eustatius and Saba', 27, 27),
('2021-04-28 13:14:26.504295', '2021-04-28 13:14:26.000000', 'en', 'Bosnia and Herzegovina', 28, 28),
('2021-04-28 13:14:26.518029', '2021-04-28 13:14:26.000000', 'en', 'Botswana', 29, 29),
('2021-04-28 13:14:26.531937', '2021-04-28 13:14:26.000000', 'en', 'Bouvet Island', 30, 30),
('2021-04-28 13:14:26.558002', '2021-04-28 13:14:26.000000', 'en', 'Brazil', 31, 31),
('2021-04-28 13:14:26.590632', '2021-04-28 13:14:26.000000', 'en', 'British Indian Ocean Territory', 32, 32),
('2021-04-28 13:14:26.608101', '2021-04-28 13:14:26.000000', 'en', 'Brunei Darussalam', 33, 33),
('2021-04-28 13:14:26.626668', '2021-04-28 13:14:26.000000', 'en', 'Bulgaria', 34, 34),
('2021-04-28 13:14:26.642321', '2021-04-28 13:14:26.000000', 'en', 'Burkina Faso', 35, 35),
('2021-04-28 13:14:26.667503', '2021-04-28 13:14:26.000000', 'en', 'Burundi', 36, 36),
('2021-04-28 13:14:26.683883', '2021-04-28 13:14:26.000000', 'en', 'Cabo Verde', 37, 37),
('2021-04-28 13:14:26.714204', '2021-04-28 13:14:26.000000', 'en', 'Cambodia', 38, 38),
('2021-04-28 13:14:26.732319', '2021-04-28 13:14:26.000000', 'en', 'Cameroon', 39, 39),
('2021-04-28 13:14:26.758729', '2021-04-28 13:14:26.000000', 'en', 'Canada', 40, 40),
('2021-04-28 13:14:26.773260', '2021-04-28 13:14:26.000000', 'en', 'Cayman Islands', 41, 41),
('2021-04-28 13:14:26.784030', '2021-04-28 13:14:26.000000', 'en', 'Central African Republic', 42, 42),
('2021-04-28 13:14:26.796472', '2021-04-28 13:14:26.000000', 'en', 'Chad', 43, 43),
('2021-04-28 13:14:26.807642', '2021-04-28 13:14:26.000000', 'en', 'Chile', 44, 44),
('2021-04-28 13:14:26.818336', '2021-04-28 13:14:26.000000', 'en', 'China', 45, 45),
('2021-04-28 13:14:26.858474', '2021-04-28 13:14:26.000000', 'en', 'Christmas Island', 46, 46),
('2021-04-28 13:14:26.874539', '2021-04-28 13:14:26.000000', 'en', 'Cocos (Keeling) Islands', 47, 47),
('2021-04-28 13:14:26.899305', '2021-04-28 13:14:26.000000', 'en', 'Colombia', 48, 48),
('2021-04-28 13:14:26.920732', '2021-04-28 13:14:26.000000', 'en', 'Comoros', 49, 49),
('2021-04-28 13:14:26.932590', '2021-04-28 13:14:26.000000', 'en', 'Congo', 50, 50),
('2021-04-28 13:14:26.943338', '2021-04-28 13:14:26.000000', 'en', 'Congo (Democratic Republic of the)', 51, 51),
('2021-04-28 13:14:26.956640', '2021-04-28 13:14:26.000000', 'en', 'Cook Islands', 52, 52),
('2021-04-28 13:14:26.984027', '2021-04-28 13:14:27.000000', 'en', 'Costa Rica', 53, 53),
('2021-04-28 13:14:27.029351', '2021-04-28 13:14:27.000000', 'en', 'Côte d\'Ivoire', 54, 54),
('2021-04-28 13:14:27.046448', '2021-04-28 13:14:27.000000', 'en', 'Croatia', 55, 55),
('2021-04-28 13:14:27.074400', '2021-04-28 13:14:27.000000', 'en', 'Cuba', 56, 56),
('2021-04-28 13:14:27.090307', '2021-04-28 13:14:27.000000', 'en', 'Curaçao', 57, 57),
('2021-04-28 13:14:27.101558', '2021-04-28 13:14:27.000000', 'en', 'Cyprus', 58, 58),
('2021-04-28 13:14:27.118737', '2021-04-28 13:14:27.000000', 'en', 'Czechia', 59, 59),
('2021-04-28 13:14:27.131593', '2021-04-28 13:14:27.000000', 'en', 'Denmark', 60, 60),
('2021-04-28 13:14:27.142746', '2021-04-28 13:14:27.000000', 'en', 'Djibouti', 61, 61),
('2021-04-28 13:14:27.152941', '2021-04-28 13:14:27.000000', 'en', 'Dominica', 62, 62),
('2021-04-28 13:14:27.165636', '2021-04-28 13:14:27.000000', 'en', 'Dominican Republic', 63, 63),
('2021-04-28 13:14:27.177200', '2021-04-28 13:14:27.000000', 'en', 'Ecuador', 64, 64),
('2021-04-28 13:14:27.191532', '2021-04-28 13:14:27.000000', 'en', 'Egypt', 65, 65),
('2021-04-28 13:14:27.220330', '2021-04-28 13:14:27.000000', 'en', 'El Salvador', 66, 66),
('2021-04-28 13:14:27.234449', '2021-04-28 13:14:27.000000', 'en', 'Equatorial Guinea', 67, 67),
('2021-04-28 13:14:27.276885', '2021-04-28 13:14:27.000000', 'en', 'Eritrea', 68, 68),
('2021-04-28 13:14:27.294773', '2021-04-28 13:14:27.000000', 'en', 'Estonia', 69, 69),
('2021-04-28 13:14:27.307676', '2021-04-28 13:14:27.000000', 'en', 'Eswatini', 70, 70),
('2021-04-28 13:14:27.322838', '2021-04-28 13:14:27.000000', 'en', 'Ethiopia', 71, 71),
('2021-04-28 13:14:27.351769', '2021-04-28 13:14:27.000000', 'en', 'Falkland Islands (Malvinas)', 72, 72),
('2021-04-28 13:14:27.364224', '2021-04-28 13:14:27.000000', 'en', 'Faroe Islands', 73, 73),
('2021-04-28 13:14:27.375042', '2021-04-28 13:14:27.000000', 'en', 'Fiji', 74, 74),
('2021-04-28 13:14:27.385927', '2021-04-28 13:14:27.000000', 'en', 'Finland', 75, 75),
('2021-04-28 13:14:27.398860', '2021-04-28 13:14:27.000000', 'en', 'France', 76, 76),
('2021-04-28 13:14:27.423494', '2021-04-28 13:14:27.000000', 'en', 'French Guiana', 77, 77),
('2021-04-28 13:14:27.459561', '2021-04-28 13:14:27.000000', 'en', 'French Polynesia', 78, 78),
('2021-04-28 13:14:27.489128', '2021-04-28 13:14:27.000000', 'en', 'French Southern Territories', 79, 79),
('2021-04-28 13:14:27.502827', '2021-04-28 13:14:27.000000', 'en', 'Gabon', 80, 80),
('2021-04-28 13:14:27.515892', '2021-04-28 13:14:27.000000', 'en', 'Gambia', 81, 81),
('2021-04-28 13:14:27.527648', '2021-04-28 13:14:27.000000', 'en', 'Georgia', 82, 82),
('2021-04-28 13:14:27.539990', '2021-04-28 13:14:27.000000', 'en', 'Germany', 83, 83),
('2021-04-28 13:14:27.557422', '2021-04-28 13:14:27.000000', 'en', 'Ghana', 84, 84),
('2021-04-28 13:14:27.571117', '2021-04-28 13:14:27.000000', 'en', 'Gibraltar', 85, 85),
('2021-04-28 13:14:27.587134', '2021-04-28 13:14:27.000000', 'en', 'Greece', 86, 86),
('2021-04-28 13:14:27.599063', '2021-04-28 13:14:27.000000', 'en', 'Greenland', 87, 87),
('2021-04-28 13:14:27.614127', '2021-04-28 13:14:27.000000', 'en', 'Grenada', 88, 88),
('2021-04-28 13:14:27.626215', '2021-04-28 13:14:27.000000', 'en', 'Guadeloupe', 89, 89),
('2021-04-28 13:14:27.650444', '2021-04-28 13:14:27.000000', 'en', 'Guam', 90, 90),
('2021-04-28 13:14:27.675869', '2021-04-28 13:14:27.000000', 'en', 'Guatemala', 91, 91),
('2021-04-28 13:14:27.689116', '2021-04-28 13:14:27.000000', 'en', 'Guernsey', 92, 92),
('2021-04-28 13:14:27.700070', '2021-04-28 13:14:27.000000', 'en', 'Guinea', 93, 93),
('2021-04-28 13:14:27.711961', '2021-04-28 13:14:27.000000', 'en', 'Guinea-Bissau', 94, 94),
('2021-04-28 13:14:27.726880', '2021-04-28 13:14:27.000000', 'en', 'Guyana', 95, 95),
('2021-04-28 13:14:27.744112', '2021-04-28 13:14:27.000000', 'en', 'Haiti', 96, 96),
('2021-04-28 13:14:27.757280', '2021-04-28 13:14:27.000000', 'en', 'Heard Island and McDonald Islands', 97, 97),
('2021-04-28 13:14:27.780988', '2021-04-28 13:14:27.000000', 'en', 'Holy See', 98, 98),
('2021-04-28 13:14:27.794152', '2021-04-28 13:14:27.000000', 'en', 'Honduras', 99, 99),
('2021-04-28 13:14:27.805103', '2021-04-28 13:14:27.000000', 'en', 'Hong Kong', 100, 100),
('2021-04-28 13:14:27.820398', '2021-04-28 13:14:27.000000', 'en', 'Hungary', 101, 101),
('2021-04-28 13:14:27.832188', '2021-04-28 13:14:27.000000', 'en', 'Iceland', 102, 102),
('2021-04-28 13:14:27.847391', '2021-04-28 13:14:27.000000', 'en', 'India', 103, 103),
('2021-04-28 13:14:27.869886', '2021-04-28 13:14:27.000000', 'en', 'Indonesia', 104, 104),
('2021-04-28 13:14:27.883765', '2021-04-28 13:14:27.000000', 'en', 'Iran (Islamic Republic of)', 105, 105),
('2021-04-28 13:14:27.896240', '2021-04-28 13:14:27.000000', 'en', 'Iraq', 106, 106),
('2021-04-28 13:14:27.911548', '2021-04-28 13:14:27.000000', 'en', 'Ireland', 107, 107),
('2021-04-28 13:14:27.925961', '2021-04-28 13:14:27.000000', 'en', 'Isle of Man', 108, 108),
('2021-04-28 13:14:27.937147', '2021-04-28 13:14:27.000000', 'en', 'Israel', 109, 109),
('2021-04-28 13:14:27.947583', '2021-04-28 13:14:27.000000', 'en', 'Italy', 110, 110),
('2021-04-28 13:14:27.957452', '2021-04-28 13:14:27.000000', 'en', 'Jamaica', 111, 111),
('2021-04-28 13:14:27.967063', '2021-04-28 13:14:27.000000', 'en', 'Japan', 112, 112),
('2021-04-28 13:14:27.979803', '2021-04-28 13:14:27.000000', 'en', 'Jersey', 113, 113),
('2021-04-28 13:14:27.993496', '2021-04-28 13:14:27.000000', 'en', 'Jordan', 114, 114),
('2021-04-28 13:14:28.004675', '2021-04-28 13:14:28.000000', 'en', 'Kazakhstan', 115, 115),
('2021-04-28 13:14:28.017775', '2021-04-28 13:14:28.000000', 'en', 'Kenya', 116, 116),
('2021-04-28 13:14:28.033299', '2021-04-28 13:14:28.000000', 'en', 'Kiribati', 117, 117),
('2021-04-28 13:14:28.043379', '2021-04-28 13:14:28.000000', 'en', 'Korea (Democratic People\'s Republic of)', 118, 118),
('2021-04-28 13:14:28.053575', '2021-04-28 13:14:28.000000', 'en', 'Korea (Republic of)', 119, 119),
('2021-04-28 13:14:28.063788', '2021-04-28 13:14:28.000000', 'en', 'Kuwait', 120, 120),
('2021-04-28 13:14:28.074459', '2021-04-28 13:14:28.000000', 'en', 'Kyrgyzstan', 121, 121),
('2021-04-28 13:14:28.086275', '2021-04-28 13:14:28.000000', 'en', 'Lao People\'s Democratic Republic', 122, 122),
('2021-04-28 13:14:28.098139', '2021-04-28 13:14:28.000000', 'en', 'Latvia', 123, 123),
('2021-04-28 13:14:28.107796', '2021-04-28 13:14:28.000000', 'en', 'Lebanon', 124, 124),
('2021-04-28 13:14:28.117626', '2021-04-28 13:14:28.000000', 'en', 'Lesotho', 125, 125),
('2021-04-28 13:14:28.127664', '2021-04-28 13:14:28.000000', 'en', 'Liberia', 126, 126),
('2021-04-28 13:14:28.138295', '2021-04-28 13:14:28.000000', 'en', 'Libya', 127, 127),
('2021-04-28 13:14:28.151560', '2021-04-28 13:14:28.000000', 'en', 'Liechtenstein', 128, 128),
('2021-04-28 13:14:28.162589', '2021-04-28 13:14:28.000000', 'en', 'Lithuania', 129, 129),
('2021-04-28 13:14:28.174616', '2021-04-28 13:14:28.000000', 'en', 'Luxembourg', 130, 130),
('2021-04-28 13:14:28.201380', '2021-04-28 13:14:28.000000', 'en', 'Macao', 131, 131),
('2021-04-28 13:14:28.214096', '2021-04-28 13:14:28.000000', 'en', 'Macedonia (the former Yugoslav Republic of)', 132, 132),
('2021-04-28 13:14:28.224503', '2021-04-28 13:14:28.000000', 'en', 'Madagascar', 133, 133),
('2021-04-28 13:14:28.235145', '2021-04-28 13:14:28.000000', 'en', 'Malawi', 134, 134),
('2021-04-28 13:14:28.252171', '2021-04-28 13:14:28.000000', 'en', 'Malaysia', 135, 135),
('2021-04-28 13:14:28.279904', '2021-04-28 13:14:28.000000', 'en', 'Maldives', 136, 136),
('2021-04-28 13:14:28.292009', '2021-04-28 13:14:28.000000', 'en', 'Mali', 137, 137),
('2021-04-28 13:14:28.302446', '2021-04-28 13:14:28.000000', 'en', 'Malta', 138, 138),
('2021-04-28 13:14:28.312007', '2021-04-28 13:14:28.000000', 'en', 'Marshall Islands', 139, 139),
('2021-04-28 13:14:28.322591', '2021-04-28 13:14:28.000000', 'en', 'Martinique', 140, 140),
('2021-04-28 13:14:28.350177', '2021-04-28 13:14:28.000000', 'en', 'Mauritania', 141, 141),
('2021-04-28 13:14:28.363842', '2021-04-28 13:14:28.000000', 'en', 'Mauritius', 142, 142),
('2021-04-28 13:14:28.375877', '2021-04-28 13:14:28.000000', 'en', 'Mayotte', 143, 143),
('2021-04-28 13:14:28.386765', '2021-04-28 13:14:28.000000', 'en', 'Mexico', 144, 144),
('2021-04-28 13:14:28.397137', '2021-04-28 13:14:28.000000', 'en', 'Micronesia (Federated States of)', 145, 145),
('2021-04-28 13:14:28.406880', '2021-04-28 13:14:28.000000', 'en', 'Moldova (Republic of)', 146, 146),
('2021-04-28 13:14:28.416505', '2021-04-28 13:14:28.000000', 'en', 'Monaco', 147, 147),
('2021-04-28 13:14:28.429334', '2021-04-28 13:14:28.000000', 'en', 'Mongolia', 148, 148),
('2021-04-28 13:14:28.441995', '2021-04-28 13:14:28.000000', 'en', 'Montenegro', 149, 149),
('2021-04-28 13:14:28.457739', '2021-04-28 13:14:28.000000', 'en', 'Montserrat', 150, 150),
('2021-04-28 13:14:28.489777', '2021-04-28 13:14:28.000000', 'en', 'Morocco', 151, 151),
('2021-04-28 13:14:28.505324', '2021-04-28 13:14:28.000000', 'en', 'Mozambique', 152, 152),
('2021-04-28 13:14:28.515773', '2021-04-28 13:14:28.000000', 'en', 'Myanmar', 153, 153),
('2021-04-28 13:14:28.526678', '2021-04-28 13:14:28.000000', 'en', 'Namibia', 154, 154),
('2021-04-28 13:14:28.538418', '2021-04-28 13:14:28.000000', 'en', 'Nauru', 155, 155),
('2021-04-28 13:14:28.549676', '2021-04-28 13:14:28.000000', 'en', 'Nepal', 156, 156),
('2021-04-28 13:14:28.559440', '2021-04-28 13:14:28.000000', 'en', 'Netherlands', 157, 157),
('2021-04-28 13:14:28.570673', '2021-04-28 13:14:28.000000', 'en', 'New Caledonia', 158, 158),
('2021-04-28 13:14:28.580169', '2021-04-28 13:14:28.000000', 'en', 'New Zealand', 159, 159),
('2021-04-28 13:14:28.591578', '2021-04-28 13:14:28.000000', 'en', 'Nicaragua', 160, 160),
('2021-04-28 13:14:28.602116', '2021-04-28 13:14:28.000000', 'en', 'Niger', 161, 161),
('2021-04-28 13:14:28.611583', '2021-04-28 13:14:28.000000', 'en', 'Nigeria', 162, 162),
('2021-04-28 13:14:28.620908', '2021-04-28 13:14:28.000000', 'en', 'Niue', 163, 163),
('2021-04-28 13:14:28.631866', '2021-04-28 13:14:28.000000', 'en', 'Norfolk Island', 164, 164),
('2021-04-28 13:14:28.648742', '2021-04-28 13:14:28.000000', 'en', 'Northern Mariana Islands', 165, 165),
('2021-04-28 13:14:28.659748', '2021-04-28 13:14:28.000000', 'en', 'Norway', 166, 166),
('2021-04-28 13:14:28.671874', '2021-04-28 13:14:28.000000', 'en', 'Oman', 167, 167),
('2021-04-28 13:14:28.683240', '2021-04-28 13:14:28.000000', 'en', 'Pakistan', 168, 168),
('2021-04-28 13:14:28.695308', '2021-04-28 13:14:28.000000', 'en', 'Palau', 169, 169),
('2021-04-28 13:14:28.731013', '2021-04-28 13:14:28.000000', 'en', 'Palestine, State of', 170, 170),
('2021-04-28 13:14:28.817152', '2021-04-28 13:14:28.000000', 'en', 'Panama', 171, 171),
('2021-04-28 13:14:28.838258', '2021-04-28 13:14:28.000000', 'en', 'Papua New Guinea', 172, 172),
('2021-04-28 13:14:28.860111', '2021-04-28 13:14:28.000000', 'en', 'Paraguay', 173, 173),
('2021-04-28 13:14:28.879487', '2021-04-28 13:14:28.000000', 'en', 'Peru', 174, 174),
('2021-04-28 13:14:28.889617', '2021-04-28 13:14:28.000000', 'en', 'Philippines', 175, 175),
('2021-04-28 13:14:28.901407', '2021-04-28 13:14:28.000000', 'en', 'Pitcairn', 176, 176),
('2021-04-28 13:14:28.916182', '2021-04-28 13:14:28.000000', 'en', 'Poland', 177, 177),
('2021-04-28 13:14:28.936636', '2021-04-28 13:14:28.000000', 'en', 'Portugal', 178, 178),
('2021-04-28 13:14:28.948250', '2021-04-28 13:14:28.000000', 'en', 'Puerto Rico', 179, 179),
('2021-04-28 13:14:28.960960', '2021-04-28 13:14:28.000000', 'en', 'Qatar', 180, 180),
('2021-04-28 13:14:28.975732', '2021-04-28 13:14:28.000000', 'en', 'Réunion', 181, 181),
('2021-04-28 13:14:28.991124', '2021-04-28 13:14:28.000000', 'en', 'Romania', 182, 182),
('2021-04-28 13:14:29.003979', '2021-04-28 13:14:29.000000', 'en', 'Russian Federation', 183, 183),
('2021-04-28 13:14:29.015601', '2021-04-28 13:14:29.000000', 'en', 'Rwanda', 184, 184),
('2021-04-28 13:14:29.028249', '2021-04-28 13:14:29.000000', 'en', 'Saint Barthélemy', 185, 185),
('2021-04-28 13:14:29.041106', '2021-04-28 13:14:29.000000', 'en', 'Saint Helena, Ascension and Tristan da Cunha', 186, 186),
('2021-04-28 13:14:29.054761', '2021-04-28 13:14:29.000000', 'en', 'Saint Kitts and Nevis', 187, 187),
('2021-04-28 13:14:29.065437', '2021-04-28 13:14:29.000000', 'en', 'Saint Lucia', 188, 188),
('2021-04-28 13:14:29.074997', '2021-04-28 13:14:29.000000', 'en', 'Saint Martin (French part)', 189, 189),
('2021-04-28 13:14:29.086886', '2021-04-28 13:14:29.000000', 'en', 'Saint Pierre and Miquelon', 190, 190),
('2021-04-28 13:14:29.100417', '2021-04-28 13:14:29.000000', 'en', 'Saint Vincent and the Grenadines', 191, 191),
('2021-04-28 13:14:29.119592', '2021-04-28 13:14:29.000000', 'en', 'Samoa', 192, 192),
('2021-04-28 13:14:29.140132', '2021-04-28 13:14:29.000000', 'en', 'San Marino', 193, 193),
('2021-04-28 13:14:29.159254', '2021-04-28 13:14:29.000000', 'en', 'Sao Tome and Principe', 194, 194),
('2021-04-28 13:14:29.171917', '2021-04-28 13:14:29.000000', 'en', 'Saudi Arabia', 195, 195),
('2021-04-28 13:14:29.185326', '2021-04-28 13:14:29.000000', 'en', 'Senegal', 196, 196),
('2021-04-28 13:14:29.196597', '2021-04-28 13:14:29.000000', 'en', 'Serbia', 197, 197),
('2021-04-28 13:14:29.206477', '2021-04-28 13:14:29.000000', 'en', 'Seychelles', 198, 198),
('2021-04-28 13:14:29.217735', '2021-04-28 13:14:29.000000', 'en', 'Sierra Leone', 199, 199),
('2021-04-28 13:14:29.229201', '2021-04-28 13:14:29.000000', 'en', 'Singapore', 200, 200),
('2021-04-28 13:14:29.240155', '2021-04-28 13:14:29.000000', 'en', 'Sint Maarten (Dutch part)', 201, 201),
('2021-04-28 13:14:29.251668', '2021-04-28 13:14:29.000000', 'en', 'Slovakia', 202, 202),
('2021-04-28 13:14:29.263829', '2021-04-28 13:14:29.000000', 'en', 'Slovenia', 203, 203),
('2021-04-28 13:14:29.273491', '2021-04-28 13:14:29.000000', 'en', 'Solomon Islands', 204, 204),
('2021-04-28 13:14:29.286445', '2021-04-28 13:14:29.000000', 'en', 'Somalia', 205, 205),
('2021-04-28 13:14:29.300613', '2021-04-28 13:14:29.000000', 'en', 'South Africa', 206, 206),
('2021-04-28 13:14:29.311872', '2021-04-28 13:14:29.000000', 'en', 'South Georgia and the South Sandwich Islands', 207, 207),
('2021-04-28 13:14:29.321479', '2021-04-28 13:14:29.000000', 'en', 'South Sudan', 208, 208),
('2021-04-28 13:14:29.337279', '2021-04-28 13:14:29.000000', 'en', 'Spain', 209, 209),
('2021-04-28 13:14:29.357622', '2021-04-28 13:14:29.000000', 'en', 'Sri Lanka', 210, 210),
('2021-04-28 13:14:29.370936', '2021-04-28 13:14:29.000000', 'en', 'Sudan', 211, 211),
('2021-04-28 13:14:29.383045', '2021-04-28 13:14:29.000000', 'en', 'Suriname', 212, 212),
('2021-04-28 13:14:29.394846', '2021-04-28 13:14:29.000000', 'en', 'Svalbard and Jan Mayen', 213, 213),
('2021-04-28 13:14:29.404513', '2021-04-28 13:14:29.000000', 'en', 'Sweden', 214, 214),
('2021-04-28 13:14:29.414212', '2021-04-28 13:14:29.000000', 'en', 'Switzerland', 215, 215),
('2021-04-28 13:14:29.425680', '2021-04-28 13:14:29.000000', 'en', 'Syrian Arab Republic', 216, 216),
('2021-04-28 13:14:29.448272', '2021-04-28 13:14:29.000000', 'en', 'Taiwan, Province of China', 217, 217),
('2021-04-28 13:14:29.458085', '2021-04-28 13:14:29.000000', 'en', 'Tajikistan', 218, 218),
('2021-04-28 13:14:29.470812', '2021-04-28 13:14:29.000000', 'en', 'Tanzania, United Republic of', 219, 219),
('2021-04-28 13:14:29.483673', '2021-04-28 13:14:29.000000', 'en', 'Thailand', 220, 220),
('2021-04-28 13:14:29.496296', '2021-04-28 13:14:29.000000', 'en', 'Timor-Leste', 221, 221),
('2021-04-28 13:14:29.506496', '2021-04-28 13:14:29.000000', 'en', 'Togo', 222, 222),
('2021-04-28 13:14:29.516071', '2021-04-28 13:14:29.000000', 'en', 'Tokelau', 223, 223),
('2021-04-28 13:14:29.525472', '2021-04-28 13:14:29.000000', 'en', 'Tonga', 224, 224),
('2021-04-28 13:14:29.536858', '2021-04-28 13:14:29.000000', 'en', 'Trinidad and Tobago', 225, 225),
('2021-04-28 13:14:29.547638', '2021-04-28 13:14:29.000000', 'en', 'Tunisia', 226, 226),
('2021-04-28 13:14:29.557144', '2021-04-28 13:14:29.000000', 'en', 'Turkey', 227, 227),
('2021-04-28 13:14:29.570096', '2021-04-28 13:14:29.000000', 'en', 'Turkmenistan', 228, 228),
('2021-04-28 13:14:29.581732', '2021-04-28 13:14:29.000000', 'en', 'Turks and Caicos Islands', 229, 229),
('2021-04-28 13:14:29.604103', '2021-04-28 13:14:29.000000', 'en', 'Tuvalu', 230, 230),
('2021-04-28 13:14:29.613525', '2021-04-28 13:14:29.000000', 'en', 'Uganda', 231, 231),
('2021-04-28 13:14:29.623081', '2021-04-28 13:14:29.000000', 'en', 'Ukraine', 232, 232),
('2021-04-28 13:14:29.634079', '2021-04-28 13:14:29.000000', 'en', 'United Arab Emirates', 233, 233),
('2021-04-28 13:14:29.645764', '2021-04-28 13:14:29.000000', 'en', 'United Kingdom', 234, 234),
('2021-04-28 13:14:29.657550', '2021-04-28 13:14:29.000000', 'en', 'United States of America', 235, 235),
('2021-04-28 13:14:29.666813', '2021-04-28 13:14:29.000000', 'en', 'United States Minor Outlying Islands', 236, 236),
('2021-04-28 13:14:29.678102', '2021-04-28 13:14:29.000000', 'en', 'Uruguay', 237, 237),
('2021-04-28 13:14:29.688879', '2021-04-28 13:14:29.000000', 'en', 'Uzbekistan', 238, 238),
('2021-04-28 13:14:29.699023', '2021-04-28 13:14:29.000000', 'en', 'Vanuatu', 239, 239),
('2021-04-28 13:14:29.708654', '2021-04-28 13:14:29.000000', 'en', 'Venezuela (Bolivarian Republic of)', 240, 240),
('2021-04-28 13:14:29.718562', '2021-04-28 13:14:29.000000', 'en', 'Viet Nam', 241, 241),
('2021-04-28 13:14:29.730293', '2021-04-28 13:14:29.000000', 'en', 'Virgin Islands (British)', 242, 242),
('2021-04-28 13:14:29.739974', '2021-04-28 13:14:29.000000', 'en', 'Virgin Islands (U.S.)', 243, 243),
('2021-04-28 13:14:29.750141', '2021-04-28 13:14:29.000000', 'en', 'Wallis and Futuna', 244, 244),
('2021-04-28 13:14:29.760502', '2021-04-28 13:14:29.000000', 'en', 'Western Sahara', 245, 245),
('2021-04-28 13:14:29.772108', '2021-04-28 13:14:29.000000', 'en', 'Yemen', 246, 246),
('2021-04-28 13:14:29.782023', '2021-04-28 13:14:29.000000', 'en', 'Zambia', 247, 247),
('2021-04-28 13:14:29.792220', '2021-04-28 13:14:29.000000', 'en', 'Zimbabwe', 248, 248);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer`
--

CREATE TABLE `customer` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `customer`
--

INSERT INTO `customer` (`createdAt`, `updatedAt`, `deletedAt`, `title`, `firstName`, `lastName`, `phoneNumber`, `emailAddress`, `id`, `userId`) VALUES
('2021-05-11 12:16:52.010297', '2021-05-18 11:06:53.000000', NULL, '', 'Mati', 'Viscusso', '', 'mativiscusso@gmail.com', 1, 2),
('2021-05-19 12:03:42.447264', '2021-05-19 12:03:42.000000', NULL, '', 'Juan', 'Mamee', '', 'juanmame@gmail.com', 2, 3),
('2021-05-19 12:12:32.785320', '2021-05-19 12:12:33.000000', NULL, '', 'Matu', 'Maaaa', '', 'elegante@gmail.com', 3, 4),
('2021-05-19 12:20:36.354195', '2021-05-19 12:20:36.000000', NULL, '', 'Matute', 'Morales', '', 'matutemorales@gmail.com', 4, 5),
('2021-05-19 12:26:29.548334', '2021-05-19 12:26:29.000000', NULL, '', 'Juan', 'Perez', '', 'juanperez@gmail.com', 5, 6),
('2021-05-19 12:28:43.470299', '2021-05-19 12:28:43.000000', NULL, '', 'aaa', 'aaa', '', 'aaa@aaa.com', 6, 7),
('2021-05-19 12:30:33.106589', '2021-05-19 12:30:33.000000', NULL, '', 'tt', 'tt', '', 'tt@gmail.com', 7, 8),
('2021-05-19 12:50:07.265198', '2021-05-19 12:50:07.000000', NULL, '', 'tute', 'rtuteu', '', 'tutue@gmail.com', 8, 9),
('2021-05-19 13:04:29.164944', '2021-05-19 13:04:29.000000', NULL, '', 'Mati', 'Viscusso', '', 'elmati@gmail.com', 9, 10),
('2021-05-19 13:37:41.920266', '2021-05-19 13:37:42.000000', NULL, '', 'elma', 'elma', '', 'test@example.com', 10, 11),
('2021-05-19 14:18:07.193376', '2021-05-19 14:18:07.000000', NULL, '', 'Mati', 'Vneud', '', 'vendure@gmail.com', 11, 12),
('2021-05-19 14:19:08.515165', '2021-05-19 14:19:08.000000', NULL, '', 'la', 'la', '', 'lala@gmail.com', 12, 13),
('2021-05-19 14:39:00.528785', '2021-05-19 14:39:00.000000', NULL, '', 'Lio', 'Messi', '', 'liomessi@gmail.com', 13, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer_channels_channel`
--

CREATE TABLE `customer_channels_channel` (
  `customerId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `customer_channels_channel`
--

INSERT INTO `customer_channels_channel` (`customerId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer_group`
--

CREATE TABLE `customer_group` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer_groups_customer_group`
--

CREATE TABLE `customer_groups_customer_group` (
  `customerId` int(11) NOT NULL,
  `customerGroupId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facet`
--

CREATE TABLE `facet` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `isPrivate` tinyint(4) NOT NULL DEFAULT '0',
  `code` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `facet`
--

INSERT INTO `facet` (`createdAt`, `updatedAt`, `isPrivate`, `code`, `id`) VALUES
('2021-04-28 13:14:30.708928', '2021-04-28 13:14:30.708928', 0, 'category', 1),
('2021-04-28 13:14:30.781401', '2021-04-28 13:14:30.781401', 0, 'brand', 2),
('2021-04-28 13:14:33.263291', '2021-04-28 13:14:33.263291', 0, 'color', 3),
('2021-04-28 13:14:34.312337', '2021-04-28 13:14:34.312337', 0, 'plant-type', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facet_channels_channel`
--

CREATE TABLE `facet_channels_channel` (
  `facetId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `facet_channels_channel`
--

INSERT INTO `facet_channels_channel` (`facetId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facet_translation`
--

CREATE TABLE `facet_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `facet_translation`
--

INSERT INTO `facet_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2021-04-28 13:14:30.689679', '2021-04-28 13:14:30.000000', 'en', 'category', 1, 1),
('2021-04-28 13:14:30.776904', '2021-04-28 13:14:30.000000', 'en', 'brand', 2, 2),
('2021-04-28 13:14:33.258271', '2021-04-28 13:14:33.000000', 'en', 'color', 3, 3),
('2021-04-28 13:14:34.307925', '2021-04-28 13:14:34.000000', 'en', 'plant type', 4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facet_value`
--

CREATE TABLE `facet_value` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `code` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `facetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `facet_value`
--

INSERT INTO `facet_value` (`createdAt`, `updatedAt`, `code`, `id`, `facetId`) VALUES
('2021-04-28 13:14:30.742277', '2021-04-28 13:14:30.742277', 'electronics', 1, 1),
('2021-04-28 13:14:30.763435', '2021-04-28 13:14:30.763435', 'computers', 2, 1),
('2021-04-28 13:14:30.805917', '2021-04-28 13:14:30.805917', 'apple', 3, 2),
('2021-04-28 13:14:31.149705', '2021-04-28 13:14:31.149705', 'logitech', 4, 2),
('2021-04-28 13:14:31.227949', '2021-04-28 13:14:31.227949', 'samsung', 5, 2),
('2021-04-28 13:14:31.415302', '2021-04-28 13:14:31.415302', 'corsair', 6, 2),
('2021-04-28 13:14:31.585512', '2021-04-28 13:14:31.585512', 'admi', 7, 2),
('2021-04-28 13:14:31.800302', '2021-04-28 13:14:31.800302', 'seagate', 8, 2),
('2021-04-28 13:14:32.150093', '2021-04-28 13:14:32.150093', 'photo', 9, 1),
('2021-04-28 13:14:32.161992', '2021-04-28 13:14:32.161992', 'polaroid', 10, 2),
('2021-04-28 13:14:32.226710', '2021-04-28 13:14:32.226710', 'nikkon', 11, 2),
('2021-04-28 13:14:32.283401', '2021-04-28 13:14:32.283401', 'agfa', 12, 2),
('2021-04-28 13:14:32.335485', '2021-04-28 13:14:32.335485', 'manfrotto', 13, 2),
('2021-04-28 13:14:32.407236', '2021-04-28 13:14:32.407236', 'kodak', 14, 2),
('2021-04-28 13:14:32.473083', '2021-04-28 13:14:32.473083', 'sony', 15, 2),
('2021-04-28 13:14:32.662455', '2021-04-28 13:14:32.662455', 'rolleiflex', 16, 2),
('2021-04-28 13:14:32.748847', '2021-04-28 13:14:32.748847', 'sports-outdoor', 17, 1),
('2021-04-28 13:14:32.789950', '2021-04-28 13:14:32.789950', 'equipment', 18, 1),
('2021-04-28 13:14:32.805316', '2021-04-28 13:14:32.805316', 'pinarello', 19, 2),
('2021-04-28 13:14:32.883476', '2021-04-28 13:14:32.883476', 'everlast', 20, 2),
('2021-04-28 13:14:33.077476', '2021-04-28 13:14:33.077476', 'nike', 21, 2),
('2021-04-28 13:14:33.137645', '2021-04-28 13:14:33.137645', 'wilson', 22, 2),
('2021-04-28 13:14:33.235273', '2021-04-28 13:14:33.235273', 'footwear', 23, 1),
('2021-04-28 13:14:33.248315', '2021-04-28 13:14:33.248315', 'adidas', 24, 2),
('2021-04-28 13:14:33.277450', '2021-04-28 13:14:33.277450', 'blue', 25, 3),
('2021-04-28 13:14:33.291573', '2021-04-28 13:14:33.291573', 'pink', 26, 3),
('2021-04-28 13:14:33.465334', '2021-04-28 13:14:33.465334', 'black', 27, 3),
('2021-04-28 13:14:33.651678', '2021-04-28 13:14:33.651678', 'white', 28, 3),
('2021-04-28 13:14:34.122396', '2021-04-28 13:14:34.122396', 'converse', 29, 2),
('2021-04-28 13:14:34.284370', '2021-04-28 13:14:34.284370', 'home-garden', 30, 1),
('2021-04-28 13:14:34.298106', '2021-04-28 13:14:34.298106', 'plants', 31, 1),
('2021-04-28 13:14:34.327287', '2021-04-28 13:14:34.327287', 'indoor', 32, 4),
('2021-04-28 13:14:34.386608', '2021-04-28 13:14:34.386608', 'outdoor', 33, 4),
('2021-04-28 13:14:34.835588', '2021-04-28 13:14:34.835588', 'furniture', 34, 1),
('2021-04-28 13:14:34.847421', '2021-04-28 13:14:34.847421', 'gray', 35, 3),
('2021-04-28 13:14:35.035779', '2021-04-28 13:14:35.035779', 'brown', 36, 3),
('2021-04-28 13:14:35.164170', '2021-04-28 13:14:35.164170', 'wood', 37, 3),
('2021-04-28 13:14:35.454587', '2021-04-28 13:14:35.454587', 'yellow', 38, 3),
('2021-04-28 13:14:35.481234', '2021-04-28 13:14:35.481234', 'green', 39, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facet_value_channels_channel`
--

CREATE TABLE `facet_value_channels_channel` (
  `facetValueId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `facet_value_channels_channel`
--

INSERT INTO `facet_value_channels_channel` (`facetValueId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facet_value_translation`
--

CREATE TABLE `facet_value_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `facet_value_translation`
--

INSERT INTO `facet_value_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2021-04-28 13:14:30.723824', '2021-04-28 13:14:30.000000', 'en', 'Electronics', 1, 1),
('2021-04-28 13:14:30.758708', '2021-04-28 13:14:30.000000', 'en', 'Computers', 2, 2),
('2021-04-28 13:14:30.799868', '2021-04-28 13:14:30.000000', 'en', 'Apple', 3, 3),
('2021-04-28 13:14:31.145279', '2021-04-28 13:14:31.000000', 'en', 'Logitech', 4, 4),
('2021-04-28 13:14:31.224468', '2021-04-28 13:14:31.000000', 'en', 'Samsung', 5, 5),
('2021-04-28 13:14:31.410744', '2021-04-28 13:14:31.000000', 'en', 'Corsair', 6, 6),
('2021-04-28 13:14:31.580539', '2021-04-28 13:14:31.000000', 'en', 'ADMI', 7, 7),
('2021-04-28 13:14:31.796777', '2021-04-28 13:14:31.000000', 'en', 'Seagate', 8, 8),
('2021-04-28 13:14:32.142629', '2021-04-28 13:14:32.000000', 'en', 'Photo', 9, 9),
('2021-04-28 13:14:32.157988', '2021-04-28 13:14:32.000000', 'en', 'Polaroid', 10, 10),
('2021-04-28 13:14:32.223163', '2021-04-28 13:14:32.000000', 'en', 'Nikkon', 11, 11),
('2021-04-28 13:14:32.278078', '2021-04-28 13:14:32.000000', 'en', 'Agfa', 12, 12),
('2021-04-28 13:14:32.332168', '2021-04-28 13:14:32.000000', 'en', 'Manfrotto', 13, 13),
('2021-04-28 13:14:32.402584', '2021-04-28 13:14:32.000000', 'en', 'Kodak', 14, 14),
('2021-04-28 13:14:32.467328', '2021-04-28 13:14:32.000000', 'en', 'Sony', 15, 15),
('2021-04-28 13:14:32.654562', '2021-04-28 13:14:32.000000', 'en', 'Rolleiflex', 16, 16),
('2021-04-28 13:14:32.731983', '2021-04-28 13:14:32.000000', 'en', 'Sports & Outdoor', 17, 17),
('2021-04-28 13:14:32.782210', '2021-04-28 13:14:32.000000', 'en', 'Equipment', 18, 18),
('2021-04-28 13:14:32.800601', '2021-04-28 13:14:32.000000', 'en', 'Pinarello', 19, 19),
('2021-04-28 13:14:32.877167', '2021-04-28 13:14:32.000000', 'en', 'Everlast', 20, 20),
('2021-04-28 13:14:33.074181', '2021-04-28 13:14:33.000000', 'en', 'Nike', 21, 21),
('2021-04-28 13:14:33.131120', '2021-04-28 13:14:33.000000', 'en', 'Wilson', 22, 22),
('2021-04-28 13:14:33.232017', '2021-04-28 13:14:33.000000', 'en', 'Footwear', 23, 23),
('2021-04-28 13:14:33.244582', '2021-04-28 13:14:33.000000', 'en', 'Adidas', 24, 24),
('2021-04-28 13:14:33.274104', '2021-04-28 13:14:33.000000', 'en', 'blue', 25, 25),
('2021-04-28 13:14:33.285166', '2021-04-28 13:14:33.000000', 'en', 'pink', 26, 26),
('2021-04-28 13:14:33.462176', '2021-04-28 13:14:33.000000', 'en', 'black', 27, 27),
('2021-04-28 13:14:33.648403', '2021-04-28 13:14:33.000000', 'en', 'white', 28, 28),
('2021-04-28 13:14:34.117782', '2021-04-28 13:14:34.000000', 'en', 'Converse', 29, 29),
('2021-04-28 13:14:34.280675', '2021-04-28 13:14:34.000000', 'en', 'Home & Garden', 30, 30),
('2021-04-28 13:14:34.292026', '2021-04-28 13:14:34.000000', 'en', 'Plants', 31, 31),
('2021-04-28 13:14:34.322956', '2021-04-28 13:14:34.000000', 'en', 'Indoor', 32, 32),
('2021-04-28 13:14:34.382989', '2021-04-28 13:14:34.000000', 'en', 'Outdoor', 33, 33),
('2021-04-28 13:14:34.831427', '2021-04-28 13:14:34.000000', 'en', 'Furniture', 34, 34),
('2021-04-28 13:14:34.843966', '2021-04-28 13:14:34.000000', 'en', 'gray', 35, 35),
('2021-04-28 13:14:35.032093', '2021-04-28 13:14:35.000000', 'en', 'brown', 36, 36),
('2021-04-28 13:14:35.160586', '2021-04-28 13:14:35.000000', 'en', 'wood', 37, 37),
('2021-04-28 13:14:35.451853', '2021-04-28 13:14:35.000000', 'en', 'yellow', 38, 38),
('2021-04-28 13:14:35.477872', '2021-04-28 13:14:35.000000', 'en', 'green', 39, 39);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fulfillment`
--

CREATE TABLE `fulfillment` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `state` varchar(255) NOT NULL,
  `trackingCode` varchar(255) NOT NULL DEFAULT '',
  `method` varchar(255) NOT NULL,
  `handlerCode` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `global_settings`
--

CREATE TABLE `global_settings` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `availableLanguages` text NOT NULL,
  `trackInventory` tinyint(4) NOT NULL DEFAULT '1',
  `outOfStockThreshold` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `global_settings`
--

INSERT INTO `global_settings` (`createdAt`, `updatedAt`, `availableLanguages`, `trackInventory`, `outOfStockThreshold`, `id`) VALUES
('2021-04-28 13:14:25.389646', '2021-04-28 13:14:25.389646', 'en', 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `history_entry`
--

CREATE TABLE `history_entry` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `type` varchar(255) NOT NULL,
  `isPublic` tinyint(4) NOT NULL,
  `data` text NOT NULL,
  `id` int(11) NOT NULL,
  `discriminator` varchar(255) NOT NULL,
  `administratorId` int(11) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `history_entry`
--

INSERT INTO `history_entry` (`createdAt`, `updatedAt`, `type`, `isPublic`, `data`, `id`, `discriminator`, `administratorId`, `customerId`, `orderId`) VALUES
('2021-05-11 15:16:52.024000', '2021-05-11 12:16:52.027077', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 1, 'CustomerHistoryEntry', NULL, 1, NULL),
('2021-05-18 13:30:00.711000', '2021-05-18 10:30:00.718464', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 2, 'CustomerHistoryEntry', NULL, 1, NULL),
('2021-05-18 14:06:53.849000', '2021-05-18 11:06:53.856273', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 3, 'CustomerHistoryEntry', NULL, 1, NULL),
('2021-05-18 14:07:31.036000', '2021-05-18 11:07:31.038145', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 4, 'CustomerHistoryEntry', NULL, 1, NULL),
('2021-05-18 14:28:53.058000', '2021-05-18 11:28:53.064264', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 5, 'CustomerHistoryEntry', NULL, 1, NULL),
('2021-05-18 14:40:59.751000', '2021-05-18 11:40:59.757740', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 6, 'CustomerHistoryEntry', NULL, 1, NULL),
('2021-05-18 14:41:12.154000', '2021-05-18 11:41:12.157645', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 7, 'CustomerHistoryEntry', NULL, 1, NULL),
('2021-05-18 14:41:32.480000', '2021-05-18 11:41:32.481992', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 8, 'CustomerHistoryEntry', NULL, 1, NULL),
('2021-05-18 14:41:56.706000', '2021-05-18 11:41:56.708149', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 9, 'CustomerHistoryEntry', NULL, 1, NULL),
('2021-05-18 14:45:46.047000', '2021-05-18 11:45:46.053699', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 10, 'CustomerHistoryEntry', NULL, 1, NULL),
('2021-05-18 14:52:42.542000', '2021-05-18 11:52:42.552137', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 11, 'CustomerHistoryEntry', NULL, 1, NULL),
('2021-05-18 15:06:36.825000', '2021-05-18 12:06:36.833071', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 12, 'CustomerHistoryEntry', NULL, 1, NULL),
('2021-05-18 15:09:38.686000', '2021-05-18 12:09:38.692745', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 13, 'CustomerHistoryEntry', NULL, 1, NULL),
('2021-05-18 15:13:23.630000', '2021-05-18 12:13:23.639857', 'CUSTOMER_VERIFIED', 0, '{\"strategy\":\"native\"}', 14, 'CustomerHistoryEntry', NULL, 1, NULL),
('2021-05-19 15:03:42.452000', '2021-05-19 12:03:42.453668', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 15, 'CustomerHistoryEntry', NULL, 2, NULL),
('2021-05-19 15:04:03.134000', '2021-05-19 12:04:03.136886', 'CUSTOMER_VERIFIED', 0, '{\"strategy\":\"native\"}', 16, 'CustomerHistoryEntry', NULL, 2, NULL),
('2021-05-19 15:12:32.790000', '2021-05-19 12:12:32.792388', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 17, 'CustomerHistoryEntry', NULL, 3, NULL),
('2021-05-19 15:12:49.275000', '2021-05-19 12:12:49.277407', 'CUSTOMER_VERIFIED', 0, '{\"strategy\":\"native\"}', 18, 'CustomerHistoryEntry', NULL, 3, NULL),
('2021-05-19 15:20:36.362000', '2021-05-19 12:20:36.366616', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 19, 'CustomerHistoryEntry', NULL, 4, NULL),
('2021-05-19 15:20:51.030000', '2021-05-19 12:20:51.031816', 'CUSTOMER_VERIFIED', 0, '{\"strategy\":\"native\"}', 20, 'CustomerHistoryEntry', NULL, 4, NULL),
('2021-05-19 15:26:29.559000', '2021-05-19 12:26:29.562300', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 21, 'CustomerHistoryEntry', NULL, 5, NULL),
('2021-05-19 15:27:04.206000', '2021-05-19 12:27:04.207706', 'CUSTOMER_VERIFIED', 0, '{\"strategy\":\"native\"}', 22, 'CustomerHistoryEntry', NULL, 5, NULL),
('2021-05-19 15:28:43.473000', '2021-05-19 12:28:43.477797', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 23, 'CustomerHistoryEntry', NULL, 6, NULL),
('2021-05-19 15:30:33.115000', '2021-05-19 12:30:33.117689', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 24, 'CustomerHistoryEntry', NULL, 7, NULL),
('2021-05-19 15:30:51.137000', '2021-05-19 12:30:51.140570', 'CUSTOMER_VERIFIED', 0, '{\"strategy\":\"native\"}', 25, 'CustomerHistoryEntry', NULL, 7, NULL),
('2021-05-19 15:50:07.270000', '2021-05-19 12:50:07.272081', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 26, 'CustomerHistoryEntry', NULL, 8, NULL),
('2021-05-19 15:50:14.835000', '2021-05-19 12:50:14.837984', 'CUSTOMER_VERIFIED', 0, '{\"strategy\":\"native\"}', 27, 'CustomerHistoryEntry', NULL, 8, NULL),
('2021-05-19 16:04:29.172000', '2021-05-19 13:04:29.174446', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 28, 'CustomerHistoryEntry', NULL, 9, NULL),
('2021-05-19 16:04:46.209000', '2021-05-19 13:04:46.211213', 'CUSTOMER_VERIFIED', 0, '{\"strategy\":\"native\"}', 29, 'CustomerHistoryEntry', NULL, 9, NULL),
('2021-05-19 16:37:41.929000', '2021-05-19 13:37:41.962231', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 30, 'CustomerHistoryEntry', NULL, 10, NULL),
('2021-05-19 16:37:57.755000', '2021-05-19 13:37:57.757678', 'CUSTOMER_VERIFIED', 0, '{\"strategy\":\"native\"}', 31, 'CustomerHistoryEntry', NULL, 10, NULL),
('2021-05-19 17:18:07.201000', '2021-05-19 14:18:07.205315', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 32, 'CustomerHistoryEntry', NULL, 11, NULL),
('2021-05-19 17:19:08.518000', '2021-05-19 14:19:08.520045', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 33, 'CustomerHistoryEntry', NULL, 12, NULL),
('2021-05-19 17:39:00.532000', '2021-05-19 14:39:00.533782', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 34, 'CustomerHistoryEntry', NULL, 13, NULL),
('2021-05-19 17:39:23.710000', '2021-05-19 14:39:23.712912', 'CUSTOMER_VERIFIED', 0, '{\"strategy\":\"native\"}', 35, 'CustomerHistoryEntry', NULL, 13, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_record`
--

CREATE TABLE `job_record` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `queueName` varchar(255) NOT NULL,
  `data` text,
  `state` varchar(255) NOT NULL,
  `progress` int(11) NOT NULL,
  `result` text,
  `error` varchar(255) DEFAULT NULL,
  `startedAt` datetime(6) DEFAULT NULL,
  `settledAt` datetime(6) DEFAULT NULL,
  `isSettled` tinyint(4) NOT NULL,
  `retries` int(11) NOT NULL,
  `attempts` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `job_record`
--

INSERT INTO `job_record` (`createdAt`, `updatedAt`, `queueName`, `data`, `state`, `progress`, `result`, `error`, `startedAt`, `settledAt`, `isSettled`, `retries`, `attempts`, `id`) VALUES
('2021-04-28 13:14:35.610107', '2021-04-28 13:14:35.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[2]}', 'COMPLETED', 100, NULL, NULL, '2021-04-28 16:14:35.669000', '2021-04-28 16:14:35.743000', 1, 0, 1, 1),
('2021-04-28 13:14:35.704460', '2021-04-28 13:14:36.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[3]}', 'COMPLETED', 100, NULL, NULL, '2021-04-28 16:14:35.952000', '2021-04-28 16:14:36.105000', 1, 0, 1, 2),
('2021-04-28 13:14:35.779988', '2021-04-28 13:14:36.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[4]}', 'COMPLETED', 100, NULL, NULL, '2021-04-28 16:14:36.196000', '2021-04-28 16:14:36.259000', 1, 0, 1, 3),
('2021-04-28 13:14:35.811919', '2021-04-28 13:14:36.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":34,\"timeTaken\":408}', NULL, '2021-04-28 16:14:35.892000', '2021-04-28 16:14:36.340000', 1, 0, 1, 4),
('2021-04-28 13:14:35.829158', '2021-04-28 13:14:36.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[5]}', 'COMPLETED', 100, NULL, NULL, '2021-04-28 16:14:36.431000', '2021-04-28 16:14:36.477000', 1, 0, 1, 5),
('2021-04-28 13:14:35.861144', '2021-04-28 13:14:36.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[6]}', 'COMPLETED', 100, NULL, NULL, '2021-04-28 16:14:36.656000', '2021-04-28 16:14:36.754000', 1, 0, 1, 6),
('2021-04-28 13:14:35.996828', '2021-04-28 13:14:36.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[7]}', 'COMPLETED', 100, NULL, NULL, '2021-04-28 16:14:36.885000', '2021-04-28 16:14:36.934000', 1, 0, 1, 7),
('2021-04-28 13:14:36.148437', '2021-04-28 13:14:37.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[8]}', 'COMPLETED', 100, NULL, NULL, '2021-04-28 16:14:37.107000', '2021-04-28 16:14:37.223000', 1, 0, 1, 8),
('2021-04-28 13:14:36.171125', '2021-04-28 13:14:36.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":25,\"timeTaken\":381}', NULL, '2021-04-28 16:14:36.365000', '2021-04-28 16:14:36.766000', 1, 0, 1, 9),
('2021-04-28 13:14:36.272732', '2021-04-28 13:14:37.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[9]}', 'COMPLETED', 100, NULL, NULL, '2021-04-28 16:14:37.368000', '2021-04-28 16:14:37.420000', 1, 0, 1, 10),
('2021-04-28 13:14:36.323060', '2021-04-28 13:14:37.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[26,27,28,29,30,31,32,33,34]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":9,\"timeTaken\":193}', NULL, '2021-04-28 16:14:37.026000', '2021-04-28 16:14:37.239000', 1, 0, 1, 11),
('2021-04-28 13:14:36.341572', '2021-04-28 13:14:37.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[10]}', 'COMPLETED', 100, NULL, NULL, '2021-04-28 16:14:37.610000', '2021-04-28 16:14:37.838000', 1, 0, 1, 12),
('2021-04-28 13:14:36.425703', '2021-04-28 13:15:50.000000', 'update-search-index', '{\"type\":\"reindex\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false}}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":88,\"timeTaken\":1493}', NULL, '2021-04-28 16:15:49.017000', '2021-04-28 16:15:50.627000', 1, 0, 1, 13),
('2021-04-28 13:14:36.540196', '2021-04-28 13:15:51.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":22,\"timeTaken\":317}', NULL, '2021-04-28 16:15:50.837000', '2021-04-28 16:15:51.254000', 1, 0, 1, 14),
('2021-04-28 13:14:36.818451', '2021-04-28 13:15:51.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[75,77,78,79,80,81,82,83,84,85,86,87,88]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":13,\"timeTaken\":150}', NULL, '2021-04-28 16:15:51.390000', '2021-04-28 16:15:51.569000', 1, 0, 1, 15),
('2021-04-28 13:14:37.006517', '2021-04-28 13:15:51.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[67,68,69,70,71,72,73,74,76]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":9,\"timeTaken\":107}', NULL, '2021-04-28 16:15:51.656000', '2021-04-28 16:15:51.775000', 1, 0, 1, 16),
('2021-04-28 13:14:37.289603', '2021-04-28 13:15:52.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":32,\"timeTaken\":352}', NULL, '2021-04-28 16:15:51.902000', '2021-04-28 16:15:52.271000', 1, 0, 1, 17),
('2021-04-28 13:14:37.483765', '2021-04-28 13:15:52.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[35,36,37,38,39,40,41,42]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":8,\"timeTaken\":109}', NULL, '2021-04-28 16:15:52.353000', '2021-04-28 16:15:52.479000', 1, 0, 1, 18),
('2021-04-28 13:14:37.903270', '2021-04-28 13:15:52.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":24,\"timeTaken\":149}', NULL, '2021-04-28 16:15:52.612000', '2021-04-28 16:15:52.778000', 1, 0, 1, 19),
('2021-05-11 12:16:52.424021', '2021-05-11 12:16:52.000000', 'send-email', '{\"type\":\"email-verification\",\"recipient\":\"mativiscusso@gmail.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:8080/verify\",\"passwordResetUrl\":\"http://localhost:8080/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:8080/verify-email-address-change\",\"verificationToken\":\"MjAyMS0wNS0xMVQxNToxNjo1Mi4zOTNa_69US599DNFAU925N\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2021-05-11 15:16:52.554000', '2021-05-11 15:16:52.656000', 1, 0, 1, 20),
('2021-05-17 14:01:05.662897', '2021-05-17 14:01:05.000000', 'update-search-index', '{\"type\":\"delete-asset\",\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":null,\"pipesCount\":0,\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"decoder\":null,\"encoding\":null},\"readable\":false,\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_sockname\":null,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17393,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54409,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":16597,\"bytesWritten\":16597},\"connection\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17393,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54409,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":16597,\"bytesWritten\":16597},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:4000\",\"connection\":\"keep-alive\",\"content-length\":\"273\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\":\"*/*\",\"vendure-token\":\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\":\"application/json\",\"origin\":\"http://localhost:4000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:4000/admin/catalog/assets\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"es-ES,es;q=0.9\",\"cookie\":\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"},\"rawHeaders\":[\"Host\",\"localhost:4000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"273\",\"sec-ch-ua\",\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\",\"*/*\",\"vendure-token\",\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\",\"application/json\",\"Origin\",\"http://localhost:4000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:4000/admin/catalog/assets\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"es-ES,es;q=0.9\",\"Cookie\",\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17393,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54409,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":16597,\"bytesWritten\":16597},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/admin-api\",\"path\":\"/admin-api\",\"href\":\"/admin-api\",\"_raw\":\"/admin-api\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":null,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":false,\"_headerSent\":false,\"_header\":null,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"headersSent\":false},\"sessionOptions\":{\"secret\":\"9dfytlh32\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\"},\"body\":{\"operationName\":\"DeleteAssets\",\"query\":\"mutation DeleteAssets($input: DeleteAssetsInput!) {\\n  deleteAssets(input: $input) {\\n    result\\n    message\\n    __typename\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"es-ES\",\"locale\":\"es-ES\",\"language\":\"es-ES\",\"languages\":[\"es-ES\",\"es\",\"en\"],\"i18n\":{\"language\":\"es-ES\",\"isInitialized\":true,\"languages\":[\"es-ES\",\"es\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1621270978,\"id\":12,\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\",\"expires\":\"2022-05-17T22:57:58.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"g766ixvk1khux9lv5\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"asset\":{\"createdAt\":\"2021-04-28T13:14:34.982Z\",\"updatedAt\":\"2021-04-28T13:14:34.982Z\",\"name\":\"nathan-fertig-249917-unsplash.jpg\",\"type\":\"IMAGE\",\"mimeType\":\"image/jpeg\",\"width\":1600,\"height\":1067,\"fileSize\":113855,\"source\":\"source\\\\68\\\\nathan-fertig-249917-unsplash.jpg\",\"preview\":\"preview\\\\69\\\\nathan-fertig-249917-unsplash__preview.jpg\",\"focalPoint\":null,\"id\":46,\"channels\":[{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1}]}}', 'COMPLETED', 100, 'true', NULL, '2021-05-17 17:01:05.814000', '2021-05-17 17:01:05.876000', 1, 0, 1, 21),
('2021-05-17 14:01:05.674320', '2021-05-17 14:01:06.000000', 'update-search-index', '{\"type\":\"delete-asset\",\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":null,\"pipesCount\":0,\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"decoder\":null,\"encoding\":null},\"readable\":false,\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17393,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54409,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":16597,\"bytesWritten\":16597},\"connection\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17393,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54409,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":16597,\"bytesWritten\":16597},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:4000\",\"connection\":\"keep-alive\",\"content-length\":\"273\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\":\"*/*\",\"vendure-token\":\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\":\"application/json\",\"origin\":\"http://localhost:4000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:4000/admin/catalog/assets\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"es-ES,es;q=0.9\",\"cookie\":\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"},\"rawHeaders\":[\"Host\",\"localhost:4000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"273\",\"sec-ch-ua\",\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\",\"*/*\",\"vendure-token\",\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\",\"application/json\",\"Origin\",\"http://localhost:4000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:4000/admin/catalog/assets\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"es-ES,es;q=0.9\",\"Cookie\",\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17393,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54409,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":16597,\"bytesWritten\":16597},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/\",\"path\":\"/\",\"href\":\"/\",\"_raw\":\"/\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":null,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":false,\"_headerSent\":false,\"_header\":null,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"headersSent\":false},\"sessionOptions\":{\"secret\":\"9dfytlh32\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\"},\"body\":{\"operationName\":\"DeleteAssets\",\"query\":\"mutation DeleteAssets($input: DeleteAssetsInput!) {\\n  deleteAssets(input: $input) {\\n    result\\n    message\\n    __typename\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"es-ES\",\"locale\":\"es-ES\",\"language\":\"es-ES\",\"languages\":[\"es-ES\",\"es\",\"en\"],\"i18n\":{\"language\":\"es-ES\",\"isInitialized\":true,\"languages\":[\"es-ES\",\"es\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1621270978,\"id\":12,\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\",\"expires\":\"2022-05-17T22:57:58.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"g766ixvk1khux9lv5\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"asset\":{\"createdAt\":\"2021-04-28T13:14:35.025Z\",\"updatedAt\":\"2021-04-28T13:14:35.025Z\",\"name\":\"paul-weaver-1120584-unsplash.jpg\",\"type\":\"IMAGE\",\"mimeType\":\"image/jpeg\",\"width\":1600,\"height\":1067,\"fileSize\":65612,\"source\":\"source\\\\14\\\\paul-weaver-1120584-unsplash.jpg\",\"preview\":\"preview\\\\3e\\\\paul-weaver-1120584-unsplash__preview.jpg\",\"focalPoint\":null,\"id\":47,\"channels\":[{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1}]}}', 'COMPLETED', 100, 'true', NULL, '2021-05-17 17:01:06.081000', '2021-05-17 17:01:06.109000', 1, 0, 1, 22),
('2021-05-17 14:01:05.687475', '2021-05-17 14:01:06.000000', 'update-search-index', '{\"type\":\"delete-asset\",\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":null,\"pipesCount\":0,\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"decoder\":null,\"encoding\":null},\"readable\":false,\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17393,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54409,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":16597,\"bytesWritten\":16597},\"connection\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17393,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54409,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":16597,\"bytesWritten\":16597},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:4000\",\"connection\":\"keep-alive\",\"content-length\":\"273\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\":\"*/*\",\"vendure-token\":\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\":\"application/json\",\"origin\":\"http://localhost:4000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:4000/admin/catalog/assets\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"es-ES,es;q=0.9\",\"cookie\":\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"},\"rawHeaders\":[\"Host\",\"localhost:4000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"273\",\"sec-ch-ua\",\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\",\"*/*\",\"vendure-token\",\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\",\"application/json\",\"Origin\",\"http://localhost:4000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:4000/admin/catalog/assets\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"es-ES,es;q=0.9\",\"Cookie\",\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17393,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54409,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":16597,\"bytesWritten\":16597},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/\",\"path\":\"/\",\"href\":\"/\",\"_raw\":\"/\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":null,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":false,\"_headerSent\":false,\"_header\":null,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"headersSent\":false},\"sessionOptions\":{\"secret\":\"9dfytlh32\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\"},\"body\":{\"operationName\":\"DeleteAssets\",\"query\":\"mutation DeleteAssets($input: DeleteAssetsInput!) {\\n  deleteAssets(input: $input) {\\n    result\\n    message\\n    __typename\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"es-ES\",\"locale\":\"es-ES\",\"language\":\"es-ES\",\"languages\":[\"es-ES\",\"es\",\"en\"],\"i18n\":{\"language\":\"es-ES\",\"isInitialized\":true,\"languages\":[\"es-ES\",\"es\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1621270978,\"id\":12,\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\",\"expires\":\"2022-05-17T22:57:58.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"g766ixvk1khux9lv5\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"asset\":{\"createdAt\":\"2021-04-28T13:14:35.076Z\",\"updatedAt\":\"2021-04-28T13:14:35.076Z\",\"name\":\"pierre-chatel-innocenti-483198-unsplash.jpg\",\"type\":\"IMAGE\",\"mimeType\":\"image/jpeg\",\"width\":1600,\"height\":1067,\"fileSize\":32036,\"source\":\"source\\\\39\\\\pierre-chatel-innocenti-483198-unsplash.jpg\",\"preview\":\"preview\\\\5f\\\\pierre-chatel-innocenti-483198-unsplash__preview.jpg\",\"focalPoint\":null,\"id\":48,\"channels\":[{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1}]}}', 'COMPLETED', 100, 'true', NULL, '2021-05-17 17:01:06.320000', '2021-05-17 17:01:06.338000', 1, 0, 1, 23);
INSERT INTO `job_record` (`createdAt`, `updatedAt`, `queueName`, `data`, `state`, `progress`, `result`, `error`, `startedAt`, `settledAt`, `isSettled`, `retries`, `attempts`, `id`) VALUES
('2021-05-17 14:01:05.698448', '2021-05-17 14:01:06.000000', 'update-search-index', '{\"type\":\"delete-asset\",\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":null,\"pipesCount\":0,\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"decoder\":null,\"encoding\":null},\"readable\":false,\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17393,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54409,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":16597,\"bytesWritten\":16597},\"connection\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17393,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54409,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":16597,\"bytesWritten\":16597},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:4000\",\"connection\":\"keep-alive\",\"content-length\":\"273\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\":\"*/*\",\"vendure-token\":\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\":\"application/json\",\"origin\":\"http://localhost:4000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:4000/admin/catalog/assets\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"es-ES,es;q=0.9\",\"cookie\":\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"},\"rawHeaders\":[\"Host\",\"localhost:4000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"273\",\"sec-ch-ua\",\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\",\"*/*\",\"vendure-token\",\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\",\"application/json\",\"Origin\",\"http://localhost:4000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:4000/admin/catalog/assets\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"es-ES,es;q=0.9\",\"Cookie\",\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17393,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54409,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":16597,\"bytesWritten\":16597},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/\",\"path\":\"/\",\"href\":\"/\",\"_raw\":\"/\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":null,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":false,\"_headerSent\":false,\"_header\":null,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"headersSent\":false},\"sessionOptions\":{\"secret\":\"9dfytlh32\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\"},\"body\":{\"operationName\":\"DeleteAssets\",\"query\":\"mutation DeleteAssets($input: DeleteAssetsInput!) {\\n  deleteAssets(input: $input) {\\n    result\\n    message\\n    __typename\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"es-ES\",\"locale\":\"es-ES\",\"language\":\"es-ES\",\"languages\":[\"es-ES\",\"es\",\"en\"],\"i18n\":{\"language\":\"es-ES\",\"isInitialized\":true,\"languages\":[\"es-ES\",\"es\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1621270978,\"id\":12,\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\",\"expires\":\"2022-05-17T22:57:58.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"g766ixvk1khux9lv5\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"asset\":{\"createdAt\":\"2021-04-28T13:14:35.150Z\",\"updatedAt\":\"2021-04-28T13:14:35.150Z\",\"name\":\"abel-y-costa-716024-unsplash.jpg\",\"type\":\"IMAGE\",\"mimeType\":\"image/jpeg\",\"width\":1600,\"height\":1067,\"fileSize\":103392,\"source\":\"source\\\\46\\\\abel-y-costa-716024-unsplash.jpg\",\"preview\":\"preview\\\\40\\\\abel-y-costa-716024-unsplash__preview.jpg\",\"focalPoint\":null,\"id\":49,\"channels\":[{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1}]}}', 'COMPLETED', 100, 'true', NULL, '2021-05-17 17:01:06.550000', '2021-05-17 17:01:06.571000', 1, 0, 1, 24),
('2021-05-17 14:01:05.713631', '2021-05-17 14:01:06.000000', 'update-search-index', '{\"type\":\"delete-asset\",\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":null,\"pipesCount\":0,\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"decoder\":null,\"encoding\":null},\"readable\":false,\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17393,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54409,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":16597,\"bytesWritten\":16597},\"connection\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17393,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54409,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":16597,\"bytesWritten\":16597},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:4000\",\"connection\":\"keep-alive\",\"content-length\":\"273\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\":\"*/*\",\"vendure-token\":\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\":\"application/json\",\"origin\":\"http://localhost:4000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:4000/admin/catalog/assets\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"es-ES,es;q=0.9\",\"cookie\":\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"},\"rawHeaders\":[\"Host\",\"localhost:4000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"273\",\"sec-ch-ua\",\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\",\"*/*\",\"vendure-token\",\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\",\"application/json\",\"Origin\",\"http://localhost:4000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:4000/admin/catalog/assets\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"es-ES,es;q=0.9\",\"Cookie\",\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17393,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54409,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":16597,\"bytesWritten\":16597},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/\",\"path\":\"/\",\"href\":\"/\",\"_raw\":\"/\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":null,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":false,\"_headerSent\":false,\"_header\":null,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"headersSent\":false},\"sessionOptions\":{\"secret\":\"9dfytlh32\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\"},\"body\":{\"operationName\":\"DeleteAssets\",\"query\":\"mutation DeleteAssets($input: DeleteAssetsInput!) {\\n  deleteAssets(input: $input) {\\n    result\\n    message\\n    __typename\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"es-ES\",\"locale\":\"es-ES\",\"language\":\"es-ES\",\"languages\":[\"es-ES\",\"es\",\"en\"],\"i18n\":{\"language\":\"es-ES\",\"isInitialized\":true,\"languages\":[\"es-ES\",\"es\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1621270978,\"id\":12,\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\",\"expires\":\"2022-05-17T22:57:58.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"g766ixvk1khux9lv5\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"asset\":{\"createdAt\":\"2021-04-28T13:14:35.222Z\",\"updatedAt\":\"2021-04-28T13:14:35.222Z\",\"name\":\"kari-shea-398668-unsplash.jpg\",\"type\":\"IMAGE\",\"mimeType\":\"image/jpeg\",\"width\":1048,\"height\":1500,\"fileSize\":181352,\"source\":\"source\\\\4f\\\\kari-shea-398668-unsplash.jpg\",\"preview\":\"preview\\\\3b\\\\kari-shea-398668-unsplash__preview.jpg\",\"focalPoint\":null,\"id\":50,\"channels\":[{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1}]}}', 'COMPLETED', 100, 'true', NULL, '2021-05-17 17:01:06.786000', '2021-05-17 17:01:06.806000', 1, 0, 1, 25),
('2021-05-17 14:01:05.729199', '2021-05-17 14:01:07.000000', 'update-search-index', '{\"type\":\"delete-asset\",\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":null,\"pipesCount\":0,\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"decoder\":null,\"encoding\":null},\"readable\":false,\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17393,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54409,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":16597,\"bytesWritten\":16597},\"connection\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17393,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54409,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":16597,\"bytesWritten\":16597},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:4000\",\"connection\":\"keep-alive\",\"content-length\":\"273\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\":\"*/*\",\"vendure-token\":\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\":\"application/json\",\"origin\":\"http://localhost:4000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:4000/admin/catalog/assets\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"es-ES,es;q=0.9\",\"cookie\":\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"},\"rawHeaders\":[\"Host\",\"localhost:4000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"273\",\"sec-ch-ua\",\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\",\"*/*\",\"vendure-token\",\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\",\"application/json\",\"Origin\",\"http://localhost:4000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:4000/admin/catalog/assets\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"es-ES,es;q=0.9\",\"Cookie\",\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17393,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54409,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":16597,\"bytesWritten\":16597},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/\",\"path\":\"/\",\"href\":\"/\",\"_raw\":\"/\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":null,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":false,\"_headerSent\":false,\"_header\":null,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"headersSent\":false},\"sessionOptions\":{\"secret\":\"9dfytlh32\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\"},\"body\":{\"operationName\":\"DeleteAssets\",\"query\":\"mutation DeleteAssets($input: DeleteAssetsInput!) {\\n  deleteAssets(input: $input) {\\n    result\\n    message\\n    __typename\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"es-ES\",\"locale\":\"es-ES\",\"language\":\"es-ES\",\"languages\":[\"es-ES\",\"es\",\"en\"],\"i18n\":{\"language\":\"es-ES\",\"isInitialized\":true,\"languages\":[\"es-ES\",\"es\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1621270978,\"id\":12,\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\",\"expires\":\"2022-05-17T22:57:58.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"g766ixvk1khux9lv5\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"asset\":{\"createdAt\":\"2021-04-28T13:14:35.258Z\",\"updatedAt\":\"2021-04-28T13:14:35.258Z\",\"name\":\"andres-jasso-220776-unsplash.jpg\",\"type\":\"IMAGE\",\"mimeType\":\"image/jpeg\",\"width\":1600,\"height\":1104,\"fileSize\":100927,\"source\":\"source\\\\f1\\\\andres-jasso-220776-unsplash.jpg\",\"preview\":\"preview\\\\09\\\\andres-jasso-220776-unsplash__preview.jpg\",\"focalPoint\":null,\"id\":51,\"channels\":[{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1}]}}', 'COMPLETED', 100, 'true', NULL, '2021-05-17 17:01:07.025000', '2021-05-17 17:01:07.046000', 1, 0, 1, 26),
('2021-05-17 14:01:05.741111', '2021-05-17 14:01:07.000000', 'update-search-index', '{\"type\":\"delete-asset\",\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":null,\"pipesCount\":0,\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"decoder\":null,\"encoding\":null},\"readable\":false,\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17393,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54409,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":16597,\"bytesWritten\":16597},\"connection\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17393,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54409,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":16597,\"bytesWritten\":16597},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:4000\",\"connection\":\"keep-alive\",\"content-length\":\"273\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\":\"*/*\",\"vendure-token\":\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\":\"application/json\",\"origin\":\"http://localhost:4000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:4000/admin/catalog/assets\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"es-ES,es;q=0.9\",\"cookie\":\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"},\"rawHeaders\":[\"Host\",\"localhost:4000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"273\",\"sec-ch-ua\",\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\",\"*/*\",\"vendure-token\",\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\",\"application/json\",\"Origin\",\"http://localhost:4000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:4000/admin/catalog/assets\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"es-ES,es;q=0.9\",\"Cookie\",\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17393,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54409,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":16597,\"bytesWritten\":16597},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/\",\"path\":\"/\",\"href\":\"/\",\"_raw\":\"/\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":null,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":false,\"_headerSent\":false,\"_header\":null,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"headersSent\":false},\"sessionOptions\":{\"secret\":\"9dfytlh32\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\"},\"body\":{\"operationName\":\"DeleteAssets\",\"query\":\"mutation DeleteAssets($input: DeleteAssetsInput!) {\\n  deleteAssets(input: $input) {\\n    result\\n    message\\n    __typename\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"es-ES\",\"locale\":\"es-ES\",\"language\":\"es-ES\",\"languages\":[\"es-ES\",\"es\",\"en\"],\"i18n\":{\"language\":\"es-ES\",\"isInitialized\":true,\"languages\":[\"es-ES\",\"es\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1621270978,\"id\":12,\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\",\"expires\":\"2022-05-17T22:57:58.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"g766ixvk1khux9lv5\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"asset\":{\"createdAt\":\"2021-04-28T13:14:35.307Z\",\"updatedAt\":\"2021-04-28T13:14:35.307Z\",\"name\":\"ruslan-bardash-351288-unsplash.jpg\",\"type\":\"IMAGE\",\"mimeType\":\"image/jpeg\",\"width\":1067,\"height\":1600,\"fileSize\":47113,\"source\":\"source\\\\95\\\\ruslan-bardash-351288-unsplash.jpg\",\"preview\":\"preview\\\\d0\\\\ruslan-bardash-351288-unsplash__preview.jpg\",\"focalPoint\":null,\"id\":52,\"channels\":[{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1}]}}', 'COMPLETED', 100, 'true', NULL, '2021-05-17 17:01:07.257000', '2021-05-17 17:01:07.289000', 1, 0, 1, 27);
INSERT INTO `job_record` (`createdAt`, `updatedAt`, `queueName`, `data`, `state`, `progress`, `result`, `error`, `startedAt`, `settledAt`, `isSettled`, `retries`, `attempts`, `id`) VALUES
('2021-05-17 14:01:05.755216', '2021-05-17 14:01:07.000000', 'update-search-index', '{\"type\":\"delete-asset\",\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":null,\"pipesCount\":0,\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"decoder\":null,\"encoding\":null},\"readable\":false,\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17393,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54409,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":16597,\"bytesWritten\":16597},\"connection\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17393,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54409,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":16597,\"bytesWritten\":16597},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:4000\",\"connection\":\"keep-alive\",\"content-length\":\"273\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\":\"*/*\",\"vendure-token\":\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\":\"application/json\",\"origin\":\"http://localhost:4000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:4000/admin/catalog/assets\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"es-ES,es;q=0.9\",\"cookie\":\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"},\"rawHeaders\":[\"Host\",\"localhost:4000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"273\",\"sec-ch-ua\",\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\",\"*/*\",\"vendure-token\",\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\",\"application/json\",\"Origin\",\"http://localhost:4000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:4000/admin/catalog/assets\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"es-ES,es;q=0.9\",\"Cookie\",\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17393,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54409,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":16597,\"bytesWritten\":16597},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/\",\"path\":\"/\",\"href\":\"/\",\"_raw\":\"/\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":null,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":false,\"_headerSent\":false,\"_header\":null,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"headersSent\":false},\"sessionOptions\":{\"secret\":\"9dfytlh32\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\"},\"body\":{\"operationName\":\"DeleteAssets\",\"query\":\"mutation DeleteAssets($input: DeleteAssetsInput!) {\\n  deleteAssets(input: $input) {\\n    result\\n    message\\n    __typename\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"es-ES\",\"locale\":\"es-ES\",\"language\":\"es-ES\",\"languages\":[\"es-ES\",\"es\",\"en\"],\"i18n\":{\"language\":\"es-ES\",\"isInitialized\":true,\"languages\":[\"es-ES\",\"es\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1621270978,\"id\":12,\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\",\"expires\":\"2022-05-17T22:57:58.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"g766ixvk1khux9lv5\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"asset\":{\"createdAt\":\"2021-04-28T13:14:35.367Z\",\"updatedAt\":\"2021-04-28T13:14:35.367Z\",\"name\":\"benjamin-voros-310026-unsplash.jpg\",\"type\":\"IMAGE\",\"mimeType\":\"image/jpeg\",\"width\":1200,\"height\":1600,\"fileSize\":218391,\"source\":\"source\\\\7a\\\\benjamin-voros-310026-unsplash.jpg\",\"preview\":\"preview\\\\72\\\\benjamin-voros-310026-unsplash__preview.jpg\",\"focalPoint\":null,\"id\":53,\"channels\":[{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1}]}}', 'COMPLETED', 100, 'true', NULL, '2021-05-17 17:01:07.493000', '2021-05-17 17:01:07.512000', 1, 0, 1, 28),
('2021-05-17 14:01:05.763602', '2021-05-17 14:01:07.000000', 'update-search-index', '{\"type\":\"delete-asset\",\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":null,\"pipesCount\":0,\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"decoder\":null,\"encoding\":null},\"readable\":false,\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17393,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54409,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":16597,\"bytesWritten\":16597},\"connection\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17393,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54409,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":16597,\"bytesWritten\":16597},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:4000\",\"connection\":\"keep-alive\",\"content-length\":\"273\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\":\"*/*\",\"vendure-token\":\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\":\"application/json\",\"origin\":\"http://localhost:4000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:4000/admin/catalog/assets\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"es-ES,es;q=0.9\",\"cookie\":\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"},\"rawHeaders\":[\"Host\",\"localhost:4000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"273\",\"sec-ch-ua\",\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\",\"*/*\",\"vendure-token\",\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\",\"application/json\",\"Origin\",\"http://localhost:4000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:4000/admin/catalog/assets\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"es-ES,es;q=0.9\",\"Cookie\",\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17393,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54409,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":16597,\"bytesWritten\":16597},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/\",\"path\":\"/\",\"href\":\"/\",\"_raw\":\"/\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":null,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":false,\"_headerSent\":false,\"_header\":null,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"headersSent\":false},\"sessionOptions\":{\"secret\":\"9dfytlh32\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\"},\"body\":{\"operationName\":\"DeleteAssets\",\"query\":\"mutation DeleteAssets($input: DeleteAssetsInput!) {\\n  deleteAssets(input: $input) {\\n    result\\n    message\\n    __typename\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"es-ES\",\"locale\":\"es-ES\",\"language\":\"es-ES\",\"languages\":[\"es-ES\",\"es\",\"en\"],\"i18n\":{\"language\":\"es-ES\",\"isInitialized\":true,\"languages\":[\"es-ES\",\"es\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1621270978,\"id\":12,\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\",\"expires\":\"2022-05-17T22:57:58.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"g766ixvk1khux9lv5\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"asset\":{\"createdAt\":\"2021-04-28T13:14:35.401Z\",\"updatedAt\":\"2021-04-28T13:14:35.401Z\",\"name\":\"jean-philippe-delberghe-1400011-unsplash.jpg\",\"type\":\"IMAGE\",\"mimeType\":\"image/jpeg\",\"width\":1067,\"height\":1600,\"fileSize\":64529,\"source\":\"source\\\\94\\\\jean-philippe-delberghe-1400011-unsplash.jpg\",\"preview\":\"preview\\\\b1\\\\jean-philippe-delberghe-1400011-unsplash__preview.jpg\",\"focalPoint\":null,\"id\":54,\"channels\":[{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1}]}}', 'COMPLETED', 100, 'true', NULL, '2021-05-17 17:01:07.727000', '2021-05-17 17:01:07.749000', 1, 0, 1, 29),
('2021-05-17 14:01:22.976799', '2021-05-17 14:01:23.000000', 'update-search-index', '{\"type\":\"delete-asset\",\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":null,\"pipesCount\":0,\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"decoder\":null,\"encoding\":null},\"readable\":false,\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_sockname\":null,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":7834,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54429,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":13188,\"bytesWritten\":13188},\"connection\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":7834,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54429,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":13188,\"bytesWritten\":13188},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:4000\",\"connection\":\"keep-alive\",\"content-length\":\"233\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\":\"*/*\",\"vendure-token\":\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\":\"application/json\",\"origin\":\"http://localhost:4000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:4000/admin/catalog/assets\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"es-ES,es;q=0.9\",\"cookie\":\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"},\"rawHeaders\":[\"Host\",\"localhost:4000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"233\",\"sec-ch-ua\",\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\",\"*/*\",\"vendure-token\",\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\",\"application/json\",\"Origin\",\"http://localhost:4000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:4000/admin/catalog/assets\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"es-ES,es;q=0.9\",\"Cookie\",\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":7834,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54429,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":13188,\"bytesWritten\":13188},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/admin-api\",\"path\":\"/admin-api\",\"href\":\"/admin-api\",\"_raw\":\"/admin-api\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":null,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":false,\"_headerSent\":false,\"_header\":null,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"headersSent\":false},\"sessionOptions\":{\"secret\":\"9dfytlh32\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\"},\"body\":{\"operationName\":\"DeleteAssets\",\"query\":\"mutation DeleteAssets($input: DeleteAssetsInput!) {\\n  deleteAssets(input: $input) {\\n    result\\n    message\\n    __typename\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"es-ES\",\"locale\":\"es-ES\",\"language\":\"es-ES\",\"languages\":[\"es-ES\",\"es\",\"en\"],\"i18n\":{\"language\":\"es-ES\",\"isInitialized\":true,\"languages\":[\"es-ES\",\"es\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1621270978,\"id\":12,\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\",\"expires\":\"2022-05-17T22:57:58.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"g766ixvk1khux9lv5\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"asset\":{\"createdAt\":\"2021-04-28T13:14:34.669Z\",\"updatedAt\":\"2021-04-28T13:14:34.669Z\",\"name\":\"zoltan-kovacs-642412-unsplash.jpg\",\"type\":\"IMAGE\",\"mimeType\":\"image/jpeg\",\"width\":1067,\"height\":1600,\"fileSize\":72752,\"source\":\"source\\\\e3\\\\zoltan-kovacs-642412-unsplash.jpg\",\"preview\":\"preview\\\\88\\\\zoltan-kovacs-642412-unsplash__preview.jpg\",\"focalPoint\":null,\"id\":41,\"channels\":[{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1}]}}', 'COMPLETED', 100, 'true', NULL, '2021-05-17 17:01:23.075000', '2021-05-17 17:01:23.127000', 1, 0, 1, 30),
('2021-05-17 14:01:44.828834', '2021-05-17 14:01:45.000000', 'update-search-index', '{\"type\":\"update-product\",\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":null,\"pipesCount\":0,\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"decoder\":null,\"encoding\":null},\"readable\":false,\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_sockname\":null,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17932,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54440,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":85389,\"bytesWritten\":85389},\"connection\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17932,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54440,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":85389,\"bytesWritten\":85389},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:4000\",\"connection\":\"keep-alive\",\"content-length\":\"2763\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\":\"*/*\",\"vendure-token\":\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\":\"application/json\",\"origin\":\"http://localhost:4000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:4000/admin/catalog/products/1\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"es-ES,es;q=0.9\",\"cookie\":\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"},\"rawHeaders\":[\"Host\",\"localhost:4000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"2763\",\"sec-ch-ua\",\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\",\"*/*\",\"vendure-token\",\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\",\"application/json\",\"Origin\",\"http://localhost:4000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:4000/admin/catalog/products/1\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"es-ES,es;q=0.9\",\"Cookie\",\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17932,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54440,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":85389,\"bytesWritten\":85389},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/admin-api\",\"path\":\"/admin-api\",\"href\":\"/admin-api\",\"_raw\":\"/admin-api\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":null,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":false,\"_headerSent\":false,\"_header\":null,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"headersSent\":false},\"sessionOptions\":{\"secret\":\"9dfytlh32\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\"},\"body\":{\"operationName\":\"UpdateProduct\",\"query\":\"mutation UpdateProduct($input: UpdateProductInput!) {\\n  updateProduct(input: $input) {\\n    ...ProductWithVariants\\n    __typename\\n  }\\n}\\n\\nfragment ProductWithVariants on Product {\\n  id\\n  createdAt\\n  updatedAt\\n  enabled\\n  languageCode\\n  name\\n  slug\\n  description\\n  featuredAsset {\\n    ...Asset\\n    __typename\\n  }\\n  assets {\\n    ...Asset\\n    __typename\\n  }\\n  translations {\\n    id\\n    languageCode\\n    name\\n    slug\\n    description\\n    __typename\\n  }\\n  optionGroups {\\n    ...ProductOptionGroup\\n    __typename\\n  }\\n  variants {\\n    ...ProductVariant\\n    __typename\\n  }\\n  facetValues {\\n    id\\n    code\\n    name\\n    facet {\\n      id\\n      name\\n      __typename\\n    }\\n    __typename\\n  }\\n  channels {\\n    id\\n    code\\n    __typename\\n  }\\n  __typename\\n}\\n\\nfragment ProductOptionGroup on ProductOptionGroup {\\n  id\\n  code\\n  languageCode\\n  name\\n  translations {\\n    id\\n    languageCode\\n    name\\n    __typename\\n  }\\n  __typename\\n}\\n\\nfragment ProductVariant on ProductVariant {\\n  id\\n  createdAt\\n  updatedAt\\n  enabled\\n  languageCode\\n  name\\n  price\\n  currencyCode\\n  priceWithTax\\n  stockOnHand\\n  stockAllocated\\n  trackInventory\\n  outOfStockThreshold\\n  useGlobalOutOfStockThreshold\\n  taxRateApplied {\\n    id\\n    name\\n    value\\n    __typename\\n  }\\n  taxCategory {\\n    id\\n    name\\n    __typename\\n  }\\n  sku\\n  options {\\n    ...ProductOption\\n    __typename\\n  }\\n  facetValues {\\n    id\\n    code\\n    name\\n    facet {\\n      id\\n      name\\n      __typename\\n    }\\n    __typename\\n  }\\n  featuredAsset {\\n    ...Asset\\n    __typename\\n  }\\n  assets {\\n    ...Asset\\n    __typename\\n  }\\n  translations {\\n    id\\n    languageCode\\n    name\\n    __typename\\n  }\\n  channels {\\n    id\\n    code\\n    __typename\\n  }\\n  __typename\\n}\\n\\nfragment ProductOption on ProductOption {\\n  id\\n  code\\n  languageCode\\n  name\\n  groupId\\n  translations {\\n    id\\n    languageCode\\n    name\\n    __typename\\n  }\\n  __typename\\n}\\n\\nfragment Asset on Asset {\\n  id\\n  createdAt\\n  updatedAt\\n  name\\n  fileSize\\n  mimeType\\n  type\\n  preview\\n  source\\n  width\\n  height\\n  focalPoint {\\n    x\\n    y\\n    __typename\\n  }\\n  __typename\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"es-ES\",\"locale\":\"es-ES\",\"language\":\"es-ES\",\"languages\":[\"es-ES\",\"es\",\"en\"],\"i18n\":{\"language\":\"es-ES\",\"isInitialized\":true,\"languages\":[\"es-ES\",\"es\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1621270978,\"id\":12,\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\",\"expires\":\"2022-05-17T22:57:58.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"g766ixvk1khux9lv5\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"productId\":1}', 'COMPLETED', 100, 'true', NULL, '2021-05-17 17:01:44.902000', '2021-05-17 17:01:45.119000', 1, 0, 1, 31);
INSERT INTO `job_record` (`createdAt`, `updatedAt`, `queueName`, `data`, `state`, `progress`, `result`, `error`, `startedAt`, `settledAt`, `isSettled`, `retries`, `attempts`, `id`) VALUES
('2021-05-17 14:01:44.933280', '2021-05-17 14:01:45.000000', 'apply-collection-filters', '{\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":null,\"pipesCount\":0,\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"decoder\":null,\"encoding\":null},\"readable\":false,\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17932,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54440,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":85389,\"bytesWritten\":85389},\"connection\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17932,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54440,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":85389,\"bytesWritten\":85389},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:4000\",\"connection\":\"keep-alive\",\"content-length\":\"2763\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\":\"*/*\",\"vendure-token\":\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\":\"application/json\",\"origin\":\"http://localhost:4000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:4000/admin/catalog/products/1\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"es-ES,es;q=0.9\",\"cookie\":\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"},\"rawHeaders\":[\"Host\",\"localhost:4000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"2763\",\"sec-ch-ua\",\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\",\"*/*\",\"vendure-token\",\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\",\"application/json\",\"Origin\",\"http://localhost:4000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:4000/admin/catalog/products/1\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"es-ES,es;q=0.9\",\"Cookie\",\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":17932,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54440,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":85389,\"bytesWritten\":85389},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/\",\"path\":\"/\",\"href\":\"/\",\"_raw\":\"/\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":null,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":false,\"_headerSent\":false,\"_header\":null,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"headersSent\":false},\"sessionOptions\":{\"secret\":\"9dfytlh32\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\"},\"body\":{\"operationName\":\"UpdateProduct\",\"query\":\"mutation UpdateProduct($input: UpdateProductInput!) {\\n  updateProduct(input: $input) {\\n    ...ProductWithVariants\\n    __typename\\n  }\\n}\\n\\nfragment ProductWithVariants on Product {\\n  id\\n  createdAt\\n  updatedAt\\n  enabled\\n  languageCode\\n  name\\n  slug\\n  description\\n  featuredAsset {\\n    ...Asset\\n    __typename\\n  }\\n  assets {\\n    ...Asset\\n    __typename\\n  }\\n  translations {\\n    id\\n    languageCode\\n    name\\n    slug\\n    description\\n    __typename\\n  }\\n  optionGroups {\\n    ...ProductOptionGroup\\n    __typename\\n  }\\n  variants {\\n    ...ProductVariant\\n    __typename\\n  }\\n  facetValues {\\n    id\\n    code\\n    name\\n    facet {\\n      id\\n      name\\n      __typename\\n    }\\n    __typename\\n  }\\n  channels {\\n    id\\n    code\\n    __typename\\n  }\\n  __typename\\n}\\n\\nfragment ProductOptionGroup on ProductOptionGroup {\\n  id\\n  code\\n  languageCode\\n  name\\n  translations {\\n    id\\n    languageCode\\n    name\\n    __typename\\n  }\\n  __typename\\n}\\n\\nfragment ProductVariant on ProductVariant {\\n  id\\n  createdAt\\n  updatedAt\\n  enabled\\n  languageCode\\n  name\\n  price\\n  currencyCode\\n  priceWithTax\\n  stockOnHand\\n  stockAllocated\\n  trackInventory\\n  outOfStockThreshold\\n  useGlobalOutOfStockThreshold\\n  taxRateApplied {\\n    id\\n    name\\n    value\\n    __typename\\n  }\\n  taxCategory {\\n    id\\n    name\\n    __typename\\n  }\\n  sku\\n  options {\\n    ...ProductOption\\n    __typename\\n  }\\n  facetValues {\\n    id\\n    code\\n    name\\n    facet {\\n      id\\n      name\\n      __typename\\n    }\\n    __typename\\n  }\\n  featuredAsset {\\n    ...Asset\\n    __typename\\n  }\\n  assets {\\n    ...Asset\\n    __typename\\n  }\\n  translations {\\n    id\\n    languageCode\\n    name\\n    __typename\\n  }\\n  channels {\\n    id\\n    code\\n    __typename\\n  }\\n  __typename\\n}\\n\\nfragment ProductOption on ProductOption {\\n  id\\n  code\\n  languageCode\\n  name\\n  groupId\\n  translations {\\n    id\\n    languageCode\\n    name\\n    __typename\\n  }\\n  __typename\\n}\\n\\nfragment Asset on Asset {\\n  id\\n  createdAt\\n  updatedAt\\n  name\\n  fileSize\\n  mimeType\\n  type\\n  preview\\n  source\\n  width\\n  height\\n  focalPoint {\\n    x\\n    y\\n    __typename\\n  }\\n  __typename\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"es-ES\",\"locale\":\"es-ES\",\"language\":\"es-ES\",\"languages\":[\"es-ES\",\"es\",\"en\"],\"i18n\":{\"language\":\"es-ES\",\"isInitialized\":true,\"languages\":[\"es-ES\",\"es\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1621270978,\"id\":12,\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\",\"expires\":\"2022-05-17T22:57:58.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"g766ixvk1khux9lv5\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[1,2,3,4,5,6,7,8,9,10]}', 'COMPLETED', 100, NULL, NULL, '2021-05-17 17:01:45.064000', '2021-05-17 17:01:45.554000', 1, 0, 1, 32),
('2021-05-17 14:01:44.968967', '2021-05-17 14:01:45.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":null,\"pipesCount\":0,\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"decoder\":null,\"encoding\":null},\"readable\":false,\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_sockname\":null,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":2566,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54451,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":0,\"bytesWritten\":0},\"connection\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":2566,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54451,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":0,\"bytesWritten\":0},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:4000\",\"connection\":\"keep-alive\",\"content-length\":\"1769\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\":\"*/*\",\"vendure-token\":\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\":\"application/json\",\"origin\":\"http://localhost:4000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:4000/admin/catalog/products/1\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"es-ES,es;q=0.9\",\"cookie\":\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"},\"rawHeaders\":[\"Host\",\"localhost:4000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"1769\",\"sec-ch-ua\",\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\",\"*/*\",\"vendure-token\",\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\",\"application/json\",\"Origin\",\"http://localhost:4000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:4000/admin/catalog/products/1\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"es-ES,es;q=0.9\",\"Cookie\",\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":120000,\"_paused\":false,\"bytesRead\":2566,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54451,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":0,\"bytesWritten\":0},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/admin-api\",\"path\":\"/admin-api\",\"href\":\"/admin-api\",\"_raw\":\"/admin-api\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":null,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":false,\"_headerSent\":false,\"_header\":null,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"headersSent\":false},\"sessionOptions\":{\"secret\":\"9dfytlh32\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\"},\"body\":{\"operationName\":\"UpdateProductVariants\",\"query\":\"mutation UpdateProductVariants($input: [UpdateProductVariantInput!]!) {\\n  updateProductVariants(input: $input) {\\n    ...ProductVariant\\n    __typename\\n  }\\n}\\n\\nfragment ProductVariant on ProductVariant {\\n  id\\n  createdAt\\n  updatedAt\\n  enabled\\n  languageCode\\n  name\\n  price\\n  currencyCode\\n  priceWithTax\\n  stockOnHand\\n  stockAllocated\\n  trackInventory\\n  outOfStockThreshold\\n  useGlobalOutOfStockThreshold\\n  taxRateApplied {\\n    id\\n    name\\n    value\\n    __typename\\n  }\\n  taxCategory {\\n    id\\n    name\\n    __typename\\n  }\\n  sku\\n  options {\\n    ...ProductOption\\n    __typename\\n  }\\n  facetValues {\\n    id\\n    code\\n    name\\n    facet {\\n      id\\n      name\\n      __typename\\n    }\\n    __typename\\n  }\\n  featuredAsset {\\n    ...Asset\\n    __typename\\n  }\\n  assets {\\n    ...Asset\\n    __typename\\n  }\\n  translations {\\n    id\\n    languageCode\\n    name\\n    __typename\\n  }\\n  channels {\\n    id\\n    code\\n    __typename\\n  }\\n  __typename\\n}\\n\\nfragment ProductOption on ProductOption {\\n  id\\n  code\\n  languageCode\\n  name\\n  groupId\\n  translations {\\n    id\\n    languageCode\\n    name\\n    __typename\\n  }\\n  __typename\\n}\\n\\nfragment Asset on Asset {\\n  id\\n  createdAt\\n  updatedAt\\n  name\\n  fileSize\\n  mimeType\\n  type\\n  preview\\n  source\\n  width\\n  height\\n  focalPoint {\\n    x\\n    y\\n    __typename\\n  }\\n  __typename\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"es-ES\",\"locale\":\"es-ES\",\"language\":\"es-ES\",\"languages\":[\"es-ES\",\"es\",\"en\"],\"i18n\":{\"language\":\"es-ES\",\"isInitialized\":true,\"languages\":[\"es-ES\",\"es\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1621270978,\"id\":12,\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\",\"expires\":\"2022-05-17T22:57:58.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"g766ixvk1khux9lv5\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[1,2,3,4]}', 'COMPLETED', 100, 'true', NULL, '2021-05-17 17:01:45.352000', '2021-05-17 17:01:45.516000', 1, 0, 1, 33),
('2021-05-17 14:01:45.067560', '2021-05-17 14:01:45.000000', 'apply-collection-filters', '{\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":null,\"pipesCount\":0,\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"decoder\":null,\"encoding\":null},\"readable\":false,\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":5000,\"_paused\":false,\"_httpMessage\":null,\"bytesRead\":2566,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54451,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":5254,\"bytesWritten\":5254},\"connection\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":5000,\"_paused\":false,\"_httpMessage\":null,\"bytesRead\":2566,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54451,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":5254,\"bytesWritten\":5254},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:4000\",\"connection\":\"keep-alive\",\"content-length\":\"1769\",\"sec-ch-ua\":\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\":\"*/*\",\"vendure-token\":\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\":\"application/json\",\"origin\":\"http://localhost:4000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:4000/admin/catalog/products/1\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"es-ES,es;q=0.9\",\"cookie\":\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"},\"rawHeaders\":[\"Host\",\"localhost:4000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"1769\",\"sec-ch-ua\",\"\\\" Not A;Brand\\\";v=\\\"99\\\", \\\"Chromium\\\";v=\\\"90\\\", \\\"Google Chrome\\\";v=\\\"90\\\"\",\"accept\",\"*/*\",\"vendure-token\",\"g766ixvk1khux9lv5\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\",\"content-type\",\"application/json\",\"Origin\",\"http://localhost:4000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:4000/admin/catalog/products/1\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"es-ES,es;q=0.9\",\"Cookie\",\"session=eyJ0b2tlbiI6IjczMzhkMjUwZDg0ZDhkMGIxZjdmZjBmN2NmZTU4Mzc3ZWIzNmU4NzRlMGE3YTZmOGUzNGQ3ODA5NDUyYWJjM2EifQ==; session.sig=Q0GF-Zx_bIyrvGphQKQuFQ2TBxA\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"readable\":true,\"_eventsCount\":8,\"writable\":true,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"timeout\":5000,\"_paused\":false,\"_httpMessage\":null,\"bytesRead\":2566,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54451,\"localAddress\":\"::1\",\"localPort\":4000,\"_bytesDispatched\":5254,\"bytesWritten\":5254},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/\",\"path\":\"/\",\"href\":\"/\",\"_raw\":\"/\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":4907,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":true,\"_headerSent\":true,\"socket\":null,\"connection\":null,\"_header\":\"HTTP/1.1 200 OK\\r\\nX-Powered-By: Express\\r\\nAccess-Control-Allow-Origin: http://localhost:4000\\r\\nVary: Origin\\r\\nAccess-Control-Allow-Credentials: true\\r\\nContent-Language: es-ES\\r\\nContent-Type: application/json; charset=utf-8\\r\\nContent-Length: 4907\\r\\nETag: W/\\\"132b-oQ/RzJ6cnCboBSqZIOBz71jU+Eo\\\"\\r\\nDate: Mon, 17 May 2021 17:01:44 GMT\\r\\nConnection: keep-alive\\r\\n\\r\\n\",\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"statusMessage\":\"OK\",\"headersSent\":true},\"sessionOptions\":{\"secret\":\"9dfytlh32\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\"},\"body\":{\"operationName\":\"UpdateProductVariants\",\"query\":\"mutation UpdateProductVariants($input: [UpdateProductVariantInput!]!) {\\n  updateProductVariants(input: $input) {\\n    ...ProductVariant\\n    __typename\\n  }\\n}\\n\\nfragment ProductVariant on ProductVariant {\\n  id\\n  createdAt\\n  updatedAt\\n  enabled\\n  languageCode\\n  name\\n  price\\n  currencyCode\\n  priceWithTax\\n  stockOnHand\\n  stockAllocated\\n  trackInventory\\n  outOfStockThreshold\\n  useGlobalOutOfStockThreshold\\n  taxRateApplied {\\n    id\\n    name\\n    value\\n    __typename\\n  }\\n  taxCategory {\\n    id\\n    name\\n    __typename\\n  }\\n  sku\\n  options {\\n    ...ProductOption\\n    __typename\\n  }\\n  facetValues {\\n    id\\n    code\\n    name\\n    facet {\\n      id\\n      name\\n      __typename\\n    }\\n    __typename\\n  }\\n  featuredAsset {\\n    ...Asset\\n    __typename\\n  }\\n  assets {\\n    ...Asset\\n    __typename\\n  }\\n  translations {\\n    id\\n    languageCode\\n    name\\n    __typename\\n  }\\n  channels {\\n    id\\n    code\\n    __typename\\n  }\\n  __typename\\n}\\n\\nfragment ProductOption on ProductOption {\\n  id\\n  code\\n  languageCode\\n  name\\n  groupId\\n  translations {\\n    id\\n    languageCode\\n    name\\n    __typename\\n  }\\n  __typename\\n}\\n\\nfragment Asset on Asset {\\n  id\\n  createdAt\\n  updatedAt\\n  name\\n  fileSize\\n  mimeType\\n  type\\n  preview\\n  source\\n  width\\n  height\\n  focalPoint {\\n    x\\n    y\\n    __typename\\n  }\\n  __typename\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"es-ES\",\"locale\":\"es-ES\",\"language\":\"es-ES\",\"languages\":[\"es-ES\",\"es\",\"en\"],\"i18n\":{\"language\":\"es-ES\",\"isInitialized\":true,\"languages\":[\"es-ES\",\"es\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"g766ixvk1khux9lv5\",\"createdAt\":\"2021-04-28T13:14:25.414Z\",\"updatedAt\":\"2021-04-28T13:14:30.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2021-04-28T13:14:25.933Z\",\"updatedAt\":\"2021-04-28T13:14:25.933Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1621270978,\"id\":12,\"token\":\"7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a\",\"expires\":\"2022-05-17T22:57:58.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"g766ixvk1khux9lv5\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[1,2,3,4,5,6,7,8,9,10]}', 'COMPLETED', 100, NULL, NULL, '2021-05-17 17:01:45.741000', '2021-05-17 17:01:45.989000', 1, 0, 1, 34),
('2021-05-18 10:30:00.787652', '2021-05-18 10:30:00.000000', 'send-email', '{\"type\":\"email-verification\",\"recipient\":\"mativiscusso@gmail.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:8080/verify\",\"passwordResetUrl\":\"http://localhost:8080/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:8080/verify-email-address-change\",\"verificationToken\":\"MjAyMS0wNS0xOFQxMzozMDowMC43NTJa_A2WPVBJE5DSA26MF\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2021-05-18 13:30:00.846000', '2021-05-18 13:30:00.951000', 1, 0, 1, 35),
('2021-05-18 11:06:53.887048', '2021-05-18 11:06:54.000000', 'send-email', '{\"type\":\"email-verification\",\"recipient\":\"mativiscusso@gmail.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:8080/verify\",\"passwordResetUrl\":\"http://localhost:8080/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:8080/verify-email-address-change\",\"verificationToken\":\"MjAyMS0wNS0xOFQxNDowNjo1My44NjFa_K36E2H7ZDFU5Y2RE\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2021-05-18 14:06:53.985000', '2021-05-18 14:06:54.111000', 1, 0, 1, 36),
('2021-05-18 11:07:31.066277', '2021-05-18 11:07:31.000000', 'send-email', '{\"type\":\"email-verification\",\"recipient\":\"mativiscusso@gmail.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:8080/verify\",\"passwordResetUrl\":\"http://localhost:8080/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:8080/verify-email-address-change\",\"verificationToken\":\"MjAyMS0wNS0xOFQxNDowNzozMS4wNDBa_QRG2DBR69YWD9ZXF\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2021-05-18 14:07:31.078000', '2021-05-18 14:07:31.124000', 1, 0, 1, 37),
('2021-05-18 11:28:53.098146', '2021-05-18 11:28:53.000000', 'send-email', '{\"type\":\"email-verification\",\"recipient\":\"mativiscusso@gmail.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:3000/verify\",\"passwordResetUrl\":\"http://localhost:3000/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:3000/verify-email-address-change\",\"verificationToken\":\"MjAyMS0wNS0xOFQxNDoyODo1My4wNjla_5EKZRYYV7QNH8N1E\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2021-05-18 14:28:53.151000', '2021-05-18 14:28:53.256000', 1, 0, 1, 38),
('2021-05-18 11:40:59.796312', '2021-05-18 11:41:00.000000', 'send-email', '{\"type\":\"email-verification\",\"recipient\":\"mativiscusso@gmail.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:3000/verify\",\"passwordResetUrl\":\"http://localhost:3000/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:3000/verify-email-address-change\",\"verificationToken\":\"MjAyMS0wNS0xOFQxNDo0MDo1OS43NjVa_DMVTA63X4QHWHJAF\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2021-05-18 14:40:59.990000', '2021-05-18 14:41:00.045000', 1, 0, 1, 39),
('2021-05-18 11:41:12.181945', '2021-05-18 11:41:12.000000', 'send-email', '{\"type\":\"email-verification\",\"recipient\":\"mativiscusso@gmail.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:3000/verify\",\"passwordResetUrl\":\"http://localhost:3000/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:3000/verify-email-address-change\",\"verificationToken\":\"MjAyMS0wNS0xOFQxNDo0MToxMi4xNjBa_HSZWVRRLBPBKXN5N\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2021-05-18 14:41:12.365000', '2021-05-18 14:41:12.406000', 1, 0, 1, 40),
('2021-05-18 11:41:32.502593', '2021-05-18 11:41:32.000000', 'send-email', '{\"type\":\"email-verification\",\"recipient\":\"mativiscusso@gmail.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:3000/verify\",\"passwordResetUrl\":\"http://localhost:3000/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:3000/verify-email-address-change\",\"verificationToken\":\"MjAyMS0wNS0xOFQxNDo0MTozMi40ODRa_9E3F91Y94JSAY28R\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2021-05-18 14:41:32.642000', '2021-05-18 14:41:32.683000', 1, 0, 1, 41),
('2021-05-18 11:41:56.731022', '2021-05-18 11:41:56.000000', 'send-email', '{\"type\":\"email-verification\",\"recipient\":\"mativiscusso@gmail.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:3000/verify\",\"passwordResetUrl\":\"http://localhost:3000/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:3000/verify-email-address-change\",\"verificationToken\":\"MjAyMS0wNS0xOFQxNDo0MTo1Ni43MTBa_BXFWX5UH3NX6JCNQ\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2021-05-18 14:41:56.898000', '2021-05-18 14:41:56.964000', 1, 0, 1, 42),
('2021-05-18 11:45:46.094107', '2021-05-18 11:45:46.000000', 'send-email', '{\"type\":\"email-verification\",\"recipient\":\"mativiscusso@gmail.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:3000/verify\",\"passwordResetUrl\":\"http://localhost:3000/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:3000/verify-email-address-change\",\"verificationToken\":\"MjAyMS0wNS0xOFQxNDo0NTo0Ni4wNjRa_ASF6T56UDZ1DNSHS\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2021-05-18 14:45:46.277000', '2021-05-18 14:45:46.377000', 1, 0, 1, 43),
('2021-05-18 11:52:42.615964', '2021-05-18 11:52:42.000000', 'send-email', '{\"type\":\"email-verification\",\"recipient\":\"mativiscusso@gmail.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:3000/verify\",\"passwordResetUrl\":\"http://localhost:3000/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:3000/verify-email-address-change\",\"verificationToken\":\"MjAyMS0wNS0xOFQxNDo1Mjo0Mi41NTZa_V81KEMBABXDZ9JBV\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2021-05-18 14:52:42.700000', '2021-05-18 14:52:42.742000', 1, 0, 1, 44),
('2021-05-18 12:06:36.864760', '2021-05-18 12:06:37.000000', 'send-email', '{\"type\":\"email-verification\",\"recipient\":\"mativiscusso@gmail.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:3000/users/verify\",\"passwordResetUrl\":\"http://localhost:3000/users/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:3000/users/verify-email-address-change\",\"verificationToken\":\"MjAyMS0wNS0xOFQxNTowNjozNi44Mzha_MZB66LFFMKNEGRZC\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2021-05-18 15:06:36.965000', '2021-05-18 15:06:37.066000', 1, 0, 1, 45),
('2021-05-18 12:09:38.726949', '2021-05-18 12:09:38.000000', 'send-email', '{\"type\":\"email-verification\",\"recipient\":\"mativiscusso@gmail.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:3000/users/verify\",\"passwordResetUrl\":\"http://localhost:3000/users/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:3000/users/verify-email-address-change\",\"verificationToken\":\"MjAyMS0wNS0xOFQxNTowOTozOC42OTha_3UJCXGTV2MXYTPDK\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2021-05-18 15:09:38.800000', '2021-05-18 15:09:38.857000', 1, 0, 1, 46),
('2021-05-19 12:03:42.894604', '2021-05-19 12:03:43.000000', 'send-email', '{\"type\":\"email-verification\",\"recipient\":\"juanmame@gmail.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:3000/users/verify\",\"passwordResetUrl\":\"http://localhost:3000/users/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:3000/users/verify-email-address-change\",\"verificationToken\":\"MjAyMS0wNS0xOVQxNTowMzo0Mi44Njda_VYPWNUCJXTTHFZ1D\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2021-05-19 15:03:43.039000', '2021-05-19 15:03:43.159000', 1, 0, 1, 47),
('2021-05-19 12:12:33.199325', '2021-05-19 12:12:33.000000', 'send-email', '{\"type\":\"email-verification\",\"recipient\":\"elegante@gmail.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:3000/users/verify\",\"passwordResetUrl\":\"http://localhost:3000/users/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:3000/users/verify-email-address-change\",\"verificationToken\":\"MjAyMS0wNS0xOVQxNToxMjozMy4xNzVa_J9W2NGXMXCY3MR8D\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2021-05-19 15:12:33.300000', '2021-05-19 15:12:33.373000', 1, 0, 1, 48),
('2021-05-19 12:20:36.781342', '2021-05-19 12:20:37.000000', 'send-email', '{\"type\":\"email-verification\",\"recipient\":\"matutemorales@gmail.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:3000/users/verify\",\"passwordResetUrl\":\"http://localhost:3000/users/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:3000/users/verify-email-address-change\",\"verificationToken\":\"MjAyMS0wNS0xOVQxNToyMDozNi43NTBa_N9F9MAN7NF7BHBHS\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2021-05-19 15:20:36.970000', '2021-05-19 15:20:37.245000', 1, 0, 1, 49),
('2021-05-19 12:26:29.991413', '2021-05-19 12:26:30.000000', 'send-email', '{\"type\":\"email-verification\",\"recipient\":\"juanperez@gmail.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:3000/users/verify\",\"passwordResetUrl\":\"http://localhost:3000/users/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:3000/users/verify-email-address-change\",\"verificationToken\":\"MjAyMS0wNS0xOVQxNToyNjoyOS45NTVa_XP5LJS9AWUC5CQBQ\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2021-05-19 15:26:30.029000', '2021-05-19 15:26:30.091000', 1, 0, 1, 50),
('2021-05-19 12:28:43.913170', '2021-05-19 12:28:44.000000', 'send-email', '{\"type\":\"email-verification\",\"recipient\":\"aaa@aaa.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:3000/users/verify\",\"passwordResetUrl\":\"http://localhost:3000/users/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:3000/users/verify-email-address-change\",\"verificationToken\":\"MjAyMS0wNS0xOVQxNToyODo0My44OTJa_USJKH7DCDFBK7FSX\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2021-05-19 15:28:44.109000', '2021-05-19 15:28:44.163000', 1, 0, 1, 51),
('2021-05-19 12:30:33.534913', '2021-05-19 12:30:33.000000', 'send-email', '{\"type\":\"email-verification\",\"recipient\":\"tt@gmail.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:3000/users/verify\",\"passwordResetUrl\":\"http://localhost:3000/users/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:3000/users/verify-email-address-change\",\"verificationToken\":\"MjAyMS0wNS0xOVQxNTozMDozMy41MDZa_52LVA8LVQ6TNDG8Z\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2021-05-19 15:30:33.695000', '2021-05-19 15:30:33.762000', 1, 0, 1, 52),
('2021-05-19 12:50:07.689251', '2021-05-19 12:50:07.000000', 'send-email', '{\"type\":\"email-verification\",\"recipient\":\"tutue@gmail.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:3000/users/verify\",\"passwordResetUrl\":\"http://localhost:3000/users/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:3000/users/verify-email-address-change\",\"verificationToken\":\"MjAyMS0wNS0xOVQxNTo1MDowNy42Njla_9W5W9FYJZY5S95XX\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2021-05-19 15:50:07.779000', '2021-05-19 15:50:07.819000', 1, 0, 1, 53),
('2021-05-19 13:04:29.598547', '2021-05-19 13:04:29.000000', 'send-email', '{\"type\":\"email-verification\",\"recipient\":\"elmati@gmail.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:3000/users/verify\",\"passwordResetUrl\":\"http://localhost:3000/users/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:3000/users/verify-email-address-change\",\"verificationToken\":\"MjAyMS0wNS0xOVQxNjowNDoyOS41Njha_XUD6WJ7J45FKSQ7H\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2021-05-19 16:04:29.812000', '2021-05-19 16:04:29.901000', 1, 0, 1, 54),
('2021-05-19 13:37:42.360000', '2021-05-19 13:37:42.000000', 'send-email', '{\"type\":\"email-verification\",\"recipient\":\"test@example.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:3000/users/verify\",\"passwordResetUrl\":\"http://localhost:3000/users/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:3000/users/verify-email-address-change\",\"verificationToken\":\"MjAyMS0wNS0xOVQxNjozNzo0Mi4zMzNa_AHH3GC9JH15GVQNS\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2021-05-19 16:37:42.379000', '2021-05-19 16:37:42.519000', 1, 0, 1, 55);
INSERT INTO `job_record` (`createdAt`, `updatedAt`, `queueName`, `data`, `state`, `progress`, `result`, `error`, `startedAt`, `settledAt`, `isSettled`, `retries`, `attempts`, `id`) VALUES
('2021-05-19 14:18:07.608184', '2021-05-19 14:18:07.000000', 'send-email', '{\"type\":\"email-verification\",\"recipient\":\"vendure@gmail.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:3000/users/verify\",\"passwordResetUrl\":\"http://localhost:3000/users/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:3000/users/verify-email-address-change\",\"verificationToken\":\"MjAyMS0wNS0xOVQxNzoxODowNy41ODZa_TXT831WRA4GFGZPA\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2021-05-19 17:18:07.792000', '2021-05-19 17:18:07.879000', 1, 0, 1, 56),
('2021-05-19 14:19:08.911100', '2021-05-19 14:19:09.000000', 'send-email', '{\"type\":\"email-verification\",\"recipient\":\"lala@gmail.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:3000/users/verify\",\"passwordResetUrl\":\"http://localhost:3000/users/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:3000/users/verify-email-address-change\",\"verificationToken\":\"MjAyMS0wNS0xOVQxNzoxOTowOC44OTFa_K93UDHP36E4FYVCZ\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2021-05-19 17:19:09.049000', '2021-05-19 17:19:09.101000', 1, 0, 1, 57),
('2021-05-19 14:39:00.933117', '2021-05-19 14:39:01.000000', 'send-email', '{\"type\":\"email-verification\",\"recipient\":\"liomessi@gmail.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:3000/users/verify\",\"passwordResetUrl\":\"http://localhost:3000/users/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:3000/users/verify-email-address-change\",\"verificationToken\":\"MjAyMS0wNS0xOVQxNzozOTowMC45MDZa_PS6U57G37SEHFD25\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2021-05-19 17:39:01.066000', '2021-05-19 17:39:01.118000', 1, 0, 1, 58);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order`
--

CREATE TABLE `order` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `code` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `orderPlacedAt` datetime DEFAULT NULL,
  `couponCodes` text NOT NULL,
  `shippingAddress` text NOT NULL,
  `billingAddress` text NOT NULL,
  `currencyCode` varchar(255) NOT NULL,
  `subTotal` int(11) NOT NULL,
  `subTotalWithTax` int(11) NOT NULL,
  `shipping` int(11) NOT NULL DEFAULT '0',
  `shippingWithTax` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `taxZoneId` int(11) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_channels_channel`
--

CREATE TABLE `order_channels_channel` (
  `orderId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_item`
--

CREATE TABLE `order_item` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `initialListPrice` int(11) DEFAULT NULL,
  `listPrice` int(11) NOT NULL,
  `listPriceIncludesTax` tinyint(4) NOT NULL,
  `adjustments` text NOT NULL,
  `taxLines` text NOT NULL,
  `cancelled` tinyint(4) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `lineId` int(11) NOT NULL,
  `refundId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_item_fulfillments_fulfillment`
--

CREATE TABLE `order_item_fulfillments_fulfillment` (
  `orderItemId` int(11) NOT NULL,
  `fulfillmentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_line`
--

CREATE TABLE `order_line` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `id` int(11) NOT NULL,
  `productVariantId` int(11) DEFAULT NULL,
  `taxCategoryId` int(11) DEFAULT NULL,
  `featuredAssetId` int(11) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_modification`
--

CREATE TABLE `order_modification` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `note` varchar(255) NOT NULL,
  `priceChange` int(11) NOT NULL,
  `shippingAddressChange` text,
  `billingAddressChange` text,
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `paymentId` int(11) DEFAULT NULL,
  `refundId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_modification_order_items_order_item`
--

CREATE TABLE `order_modification_order_items_order_item` (
  `orderModificationId` int(11) NOT NULL,
  `orderItemId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_promotions_promotion`
--

CREATE TABLE `order_promotions_promotion` (
  `orderId` int(11) NOT NULL,
  `promotionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment`
--

CREATE TABLE `payment` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `method` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `state` varchar(255) NOT NULL,
  `errorMessage` varchar(255) DEFAULT NULL,
  `transactionId` varchar(255) DEFAULT NULL,
  `metadata` text NOT NULL,
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_method`
--

CREATE TABLE `payment_method` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `name` varchar(255) NOT NULL DEFAULT '',
  `code` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `enabled` tinyint(4) NOT NULL,
  `checker` text,
  `handler` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `payment_method`
--

INSERT INTO `payment_method` (`createdAt`, `updatedAt`, `name`, `code`, `description`, `enabled`, `checker`, `handler`, `id`) VALUES
('2021-04-28 13:14:30.521172', '2021-04-28 13:14:30.521172', 'Standard Payment', 'standard-payment', '', 1, NULL, '{\"code\":\"dummy-payment-handler\",\"args\":[{\"name\":\"automaticSettle\",\"value\":\"false\"}]}', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_method_channels_channel`
--

CREATE TABLE `payment_method_channels_channel` (
  `paymentMethodId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `payment_method_channels_channel`
--

INSERT INTO `payment_method_channels_channel` (`paymentMethodId`, `channelId`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime DEFAULT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `id` int(11) NOT NULL,
  `featuredAssetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`createdAt`, `updatedAt`, `deletedAt`, `enabled`, `id`, `featuredAssetId`) VALUES
('2021-04-28 13:14:30.828029', '2021-05-17 14:01:44.000000', NULL, 1, 1, 64),
('2021-04-28 13:14:31.041290', '2021-04-28 13:14:31.041290', NULL, 1, 2, 2),
('2021-04-28 13:14:31.168687', '2021-04-28 13:14:31.168687', NULL, 1, 3, 3),
('2021-04-28 13:14:31.253542', '2021-04-28 13:14:31.253542', NULL, 1, 4, 4),
('2021-04-28 13:14:31.305091', '2021-04-28 13:14:31.305091', NULL, 1, 5, 5),
('2021-04-28 13:14:31.430018', '2021-04-28 13:14:31.430018', NULL, 1, 6, 6),
('2021-04-28 13:14:31.603393', '2021-04-28 13:14:31.603393', NULL, 1, 7, 7),
('2021-04-28 13:14:31.811409', '2021-04-28 13:14:31.811409', NULL, 1, 8, 8),
('2021-04-28 13:14:32.011384', '2021-04-28 13:14:32.011384', NULL, 1, 9, 9),
('2021-04-28 13:14:32.056875', '2021-04-28 13:14:32.056875', NULL, 1, 10, 10),
('2021-04-28 13:14:32.095482', '2021-04-28 13:14:32.095482', NULL, 1, 11, 11),
('2021-04-28 13:14:32.174556', '2021-04-28 13:14:32.174556', NULL, 1, 12, 12),
('2021-04-28 13:14:32.238195', '2021-04-28 13:14:32.238195', NULL, 1, 13, 13),
('2021-04-28 13:14:32.293044', '2021-04-28 13:14:32.293044', NULL, 1, 14, 14),
('2021-04-28 13:14:32.351145', '2021-04-28 13:14:32.351145', NULL, 1, 15, 15),
('2021-04-28 13:14:32.420909', '2021-04-28 13:14:32.420909', NULL, 1, 16, 16),
('2021-04-28 13:14:32.491096', '2021-04-28 13:14:32.491096', NULL, 1, 17, 17),
('2021-04-28 13:14:32.535741', '2021-04-28 13:14:32.535741', NULL, 1, 18, 18),
('2021-04-28 13:14:32.578408', '2021-04-28 13:14:32.578408', NULL, 1, 19, 19),
('2021-04-28 13:14:32.681161', '2021-04-28 13:14:32.681161', NULL, 1, 20, 20),
('2021-04-28 13:14:32.825782', '2021-04-28 13:14:32.825782', NULL, 1, 21, 21),
('2021-04-28 13:14:32.900921', '2021-04-28 13:14:32.900921', NULL, 1, 22, 22),
('2021-04-28 13:14:32.938533', '2021-04-28 13:14:32.938533', NULL, 1, 23, 23),
('2021-04-28 13:14:32.997866', '2021-04-28 13:14:32.997866', NULL, 1, 24, 24),
('2021-04-28 13:14:33.040642', '2021-04-28 13:14:33.040642', NULL, 1, 25, 25),
('2021-04-28 13:14:33.087357', '2021-04-28 13:14:33.087357', NULL, 1, 26, 26),
('2021-04-28 13:14:33.152198', '2021-04-28 13:14:33.152198', NULL, 1, 27, 27),
('2021-04-28 13:14:33.188025', '2021-04-28 13:14:33.188025', NULL, 1, 28, 28),
('2021-04-28 13:14:33.304096', '2021-04-28 13:14:33.304096', NULL, 1, 29, 29),
('2021-04-28 13:14:33.477862', '2021-04-28 13:14:33.477862', NULL, 1, 30, 30),
('2021-04-28 13:14:33.665020', '2021-04-28 13:14:33.665020', NULL, 1, 31, 31),
('2021-04-28 13:14:33.820395', '2021-04-28 13:14:33.820395', NULL, 1, 32, 32),
('2021-04-28 13:14:33.974862', '2021-04-28 13:14:33.974862', NULL, 1, 33, 33),
('2021-04-28 13:14:34.135479', '2021-04-28 13:14:34.135479', NULL, 1, 34, 34),
('2021-04-28 13:14:34.338749', '2021-04-28 13:14:34.338749', NULL, 1, 35, 35),
('2021-04-28 13:14:34.399635', '2021-04-28 13:14:34.399635', NULL, 1, 36, 36),
('2021-04-28 13:14:34.464675', '2021-04-28 13:14:34.464675', NULL, 1, 37, 37),
('2021-04-28 13:14:34.513957', '2021-04-28 13:14:34.513957', NULL, 1, 38, 38),
('2021-04-28 13:14:34.588132', '2021-04-28 13:14:34.588132', NULL, 1, 39, 39),
('2021-04-28 13:14:34.638890', '2021-04-28 13:14:34.638890', NULL, 1, 40, 40),
('2021-04-28 13:14:34.694224', '2021-04-28 13:14:34.694224', NULL, 1, 41, NULL),
('2021-04-28 13:14:34.765254', '2021-04-28 13:14:34.765254', NULL, 1, 42, 42),
('2021-04-28 13:14:34.860716', '2021-04-28 13:14:34.860716', NULL, 1, 43, 43),
('2021-04-28 13:14:34.917606', '2021-04-28 13:14:34.917606', NULL, 1, 44, 44),
('2021-04-28 13:14:34.955891', '2021-04-28 13:14:34.955891', NULL, 1, 45, 45),
('2021-04-28 13:14:34.989344', '2021-04-28 13:14:34.989344', NULL, 1, 46, NULL),
('2021-04-28 13:14:35.048758', '2021-04-28 13:14:35.048758', NULL, 1, 47, NULL),
('2021-04-28 13:14:35.114880', '2021-04-28 13:14:35.114880', NULL, 1, 48, NULL),
('2021-04-28 13:14:35.173335', '2021-04-28 13:14:35.173335', NULL, 1, 49, NULL),
('2021-04-28 13:14:35.231162', '2021-04-28 13:14:35.231162', NULL, 1, 50, NULL),
('2021-04-28 13:14:35.267080', '2021-04-28 13:14:35.267080', NULL, 1, 51, NULL),
('2021-04-28 13:14:35.333854', '2021-04-28 13:14:35.333854', NULL, 1, 52, NULL),
('2021-04-28 13:14:35.374666', '2021-04-28 13:14:35.374666', NULL, 1, 53, NULL),
('2021-04-28 13:14:35.407867', '2021-04-28 13:14:35.407867', NULL, 1, 54, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_asset`
--

CREATE TABLE `product_asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `assetId` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `product_asset`
--

INSERT INTO `product_asset` (`createdAt`, `updatedAt`, `assetId`, `position`, `productId`, `id`) VALUES
('2021-04-28 13:14:31.049942', '2021-04-28 13:14:31.049942', 2, 0, 2, 2),
('2021-04-28 13:14:31.182421', '2021-04-28 13:14:31.182421', 3, 0, 3, 3),
('2021-04-28 13:14:31.259629', '2021-04-28 13:14:31.259629', 4, 0, 4, 4),
('2021-04-28 13:14:31.310698', '2021-04-28 13:14:31.310698', 5, 0, 5, 5),
('2021-04-28 13:14:31.438799', '2021-04-28 13:14:31.438799', 6, 0, 6, 6),
('2021-04-28 13:14:31.611435', '2021-04-28 13:14:31.611435', 7, 0, 7, 7),
('2021-04-28 13:14:31.818969', '2021-04-28 13:14:31.818969', 8, 0, 8, 8),
('2021-04-28 13:14:32.019493', '2021-04-28 13:14:32.019493', 9, 0, 9, 9),
('2021-04-28 13:14:32.064454', '2021-04-28 13:14:32.064454', 10, 0, 10, 10),
('2021-04-28 13:14:32.103085', '2021-04-28 13:14:32.103085', 11, 0, 11, 11),
('2021-04-28 13:14:32.184564', '2021-04-28 13:14:32.184564', 12, 0, 12, 12),
('2021-04-28 13:14:32.245228', '2021-04-28 13:14:32.245228', 13, 0, 13, 13),
('2021-04-28 13:14:32.301437', '2021-04-28 13:14:32.301437', 14, 0, 14, 14),
('2021-04-28 13:14:32.356959', '2021-04-28 13:14:32.356959', 15, 0, 15, 15),
('2021-04-28 13:14:32.429771', '2021-04-28 13:14:32.429771', 16, 0, 16, 16),
('2021-04-28 13:14:32.498182', '2021-04-28 13:14:32.498182', 17, 0, 17, 17),
('2021-04-28 13:14:32.541405', '2021-04-28 13:14:32.541405', 18, 0, 18, 18),
('2021-04-28 13:14:32.592828', '2021-04-28 13:14:32.592828', 19, 0, 19, 19),
('2021-04-28 13:14:32.690448', '2021-04-28 13:14:32.690448', 20, 0, 20, 20),
('2021-04-28 13:14:32.831829', '2021-04-28 13:14:32.831829', 21, 0, 21, 21),
('2021-04-28 13:14:32.908000', '2021-04-28 13:14:32.908000', 22, 0, 22, 22),
('2021-04-28 13:14:32.944003', '2021-04-28 13:14:32.944003', 23, 0, 23, 23),
('2021-04-28 13:14:33.006271', '2021-04-28 13:14:33.006271', 24, 0, 24, 24),
('2021-04-28 13:14:33.047106', '2021-04-28 13:14:33.047106', 25, 0, 25, 25),
('2021-04-28 13:14:33.096978', '2021-04-28 13:14:33.096978', 26, 0, 26, 26),
('2021-04-28 13:14:33.157509', '2021-04-28 13:14:33.157509', 27, 0, 27, 27),
('2021-04-28 13:14:33.195984', '2021-04-28 13:14:33.195984', 28, 0, 28, 28),
('2021-04-28 13:14:33.314457', '2021-04-28 13:14:33.314457', 29, 0, 29, 29),
('2021-04-28 13:14:33.484369', '2021-04-28 13:14:33.484369', 30, 0, 30, 30),
('2021-04-28 13:14:33.673012', '2021-04-28 13:14:33.673012', 31, 0, 31, 31),
('2021-04-28 13:14:33.829239', '2021-04-28 13:14:33.829239', 32, 0, 32, 32),
('2021-04-28 13:14:33.981174', '2021-04-28 13:14:33.981174', 33, 0, 33, 33),
('2021-04-28 13:14:34.144758', '2021-04-28 13:14:34.144758', 34, 0, 34, 34),
('2021-04-28 13:14:34.343642', '2021-04-28 13:14:34.343642', 35, 0, 35, 35),
('2021-04-28 13:14:34.405412', '2021-04-28 13:14:34.405412', 36, 0, 36, 36),
('2021-04-28 13:14:34.480417', '2021-04-28 13:14:34.480417', 37, 0, 37, 37),
('2021-04-28 13:14:34.519299', '2021-04-28 13:14:34.519299', 38, 0, 38, 38),
('2021-04-28 13:14:34.597939', '2021-04-28 13:14:34.597939', 39, 0, 39, 39),
('2021-04-28 13:14:34.644616', '2021-04-28 13:14:34.644616', 40, 0, 40, 40),
('2021-04-28 13:14:34.772473', '2021-04-28 13:14:34.772473', 42, 0, 42, 42),
('2021-04-28 13:14:34.868599', '2021-04-28 13:14:34.868599', 43, 0, 43, 43),
('2021-04-28 13:14:34.926794', '2021-04-28 13:14:34.926794', 44, 0, 44, 44),
('2021-04-28 13:14:34.960777', '2021-04-28 13:14:34.960777', 45, 0, 45, 45),
('2021-05-17 14:01:44.787627', '2021-05-17 14:01:44.787627', 64, 0, 1, 55);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_channels_channel`
--

CREATE TABLE `product_channels_channel` (
  `productId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `product_channels_channel`
--

INSERT INTO `product_channels_channel` (`productId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_facet_values_facet_value`
--

CREATE TABLE `product_facet_values_facet_value` (
  `productId` int(11) NOT NULL,
  `facetValueId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `product_facet_values_facet_value`
--

INSERT INTO `product_facet_values_facet_value` (`productId`, `facetValueId`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 4),
(4, 1),
(4, 2),
(4, 5),
(5, 1),
(5, 2),
(5, 5),
(6, 1),
(6, 2),
(6, 6),
(7, 1),
(7, 2),
(7, 7),
(8, 1),
(8, 2),
(8, 8),
(9, 1),
(9, 2),
(9, 6),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 9),
(12, 10),
(13, 1),
(13, 9),
(13, 11),
(14, 1),
(14, 9),
(14, 12),
(15, 1),
(15, 9),
(15, 13),
(16, 1),
(16, 9),
(16, 14),
(17, 1),
(17, 9),
(17, 15),
(18, 1),
(18, 9),
(18, 11),
(19, 1),
(19, 9),
(20, 1),
(20, 9),
(20, 16),
(21, 17),
(21, 18),
(21, 19),
(22, 17),
(22, 18),
(22, 20),
(23, 17),
(23, 18),
(23, 20),
(24, 17),
(24, 18),
(25, 17),
(25, 18),
(26, 17),
(26, 18),
(26, 21),
(27, 17),
(27, 18),
(27, 22),
(28, 17),
(28, 18),
(28, 22),
(29, 17),
(29, 23),
(29, 24),
(29, 25),
(29, 26),
(30, 17),
(30, 21),
(30, 23),
(30, 27),
(31, 17),
(31, 21),
(31, 23),
(31, 28),
(32, 17),
(32, 23),
(32, 24),
(32, 27),
(32, 28),
(33, 17),
(33, 23),
(33, 24),
(33, 27),
(34, 17),
(34, 23),
(34, 27),
(34, 29),
(35, 30),
(35, 31),
(35, 32),
(36, 30),
(36, 31),
(36, 32),
(36, 33),
(37, 30),
(37, 31),
(37, 33),
(38, 30),
(38, 31),
(38, 32),
(39, 30),
(39, 31),
(39, 33),
(40, 30),
(40, 31),
(40, 32),
(41, 30),
(41, 31),
(42, 30),
(42, 31),
(43, 30),
(43, 34),
(43, 35),
(44, 30),
(44, 31),
(45, 30),
(45, 34),
(46, 30),
(46, 34),
(46, 35),
(47, 30),
(47, 34),
(47, 36),
(48, 30),
(48, 34),
(49, 30),
(49, 34),
(49, 37),
(50, 30),
(50, 34),
(50, 35),
(51, 27),
(51, 30),
(51, 34),
(52, 30),
(52, 34),
(52, 37),
(53, 28),
(53, 30),
(53, 34),
(54, 30),
(54, 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_option`
--

CREATE TABLE `product_option` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `product_option`
--

INSERT INTO `product_option` (`createdAt`, `updatedAt`, `deletedAt`, `code`, `id`, `groupId`) VALUES
('2021-04-28 13:14:30.869073', '2021-04-28 13:14:30.869073', NULL, '13-inch', 1, 1),
('2021-04-28 13:14:30.880952', '2021-04-28 13:14:30.880952', NULL, '15-inch', 2, 1),
('2021-04-28 13:14:30.903625', '2021-04-28 13:14:30.903625', NULL, '8gb', 3, 2),
('2021-04-28 13:14:30.911091', '2021-04-28 13:14:30.911091', NULL, '16gb', 4, 2),
('2021-04-28 13:14:31.067359', '2021-04-28 13:14:31.067359', NULL, '32gb', 5, 3),
('2021-04-28 13:14:31.081845', '2021-04-28 13:14:31.081845', NULL, '128gb', 6, 3),
('2021-04-28 13:14:31.327167', '2021-04-28 13:14:31.327167', NULL, '24-inch', 7, 4),
('2021-04-28 13:14:31.337294', '2021-04-28 13:14:31.337294', NULL, '27-inch', 8, 4),
('2021-04-28 13:14:31.457680', '2021-04-28 13:14:31.457680', NULL, '4gb', 9, 5),
('2021-04-28 13:14:31.467307', '2021-04-28 13:14:31.467307', NULL, '8gb', 10, 5),
('2021-04-28 13:14:31.480199', '2021-04-28 13:14:31.480199', NULL, '16gb', 11, 5),
('2021-04-28 13:14:31.637592', '2021-04-28 13:14:31.637592', NULL, 'i7-8700', 12, 6),
('2021-04-28 13:14:31.649771', '2021-04-28 13:14:31.649771', NULL, 'r7-2700', 13, 6),
('2021-04-28 13:14:31.686425', '2021-04-28 13:14:31.686425', NULL, '240gb-ssd', 14, 7),
('2021-04-28 13:14:31.695250', '2021-04-28 13:14:31.695250', NULL, '120gb-ssd', 15, 7),
('2021-04-28 13:14:31.833192', '2021-04-28 13:14:31.833192', NULL, '1tb', 16, 8),
('2021-04-28 13:14:31.841111', '2021-04-28 13:14:31.841111', NULL, '2tb', 17, 8),
('2021-04-28 13:14:31.849970', '2021-04-28 13:14:31.849970', NULL, '3tb', 18, 8),
('2021-04-28 13:14:31.862561', '2021-04-28 13:14:31.862561', NULL, '4tb', 19, 8),
('2021-04-28 13:14:31.880599', '2021-04-28 13:14:31.880599', NULL, '6tb', 20, 8),
('2021-04-28 13:14:33.333109', '2021-04-28 13:14:33.333109', NULL, 'size-40', 21, 9),
('2021-04-28 13:14:33.343582', '2021-04-28 13:14:33.343582', NULL, 'size-42', 22, 9),
('2021-04-28 13:14:33.351940', '2021-04-28 13:14:33.351940', NULL, 'size-44', 23, 9),
('2021-04-28 13:14:33.361988', '2021-04-28 13:14:33.361988', NULL, 'size-46', 24, 9),
('2021-04-28 13:14:33.506911', '2021-04-28 13:14:33.506911', NULL, 'size-40', 25, 10),
('2021-04-28 13:14:33.515239', '2021-04-28 13:14:33.515239', NULL, 'size-42', 26, 10),
('2021-04-28 13:14:33.525169', '2021-04-28 13:14:33.525169', NULL, 'size-44', 27, 10),
('2021-04-28 13:14:33.532664', '2021-04-28 13:14:33.532664', NULL, 'size-46', 28, 10),
('2021-04-28 13:14:33.688252', '2021-04-28 13:14:33.688252', NULL, 'size-40', 29, 11),
('2021-04-28 13:14:33.698672', '2021-04-28 13:14:33.698672', NULL, 'size-42', 30, 11),
('2021-04-28 13:14:33.710082', '2021-04-28 13:14:33.710082', NULL, 'size-44', 31, 11),
('2021-04-28 13:14:33.718152', '2021-04-28 13:14:33.718152', NULL, 'size-46', 32, 11),
('2021-04-28 13:14:33.847008', '2021-04-28 13:14:33.847008', NULL, 'size-40', 33, 12),
('2021-04-28 13:14:33.857387', '2021-04-28 13:14:33.857387', NULL, 'size-42', 34, 12),
('2021-04-28 13:14:33.865592', '2021-04-28 13:14:33.865592', NULL, 'size-44', 35, 12),
('2021-04-28 13:14:33.874443', '2021-04-28 13:14:33.874443', NULL, 'size-46', 36, 12),
('2021-04-28 13:14:34.000337', '2021-04-28 13:14:34.000337', NULL, 'size-40', 37, 13),
('2021-04-28 13:14:34.010547', '2021-04-28 13:14:34.010547', NULL, 'size-42', 38, 13),
('2021-04-28 13:14:34.020906', '2021-04-28 13:14:34.020906', NULL, 'size-44', 39, 13),
('2021-04-28 13:14:34.029201', '2021-04-28 13:14:34.029201', NULL, 'size-46', 40, 13),
('2021-04-28 13:14:34.160781', '2021-04-28 13:14:34.160781', NULL, 'size-40', 41, 14),
('2021-04-28 13:14:34.169018', '2021-04-28 13:14:34.169018', NULL, 'size-42', 42, 14),
('2021-04-28 13:14:34.177258', '2021-04-28 13:14:34.177258', NULL, 'size-44', 43, 14),
('2021-04-28 13:14:34.187131', '2021-04-28 13:14:34.187131', NULL, 'size-46', 44, 14),
('2021-04-28 13:14:35.429725', '2021-04-28 13:14:35.429725', NULL, 'mustard', 45, 15),
('2021-04-28 13:14:35.438082', '2021-04-28 13:14:35.438082', NULL, 'mint', 46, 15),
('2021-04-28 13:14:35.445382', '2021-04-28 13:14:35.445382', NULL, 'pearl', 47, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_option_group`
--

CREATE TABLE `product_option_group` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `product_option_group`
--

INSERT INTO `product_option_group` (`createdAt`, `updatedAt`, `deletedAt`, `code`, `id`, `productId`) VALUES
('2021-04-28 13:14:30.855659', '2021-04-28 13:14:30.000000', NULL, 'laptop-screen-size', 1, 1),
('2021-04-28 13:14:30.895303', '2021-04-28 13:14:30.000000', NULL, 'laptop-ram', 2, 1),
('2021-04-28 13:14:31.058795', '2021-04-28 13:14:31.000000', NULL, 'tablet-storage', 3, 2),
('2021-04-28 13:14:31.317798', '2021-04-28 13:14:31.000000', NULL, 'curvy-monitor-monitor-size', 4, 5),
('2021-04-28 13:14:31.445239', '2021-04-28 13:14:31.000000', NULL, 'high-performance-ram-size', 5, 6),
('2021-04-28 13:14:31.624704', '2021-04-28 13:14:31.000000', NULL, 'gaming-pc-cpu', 6, 7),
('2021-04-28 13:14:31.669023', '2021-04-28 13:14:31.000000', NULL, 'gaming-pc-hdd', 7, 7),
('2021-04-28 13:14:31.824599', '2021-04-28 13:14:31.000000', NULL, 'hard-drive-hdd', 8, 8),
('2021-04-28 13:14:33.323188', '2021-04-28 13:14:33.000000', NULL, 'ultraboost-running-shoe-size', 9, 29),
('2021-04-28 13:14:33.495120', '2021-04-28 13:14:33.000000', NULL, 'freerun-running-shoe-size', 10, 30),
('2021-04-28 13:14:33.679358', '2021-04-28 13:14:33.000000', NULL, 'hi-top-basketball-shoe-size', 11, 31),
('2021-04-28 13:14:33.838879', '2021-04-28 13:14:33.000000', NULL, 'pureboost-running-shoe-size', 12, 32),
('2021-04-28 13:14:33.989872', '2021-04-28 13:14:34.000000', NULL, 'runx-running-shoe-size', 13, 33),
('2021-04-28 13:14:34.152435', '2021-04-28 13:14:34.000000', NULL, 'allstar-sneakers-size', 14, 34),
('2021-04-28 13:14:35.420101', '2021-04-28 13:14:35.000000', NULL, 'modern-cafe-chair-color', 15, 54);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_option_group_translation`
--

CREATE TABLE `product_option_group_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `product_option_group_translation`
--

INSERT INTO `product_option_group_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2021-04-28 13:14:30.847417', '2021-04-28 13:14:30.000000', 'en', 'screen size', 1, 1),
('2021-04-28 13:14:30.890974', '2021-04-28 13:14:30.000000', 'en', 'RAM', 2, 2),
('2021-04-28 13:14:31.053284', '2021-04-28 13:14:31.000000', 'en', 'storage', 3, 3),
('2021-04-28 13:14:31.314420', '2021-04-28 13:14:31.000000', 'en', 'monitor size', 4, 4),
('2021-04-28 13:14:31.441971', '2021-04-28 13:14:31.000000', 'en', 'size', 5, 5),
('2021-04-28 13:14:31.619318', '2021-04-28 13:14:31.000000', 'en', 'cpu', 6, 6),
('2021-04-28 13:14:31.662084', '2021-04-28 13:14:31.000000', 'en', 'HDD', 7, 7),
('2021-04-28 13:14:31.821428', '2021-04-28 13:14:31.000000', 'en', 'HDD', 8, 8),
('2021-04-28 13:14:33.317293', '2021-04-28 13:14:33.000000', 'en', 'size', 9, 9),
('2021-04-28 13:14:33.488276', '2021-04-28 13:14:33.000000', 'en', 'size', 10, 10),
('2021-04-28 13:14:33.676114', '2021-04-28 13:14:33.000000', 'en', 'size', 11, 11),
('2021-04-28 13:14:33.832425', '2021-04-28 13:14:33.000000', 'en', 'size', 12, 12),
('2021-04-28 13:14:33.983825', '2021-04-28 13:14:33.000000', 'en', 'size', 13, 13),
('2021-04-28 13:14:34.147617', '2021-04-28 13:14:34.000000', 'en', 'size', 14, 14),
('2021-04-28 13:14:35.416381', '2021-04-28 13:14:35.000000', 'en', 'color', 15, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_option_translation`
--

CREATE TABLE `product_option_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `product_option_translation`
--

INSERT INTO `product_option_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2021-04-28 13:14:30.863433', '2021-04-28 13:14:30.000000', 'en', '13 inch', 1, 1),
('2021-04-28 13:14:30.876033', '2021-04-28 13:14:30.000000', 'en', '15 inch', 2, 2),
('2021-04-28 13:14:30.900133', '2021-04-28 13:14:30.000000', 'en', '8GB', 3, 3),
('2021-04-28 13:14:30.907828', '2021-04-28 13:14:30.000000', 'en', '16GB', 4, 4),
('2021-04-28 13:14:31.063403', '2021-04-28 13:14:31.000000', 'en', '32GB', 5, 5),
('2021-04-28 13:14:31.071927', '2021-04-28 13:14:31.000000', 'en', '128GB', 6, 6),
('2021-04-28 13:14:31.323840', '2021-04-28 13:14:31.000000', 'en', '24 inch', 7, 7),
('2021-04-28 13:14:31.333755', '2021-04-28 13:14:31.000000', 'en', '27 inch', 8, 8),
('2021-04-28 13:14:31.451359', '2021-04-28 13:14:31.000000', 'en', '4GB', 9, 9),
('2021-04-28 13:14:31.462414', '2021-04-28 13:14:31.000000', 'en', '8GB', 10, 10),
('2021-04-28 13:14:31.473349', '2021-04-28 13:14:31.000000', 'en', '16GB', 11, 11),
('2021-04-28 13:14:31.631129', '2021-04-28 13:14:31.000000', 'en', 'i7-8700', 12, 12),
('2021-04-28 13:14:31.644392', '2021-04-28 13:14:31.000000', 'en', 'R7-2700', 13, 13),
('2021-04-28 13:14:31.674112', '2021-04-28 13:14:31.000000', 'en', '240GB SSD', 14, 14),
('2021-04-28 13:14:31.692080', '2021-04-28 13:14:31.000000', 'en', '120GB SSD', 15, 15),
('2021-04-28 13:14:31.829602', '2021-04-28 13:14:31.000000', 'en', '1TB', 16, 16),
('2021-04-28 13:14:31.837230', '2021-04-28 13:14:31.000000', 'en', '2TB', 17, 17),
('2021-04-28 13:14:31.845377', '2021-04-28 13:14:31.000000', 'en', '3TB', 18, 18),
('2021-04-28 13:14:31.857324', '2021-04-28 13:14:31.000000', 'en', '4TB', 19, 19),
('2021-04-28 13:14:31.870547', '2021-04-28 13:14:31.000000', 'en', '6TB', 20, 20),
('2021-04-28 13:14:33.329204', '2021-04-28 13:14:33.000000', 'en', 'Size 40', 21, 21),
('2021-04-28 13:14:33.337485', '2021-04-28 13:14:33.000000', 'en', 'Size 42', 22, 22),
('2021-04-28 13:14:33.348710', '2021-04-28 13:14:33.000000', 'en', 'Size 44', 23, 23),
('2021-04-28 13:14:33.358656', '2021-04-28 13:14:33.000000', 'en', 'Size 46', 24, 24),
('2021-04-28 13:14:33.501419', '2021-04-28 13:14:33.000000', 'en', 'Size 40', 25, 25),
('2021-04-28 13:14:33.511970', '2021-04-28 13:14:33.000000', 'en', 'Size 42', 26, 26),
('2021-04-28 13:14:33.519526', '2021-04-28 13:14:33.000000', 'en', 'Size 44', 27, 27),
('2021-04-28 13:14:33.529352', '2021-04-28 13:14:33.000000', 'en', 'Size 46', 28, 28),
('2021-04-28 13:14:33.683838', '2021-04-28 13:14:33.000000', 'en', 'Size 40', 29, 29),
('2021-04-28 13:14:33.695635', '2021-04-28 13:14:33.000000', 'en', 'Size 42', 30, 30),
('2021-04-28 13:14:33.704214', '2021-04-28 13:14:33.000000', 'en', 'Size 44', 31, 31),
('2021-04-28 13:14:33.714476', '2021-04-28 13:14:33.000000', 'en', 'Size 46', 32, 32),
('2021-04-28 13:14:33.843119', '2021-04-28 13:14:33.000000', 'en', 'Size 40', 33, 33),
('2021-04-28 13:14:33.853674', '2021-04-28 13:14:33.000000', 'en', 'Size 42', 34, 34),
('2021-04-28 13:14:33.861848', '2021-04-28 13:14:33.000000', 'en', 'Size 44', 35, 35),
('2021-04-28 13:14:33.870276', '2021-04-28 13:14:33.000000', 'en', 'Size 46', 36, 36),
('2021-04-28 13:14:33.995637', '2021-04-28 13:14:34.000000', 'en', 'Size 40', 37, 37),
('2021-04-28 13:14:34.007259', '2021-04-28 13:14:34.000000', 'en', 'Size 42', 38, 38),
('2021-04-28 13:14:34.014907', '2021-04-28 13:14:34.000000', 'en', 'Size 44', 39, 39),
('2021-04-28 13:14:34.025195', '2021-04-28 13:14:34.000000', 'en', 'Size 46', 40, 40),
('2021-04-28 13:14:34.157090', '2021-04-28 13:14:34.000000', 'en', 'Size 40', 41, 41),
('2021-04-28 13:14:34.164562', '2021-04-28 13:14:34.000000', 'en', 'Size 42', 42, 42),
('2021-04-28 13:14:34.173331', '2021-04-28 13:14:34.000000', 'en', 'Size 44', 43, 43),
('2021-04-28 13:14:34.182210', '2021-04-28 13:14:34.000000', 'en', 'Size 46', 44, 44),
('2021-04-28 13:14:35.424277', '2021-04-28 13:14:35.000000', 'en', 'mustard', 45, 45),
('2021-04-28 13:14:35.434650', '2021-04-28 13:14:35.000000', 'en', 'mint', 46, 46),
('2021-04-28 13:14:35.441819', '2021-04-28 13:14:35.000000', 'en', 'pearl', 47, 47);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_translation`
--

CREATE TABLE `product_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `product_translation`
--

INSERT INTO `product_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `slug`, `description`, `id`, `baseId`) VALUES
('2021-04-28 13:14:30.818967', '2021-04-28 13:14:30.000000', 'en', 'Laptop', 'laptop', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 1, 1),
('2021-04-28 13:14:31.035540', '2021-04-28 13:14:31.000000', 'en', 'Tablet', 'tablet', 'If the computer were invented today, what would it look like? It would be powerful enough for any task. So mobile you could take it everywhere. And so intuitive you could use it any way you wanted — with touch, a keyboard, or even a pencil. In other words, it wouldn’t really be a \"computer.\" It would be Tablet.', 2, 2),
('2021-04-28 13:14:31.162405', '2021-04-28 13:14:31.000000', 'en', 'Wireless Optical Mouse', 'cordless-mouse', 'The Logitech M185 Wireless Optical Mouse is a great device for any computer user, and as Logitech are the global market leaders for these devices, you are also guaranteed absolute reliability. A mouse to be reckoned with!', 3, 3),
('2021-04-28 13:14:31.241996', '2021-04-28 13:14:31.000000', 'en', '32-Inch Monitor', '32-inch-monitor', 'The UJ59 with Ultra HD resolution has 4x the pixels of Full HD, delivering more screen space and amazingly life-like images. That means you can view documents and webpages with less scrolling, work more comfortably with multiple windows and toolbars, and enjoy photos, videos and games in stunning 4K quality. Note: beverage not included.', 4, 4),
('2021-04-28 13:14:31.301261', '2021-04-28 13:14:31.000000', 'en', 'Curvy Monitor', 'curvy-monitor', 'Discover a truly immersive viewing experience with this monitor curved more deeply than any other. Wrapping around your field of vision the 1,800 R screencreates a wider field of view, enhances depth perception, and minimises peripheral distractions to draw you deeper in to your content.', 5, 5),
('2021-04-28 13:14:31.425018', '2021-04-28 13:14:31.000000', 'en', 'High Performance RAM', 'high-performance-ram', 'Each RAM module is built with a pure aluminium heat spreader for faster heat dissipation and cooler operation. Enhanced to XMP 2.0 profiles for better overclocking; Compatibility: Intel 100 Series, Intel 200 Series, Intel 300 Series, Intel X299, AMD 300 Series, AMD 400 Series.', 6, 6),
('2021-04-28 13:14:31.596388', '2021-04-28 13:14:31.000000', 'en', 'Gaming PC', 'gaming-pc', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 7, 7),
('2021-04-28 13:14:31.808117', '2021-04-28 13:14:31.000000', 'en', 'Hard Drive', 'hard-drive', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 8, 8),
('2021-04-28 13:14:32.005984', '2021-04-28 13:14:32.000000', 'en', 'Clacky Keyboard', 'clacky-keyboard', 'Let all your colleagues know that you are typing on this exclusive, colorful klicky-klacky keyboard. Huge travel on each keypress ensures maximum klack on each and every keystroke.', 9, 9),
('2021-04-28 13:14:32.052663', '2021-04-28 13:14:32.000000', 'en', 'Ethernet Cable', 'ethernet-cable', '5m (metres) Cat.6 network cable (upwards/downwards compatible) | Patch cable | 2 RJ-45 plug | plug with bend protection mantle. High transmission speeds due to operating frequency with up to 250 MHz (in comparison to Cat.5/Cat.5e cable bandwidth of 100 MHz).', 10, 10),
('2021-04-28 13:14:32.091720', '2021-04-28 13:14:32.000000', 'en', 'USB Cable', 'usb-cable', 'Solid conductors eliminate strand-interaction distortion and reduce jitter. As the surface is made of high-purity silver, the performance is very close to that of a solid silver cable, but priced much closer to solid copper cable.', 11, 11),
('2021-04-28 13:14:32.171111', '2021-04-28 13:14:32.000000', 'en', 'Instant Camera', 'instant-camera', 'With its nostalgic design and simple point-and-shoot functionality, the Instant Camera is the perfect pick to get started with instant photography.', 12, 12),
('2021-04-28 13:14:32.234980', '2021-04-28 13:14:32.000000', 'en', 'Camera Lens', 'camera-lens', 'This lens is a Di type lens using an optical system with improved multi-coating designed to function with digital SLR cameras as well as film cameras.', 13, 13),
('2021-04-28 13:14:32.289889', '2021-04-28 13:14:32.000000', 'en', 'Vintage Folding Camera', 'vintage-folding-camera', 'This vintage folding camera is so antiquated that you cannot possibly hope to produce actual photographs with it. However, it makes a wonderful decorative piece for the home or office.', 14, 14),
('2021-04-28 13:14:32.344937', '2021-04-28 13:14:32.000000', 'en', 'Tripod', 'tripod', 'Capture vivid, professional-style photographs with help from this lightweight tripod. The adjustable-height tripod makes it easy to achieve reliable stability and score just the right angle when going after that award-winning shot.', 15, 15),
('2021-04-28 13:14:32.417390', '2021-04-28 13:14:32.000000', 'en', 'Instamatic Camera', 'instamatic-camera', 'This inexpensive point-and-shoot camera uses easy-to-load 126 film cartridges. A built-in flash unit ensure great results, no matter the lighting conditions.', 16, 16),
('2021-04-28 13:14:32.486430', '2021-04-28 13:14:32.000000', 'en', 'Compact Digital Camera', 'compact-digital-camera', 'Unleash your creative potential with high-level performance and advanced features such as AI-powered Real-time Eye AF; new, high-precision Real-time Tracking; high-speed continuous shooting and 4K HDR movie-shooting. The camera\'s innovative AF quickly and reliably detects the position of the subject and then tracks the subject\'s motion, keeping it in sharp focus.', 17, 17),
('2021-04-28 13:14:32.530712', '2021-04-28 13:14:32.000000', 'en', 'Nikkormat SLR Camera', 'nikkormat-slr-camera', 'The Nikkormat FS was brought to market by Nikon in 1965. The lens is a 50mm f1.4 Nikkor. Nice glass, smooth focus and a working diaphragm. A UV filter and a Nikon front lens cap are included with the lens.', 18, 18),
('2021-04-28 13:14:32.573519', '2021-04-28 13:14:32.000000', 'en', 'Compact SLR Camera', 'compact-slr-camera', 'Retro styled, portable in size and built around a powerful 24-megapixel APS-C CMOS sensor, this digital camera is the ideal companion for creative everyday photography. Packed full of high spec features such as an advanced hybrid autofocus system able to keep pace with even the most active subjects, a speedy 6fps continuous-shooting mode, high-resolution electronic viewfinder and intuitive swivelling touchscreen, it brings professional image making into everyone’s grasp.', 19, 19),
('2021-04-28 13:14:32.677059', '2021-04-28 13:14:32.000000', 'en', 'Twin Lens Camera', 'twin-lens-camera', 'What makes a Rolleiflex TLR so special? Many things. To start, TLR stands for twin lens reflex. “Twin” because there are two lenses. And reflex means that the photographer looks through the lens to view the reflected image of an object or scene on the focusing screen.', 20, 20),
('2021-04-28 13:14:32.817850', '2021-04-28 13:14:32.000000', 'en', 'Road Bike', 'road-bike', 'Featuring a full carbon chassis - complete with cyclocross-specific carbon fork - and a component setup geared for hard use on the race circuit, it\'s got the low weight, exceptional efficiency and brilliant handling you\'ll need to stay at the front of the pack.', 21, 21),
('2021-04-28 13:14:32.897419', '2021-04-28 13:14:32.000000', 'en', 'Skipping Rope', 'skipping-rope', 'When you\'re working out you need a quality rope that doesn\'t tangle at every couple of jumps and with this skipping rope you won\'t have this problem. The fact that it looks like a pair of tasty frankfurters is merely a bonus.', 22, 22),
('2021-04-28 13:14:32.935282', '2021-04-28 13:14:32.000000', 'en', 'Boxing Gloves', 'boxing-gloves', 'Training gloves designed for optimum training. Our gloves promote proper punching technique because they are conformed to the natural shape of your fist. Dense, innovative two-layer foam provides better shock absorbency and full padding on the front, back and wrist to promote proper punching technique.', 23, 23),
('2021-04-28 13:14:32.984913', '2021-04-28 13:14:33.000000', 'en', 'Tent', 'tent', 'With tons of space inside (for max. 4 persons), full head height throughout the entire tent and an unusual and striking shape, this tent offers you everything you need.', 24, 24),
('2021-04-28 13:14:33.034883', '2021-04-28 13:14:33.000000', 'en', 'Cruiser Skateboard', 'cruiser-skateboard', 'Based on the 1970s iconic shape, but made to a larger 69cm size, with updated, quality component, these skateboards are great for beginners to learn the foot spacing required, and are perfect for all-day cruising.', 25, 25),
('2021-04-28 13:14:33.084164', '2021-04-28 13:14:33.000000', 'en', 'Football', 'football', 'This football features high-contrast graphics for high-visibility during play, while its machine-stitched tpu casing offers consistent performance.', 26, 26),
('2021-04-28 13:14:33.147333', '2021-04-28 13:14:33.000000', 'en', 'Tennis Ball', 'tennis-ball', 'Our dog loves these tennis balls and they last for some time before they eventually either get lost in some field or bush or the covering comes off due to it being used most of the day every day.', 27, 27),
('2021-04-28 13:14:33.184694', '2021-04-28 13:14:33.000000', 'en', 'Basketball', 'basketball', 'The Wilson MVP ball is perfect for playing basketball, and improving your skill for hours on end. Designed for new players, it is created with a high-quality rubber suitable for courts, allowing you to get full use during your practices.', 28, 28),
('2021-04-28 13:14:33.300871', '2021-04-28 13:14:33.000000', 'en', 'Ultraboost Running Shoe', 'ultraboost-running-shoe', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 29, 29),
('2021-04-28 13:14:33.474072', '2021-04-28 13:14:33.000000', 'en', 'Freerun Running Shoe', 'freerun-running-shoe', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 30, 30),
('2021-04-28 13:14:33.661416', '2021-04-28 13:14:33.000000', 'en', 'Hi-Top Basketball Shoe', 'hi-top-basketball-shoe', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 31, 31),
('2021-04-28 13:14:33.816068', '2021-04-28 13:14:33.000000', 'en', 'Pureboost Running Shoe', 'pureboost-running-shoe', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 32, 32),
('2021-04-28 13:14:33.971698', '2021-04-28 13:14:33.000000', 'en', 'RunX Running Shoe', 'runx-running-shoe', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 33, 33),
('2021-04-28 13:14:34.130867', '2021-04-28 13:14:34.000000', 'en', 'Allstar Sneakers', 'allstar-sneakers', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 34, 34),
('2021-04-28 13:14:34.335368', '2021-04-28 13:14:34.000000', 'en', 'Spiky Cactus', 'spiky-cactus', 'A spiky yet elegant house cactus - perfect for the home or office. Origin and habitat: Probably native only to the Andes of Peru', 35, 35),
('2021-04-28 13:14:34.393885', '2021-04-28 13:14:34.000000', 'en', 'Tulip Pot', 'tulip-pot', 'Bright crimson red species tulip with black centers, the poppy-like flowers will open up in full sun. Ideal for rock gardens, pots and border edging.', 36, 36),
('2021-04-28 13:14:34.457018', '2021-04-28 13:14:34.000000', 'en', 'Hanging Plant', 'hanging-plant', 'Can be found in tropical and sub-tropical America where it grows on the branches of trees, but also on telephone wires and electricity cables and poles that sometimes topple with the weight of these plants. This plant loves a moist and warm air.', 37, 37),
('2021-04-28 13:14:34.510669', '2021-04-28 13:14:34.000000', 'en', 'Aloe Vera', 'aloe-vera', 'Decorative Aloe vera makes a lovely house plant. A really trendy plant, Aloe vera is just so easy to care for. Aloe vera sap has been renowned for its remarkable medicinal and cosmetic properties for many centuries and has been used to treat grazes, insect bites and sunburn - it really works.', 38, 38),
('2021-04-28 13:14:34.580579', '2021-04-28 13:14:34.000000', 'en', 'Fern Blechnum Gibbum', 'fern-blechnum-gibbum', 'Create a tropical feel in your home with this lush green tree fern, it has decorative leaves and will develop a short slender trunk in time.', 39, 39),
('2021-04-28 13:14:34.635656', '2021-04-28 13:14:34.000000', 'en', 'Assorted Indoor Succulents', 'assorted-succulents', 'These assorted succulents come in a variety of different shapes and colours - each with their own unique personality. Succulents grow best in plenty of light: a sunny windowsill would be the ideal spot for them to thrive!', 40, 40),
('2021-04-28 13:14:34.686904', '2021-04-28 13:14:34.000000', 'en', 'Orchid', 'orchid', 'Gloriously elegant. It can go along with any interior as it is a neutral color and the most popular Phalaenopsis overall. 2 to 3 foot stems host large white flowers that can last for over 2 months.', 41, 41),
('2021-04-28 13:14:34.760752', '2021-04-28 13:14:34.000000', 'en', 'Bonsai Tree', 'bonsai-tree', 'Excellent semi-evergreen bonsai. Indoors or out but needs some winter protection. All trees sent will leave the nursery in excellent condition and will be of equal quality or better than the photograph shown.', 42, 42),
('2021-04-28 13:14:34.857091', '2021-04-28 13:14:34.000000', 'en', 'Guardian Lion Statue', 'guardian-lion-statue', 'Placing it at home or office can bring you fortune and prosperity, guard your house and ward off ill fortune.', 43, 43),
('2021-04-28 13:14:34.911596', '2021-04-28 13:14:34.000000', 'en', 'Hand Trowel', 'hand-trowel', 'Hand trowel for garden cultivating hammer finish epoxy-coated head for improved resistance to rust, scratches, humidity and alkalines in the soil.', 44, 44),
('2021-04-28 13:14:34.952902', '2021-04-28 13:14:34.000000', 'en', 'Balloon Chair', 'balloon-chair', 'A charming vintage white wooden chair featuring an extremely spherical pink balloon. The balloon may be detached and used for other purposes, for example as a party decoration.', 45, 45),
('2021-04-28 13:14:34.986154', '2021-04-28 13:14:34.000000', 'en', 'Grey Fabric Sofa', 'grey-fabric-sofa', 'Seat cushions filled with high resilience foam and polyester fibre wadding give comfortable support for your body, and easily regain their shape when you get up. The cover is easy to keep clean as it is removable and can be machine washed.', 46, 46),
('2021-04-28 13:14:35.042956', '2021-04-28 13:14:35.000000', 'en', 'Leather Sofa', 'leather-sofa', 'This premium, tan-brown bonded leather seat is part of the \'chill\' sofa range. The lever activated recline feature makes it easy to adjust to any position. This smart, bustle back design with rounded tight padded arms has been designed with your comfort in mind. This well-padded chair has foam pocket sprung seat cushions and fibre-filled back cushions.', 47, 47),
('2021-04-28 13:14:35.100954', '2021-04-28 13:14:35.000000', 'en', 'Light Shade', 'light-shade', 'Modern tapered white polycotton pendant shade with a metallic silver chrome interior finish for maximum light reflection. Reversible gimble so it can be used as a ceiling shade or as a lamp shade.', 48, 48),
('2021-04-28 13:14:35.170358', '2021-04-28 13:14:35.000000', 'en', 'Wooden Side Desk', 'wooden-side-desk', 'Drawer stops prevent the drawers from being pulled out too far. Built-in cable management for collecting cables and cords; out of sight but close at hand.', 49, 49),
('2021-04-28 13:14:35.226505', '2021-04-28 13:14:35.000000', 'en', 'Comfy Padded Chair', 'comfy-padded-chair', 'You sit comfortably thanks to the shaped back. The chair frame is made of solid wood, which is a durable natural material.', 50, 50),
('2021-04-28 13:14:35.263380', '2021-04-28 13:14:35.000000', 'en', 'Black Eaves Chair', 'black-eaves-chair', 'Comfortable to sit on thanks to the bowl-shaped seat and rounded shape of the backrest. No tools are required to assemble the chair, you just click it together with a simple mechanism under the seat.', 51, 51),
('2021-04-28 13:14:35.327099', '2021-04-28 13:14:35.000000', 'en', 'Wooden Stool', 'wooden-stool', 'Solid wood is a hardwearing natural material, which can be sanded and surface treated as required.', 52, 52),
('2021-04-28 13:14:35.370926', '2021-04-28 13:14:35.000000', 'en', 'Bedside Table', 'bedside-table', 'Every table is unique, with varying grain pattern and natural colour shifts that are part of the charm of wood.', 53, 53),
('2021-04-28 13:14:35.404739', '2021-04-28 13:14:35.000000', 'en', 'Modern Cafe Chair', 'modern-cafe-chair', 'You sit comfortably thanks to the restful flexibility of the seat. Lightweight and easy to move around, yet stable enough even for the liveliest, young family members.', 54, 54);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_variant`
--

CREATE TABLE `product_variant` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime DEFAULT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `sku` varchar(255) NOT NULL,
  `stockOnHand` int(11) NOT NULL DEFAULT '0',
  `stockAllocated` int(11) NOT NULL DEFAULT '0',
  `outOfStockThreshold` int(11) NOT NULL DEFAULT '0',
  `useGlobalOutOfStockThreshold` tinyint(4) NOT NULL DEFAULT '1',
  `trackInventory` varchar(255) NOT NULL DEFAULT 'INHERIT',
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `featuredAssetId` int(11) DEFAULT NULL,
  `taxCategoryId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `product_variant`
--

INSERT INTO `product_variant` (`createdAt`, `updatedAt`, `deletedAt`, `enabled`, `sku`, `stockOnHand`, `stockAllocated`, `outOfStockThreshold`, `useGlobalOutOfStockThreshold`, `trackInventory`, `id`, `productId`, `featuredAssetId`, `taxCategoryId`) VALUES
('2021-04-28 13:14:30.927191', '2021-04-28 13:14:30.927191', NULL, 1, 'L2201308', 100, 0, 0, 1, 'INHERIT', 1, 1, NULL, 1),
('2021-04-28 13:14:30.956322', '2021-04-28 13:14:30.956322', NULL, 1, 'L2201508', 100, 0, 0, 1, 'INHERIT', 2, 1, NULL, 1),
('2021-04-28 13:14:30.975726', '2021-04-28 13:14:30.975726', NULL, 1, 'L2201316', 100, 0, 0, 1, 'INHERIT', 3, 1, NULL, 1),
('2021-04-28 13:14:30.993825', '2021-04-28 13:14:30.993825', NULL, 1, 'L2201516', 100, 0, 0, 1, 'INHERIT', 4, 1, NULL, 1),
('2021-04-28 13:14:31.093868', '2021-04-28 13:14:31.093868', NULL, 1, 'TBL200032', 100, 0, 0, 1, 'INHERIT', 5, 2, NULL, 1),
('2021-04-28 13:14:31.112257', '2021-04-28 13:14:31.112257', NULL, 1, 'TBL200128', 100, 0, 0, 1, 'INHERIT', 6, 2, NULL, 1),
('2021-04-28 13:14:31.195616', '2021-04-28 13:14:31.195616', NULL, 1, '834444', 100, 0, 0, 1, 'INHERIT', 7, 3, NULL, 1),
('2021-04-28 13:14:31.269081', '2021-04-28 13:14:31.269081', NULL, 1, 'LU32J590UQUXEN', 100, 0, 0, 1, 'INHERIT', 8, 4, NULL, 1),
('2021-04-28 13:14:31.348031', '2021-04-28 13:14:31.348031', NULL, 1, 'C24F390', 100, 0, 0, 1, 'INHERIT', 9, 5, NULL, 1),
('2021-04-28 13:14:31.365532', '2021-04-28 13:14:31.365532', NULL, 1, 'C27F390', 100, 0, 0, 1, 'INHERIT', 10, 5, NULL, 1),
('2021-04-28 13:14:31.494369', '2021-04-28 13:14:31.494369', NULL, 1, 'CMK32GX4M2AC04', 100, 0, 0, 1, 'INHERIT', 11, 6, NULL, 1),
('2021-04-28 13:14:31.519731', '2021-04-28 13:14:31.519731', NULL, 1, 'CMK32GX4M2AC08', 100, 0, 0, 1, 'INHERIT', 12, 6, NULL, 1),
('2021-04-28 13:14:31.539701', '2021-04-28 13:14:31.539701', NULL, 1, 'CMK32GX4M2AC16', 100, 0, 0, 1, 'INHERIT', 13, 6, NULL, 1),
('2021-04-28 13:14:31.707499', '2021-04-28 13:14:31.707499', NULL, 1, 'CGS480VR1063', 100, 0, 0, 1, 'INHERIT', 14, 7, NULL, 1),
('2021-04-28 13:14:31.725367', '2021-04-28 13:14:31.725367', NULL, 1, 'CGS480VR1064', 100, 0, 0, 1, 'INHERIT', 15, 7, NULL, 1),
('2021-04-28 13:14:31.742040', '2021-04-28 13:14:31.742040', NULL, 1, 'CGS480VR1065', 100, 0, 0, 1, 'INHERIT', 16, 7, NULL, 1),
('2021-04-28 13:14:31.760407', '2021-04-28 13:14:31.760407', NULL, 1, 'CGS480VR1066', 100, 0, 0, 1, 'INHERIT', 17, 7, NULL, 1),
('2021-04-28 13:14:31.890622', '2021-04-28 13:14:31.890622', NULL, 1, 'IHD455T1', 100, 0, 0, 1, 'INHERIT', 18, 8, NULL, 1),
('2021-04-28 13:14:31.910611', '2021-04-28 13:14:31.910611', NULL, 1, 'IHD455T2', 100, 0, 0, 1, 'INHERIT', 19, 8, NULL, 1),
('2021-04-28 13:14:31.934262', '2021-04-28 13:14:31.934262', NULL, 1, 'IHD455T3', 100, 0, 0, 1, 'INHERIT', 20, 8, NULL, 1),
('2021-04-28 13:14:31.953683', '2021-04-28 13:14:31.953683', NULL, 1, 'IHD455T4', 100, 0, 0, 1, 'INHERIT', 21, 8, NULL, 1),
('2021-04-28 13:14:31.972346', '2021-04-28 13:14:31.972346', NULL, 1, 'IHD455T6', 100, 0, 0, 1, 'INHERIT', 22, 8, NULL, 1),
('2021-04-28 13:14:32.027054', '2021-04-28 13:14:32.027054', NULL, 1, 'A4TKLA45535', 100, 0, 0, 1, 'INHERIT', 23, 9, NULL, 1),
('2021-04-28 13:14:32.071037', '2021-04-28 13:14:32.071037', NULL, 1, 'A23334x30', 100, 0, 0, 1, 'INHERIT', 24, 10, NULL, 1),
('2021-04-28 13:14:32.109487', '2021-04-28 13:14:32.109487', NULL, 1, 'USBCIN01.5MI', 100, 0, 0, 1, 'INHERIT', 25, 11, NULL, 1),
('2021-04-28 13:14:32.191495', '2021-04-28 13:14:32.191495', NULL, 1, 'IC22MWDD', 100, 0, 0, 1, 'INHERIT', 26, 12, NULL, 1),
('2021-04-28 13:14:32.253976', '2021-04-28 13:14:32.253976', NULL, 1, 'B0012UUP02', 100, 0, 0, 1, 'INHERIT', 27, 13, NULL, 1),
('2021-04-28 13:14:32.307595', '2021-04-28 13:14:32.307595', NULL, 1, 'B00AFC9099', 100, 0, 0, 1, 'INHERIT', 28, 14, NULL, 1),
('2021-04-28 13:14:32.368979', '2021-04-28 13:14:32.368979', NULL, 1, 'B00XI87KV8', 100, 0, 0, 1, 'INHERIT', 29, 15, NULL, 1),
('2021-04-28 13:14:32.435563', '2021-04-28 13:14:32.435563', NULL, 1, 'B07K1330LL', 100, 0, 0, 1, 'INHERIT', 30, 16, NULL, 1),
('2021-04-28 13:14:32.505902', '2021-04-28 13:14:32.505902', NULL, 1, 'B07D990021', 100, 0, 0, 1, 'INHERIT', 31, 17, NULL, 1),
('2021-04-28 13:14:32.548880', '2021-04-28 13:14:32.548880', NULL, 1, 'B07D33B334', 100, 0, 0, 1, 'INHERIT', 32, 18, NULL, 1),
('2021-04-28 13:14:32.611412', '2021-04-28 13:14:32.611412', NULL, 1, 'B07D75V44S', 100, 0, 0, 1, 'INHERIT', 33, 19, NULL, 1),
('2021-04-28 13:14:32.698316', '2021-04-28 13:14:32.698316', NULL, 1, 'B07D78JTLR', 100, 0, 0, 1, 'INHERIT', 34, 20, NULL, 1),
('2021-04-28 13:14:32.840520', '2021-04-28 13:14:32.840520', NULL, 1, 'RB000844334', 100, 0, 0, 1, 'INHERIT', 35, 21, NULL, 1),
('2021-04-28 13:14:32.914008', '2021-04-28 13:14:32.914008', NULL, 1, 'B07CNGXVXT', 100, 0, 0, 1, 'INHERIT', 36, 22, NULL, 1),
('2021-04-28 13:14:32.950158', '2021-04-28 13:14:32.950158', NULL, 1, 'B000ZYLPPU', 100, 0, 0, 1, 'INHERIT', 37, 23, NULL, 1),
('2021-04-28 13:14:33.013139', '2021-04-28 13:14:33.013139', NULL, 1, '2000023510', 100, 0, 0, 1, 'INHERIT', 38, 24, NULL, 1),
('2021-04-28 13:14:33.053136', '2021-04-28 13:14:33.053136', NULL, 1, '799872520', 100, 0, 0, 1, 'INHERIT', 39, 25, NULL, 1),
('2021-04-28 13:14:33.102972', '2021-04-28 13:14:33.102972', NULL, 1, 'SC3137-056', 100, 0, 0, 1, 'INHERIT', 40, 26, NULL, 1),
('2021-04-28 13:14:33.163863', '2021-04-28 13:14:33.163863', NULL, 1, 'WRT11752P', 100, 0, 0, 1, 'INHERIT', 41, 27, NULL, 1),
('2021-04-28 13:14:33.203304', '2021-04-28 13:14:33.203304', NULL, 1, 'WTB1418XB06', 100, 0, 0, 1, 'INHERIT', 42, 28, NULL, 1),
('2021-04-28 13:14:33.376558', '2021-04-28 13:14:33.376558', NULL, 1, 'RS0040', 100, 0, 0, 1, 'INHERIT', 43, 29, NULL, 1),
('2021-04-28 13:14:33.396091', '2021-04-28 13:14:33.396091', NULL, 1, 'RS0042', 100, 0, 0, 1, 'INHERIT', 44, 29, NULL, 1),
('2021-04-28 13:14:33.414576', '2021-04-28 13:14:33.414576', NULL, 1, 'RS0044', 100, 0, 0, 1, 'INHERIT', 45, 29, NULL, 1),
('2021-04-28 13:14:33.433514', '2021-04-28 13:14:33.433514', NULL, 1, 'RS0046', 100, 0, 0, 1, 'INHERIT', 46, 29, NULL, 1),
('2021-04-28 13:14:33.544079', '2021-04-28 13:14:33.544079', NULL, 1, 'AR4561-40', 100, 0, 0, 1, 'INHERIT', 47, 30, NULL, 1),
('2021-04-28 13:14:33.565778', '2021-04-28 13:14:33.565778', NULL, 1, 'AR4561-42', 100, 0, 0, 1, 'INHERIT', 48, 30, NULL, 1),
('2021-04-28 13:14:33.588872', '2021-04-28 13:14:33.588872', NULL, 1, 'AR4561-44', 100, 0, 0, 1, 'INHERIT', 49, 30, NULL, 1),
('2021-04-28 13:14:33.612052', '2021-04-28 13:14:33.612052', NULL, 1, 'AR4561-46', 100, 0, 0, 1, 'INHERIT', 50, 30, NULL, 1),
('2021-04-28 13:14:33.730785', '2021-04-28 13:14:33.730785', NULL, 1, 'AO7893-40', 100, 0, 0, 1, 'INHERIT', 51, 31, NULL, 1),
('2021-04-28 13:14:33.750642', '2021-04-28 13:14:33.750642', NULL, 1, 'AO7893-42', 100, 0, 0, 1, 'INHERIT', 52, 31, NULL, 1),
('2021-04-28 13:14:33.767059', '2021-04-28 13:14:33.767059', NULL, 1, 'AO7893-44', 100, 0, 0, 1, 'INHERIT', 53, 31, NULL, 1),
('2021-04-28 13:14:33.788007', '2021-04-28 13:14:33.788007', NULL, 1, 'AO7893-46', 100, 0, 0, 1, 'INHERIT', 54, 31, NULL, 1),
('2021-04-28 13:14:33.884557', '2021-04-28 13:14:33.884557', NULL, 1, 'F3578640', 100, 0, 0, 1, 'INHERIT', 55, 32, NULL, 1),
('2021-04-28 13:14:33.908640', '2021-04-28 13:14:33.908640', NULL, 1, 'F3578642', 100, 0, 0, 1, 'INHERIT', 56, 32, NULL, 1),
('2021-04-28 13:14:33.925775', '2021-04-28 13:14:33.925775', NULL, 1, 'F3578644', 100, 0, 0, 1, 'INHERIT', 57, 32, NULL, 1),
('2021-04-28 13:14:33.943051', '2021-04-28 13:14:33.943051', NULL, 1, 'F3578646', 100, 0, 0, 1, 'INHERIT', 58, 32, NULL, 1),
('2021-04-28 13:14:34.040139', '2021-04-28 13:14:34.040139', NULL, 1, 'F3633340', 100, 0, 0, 1, 'INHERIT', 59, 33, NULL, 1),
('2021-04-28 13:14:34.058861', '2021-04-28 13:14:34.058861', NULL, 1, 'F3633342', 100, 0, 0, 1, 'INHERIT', 60, 33, NULL, 1),
('2021-04-28 13:14:34.075955', '2021-04-28 13:14:34.075955', NULL, 1, 'F3633344', 100, 0, 0, 1, 'INHERIT', 61, 33, NULL, 1),
('2021-04-28 13:14:34.091889', '2021-04-28 13:14:34.091889', NULL, 1, 'F3633346', 100, 0, 0, 1, 'INHERIT', 62, 33, NULL, 1),
('2021-04-28 13:14:34.201827', '2021-04-28 13:14:34.201827', NULL, 1, 'CAS23340', 100, 0, 0, 1, 'INHERIT', 63, 34, NULL, 1),
('2021-04-28 13:14:34.218504', '2021-04-28 13:14:34.218504', NULL, 1, 'CAS23342', 100, 0, 0, 1, 'INHERIT', 64, 34, NULL, 1),
('2021-04-28 13:14:34.233684', '2021-04-28 13:14:34.233684', NULL, 1, 'CAS23344', 100, 0, 0, 1, 'INHERIT', 65, 34, NULL, 1),
('2021-04-28 13:14:34.249149', '2021-04-28 13:14:34.249149', NULL, 1, 'CAS23346', 100, 0, 0, 1, 'INHERIT', 66, 34, NULL, 1),
('2021-04-28 13:14:34.349972', '2021-04-28 13:14:34.349972', NULL, 1, 'SC011001', 100, 0, 0, 1, 'INHERIT', 67, 35, NULL, 1),
('2021-04-28 13:14:34.412166', '2021-04-28 13:14:34.412166', NULL, 1, 'A58477', 100, 0, 0, 1, 'INHERIT', 68, 36, NULL, 1),
('2021-04-28 13:14:34.487313', '2021-04-28 13:14:34.487313', NULL, 1, 'A44223', 100, 0, 0, 1, 'INHERIT', 69, 37, NULL, 1),
('2021-04-28 13:14:34.525575', '2021-04-28 13:14:34.525575', NULL, 1, 'A44352', 100, 0, 0, 1, 'INHERIT', 70, 38, NULL, 1),
('2021-04-28 13:14:34.605828', '2021-04-28 13:14:34.605828', NULL, 1, 'A04851', 100, 0, 0, 1, 'INHERIT', 71, 39, NULL, 1),
('2021-04-28 13:14:34.651070', '2021-04-28 13:14:34.651070', NULL, 1, 'A08593', 100, 0, 0, 1, 'INHERIT', 72, 40, NULL, 1),
('2021-04-28 13:14:34.732814', '2021-04-28 13:14:34.732814', NULL, 1, 'ROR00221', 100, 0, 0, 1, 'INHERIT', 73, 41, NULL, 1),
('2021-04-28 13:14:34.779921', '2021-04-28 13:14:34.779921', NULL, 1, 'B01MXFLUSV', 100, 0, 0, 1, 'INHERIT', 74, 42, NULL, 1),
('2021-04-28 13:14:34.876012', '2021-04-28 13:14:34.876012', NULL, 1, 'GL34LLW11', 100, 0, 0, 1, 'INHERIT', 75, 43, NULL, 1),
('2021-04-28 13:14:34.933825', '2021-04-28 13:14:34.933825', NULL, 1, '4058NB/09', 100, 0, 0, 1, 'INHERIT', 76, 44, NULL, 1),
('2021-04-28 13:14:34.966832', '2021-04-28 13:14:34.966832', NULL, 1, '34-BC82444', 100, 0, 0, 1, 'INHERIT', 77, 45, NULL, 1),
('2021-04-28 13:14:35.001367', '2021-04-28 13:14:35.001367', NULL, 1, 'CH00001-12', 100, 0, 0, 1, 'INHERIT', 78, 46, NULL, 1),
('2021-04-28 13:14:35.060488', '2021-04-28 13:14:35.060488', NULL, 1, 'CH00001-02', 100, 0, 0, 1, 'INHERIT', 79, 47, NULL, 1),
('2021-04-28 13:14:35.132179', '2021-04-28 13:14:35.132179', NULL, 1, 'B45809LSW', 100, 0, 0, 1, 'INHERIT', 80, 48, NULL, 1),
('2021-04-28 13:14:35.195547', '2021-04-28 13:14:35.195547', NULL, 1, '304.096.29', 100, 0, 0, 1, 'INHERIT', 81, 49, NULL, 1),
('2021-04-28 13:14:35.241509', '2021-04-28 13:14:35.241509', NULL, 1, '404.068.14', 100, 0, 0, 1, 'INHERIT', 82, 50, NULL, 1),
('2021-04-28 13:14:35.283611', '2021-04-28 13:14:35.283611', NULL, 1, '003.600.02', 100, 0, 0, 1, 'INHERIT', 83, 51, NULL, 1),
('2021-04-28 13:14:35.351030', '2021-04-28 13:14:35.351030', NULL, 1, '202.493.30', 100, 0, 0, 1, 'INHERIT', 84, 52, NULL, 1),
('2021-04-28 13:14:35.386479', '2021-04-28 13:14:35.386479', NULL, 1, '404.290.14', 100, 0, 0, 1, 'INHERIT', 85, 53, NULL, 1),
('2021-04-28 13:14:35.464665', '2021-04-28 13:14:35.464665', NULL, 1, '404.038.96', 100, 0, 0, 1, 'INHERIT', 86, 54, NULL, 1),
('2021-04-28 13:14:35.494739', '2021-04-28 13:14:35.494739', NULL, 1, '404.038.96', 100, 0, 0, 1, 'INHERIT', 87, 54, NULL, 1),
('2021-04-28 13:14:35.517764', '2021-04-28 13:14:35.517764', NULL, 1, '404.038.96', 100, 0, 0, 1, 'INHERIT', 88, 54, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_variant_asset`
--

CREATE TABLE `product_variant_asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `assetId` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `productVariantId` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_variant_channels_channel`
--

CREATE TABLE `product_variant_channels_channel` (
  `productVariantId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `product_variant_channels_channel`
--

INSERT INTO `product_variant_channels_channel` (`productVariantId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_variant_facet_values_facet_value`
--

CREATE TABLE `product_variant_facet_values_facet_value` (
  `productVariantId` int(11) NOT NULL,
  `facetValueId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `product_variant_facet_values_facet_value`
--

INSERT INTO `product_variant_facet_values_facet_value` (`productVariantId`, `facetValueId`) VALUES
(86, 38),
(87, 39),
(88, 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_variant_options_product_option`
--

CREATE TABLE `product_variant_options_product_option` (
  `productVariantId` int(11) NOT NULL,
  `productOptionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `product_variant_options_product_option`
--

INSERT INTO `product_variant_options_product_option` (`productVariantId`, `productOptionId`) VALUES
(1, 1),
(1, 3),
(2, 2),
(2, 3),
(3, 1),
(3, 4),
(4, 2),
(4, 4),
(5, 5),
(6, 6),
(9, 7),
(10, 8),
(11, 9),
(12, 10),
(13, 11),
(14, 12),
(14, 14),
(15, 13),
(15, 14),
(16, 12),
(16, 15),
(17, 13),
(17, 15),
(18, 16),
(19, 17),
(20, 18),
(21, 19),
(22, 20),
(43, 21),
(44, 22),
(45, 23),
(46, 24),
(47, 25),
(48, 26),
(49, 27),
(50, 28),
(51, 29),
(52, 30),
(53, 31),
(54, 32),
(55, 33),
(56, 34),
(57, 35),
(58, 36),
(59, 37),
(60, 38),
(61, 39),
(62, 40),
(63, 41),
(64, 42),
(65, 43),
(66, 44),
(86, 45),
(87, 46),
(88, 47);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_variant_price`
--

CREATE TABLE `product_variant_price` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `price` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `channelId` int(11) NOT NULL,
  `variantId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `product_variant_price`
--

INSERT INTO `product_variant_price` (`createdAt`, `updatedAt`, `price`, `id`, `channelId`, `variantId`) VALUES
('2021-04-28 13:14:30.947007', '2021-04-28 13:14:30.947007', 129900, 1, 1, 1),
('2021-04-28 13:14:30.968288', '2021-04-28 13:14:30.968288', 139900, 2, 1, 2),
('2021-04-28 13:14:30.986388', '2021-04-28 13:14:30.986388', 219900, 3, 1, 3),
('2021-04-28 13:14:31.006808', '2021-04-28 13:14:31.006808', 229900, 4, 1, 4),
('2021-04-28 13:14:31.105169', '2021-04-28 13:14:31.105169', 32900, 5, 1, 5),
('2021-04-28 13:14:31.123132', '2021-04-28 13:14:31.123132', 44500, 6, 1, 6),
('2021-04-28 13:14:31.207024', '2021-04-28 13:14:31.207024', 1899, 7, 1, 7),
('2021-04-28 13:14:31.284686', '2021-04-28 13:14:31.284686', 31000, 8, 1, 8),
('2021-04-28 13:14:31.359200', '2021-04-28 13:14:31.359200', 14374, 9, 1, 9),
('2021-04-28 13:14:31.381932', '2021-04-28 13:14:31.381932', 16994, 10, 1, 10),
('2021-04-28 13:14:31.509681', '2021-04-28 13:14:31.509681', 13785, 11, 1, 11),
('2021-04-28 13:14:31.530207', '2021-04-28 13:14:31.530207', 14639, 12, 1, 12),
('2021-04-28 13:14:31.552070', '2021-04-28 13:14:31.552070', 28181, 13, 1, 13),
('2021-04-28 13:14:31.719492', '2021-04-28 13:14:31.719492', 108720, 14, 1, 14),
('2021-04-28 13:14:31.735834', '2021-04-28 13:14:31.735834', 109995, 15, 1, 15),
('2021-04-28 13:14:31.754556', '2021-04-28 13:14:31.754556', 93120, 16, 1, 16),
('2021-04-28 13:14:31.773268', '2021-04-28 13:14:31.773268', 94920, 17, 1, 17),
('2021-04-28 13:14:31.904628', '2021-04-28 13:14:31.904628', 3799, 18, 1, 18),
('2021-04-28 13:14:31.924790', '2021-04-28 13:14:31.924790', 5374, 19, 1, 19),
('2021-04-28 13:14:31.945847', '2021-04-28 13:14:31.945847', 7896, 20, 1, 20),
('2021-04-28 13:14:31.964592', '2021-04-28 13:14:31.964592', 9299, 21, 1, 21),
('2021-04-28 13:14:31.986253', '2021-04-28 13:14:31.986253', 13435, 22, 1, 22),
('2021-04-28 13:14:32.037028', '2021-04-28 13:14:32.037028', 7489, 23, 1, 23),
('2021-04-28 13:14:32.081555', '2021-04-28 13:14:32.081555', 597, 24, 1, 24),
('2021-04-28 13:14:32.122973', '2021-04-28 13:14:32.122973', 6900, 25, 1, 25),
('2021-04-28 13:14:32.205670', '2021-04-28 13:14:32.205670', 17499, 26, 1, 26),
('2021-04-28 13:14:32.264752', '2021-04-28 13:14:32.264752', 10400, 27, 1, 27),
('2021-04-28 13:14:32.318554', '2021-04-28 13:14:32.318554', 535000, 28, 1, 28),
('2021-04-28 13:14:32.385204', '2021-04-28 13:14:32.385204', 1498, 29, 1, 29),
('2021-04-28 13:14:32.444486', '2021-04-28 13:14:32.444486', 2000, 30, 1, 30),
('2021-04-28 13:14:32.518192', '2021-04-28 13:14:32.518192', 89999, 31, 1, 31),
('2021-04-28 13:14:32.559027', '2021-04-28 13:14:32.559027', 61500, 32, 1, 32),
('2021-04-28 13:14:32.622565', '2021-04-28 13:14:32.622565', 52100, 33, 1, 33),
('2021-04-28 13:14:32.709749', '2021-04-28 13:14:32.709749', 79900, 34, 1, 34),
('2021-04-28 13:14:32.850896', '2021-04-28 13:14:32.850896', 249900, 35, 1, 35),
('2021-04-28 13:14:32.923423', '2021-04-28 13:14:32.923423', 799, 36, 1, 36),
('2021-04-28 13:14:32.959590', '2021-04-28 13:14:32.959590', 3304, 37, 1, 37),
('2021-04-28 13:14:33.023400', '2021-04-28 13:14:33.023400', 21493, 38, 1, 38),
('2021-04-28 13:14:33.063361', '2021-04-28 13:14:33.063361', 2499, 39, 1, 39),
('2021-04-28 13:14:33.114681', '2021-04-28 13:14:33.114681', 5707, 40, 1, 40),
('2021-04-28 13:14:33.173247', '2021-04-28 13:14:33.173247', 1273, 41, 1, 41),
('2021-04-28 13:14:33.214160', '2021-04-28 13:14:33.214160', 3562, 42, 1, 42),
('2021-04-28 13:14:33.386744', '2021-04-28 13:14:33.386744', 9999, 43, 1, 43),
('2021-04-28 13:14:33.407694', '2021-04-28 13:14:33.407694', 9999, 44, 1, 44),
('2021-04-28 13:14:33.426754', '2021-04-28 13:14:33.426754', 9999, 45, 1, 45),
('2021-04-28 13:14:33.444261', '2021-04-28 13:14:33.444261', 9999, 46, 1, 46),
('2021-04-28 13:14:33.557728', '2021-04-28 13:14:33.557728', 16000, 47, 1, 47),
('2021-04-28 13:14:33.578648', '2021-04-28 13:14:33.578648', 16000, 48, 1, 48),
('2021-04-28 13:14:33.602074', '2021-04-28 13:14:33.602074', 16000, 49, 1, 49),
('2021-04-28 13:14:33.626639', '2021-04-28 13:14:33.626639', 16000, 50, 1, 50),
('2021-04-28 13:14:33.742997', '2021-04-28 13:14:33.742997', 14000, 51, 1, 51),
('2021-04-28 13:14:33.761317', '2021-04-28 13:14:33.761317', 14000, 52, 1, 52),
('2021-04-28 13:14:33.779630', '2021-04-28 13:14:33.779630', 14000, 53, 1, 53),
('2021-04-28 13:14:33.797762', '2021-04-28 13:14:33.797762', 14000, 54, 1, 54),
('2021-04-28 13:14:33.900767', '2021-04-28 13:14:33.900767', 9995, 55, 1, 55),
('2021-04-28 13:14:33.917631', '2021-04-28 13:14:33.917631', 9995, 56, 1, 56),
('2021-04-28 13:14:33.936477', '2021-04-28 13:14:33.936477', 9995, 57, 1, 57),
('2021-04-28 13:14:33.954637', '2021-04-28 13:14:33.954637', 9995, 58, 1, 58),
('2021-04-28 13:14:34.050206', '2021-04-28 13:14:34.050206', 4495, 59, 1, 59),
('2021-04-28 13:14:34.069672', '2021-04-28 13:14:34.069672', 4495, 60, 1, 60),
('2021-04-28 13:14:34.086059', '2021-04-28 13:14:34.086059', 4495, 61, 1, 61),
('2021-04-28 13:14:34.105055', '2021-04-28 13:14:34.105055', 4495, 62, 1, 62),
('2021-04-28 13:14:34.210886', '2021-04-28 13:14:34.210886', 6500, 63, 1, 63),
('2021-04-28 13:14:34.227679', '2021-04-28 13:14:34.227679', 6500, 64, 1, 64),
('2021-04-28 13:14:34.243334', '2021-04-28 13:14:34.243334', 6500, 65, 1, 65),
('2021-04-28 13:14:34.261282', '2021-04-28 13:14:34.261282', 6500, 66, 1, 66),
('2021-04-28 13:14:34.358578', '2021-04-28 13:14:34.358578', 1550, 67, 1, 67),
('2021-04-28 13:14:34.424582', '2021-04-28 13:14:34.424582', 675, 68, 1, 68),
('2021-04-28 13:14:34.499248', '2021-04-28 13:14:34.499248', 1995, 69, 1, 69),
('2021-04-28 13:14:34.535692', '2021-04-28 13:14:34.535692', 699, 70, 1, 70),
('2021-04-28 13:14:34.617088', '2021-04-28 13:14:34.617088', 895, 71, 1, 71),
('2021-04-28 13:14:34.659767', '2021-04-28 13:14:34.659767', 3250, 72, 1, 72),
('2021-04-28 13:14:34.744125', '2021-04-28 13:14:34.744125', 6500, 73, 1, 73),
('2021-04-28 13:14:34.810009', '2021-04-28 13:14:34.810009', 1999, 74, 1, 74),
('2021-04-28 13:14:34.883832', '2021-04-28 13:14:34.883832', 18853, 75, 1, 75),
('2021-04-28 13:14:34.942635', '2021-04-28 13:14:34.942635', 499, 76, 1, 76),
('2021-04-28 13:14:34.975804', '2021-04-28 13:14:34.975804', 6500, 77, 1, 77),
('2021-04-28 13:14:35.014555', '2021-04-28 13:14:35.014555', 29500, 78, 1, 78),
('2021-04-28 13:14:35.069426', '2021-04-28 13:14:35.069426', 124500, 79, 1, 79),
('2021-04-28 13:14:35.141351', '2021-04-28 13:14:35.141351', 2845, 80, 1, 80),
('2021-04-28 13:14:35.214659', '2021-04-28 13:14:35.214659', 12500, 81, 1, 81),
('2021-04-28 13:14:35.250175', '2021-04-28 13:14:35.250175', 13000, 82, 1, 82),
('2021-04-28 13:14:35.294185', '2021-04-28 13:14:35.294185', 7000, 83, 1, 83),
('2021-04-28 13:14:35.360837', '2021-04-28 13:14:35.360837', 1400, 84, 1, 84),
('2021-04-28 13:14:35.394326', '2021-04-28 13:14:35.394326', 13000, 85, 1, 85),
('2021-04-28 13:14:35.475295', '2021-04-28 13:14:35.475295', 10000, 86, 1, 86),
('2021-04-28 13:14:35.507401', '2021-04-28 13:14:35.507401', 10000, 87, 1, 87),
('2021-04-28 13:14:35.527284', '2021-04-28 13:14:35.527284', 10000, 88, 1, 88);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_variant_translation`
--

CREATE TABLE `product_variant_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `product_variant_translation`
--

INSERT INTO `product_variant_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2021-04-28 13:14:30.918231', '2021-04-28 13:14:30.000000', 'en', 'Laptop 13 inch 8GB', 1, 1),
('2021-04-28 13:14:30.952694', '2021-04-28 13:14:30.000000', 'en', 'Laptop 15 inch 8GB', 2, 2),
('2021-04-28 13:14:30.971730', '2021-04-28 13:14:30.000000', 'en', 'Laptop 13 inch 16GB', 3, 3),
('2021-04-28 13:14:30.989277', '2021-04-28 13:14:30.000000', 'en', 'Laptop 15 inch 16GB', 4, 4),
('2021-04-28 13:14:31.089798', '2021-04-28 13:14:31.000000', 'en', 'Tablet 32GB', 5, 5),
('2021-04-28 13:14:31.108355', '2021-04-28 13:14:31.000000', 'en', 'Tablet 128GB', 6, 6),
('2021-04-28 13:14:31.192052', '2021-04-28 13:14:31.000000', 'en', 'Wireless Optical Mouse', 7, 7),
('2021-04-28 13:14:31.263894', '2021-04-28 13:14:31.000000', 'en', '32-Inch Monitor', 8, 8),
('2021-04-28 13:14:31.344408', '2021-04-28 13:14:31.000000', 'en', 'Curvy Monitor 24 inch', 9, 9),
('2021-04-28 13:14:31.361824', '2021-04-28 13:14:31.000000', 'en', 'Curvy Monitor 27 inch', 10, 10),
('2021-04-28 13:14:31.489379', '2021-04-28 13:14:31.000000', 'en', 'High Performance RAM 4GB', 11, 11),
('2021-04-28 13:14:31.513407', '2021-04-28 13:14:31.000000', 'en', 'High Performance RAM 8GB', 12, 12),
('2021-04-28 13:14:31.535925', '2021-04-28 13:14:31.000000', 'en', 'High Performance RAM 16GB', 13, 13),
('2021-04-28 13:14:31.704023', '2021-04-28 13:14:31.000000', 'en', 'Gaming PC i7-8700 240GB SSD', 14, 14),
('2021-04-28 13:14:31.721921', '2021-04-28 13:14:31.000000', 'en', 'Gaming PC R7-2700 240GB SSD', 15, 15),
('2021-04-28 13:14:31.738493', '2021-04-28 13:14:31.000000', 'en', 'Gaming PC i7-8700 120GB SSD', 16, 16),
('2021-04-28 13:14:31.757141', '2021-04-28 13:14:31.000000', 'en', 'Gaming PC R7-2700 120GB SSD', 17, 17),
('2021-04-28 13:14:31.886829', '2021-04-28 13:14:31.000000', 'en', 'Hard Drive 1TB', 18, 18),
('2021-04-28 13:14:31.907182', '2021-04-28 13:14:31.000000', 'en', 'Hard Drive 2TB', 19, 19),
('2021-04-28 13:14:31.929166', '2021-04-28 13:14:31.000000', 'en', 'Hard Drive 3TB', 20, 20),
('2021-04-28 13:14:31.949098', '2021-04-28 13:14:31.000000', 'en', 'Hard Drive 4TB', 21, 21),
('2021-04-28 13:14:31.968650', '2021-04-28 13:14:31.000000', 'en', 'Hard Drive 6TB', 22, 22),
('2021-04-28 13:14:32.023560', '2021-04-28 13:14:32.000000', 'en', 'Clacky Keyboard', 23, 23),
('2021-04-28 13:14:32.067482', '2021-04-28 13:14:32.000000', 'en', 'Ethernet Cable', 24, 24),
('2021-04-28 13:14:32.105767', '2021-04-28 13:14:32.000000', 'en', 'USB Cable', 25, 25),
('2021-04-28 13:14:32.187664', '2021-04-28 13:14:32.000000', 'en', 'Instant Camera', 26, 26),
('2021-04-28 13:14:32.249941', '2021-04-28 13:14:32.000000', 'en', 'Camera Lens', 27, 27),
('2021-04-28 13:14:32.304230', '2021-04-28 13:14:32.000000', 'en', 'Vintage Folding Camera', 28, 28),
('2021-04-28 13:14:32.360871', '2021-04-28 13:14:32.000000', 'en', 'Tripod', 29, 29),
('2021-04-28 13:14:32.432286', '2021-04-28 13:14:32.000000', 'en', 'Instamatic Camera', 30, 30),
('2021-04-28 13:14:32.502058', '2021-04-28 13:14:32.000000', 'en', 'Compact Digital Camera', 31, 31),
('2021-04-28 13:14:32.545669', '2021-04-28 13:14:32.000000', 'en', 'Nikkormat SLR Camera', 32, 32),
('2021-04-28 13:14:32.605711', '2021-04-28 13:14:32.000000', 'en', 'Compact SLR Camera', 33, 33),
('2021-04-28 13:14:32.693136', '2021-04-28 13:14:32.000000', 'en', 'Twin Lens Camera', 34, 34),
('2021-04-28 13:14:32.836553', '2021-04-28 13:14:32.000000', 'en', 'Road Bike', 35, 35),
('2021-04-28 13:14:32.910799', '2021-04-28 13:14:32.000000', 'en', 'Skipping Rope', 36, 36),
('2021-04-28 13:14:32.946711', '2021-04-28 13:14:32.000000', 'en', 'Boxing Gloves', 37, 37),
('2021-04-28 13:14:33.009535', '2021-04-28 13:14:33.000000', 'en', 'Tent', 38, 38),
('2021-04-28 13:14:33.049851', '2021-04-28 13:14:33.000000', 'en', 'Cruiser Skateboard', 39, 39),
('2021-04-28 13:14:33.099823', '2021-04-28 13:14:33.000000', 'en', 'Football', 40, 40),
('2021-04-28 13:14:33.160697', '2021-04-28 13:14:33.000000', 'en', 'Tennis Ball', 41, 41),
('2021-04-28 13:14:33.199250', '2021-04-28 13:14:33.000000', 'en', 'Basketball', 42, 42),
('2021-04-28 13:14:33.369659', '2021-04-28 13:14:33.000000', 'en', 'Ultraboost Running Shoe Size 40', 43, 43),
('2021-04-28 13:14:33.392631', '2021-04-28 13:14:33.000000', 'en', 'Ultraboost Running Shoe Size 42', 44, 44),
('2021-04-28 13:14:33.410536', '2021-04-28 13:14:33.000000', 'en', 'Ultraboost Running Shoe Size 44', 45, 45),
('2021-04-28 13:14:33.430046', '2021-04-28 13:14:33.000000', 'en', 'Ultraboost Running Shoe Size 46', 46, 46),
('2021-04-28 13:14:33.540346', '2021-04-28 13:14:33.000000', 'en', 'Freerun Running Shoe Size 40', 47, 47),
('2021-04-28 13:14:33.561109', '2021-04-28 13:14:33.000000', 'en', 'Freerun Running Shoe Size 42', 48, 48),
('2021-04-28 13:14:33.583928', '2021-04-28 13:14:33.000000', 'en', 'Freerun Running Shoe Size 44', 49, 49),
('2021-04-28 13:14:33.608414', '2021-04-28 13:14:33.000000', 'en', 'Freerun Running Shoe Size 46', 50, 50),
('2021-04-28 13:14:33.727230', '2021-04-28 13:14:33.000000', 'en', 'Hi-Top Basketball Shoe Size 40', 51, 51),
('2021-04-28 13:14:33.746288', '2021-04-28 13:14:33.000000', 'en', 'Hi-Top Basketball Shoe Size 42', 52, 52),
('2021-04-28 13:14:33.763679', '2021-04-28 13:14:33.000000', 'en', 'Hi-Top Basketball Shoe Size 44', 53, 53),
('2021-04-28 13:14:33.783184', '2021-04-28 13:14:33.000000', 'en', 'Hi-Top Basketball Shoe Size 46', 54, 54),
('2021-04-28 13:14:33.880592', '2021-04-28 13:14:33.000000', 'en', 'Pureboost Running Shoe Size 40', 55, 55),
('2021-04-28 13:14:33.905009', '2021-04-28 13:14:33.000000', 'en', 'Pureboost Running Shoe Size 42', 56, 56),
('2021-04-28 13:14:33.922256', '2021-04-28 13:14:33.000000', 'en', 'Pureboost Running Shoe Size 44', 57, 57),
('2021-04-28 13:14:33.939442', '2021-04-28 13:14:33.000000', 'en', 'Pureboost Running Shoe Size 46', 58, 58),
('2021-04-28 13:14:34.036651', '2021-04-28 13:14:34.000000', 'en', 'RunX Running Shoe Size 40', 59, 59),
('2021-04-28 13:14:34.055093', '2021-04-28 13:14:34.000000', 'en', 'RunX Running Shoe Size 42', 60, 60),
('2021-04-28 13:14:34.072771', '2021-04-28 13:14:34.000000', 'en', 'RunX Running Shoe Size 44', 61, 61),
('2021-04-28 13:14:34.088751', '2021-04-28 13:14:34.000000', 'en', 'RunX Running Shoe Size 46', 62, 62),
('2021-04-28 13:14:34.197808', '2021-04-28 13:14:34.000000', 'en', 'Allstar Sneakers Size 40', 63, 63),
('2021-04-28 13:14:34.214465', '2021-04-28 13:14:34.000000', 'en', 'Allstar Sneakers Size 42', 64, 64),
('2021-04-28 13:14:34.230265', '2021-04-28 13:14:34.000000', 'en', 'Allstar Sneakers Size 44', 65, 65),
('2021-04-28 13:14:34.245873', '2021-04-28 13:14:34.000000', 'en', 'Allstar Sneakers Size 46', 66, 66),
('2021-04-28 13:14:34.346338', '2021-04-28 13:14:34.000000', 'en', 'Spiky Cactus', 67, 67),
('2021-04-28 13:14:34.408176', '2021-04-28 13:14:34.000000', 'en', 'Tulip Pot', 68, 68),
('2021-04-28 13:14:34.483360', '2021-04-28 13:14:34.000000', 'en', 'Hanging Plant', 69, 69),
('2021-04-28 13:14:34.521873', '2021-04-28 13:14:34.000000', 'en', 'Aloe Vera', 70, 70),
('2021-04-28 13:14:34.602096', '2021-04-28 13:14:34.000000', 'en', 'Fern Blechnum Gibbum', 71, 71),
('2021-04-28 13:14:34.647051', '2021-04-28 13:14:34.000000', 'en', 'Assorted Indoor Succulents', 72, 72),
('2021-04-28 13:14:34.726956', '2021-04-28 13:14:34.000000', 'en', 'Orchid', 73, 73),
('2021-04-28 13:14:34.776120', '2021-04-28 13:14:34.000000', 'en', 'Bonsai Tree', 74, 74),
('2021-04-28 13:14:34.872491', '2021-04-28 13:14:34.000000', 'en', 'Guardian Lion Statue', 75, 75),
('2021-04-28 13:14:34.930185', '2021-04-28 13:14:34.000000', 'en', 'Hand Trowel', 76, 76),
('2021-04-28 13:14:34.963621', '2021-04-28 13:14:34.000000', 'en', 'Balloon Chair', 77, 77),
('2021-04-28 13:14:34.997297', '2021-04-28 13:14:35.000000', 'en', 'Grey Fabric Sofa', 78, 78),
('2021-04-28 13:14:35.056657', '2021-04-28 13:14:35.000000', 'en', 'Leather Sofa', 79, 79),
('2021-04-28 13:14:35.126440', '2021-04-28 13:14:35.000000', 'en', 'Light Shade', 80, 80),
('2021-04-28 13:14:35.188549', '2021-04-28 13:14:35.000000', 'en', 'Wooden Side Desk', 81, 81),
('2021-04-28 13:14:35.238438', '2021-04-28 13:14:35.000000', 'en', 'Comfy Padded Chair', 82, 82),
('2021-04-28 13:14:35.278098', '2021-04-28 13:14:35.000000', 'en', 'Black Eaves Chair', 83, 83),
('2021-04-28 13:14:35.346683', '2021-04-28 13:14:35.000000', 'en', 'Wooden Stool', 84, 84),
('2021-04-28 13:14:35.382491', '2021-04-28 13:14:35.000000', 'en', 'Bedside Table', 85, 85),
('2021-04-28 13:14:35.461424', '2021-04-28 13:14:35.000000', 'en', 'Modern Cafe Chair mustard', 86, 86),
('2021-04-28 13:14:35.490326', '2021-04-28 13:14:35.000000', 'en', 'Modern Cafe Chair mint', 87, 87),
('2021-04-28 13:14:35.514670', '2021-04-28 13:14:35.000000', 'en', 'Modern Cafe Chair pearl', 88, 88);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promotion`
--

CREATE TABLE `promotion` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime DEFAULT NULL,
  `startsAt` datetime DEFAULT NULL,
  `endsAt` datetime DEFAULT NULL,
  `couponCode` varchar(255) DEFAULT NULL,
  `perCustomerUsageLimit` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `conditions` text NOT NULL,
  `actions` text NOT NULL,
  `priorityScore` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promotion_channels_channel`
--

CREATE TABLE `promotion_channels_channel` (
  `promotionId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `refund`
--

CREATE TABLE `refund` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `items` int(11) NOT NULL,
  `shipping` int(11) NOT NULL,
  `adjustment` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `method` varchar(255) NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `state` varchar(255) NOT NULL,
  `transactionId` varchar(255) DEFAULT NULL,
  `metadata` text NOT NULL,
  `id` int(11) NOT NULL,
  `paymentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role`
--

CREATE TABLE `role` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `permissions` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `role`
--

INSERT INTO `role` (`createdAt`, `updatedAt`, `code`, `description`, `permissions`, `id`) VALUES
('2021-04-28 13:14:25.433325', '2021-04-28 13:14:25.433325', '__super_admin_role__', 'SuperAdmin', 'Authenticated,SuperAdmin,UpdateGlobalSettings,CreateCatalog,ReadCatalog,UpdateCatalog,DeleteCatalog,CreateSettings,ReadSettings,UpdateSettings,DeleteSettings,CreateAdministrator,ReadAdministrator,UpdateAdministrator,DeleteAdministrator,CreateAsset,ReadAsset,UpdateAsset,DeleteAsset,CreateChannel,ReadChannel,UpdateChannel,DeleteChannel,CreateCollection,ReadCollection,UpdateCollection,DeleteCollection,CreateCountry,ReadCountry,UpdateCountry,DeleteCountry,CreateCustomer,ReadCustomer,UpdateCustomer,DeleteCustomer,CreateCustomerGroup,ReadCustomerGroup,UpdateCustomerGroup,DeleteCustomerGroup,CreateFacet,ReadFacet,UpdateFacet,DeleteFacet,CreateOrder,ReadOrder,UpdateOrder,DeleteOrder,CreatePaymentMethod,ReadPaymentMethod,UpdatePaymentMethod,DeletePaymentMethod,CreateProduct,ReadProduct,UpdateProduct,DeleteProduct,CreatePromotion,ReadPromotion,UpdatePromotion,DeletePromotion,CreateShippingMethod,ReadShippingMethod,UpdateShippingMethod,DeleteShippingMethod,CreateTag,ReadTag,UpdateTag,DeleteTag,CreateTaxCategory,ReadTaxCategory,UpdateTaxCategory,DeleteTaxCategory,CreateTaxRate,ReadTaxRate,UpdateTaxRate,DeleteTaxRate,CreateSystem,ReadSystem,UpdateSystem,DeleteSystem,CreateZone,ReadZone,UpdateZone,DeleteZone', 1),
('2021-04-28 13:14:25.442673', '2021-04-28 13:14:25.442673', '__customer_role__', 'Customer', 'Authenticated', 2),
('2021-04-28 13:14:30.573215', '2021-04-28 13:14:30.573215', 'administrator', 'Administrator', 'Authenticated,CreateCatalog,ReadCatalog,UpdateCatalog,DeleteCatalog,CreateSettings,ReadSettings,UpdateSettings,DeleteSettings,CreateCustomer,ReadCustomer,UpdateCustomer,DeleteCustomer,CreateCustomerGroup,ReadCustomerGroup,UpdateCustomerGroup,DeleteCustomerGroup,CreateOrder,ReadOrder,UpdateOrder,DeleteOrder,CreateSystem,ReadSystem,UpdateSystem,DeleteSystem', 3),
('2021-04-28 13:14:30.587127', '2021-04-28 13:14:30.587127', 'order-manager', 'Order manager', 'Authenticated,CreateOrder,ReadOrder,UpdateOrder,DeleteOrder,ReadCustomer,ReadPaymentMethod,ReadShippingMethod,ReadPromotion,ReadCountry,ReadZone', 4),
('2021-04-28 13:14:30.593313', '2021-04-28 13:14:30.593313', 'inventory-manager', 'Inventory manager', 'Authenticated,CreateCatalog,ReadCatalog,UpdateCatalog,DeleteCatalog,CreateTag,ReadTag,UpdateTag,DeleteTag,ReadCustomer', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_channels_channel`
--

CREATE TABLE `role_channels_channel` (
  `roleId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `role_channels_channel`
--

INSERT INTO `role_channels_channel` (`roleId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `search_index_item`
--

CREATE TABLE `search_index_item` (
  `languageCode` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productVariantName` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `priceWithTax` int(11) NOT NULL,
  `facetIds` text NOT NULL,
  `facetValueIds` text NOT NULL,
  `collectionIds` text NOT NULL,
  `collectionSlugs` text NOT NULL,
  `channelIds` text NOT NULL,
  `productPreview` varchar(255) NOT NULL,
  `productPreviewFocalPoint` text,
  `productVariantPreview` varchar(255) NOT NULL,
  `productVariantPreviewFocalPoint` text,
  `productVariantId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productAssetId` int(11) DEFAULT NULL,
  `productVariantAssetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `search_index_item`
--

INSERT INTO `search_index_item` (`languageCode`, `enabled`, `productName`, `productVariantName`, `description`, `slug`, `sku`, `price`, `priceWithTax`, `facetIds`, `facetValueIds`, `collectionIds`, `collectionSlugs`, `channelIds`, `productPreview`, `productPreviewFocalPoint`, `productVariantPreview`, `productVariantPreviewFocalPoint`, `productVariantId`, `channelId`, `productId`, `productAssetId`, `productVariantAssetId`) VALUES
('en', 1, 'Laptop', 'Laptop 13 inch 8GB', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 'laptop', 'L2201308', 129900, 155880, '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview\\4b\\img-macbook-pro-2019__preview.jpg', NULL, '', NULL, 1, 1, 1, 64, NULL),
('en', 1, 'Laptop', 'Laptop 15 inch 8GB', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 'laptop', 'L2201508', 139900, 167880, '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview\\4b\\img-macbook-pro-2019__preview.jpg', NULL, '', NULL, 2, 1, 1, 64, NULL),
('en', 1, 'Laptop', 'Laptop 13 inch 16GB', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 'laptop', 'L2201316', 219900, 263880, '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview\\4b\\img-macbook-pro-2019__preview.jpg', NULL, '', NULL, 3, 1, 1, 64, NULL),
('en', 1, 'Laptop', 'Laptop 15 inch 16GB', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 'laptop', 'L2201516', 229900, 275880, '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview\\4b\\img-macbook-pro-2019__preview.jpg', NULL, '', NULL, 4, 1, 1, 64, NULL),
('en', 1, 'Tablet', 'Tablet 32GB', 'If the computer were invented today, what would it look like? It would be powerful enough for any task. So mobile you could take it everywhere. And so intuitive you could use it any way you wanted — with touch, a keyboard, or even a pencil. In other words, it wouldn’t really be a \"computer.\" It would be Tablet.', 'tablet', 'TBL200032', 32900, 39480, '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview\\b8\\kelly-sikkema-685291-unsplash__preview.jpg', NULL, '', NULL, 5, 1, 2, 2, NULL),
('en', 1, 'Tablet', 'Tablet 128GB', 'If the computer were invented today, what would it look like? It would be powerful enough for any task. So mobile you could take it everywhere. And so intuitive you could use it any way you wanted — with touch, a keyboard, or even a pencil. In other words, it wouldn’t really be a \"computer.\" It would be Tablet.', 'tablet', 'TBL200128', 44500, 53400, '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview\\b8\\kelly-sikkema-685291-unsplash__preview.jpg', NULL, '', NULL, 6, 1, 2, 2, NULL),
('en', 1, 'Wireless Optical Mouse', 'Wireless Optical Mouse', 'The Logitech M185 Wireless Optical Mouse is a great device for any computer user, and as Logitech are the global market leaders for these devices, you are also guaranteed absolute reliability. A mouse to be reckoned with!', 'cordless-mouse', '834444', 1899, 2279, '1,2', '1,2,4', '2,3', 'electronics,computers', '1', 'preview\\a1\\oscar-ivan-esquivel-arteaga-687447-unsplash__preview.jpg', NULL, '', NULL, 7, 1, 3, 3, NULL),
('en', 1, '32-Inch Monitor', '32-Inch Monitor', 'The UJ59 with Ultra HD resolution has 4x the pixels of Full HD, delivering more screen space and amazingly life-like images. That means you can view documents and webpages with less scrolling, work more comfortably with multiple windows and toolbars, and enjoy photos, videos and games in stunning 4K quality. Note: beverage not included.', '32-inch-monitor', 'LU32J590UQUXEN', 31000, 37200, '1,2', '1,2,5', '2,3', 'electronics,computers', '1', 'preview\\d2\\daniel-korpai-1302051-unsplash__preview.jpg', NULL, '', NULL, 8, 1, 4, 4, NULL),
('en', 1, 'Curvy Monitor', 'Curvy Monitor 24 inch', 'Discover a truly immersive viewing experience with this monitor curved more deeply than any other. Wrapping around your field of vision the 1,800 R screencreates a wider field of view, enhances depth perception, and minimises peripheral distractions to draw you deeper in to your content.', 'curvy-monitor', 'C24F390', 14374, 17249, '1,2', '1,2,5', '2,3', 'electronics,computers', '1', 'preview\\9c\\alexandru-acea-686569-unsplash__preview.jpg', NULL, '', NULL, 9, 1, 5, 5, NULL),
('en', 1, 'Curvy Monitor', 'Curvy Monitor 27 inch', 'Discover a truly immersive viewing experience with this monitor curved more deeply than any other. Wrapping around your field of vision the 1,800 R screencreates a wider field of view, enhances depth perception, and minimises peripheral distractions to draw you deeper in to your content.', 'curvy-monitor', 'C27F390', 16994, 20393, '1,2', '1,2,5', '2,3', 'electronics,computers', '1', 'preview\\9c\\alexandru-acea-686569-unsplash__preview.jpg', NULL, '', NULL, 10, 1, 5, 5, NULL),
('en', 1, 'High Performance RAM', 'High Performance RAM 4GB', 'Each RAM module is built with a pure aluminium heat spreader for faster heat dissipation and cooler operation. Enhanced to XMP 2.0 profiles for better overclocking; Compatibility: Intel 100 Series, Intel 200 Series, Intel 300 Series, Intel X299, AMD 300 Series, AMD 400 Series.', 'high-performance-ram', 'CMK32GX4M2AC04', 13785, 16542, '1,2', '1,2,6', '2,3', 'electronics,computers', '1', 'preview\\58\\liam-briese-1128307-unsplash__preview.jpg', NULL, '', NULL, 11, 1, 6, 6, NULL),
('en', 1, 'High Performance RAM', 'High Performance RAM 8GB', 'Each RAM module is built with a pure aluminium heat spreader for faster heat dissipation and cooler operation. Enhanced to XMP 2.0 profiles for better overclocking; Compatibility: Intel 100 Series, Intel 200 Series, Intel 300 Series, Intel X299, AMD 300 Series, AMD 400 Series.', 'high-performance-ram', 'CMK32GX4M2AC08', 14639, 17567, '1,2', '1,2,6', '2,3', 'electronics,computers', '1', 'preview\\58\\liam-briese-1128307-unsplash__preview.jpg', NULL, '', NULL, 12, 1, 6, 6, NULL),
('en', 1, 'High Performance RAM', 'High Performance RAM 16GB', 'Each RAM module is built with a pure aluminium heat spreader for faster heat dissipation and cooler operation. Enhanced to XMP 2.0 profiles for better overclocking; Compatibility: Intel 100 Series, Intel 200 Series, Intel 300 Series, Intel X299, AMD 300 Series, AMD 400 Series.', 'high-performance-ram', 'CMK32GX4M2AC16', 28181, 33817, '1,2', '1,2,6', '2,3', 'electronics,computers', '1', 'preview\\58\\liam-briese-1128307-unsplash__preview.jpg', NULL, '', NULL, 13, 1, 6, 6, NULL),
('en', 1, 'Gaming PC', 'Gaming PC i7-8700 240GB SSD', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 'gaming-pc', 'CGS480VR1063', 108720, 130464, '1,2', '1,2,7', '2,3', 'electronics,computers', '1', 'preview\\5a\\florian-olivo-1166419-unsplash__preview.jpg', NULL, '', NULL, 14, 1, 7, 7, NULL),
('en', 1, 'Gaming PC', 'Gaming PC R7-2700 240GB SSD', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 'gaming-pc', 'CGS480VR1064', 109995, 131994, '1,2', '1,2,7', '2,3', 'electronics,computers', '1', 'preview\\5a\\florian-olivo-1166419-unsplash__preview.jpg', NULL, '', NULL, 15, 1, 7, 7, NULL),
('en', 1, 'Gaming PC', 'Gaming PC i7-8700 120GB SSD', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 'gaming-pc', 'CGS480VR1065', 93120, 111744, '1,2', '1,2,7', '2,3', 'electronics,computers', '1', 'preview\\5a\\florian-olivo-1166419-unsplash__preview.jpg', NULL, '', NULL, 16, 1, 7, 7, NULL),
('en', 1, 'Gaming PC', 'Gaming PC R7-2700 120GB SSD', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 'gaming-pc', 'CGS480VR1066', 94920, 113904, '1,2', '1,2,7', '2,3', 'electronics,computers', '1', 'preview\\5a\\florian-olivo-1166419-unsplash__preview.jpg', NULL, '', NULL, 17, 1, 7, 7, NULL),
('en', 1, 'Hard Drive', 'Hard Drive 1TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T1', 3799, 4559, '1,2', '1,2,8', '2,3', 'electronics,computers', '1', 'preview\\96\\vincent-botta-736919-unsplash__preview.jpg', NULL, '', NULL, 18, 1, 8, 8, NULL),
('en', 1, 'Hard Drive', 'Hard Drive 2TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T2', 5374, 6449, '1,2', '1,2,8', '2,3', 'electronics,computers', '1', 'preview\\96\\vincent-botta-736919-unsplash__preview.jpg', NULL, '', NULL, 19, 1, 8, 8, NULL),
('en', 1, 'Hard Drive', 'Hard Drive 3TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T3', 7896, 9475, '1,2', '1,2,8', '2,3', 'electronics,computers', '1', 'preview\\96\\vincent-botta-736919-unsplash__preview.jpg', NULL, '', NULL, 20, 1, 8, 8, NULL),
('en', 1, 'Hard Drive', 'Hard Drive 4TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T4', 9299, 11159, '1,2', '1,2,8', '2,3', 'electronics,computers', '1', 'preview\\96\\vincent-botta-736919-unsplash__preview.jpg', NULL, '', NULL, 21, 1, 8, 8, NULL),
('en', 1, 'Hard Drive', 'Hard Drive 6TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T6', 13435, 16122, '1,2', '1,2,8', '2,3', 'electronics,computers', '1', 'preview\\96\\vincent-botta-736919-unsplash__preview.jpg', NULL, '', NULL, 22, 1, 8, 8, NULL),
('en', 1, 'Clacky Keyboard', 'Clacky Keyboard', 'Let all your colleagues know that you are typing on this exclusive, colorful klicky-klacky keyboard. Huge travel on each keypress ensures maximum klack on each and every keystroke.', 'clacky-keyboard', 'A4TKLA45535', 7489, 8987, '1,2', '1,2,6', '2,3', 'electronics,computers', '1', 'preview\\09\\juan-gomez-674574-unsplash__preview.jpg', NULL, '', NULL, 23, 1, 9, 9, NULL),
('en', 1, 'Ethernet Cable', 'Ethernet Cable', '5m (metres) Cat.6 network cable (upwards/downwards compatible) | Patch cable | 2 RJ-45 plug | plug with bend protection mantle. High transmission speeds due to operating frequency with up to 250 MHz (in comparison to Cat.5/Cat.5e cable bandwidth of 100 MHz).', 'ethernet-cable', 'A23334x30', 597, 716, '1', '1,2', '2,3', 'electronics,computers', '1', 'preview\\7b\\thomas-q-1229169-unsplash__preview.jpg', NULL, '', NULL, 24, 1, 10, 10, NULL),
('en', 1, 'USB Cable', 'USB Cable', 'Solid conductors eliminate strand-interaction distortion and reduce jitter. As the surface is made of high-purity silver, the performance is very close to that of a solid silver cable, but priced much closer to solid copper cable.', 'usb-cable', 'USBCIN01.5MI', 6900, 8280, '1', '1,2', '2,3', 'electronics,computers', '1', 'preview\\64\\adam-birkett-239153-unsplash__preview.jpg', NULL, '', NULL, 25, 1, 11, 11, NULL),
('en', 1, 'Instant Camera', 'Instant Camera', 'With its nostalgic design and simple point-and-shoot functionality, the Instant Camera is the perfect pick to get started with instant photography.', 'instant-camera', 'IC22MWDD', 17499, 20999, '1,2', '1,9,10', '2,4', 'electronics,camera-photo', '1', 'preview\\b5\\eniko-kis-663725-unsplash__preview.jpg', NULL, '', NULL, 26, 1, 12, 12, NULL),
('en', 1, 'Camera Lens', 'Camera Lens', 'This lens is a Di type lens using an optical system with improved multi-coating designed to function with digital SLR cameras as well as film cameras.', 'camera-lens', 'B0012UUP02', 10400, 12480, '1,2', '1,9,11', '2,4', 'electronics,camera-photo', '1', 'preview\\9b\\brandi-redd-104140-unsplash__preview.jpg', NULL, '', NULL, 27, 1, 13, 13, NULL),
('en', 1, 'Vintage Folding Camera', 'Vintage Folding Camera', 'This vintage folding camera is so antiquated that you cannot possibly hope to produce actual photographs with it. However, it makes a wonderful decorative piece for the home or office.', 'vintage-folding-camera', 'B00AFC9099', 535000, 642000, '1,2', '1,9,12', '2,4', 'electronics,camera-photo', '1', 'preview\\3c\\jonathan-talbert-697262-unsplash__preview.jpg', NULL, '', NULL, 28, 1, 14, 14, NULL),
('en', 1, 'Tripod', 'Tripod', 'Capture vivid, professional-style photographs with help from this lightweight tripod. The adjustable-height tripod makes it easy to achieve reliable stability and score just the right angle when going after that award-winning shot.', 'tripod', 'B00XI87KV8', 1498, 1798, '1,2', '1,9,13', '2,4', 'electronics,camera-photo', '1', 'preview\\21\\zoltan-tasi-423051-unsplash__preview.jpg', NULL, '', NULL, 29, 1, 15, 15, NULL),
('en', 1, 'Instamatic Camera', 'Instamatic Camera', 'This inexpensive point-and-shoot camera uses easy-to-load 126 film cartridges. A built-in flash unit ensure great results, no matter the lighting conditions.', 'instamatic-camera', 'B07K1330LL', 2000, 2400, '1,2', '1,9,14', '2,4', 'electronics,camera-photo', '1', 'preview\\5b\\jakob-owens-274337-unsplash__preview.jpg', NULL, '', NULL, 30, 1, 16, 16, NULL),
('en', 1, 'Compact Digital Camera', 'Compact Digital Camera', 'Unleash your creative potential with high-level performance and advanced features such as AI-powered Real-time Eye AF; new, high-precision Real-time Tracking; high-speed continuous shooting and 4K HDR movie-shooting. The camera\'s innovative AF quickly and reliably detects the position of the subject and then tracks the subject\'s motion, keeping it in sharp focus.', 'compact-digital-camera', 'B07D990021', 89999, 107999, '1,2', '1,9,15', '2,4', 'electronics,camera-photo', '1', 'preview\\bc\\patrick-brinksma-663044-unsplash__preview.jpg', NULL, '', NULL, 31, 1, 17, 17, NULL),
('en', 1, 'Nikkormat SLR Camera', 'Nikkormat SLR Camera', 'The Nikkormat FS was brought to market by Nikon in 1965. The lens is a 50mm f1.4 Nikkor. Nice glass, smooth focus and a working diaphragm. A UV filter and a Nikon front lens cap are included with the lens.', 'nikkormat-slr-camera', 'B07D33B334', 61500, 73800, '1,2', '1,9,11', '2,4', 'electronics,camera-photo', '1', 'preview\\95\\chuttersnap-324234-unsplash__preview.jpg', NULL, '', NULL, 32, 1, 18, 18, NULL),
('en', 1, 'Compact SLR Camera', 'Compact SLR Camera', 'Retro styled, portable in size and built around a powerful 24-megapixel APS-C CMOS sensor, this digital camera is the ideal companion for creative everyday photography. Packed full of high spec features such as an advanced hybrid autofocus system able to keep pace with even the most active subjects, a speedy 6fps continuous-shooting mode, high-resolution electronic viewfinder and intuitive swivelling touchscreen, it brings professional image making into everyone’s grasp.', 'compact-slr-camera', 'B07D75V44S', 52100, 62520, '1', '1,9', '2,4', 'electronics,camera-photo', '1', 'preview\\9d\\robert-shunev-528016-unsplash__preview.jpg', NULL, '', NULL, 33, 1, 19, 19, NULL),
('en', 1, 'Twin Lens Camera', 'Twin Lens Camera', 'What makes a Rolleiflex TLR so special? Many things. To start, TLR stands for twin lens reflex. “Twin” because there are two lenses. And reflex means that the photographer looks through the lens to view the reflected image of an object or scene on the focusing screen.', 'twin-lens-camera', 'B07D78JTLR', 79900, 95880, '1,2', '1,9,16', '2,4', 'electronics,camera-photo', '1', 'preview\\ef\\alexander-andrews-260988-unsplash__preview.jpg', NULL, '', NULL, 34, 1, 20, 20, NULL),
('en', 1, 'Road Bike', 'Road Bike', 'Featuring a full carbon chassis - complete with cyclocross-specific carbon fork - and a component setup geared for hard use on the race circuit, it\'s got the low weight, exceptional efficiency and brilliant handling you\'ll need to stay at the front of the pack.', 'road-bike', 'RB000844334', 249900, 299880, '1,2', '17,18,19', '8,9', 'sports-outdoor,equipment', '1', 'preview\\2f\\mikkel-bech-748940-unsplash__preview.jpg', NULL, '', NULL, 35, 1, 21, 21, NULL),
('en', 1, 'Skipping Rope', 'Skipping Rope', 'When you\'re working out you need a quality rope that doesn\'t tangle at every couple of jumps and with this skipping rope you won\'t have this problem. The fact that it looks like a pair of tasty frankfurters is merely a bonus.', 'skipping-rope', 'B07CNGXVXT', 799, 959, '1,2', '17,18,20', '8,9', 'sports-outdoor,equipment', '1', 'preview\\34\\stoica-ionela-530966-unsplash__preview.jpg', NULL, '', NULL, 36, 1, 22, 22, NULL),
('en', 1, 'Boxing Gloves', 'Boxing Gloves', 'Training gloves designed for optimum training. Our gloves promote proper punching technique because they are conformed to the natural shape of your fist. Dense, innovative two-layer foam provides better shock absorbency and full padding on the front, back and wrist to promote proper punching technique.', 'boxing-gloves', 'B000ZYLPPU', 3304, 3965, '1,2', '17,18,20', '8,9', 'sports-outdoor,equipment', '1', 'preview\\4f\\neonbrand-428982-unsplash__preview.jpg', NULL, '', NULL, 37, 1, 23, 23, NULL),
('en', 1, 'Tent', 'Tent', 'With tons of space inside (for max. 4 persons), full head height throughout the entire tent and an unusual and striking shape, this tent offers you everything you need.', 'tent', '2000023510', 21493, 25792, '1', '17,18', '8,9', 'sports-outdoor,equipment', '1', 'preview\\96\\michael-guite-571169-unsplash__preview.jpg', NULL, '', NULL, 38, 1, 24, 24, NULL),
('en', 1, 'Cruiser Skateboard', 'Cruiser Skateboard', 'Based on the 1970s iconic shape, but made to a larger 69cm size, with updated, quality component, these skateboards are great for beginners to learn the foot spacing required, and are perfect for all-day cruising.', 'cruiser-skateboard', '799872520', 2499, 2999, '1', '17,18', '8,9', 'sports-outdoor,equipment', '1', 'preview\\35\\max-tarkhov-737999-unsplash__preview.jpg', NULL, '', NULL, 39, 1, 25, 25, NULL),
('en', 1, 'Football', 'Football', 'This football features high-contrast graphics for high-visibility during play, while its machine-stitched tpu casing offers consistent performance.', 'football', 'SC3137-056', 5707, 6848, '1,2', '17,18,21', '8,9', 'sports-outdoor,equipment', '1', 'preview\\d6\\nik-shuliahin-619349-unsplash__preview.jpg', NULL, '', NULL, 40, 1, 26, 26, NULL),
('en', 1, 'Tennis Ball', 'Tennis Ball', 'Our dog loves these tennis balls and they last for some time before they eventually either get lost in some field or bush or the covering comes off due to it being used most of the day every day.', 'tennis-ball', 'WRT11752P', 1273, 1528, '1,2', '17,18,22', '8,9', 'sports-outdoor,equipment', '1', 'preview\\30\\ben-hershey-574483-unsplash__preview.jpg', NULL, '', NULL, 41, 1, 27, 27, NULL),
('en', 1, 'Basketball', 'Basketball', 'The Wilson MVP ball is perfect for playing basketball, and improving your skill for hours on end. Designed for new players, it is created with a high-quality rubber suitable for courts, allowing you to get full use during your practices.', 'basketball', 'WTB1418XB06', 3562, 4274, '1,2', '17,18,22', '8,9', 'sports-outdoor,equipment', '1', 'preview\\0f\\tommy-bebo-600358-unsplash__preview.jpg', NULL, '', NULL, 42, 1, 28, 28, NULL),
('en', 1, 'Ultraboost Running Shoe', 'Ultraboost Running Shoe Size 40', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 'ultraboost-running-shoe', 'RS0040', 9999, 11999, '1,2,3', '17,23,24,25,26', '8,10', 'sports-outdoor,footwear', '1', 'preview\\ed\\chuttersnap-584518-unsplash__preview.jpg', NULL, '', NULL, 43, 1, 29, 29, NULL),
('en', 1, 'Ultraboost Running Shoe', 'Ultraboost Running Shoe Size 42', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 'ultraboost-running-shoe', 'RS0042', 9999, 11999, '1,2,3', '17,23,24,25,26', '8,10', 'sports-outdoor,footwear', '1', 'preview\\ed\\chuttersnap-584518-unsplash__preview.jpg', NULL, '', NULL, 44, 1, 29, 29, NULL),
('en', 1, 'Ultraboost Running Shoe', 'Ultraboost Running Shoe Size 44', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 'ultraboost-running-shoe', 'RS0044', 9999, 11999, '1,2,3', '17,23,24,25,26', '8,10', 'sports-outdoor,footwear', '1', 'preview\\ed\\chuttersnap-584518-unsplash__preview.jpg', NULL, '', NULL, 45, 1, 29, 29, NULL),
('en', 1, 'Ultraboost Running Shoe', 'Ultraboost Running Shoe Size 46', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 'ultraboost-running-shoe', 'RS0046', 9999, 11999, '1,2,3', '17,23,24,25,26', '8,10', 'sports-outdoor,footwear', '1', 'preview\\ed\\chuttersnap-584518-unsplash__preview.jpg', NULL, '', NULL, 46, 1, 29, 29, NULL),
('en', 1, 'Freerun Running Shoe', 'Freerun Running Shoe Size 40', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 'freerun-running-shoe', 'AR4561-40', 16000, 19200, '1,2,3', '17,23,21,27', '8,10', 'sports-outdoor,footwear', '1', 'preview\\0f\\imani-clovis-234736-unsplash__preview.jpg', NULL, '', NULL, 47, 1, 30, 30, NULL),
('en', 1, 'Freerun Running Shoe', 'Freerun Running Shoe Size 42', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 'freerun-running-shoe', 'AR4561-42', 16000, 19200, '1,2,3', '17,23,21,27', '8,10', 'sports-outdoor,footwear', '1', 'preview\\0f\\imani-clovis-234736-unsplash__preview.jpg', NULL, '', NULL, 48, 1, 30, 30, NULL),
('en', 1, 'Freerun Running Shoe', 'Freerun Running Shoe Size 44', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 'freerun-running-shoe', 'AR4561-44', 16000, 19200, '1,2,3', '17,23,21,27', '8,10', 'sports-outdoor,footwear', '1', 'preview\\0f\\imani-clovis-234736-unsplash__preview.jpg', NULL, '', NULL, 49, 1, 30, 30, NULL),
('en', 1, 'Freerun Running Shoe', 'Freerun Running Shoe Size 46', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 'freerun-running-shoe', 'AR4561-46', 16000, 19200, '1,2,3', '17,23,21,27', '8,10', 'sports-outdoor,footwear', '1', 'preview\\0f\\imani-clovis-234736-unsplash__preview.jpg', NULL, '', NULL, 50, 1, 30, 30, NULL),
('en', 1, 'Hi-Top Basketball Shoe', 'Hi-Top Basketball Shoe Size 40', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 'hi-top-basketball-shoe', 'AO7893-40', 14000, 16800, '1,2,3', '17,23,21,28', '8,10', 'sports-outdoor,footwear', '1', 'preview\\3c\\xavier-teo-469050-unsplash__preview.jpg', NULL, '', NULL, 51, 1, 31, 31, NULL),
('en', 1, 'Hi-Top Basketball Shoe', 'Hi-Top Basketball Shoe Size 42', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 'hi-top-basketball-shoe', 'AO7893-42', 14000, 16800, '1,2,3', '17,23,21,28', '8,10', 'sports-outdoor,footwear', '1', 'preview\\3c\\xavier-teo-469050-unsplash__preview.jpg', NULL, '', NULL, 52, 1, 31, 31, NULL),
('en', 1, 'Hi-Top Basketball Shoe', 'Hi-Top Basketball Shoe Size 44', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 'hi-top-basketball-shoe', 'AO7893-44', 14000, 16800, '1,2,3', '17,23,21,28', '8,10', 'sports-outdoor,footwear', '1', 'preview\\3c\\xavier-teo-469050-unsplash__preview.jpg', NULL, '', NULL, 53, 1, 31, 31, NULL),
('en', 1, 'Hi-Top Basketball Shoe', 'Hi-Top Basketball Shoe Size 46', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 'hi-top-basketball-shoe', 'AO7893-46', 14000, 16800, '1,2,3', '17,23,21,28', '8,10', 'sports-outdoor,footwear', '1', 'preview\\3c\\xavier-teo-469050-unsplash__preview.jpg', NULL, '', NULL, 54, 1, 31, 31, NULL),
('en', 1, 'Pureboost Running Shoe', 'Pureboost Running Shoe Size 40', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 'pureboost-running-shoe', 'F3578640', 9995, 11994, '1,2,3', '17,23,24,27,28', '8,10', 'sports-outdoor,footwear', '1', 'preview\\a2\\thomas-serer-420833-unsplash__preview.jpg', NULL, '', NULL, 55, 1, 32, 32, NULL),
('en', 1, 'Pureboost Running Shoe', 'Pureboost Running Shoe Size 42', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 'pureboost-running-shoe', 'F3578642', 9995, 11994, '1,2,3', '17,23,24,27,28', '8,10', 'sports-outdoor,footwear', '1', 'preview\\a2\\thomas-serer-420833-unsplash__preview.jpg', NULL, '', NULL, 56, 1, 32, 32, NULL),
('en', 1, 'Pureboost Running Shoe', 'Pureboost Running Shoe Size 44', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 'pureboost-running-shoe', 'F3578644', 9995, 11994, '1,2,3', '17,23,24,27,28', '8,10', 'sports-outdoor,footwear', '1', 'preview\\a2\\thomas-serer-420833-unsplash__preview.jpg', NULL, '', NULL, 57, 1, 32, 32, NULL),
('en', 1, 'Pureboost Running Shoe', 'Pureboost Running Shoe Size 46', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 'pureboost-running-shoe', 'F3578646', 9995, 11994, '1,2,3', '17,23,24,27,28', '8,10', 'sports-outdoor,footwear', '1', 'preview\\a2\\thomas-serer-420833-unsplash__preview.jpg', NULL, '', NULL, 58, 1, 32, 32, NULL),
('en', 1, 'RunX Running Shoe', 'RunX Running Shoe Size 40', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 'runx-running-shoe', 'F3633340', 4495, 5394, '1,2,3', '17,23,24,27', '8,10', 'sports-outdoor,footwear', '1', 'preview\\00\\nikolai-chernichenko-1299748-unsplash__preview.jpg', NULL, '', NULL, 59, 1, 33, 33, NULL),
('en', 1, 'RunX Running Shoe', 'RunX Running Shoe Size 42', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 'runx-running-shoe', 'F3633342', 4495, 5394, '1,2,3', '17,23,24,27', '8,10', 'sports-outdoor,footwear', '1', 'preview\\00\\nikolai-chernichenko-1299748-unsplash__preview.jpg', NULL, '', NULL, 60, 1, 33, 33, NULL),
('en', 1, 'RunX Running Shoe', 'RunX Running Shoe Size 44', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 'runx-running-shoe', 'F3633344', 4495, 5394, '1,2,3', '17,23,24,27', '8,10', 'sports-outdoor,footwear', '1', 'preview\\00\\nikolai-chernichenko-1299748-unsplash__preview.jpg', NULL, '', NULL, 61, 1, 33, 33, NULL),
('en', 1, 'RunX Running Shoe', 'RunX Running Shoe Size 46', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 'runx-running-shoe', 'F3633346', 4495, 5394, '1,2,3', '17,23,24,27', '8,10', 'sports-outdoor,footwear', '1', 'preview\\00\\nikolai-chernichenko-1299748-unsplash__preview.jpg', NULL, '', NULL, 62, 1, 33, 33, NULL),
('en', 1, 'Allstar Sneakers', 'Allstar Sneakers Size 40', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 'allstar-sneakers', 'CAS23340', 6500, 7800, '1,2,3', '17,23,29,27', '8,10', 'sports-outdoor,footwear', '1', 'preview\\aa\\mitch-lensink-256007-unsplash__preview.jpg', NULL, '', NULL, 63, 1, 34, 34, NULL),
('en', 1, 'Allstar Sneakers', 'Allstar Sneakers Size 42', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 'allstar-sneakers', 'CAS23342', 6500, 7800, '1,2,3', '17,23,29,27', '8,10', 'sports-outdoor,footwear', '1', 'preview\\aa\\mitch-lensink-256007-unsplash__preview.jpg', NULL, '', NULL, 64, 1, 34, 34, NULL),
('en', 1, 'Allstar Sneakers', 'Allstar Sneakers Size 44', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 'allstar-sneakers', 'CAS23344', 6500, 7800, '1,2,3', '17,23,29,27', '8,10', 'sports-outdoor,footwear', '1', 'preview\\aa\\mitch-lensink-256007-unsplash__preview.jpg', NULL, '', NULL, 65, 1, 34, 34, NULL),
('en', 1, 'Allstar Sneakers', 'Allstar Sneakers Size 46', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 'allstar-sneakers', 'CAS23346', 6500, 7800, '1,2,3', '17,23,29,27', '8,10', 'sports-outdoor,footwear', '1', 'preview\\aa\\mitch-lensink-256007-unsplash__preview.jpg', NULL, '', NULL, 66, 1, 34, 34, NULL),
('en', 1, 'Spiky Cactus', 'Spiky Cactus', 'A spiky yet elegant house cactus - perfect for the home or office. Origin and habitat: Probably native only to the Andes of Peru', 'spiky-cactus', 'SC011001', 1550, 1860, '1,4', '30,31,32', '5,7', 'home-garden,plants', '1', 'preview\\78\\charles-deluvio-695736-unsplash__preview.jpg', NULL, '', NULL, 67, 1, 35, 35, NULL),
('en', 1, 'Tulip Pot', 'Tulip Pot', 'Bright crimson red species tulip with black centers, the poppy-like flowers will open up in full sun. Ideal for rock gardens, pots and border edging.', 'tulip-pot', 'A58477', 675, 810, '1,4', '30,31,32,33', '5,7', 'home-garden,plants', '1', 'preview\\14\\natalia-y-345738-unsplash__preview.jpg', NULL, '', NULL, 68, 1, 36, 36, NULL),
('en', 1, 'Hanging Plant', 'Hanging Plant', 'Can be found in tropical and sub-tropical America where it grows on the branches of trees, but also on telephone wires and electricity cables and poles that sometimes topple with the weight of these plants. This plant loves a moist and warm air.', 'hanging-plant', 'A44223', 1995, 2394, '1,4', '30,31,33', '5,7', 'home-garden,plants', '1', 'preview\\5b\\alex-rodriguez-santibanez-200278-unsplash__preview.jpg', NULL, '', NULL, 69, 1, 37, 37, NULL),
('en', 1, 'Aloe Vera', 'Aloe Vera', 'Decorative Aloe vera makes a lovely house plant. A really trendy plant, Aloe vera is just so easy to care for. Aloe vera sap has been renowned for its remarkable medicinal and cosmetic properties for many centuries and has been used to treat grazes, insect bites and sunburn - it really works.', 'aloe-vera', 'A44352', 699, 839, '1,4', '30,31,32', '5,7', 'home-garden,plants', '1', 'preview\\29\\silvia-agrasar-227575-unsplash__preview.jpg', NULL, '', NULL, 70, 1, 38, 38, NULL),
('en', 1, 'Fern Blechnum Gibbum', 'Fern Blechnum Gibbum', 'Create a tropical feel in your home with this lush green tree fern, it has decorative leaves and will develop a short slender trunk in time.', 'fern-blechnum-gibbum', 'A04851', 895, 1074, '1,4', '30,31,33', '5,7', 'home-garden,plants', '1', 'preview\\6d\\caleb-george-536388-unsplash__preview.jpg', NULL, '', NULL, 71, 1, 39, 39, NULL),
('en', 1, 'Assorted Indoor Succulents', 'Assorted Indoor Succulents', 'These assorted succulents come in a variety of different shapes and colours - each with their own unique personality. Succulents grow best in plenty of light: a sunny windowsill would be the ideal spot for them to thrive!', 'assorted-succulents', 'A08593', 3250, 3900, '1,4', '30,31,32', '5,7', 'home-garden,plants', '1', 'preview\\81\\annie-spratt-78044-unsplash__preview.jpg', NULL, '', NULL, 72, 1, 40, 40, NULL),
('en', 1, 'Orchid', 'Orchid', 'Gloriously elegant. It can go along with any interior as it is a neutral color and the most popular Phalaenopsis overall. 2 to 3 foot stems host large white flowers that can last for over 2 months.', 'orchid', 'ROR00221', 6500, 7800, '1', '30,31', '5,7', 'home-garden,plants', '1', 'preview\\88\\zoltan-kovacs-642412-unsplash__preview.jpg', NULL, '', NULL, 73, 1, 41, NULL, NULL),
('en', 1, 'Bonsai Tree', 'Bonsai Tree', 'Excellent semi-evergreen bonsai. Indoors or out but needs some winter protection. All trees sent will leave the nursery in excellent condition and will be of equal quality or better than the photograph shown.', 'bonsai-tree', 'B01MXFLUSV', 1999, 2399, '1', '30,31', '5,7', 'home-garden,plants', '1', 'preview\\f3\\mark-tegethoff-667351-unsplash__preview.jpg', NULL, '', NULL, 74, 1, 42, 42, NULL),
('en', 1, 'Guardian Lion Statue', 'Guardian Lion Statue', 'Placing it at home or office can bring you fortune and prosperity, guard your house and ward off ill fortune.', 'guardian-lion-statue', 'GL34LLW11', 18853, 22624, '1,3', '30,34,35', '5,6', 'home-garden,furniture', '1', 'preview\\44\\vincent-liu-525429-unsplash__preview.jpg', NULL, '', NULL, 75, 1, 43, 43, NULL),
('en', 1, 'Hand Trowel', 'Hand Trowel', 'Hand trowel for garden cultivating hammer finish epoxy-coated head for improved resistance to rust, scratches, humidity and alkalines in the soil.', 'hand-trowel', '4058NB/09', 499, 599, '1', '30,31', '5,7', 'home-garden,plants', '1', 'preview\\7d\\neslihan-gunaydin-3493-unsplash__preview.jpg', NULL, '', NULL, 76, 1, 44, 44, NULL),
('en', 1, 'Balloon Chair', 'Balloon Chair', 'A charming vintage white wooden chair featuring an extremely spherical pink balloon. The balloon may be detached and used for other purposes, for example as a party decoration.', 'balloon-chair', '34-BC82444', 6500, 7800, '1', '30,34', '5,6', 'home-garden,furniture', '1', 'preview\\ef\\florian-klauer-14840-unsplash__preview.jpg', NULL, '', NULL, 77, 1, 45, 45, NULL),
('en', 1, 'Grey Fabric Sofa', 'Grey Fabric Sofa', 'Seat cushions filled with high resilience foam and polyester fibre wadding give comfortable support for your body, and easily regain their shape when you get up. The cover is easy to keep clean as it is removable and can be machine washed.', 'grey-fabric-sofa', 'CH00001-12', 29500, 35400, '1,3', '30,34,35', '5,6', 'home-garden,furniture', '1', 'preview\\69\\nathan-fertig-249917-unsplash__preview.jpg', NULL, '', NULL, 78, 1, 46, NULL, NULL),
('en', 1, 'Leather Sofa', 'Leather Sofa', 'This premium, tan-brown bonded leather seat is part of the \'chill\' sofa range. The lever activated recline feature makes it easy to adjust to any position. This smart, bustle back design with rounded tight padded arms has been designed with your comfort in mind. This well-padded chair has foam pocket sprung seat cushions and fibre-filled back cushions.', 'leather-sofa', 'CH00001-02', 124500, 149400, '1,3', '30,34,36', '5,6', 'home-garden,furniture', '1', 'preview\\3e\\paul-weaver-1120584-unsplash__preview.jpg', NULL, '', NULL, 79, 1, 47, NULL, NULL),
('en', 1, 'Light Shade', 'Light Shade', 'Modern tapered white polycotton pendant shade with a metallic silver chrome interior finish for maximum light reflection. Reversible gimble so it can be used as a ceiling shade or as a lamp shade.', 'light-shade', 'B45809LSW', 2845, 3414, '1', '30,34', '5,6', 'home-garden,furniture', '1', 'preview\\5f\\pierre-chatel-innocenti-483198-unsplash__preview.jpg', NULL, '', NULL, 80, 1, 48, NULL, NULL),
('en', 1, 'Wooden Side Desk', 'Wooden Side Desk', 'Drawer stops prevent the drawers from being pulled out too far. Built-in cable management for collecting cables and cords; out of sight but close at hand.', 'wooden-side-desk', '304.096.29', 12500, 15000, '1,3', '30,34,37', '5,6', 'home-garden,furniture', '1', 'preview\\40\\abel-y-costa-716024-unsplash__preview.jpg', NULL, '', NULL, 81, 1, 49, NULL, NULL),
('en', 1, 'Comfy Padded Chair', 'Comfy Padded Chair', 'You sit comfortably thanks to the shaped back. The chair frame is made of solid wood, which is a durable natural material.', 'comfy-padded-chair', '404.068.14', 13000, 15600, '1,3', '30,34,35', '5,6', 'home-garden,furniture', '1', 'preview\\3b\\kari-shea-398668-unsplash__preview.jpg', NULL, '', NULL, 82, 1, 50, NULL, NULL),
('en', 1, 'Black Eaves Chair', 'Black Eaves Chair', 'Comfortable to sit on thanks to the bowl-shaped seat and rounded shape of the backrest. No tools are required to assemble the chair, you just click it together with a simple mechanism under the seat.', 'black-eaves-chair', '003.600.02', 7000, 8400, '1,3', '30,34,27', '5,6', 'home-garden,furniture', '1', 'preview\\09\\andres-jasso-220776-unsplash__preview.jpg', NULL, '', NULL, 83, 1, 51, NULL, NULL),
('en', 1, 'Wooden Stool', 'Wooden Stool', 'Solid wood is a hardwearing natural material, which can be sanded and surface treated as required.', 'wooden-stool', '202.493.30', 1400, 1680, '1,3', '30,34,37', '5,6', 'home-garden,furniture', '1', 'preview\\d0\\ruslan-bardash-351288-unsplash__preview.jpg', NULL, '', NULL, 84, 1, 52, NULL, NULL),
('en', 1, 'Bedside Table', 'Bedside Table', 'Every table is unique, with varying grain pattern and natural colour shifts that are part of the charm of wood.', 'bedside-table', '404.290.14', 13000, 15600, '1,3', '30,34,28', '5,6', 'home-garden,furniture', '1', 'preview\\72\\benjamin-voros-310026-unsplash__preview.jpg', NULL, '', NULL, 85, 1, 53, NULL, NULL),
('en', 1, 'Modern Cafe Chair', 'Modern Cafe Chair mustard', 'You sit comfortably thanks to the restful flexibility of the seat. Lightweight and easy to move around, yet stable enough even for the liveliest, young family members.', 'modern-cafe-chair', '404.038.96', 10000, 12000, '3,1', '38,30,34', '5,6', 'home-garden,furniture', '1', 'preview\\b1\\jean-philippe-delberghe-1400011-unsplash__preview.jpg', NULL, '', NULL, 86, 1, 54, NULL, NULL),
('en', 1, 'Modern Cafe Chair', 'Modern Cafe Chair mint', 'You sit comfortably thanks to the restful flexibility of the seat. Lightweight and easy to move around, yet stable enough even for the liveliest, young family members.', 'modern-cafe-chair', '404.038.96', 10000, 12000, '3,1', '39,30,34', '5,6', 'home-garden,furniture', '1', 'preview\\b1\\jean-philippe-delberghe-1400011-unsplash__preview.jpg', NULL, '', NULL, 87, 1, 54, NULL, NULL),
('en', 1, 'Modern Cafe Chair', 'Modern Cafe Chair pearl', 'You sit comfortably thanks to the restful flexibility of the seat. Lightweight and easy to move around, yet stable enough even for the liveliest, young family members.', 'modern-cafe-chair', '404.038.96', 10000, 12000, '3,1', '28,30,34', '5,6', 'home-garden,furniture', '1', 'preview\\b1\\jean-philippe-delberghe-1400011-unsplash__preview.jpg', NULL, '', NULL, 88, 1, 54, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `session`
--

CREATE TABLE `session` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `token` varchar(255) NOT NULL,
  `expires` datetime NOT NULL,
  `invalidated` tinyint(4) NOT NULL,
  `authenticationStrategy` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `activeOrderId` int(11) DEFAULT NULL,
  `activeChannelId` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `session`
--

INSERT INTO `session` (`createdAt`, `updatedAt`, `token`, `expires`, `invalidated`, `authenticationStrategy`, `id`, `activeOrderId`, `activeChannelId`, `type`, `userId`) VALUES
('2021-04-28 13:17:32.758983', '2021-04-28 13:17:32.000000', 'be1e68479e4bf7dfe0a9d0d63f21ea2d047de38d042dd27c75af872c5207d37e', '2022-04-28 22:17:33', 0, NULL, 1, NULL, 1, 'AnonymousSession', NULL),
('2021-04-28 13:17:38.683141', '2021-04-28 13:17:38.000000', '435343e9d7cde69ef16ef95f68a3ce9a92d3c23098285664514a22fa6efa207d', '2022-04-28 22:17:39', 0, 'native', 2, NULL, 1, 'AuthenticatedSession', 1),
('2021-04-28 14:28:45.066147', '2021-04-28 14:28:45.000000', 'bfa6a7736aa4829bf642ef6784111d5c3fa44358cd1cbac98841701deab04590', '2022-04-28 23:28:45', 0, NULL, 3, NULL, 1, 'AnonymousSession', NULL),
('2021-04-28 14:28:57.364967', '2021-04-28 14:28:57.000000', '1a3803ff59a06df88f2f48ccff3edf187f3a076587b1bc1d792d9b980cc64b43', '2022-04-28 23:28:57', 0, 'native', 4, NULL, 1, 'AuthenticatedSession', 1),
('2021-05-04 12:34:45.482213', '2021-05-04 12:34:45.000000', 'fac7977d949417506b6e91fd0f47f05c2cbaf03bb09a323c3e1671809bcf672e', '2022-05-04 21:34:45', 0, NULL, 5, NULL, 1, 'AnonymousSession', NULL),
('2021-05-04 12:34:51.697110', '2021-05-04 12:34:51.000000', '9fe7bb2fb80f606cb0107e417870fd02f3eb0f916394d98d89a6a584a8d48226', '2022-05-04 21:34:52', 0, 'native', 6, NULL, 1, 'AuthenticatedSession', 1),
('2021-05-11 10:19:29.544116', '2021-05-11 10:19:29.000000', '51d10c090ecac924121178375da033bf394e930d22392ec6d8f2e2b244909466', '2022-05-11 19:19:30', 0, NULL, 7, NULL, 1, 'AnonymousSession', NULL),
('2021-05-11 10:19:36.271160', '2021-05-11 10:19:36.000000', 'cf2e720dfd1f8c14820744024629a51c6f40c024d0b480372b8303b3a1c24ce2', '2022-05-11 19:19:36', 0, 'native', 8, NULL, 1, 'AuthenticatedSession', 1),
('2021-05-11 12:17:28.142556', '2021-05-11 12:17:28.000000', 'cffc7acf54efd62b604ee7f6c11f53e8c2abc9ad1e2c04991de0d1b647eacb99', '2022-05-11 21:17:28', 0, NULL, 9, NULL, 1, 'AnonymousSession', NULL),
('2021-05-11 12:17:33.610747', '2021-05-11 12:17:33.000000', 'c261f26ea92615fab0ba58781b4840fdc4c8551b4f91d9f1f9ef1b805e97b1c5', '2022-05-11 21:17:34', 0, 'native', 10, NULL, 1, 'AuthenticatedSession', 1),
('2021-05-17 13:57:48.901274', '2021-05-17 13:57:48.000000', '50209cc208e0eb7e4347475597b00e215f067645d3376fadf3231319259a17f3', '2022-05-17 22:57:49', 0, NULL, 11, NULL, 1, 'AnonymousSession', NULL),
('2021-05-17 13:57:57.977443', '2021-05-17 13:57:58.000000', '7338d250d84d8d0b1f7ff0f7cfe58377eb36e874e0a7a6f8e34d7809452abc3a', '2022-05-17 22:57:58', 0, 'native', 12, NULL, 1, 'AuthenticatedSession', 1),
('2021-05-18 12:18:32.149732', '2021-05-18 12:18:32.000000', 'f0cdff836bf4bcee07a14aff7a824231f6e1f22623b35258f74c5a434fb3245b', '2022-05-18 21:18:32', 0, NULL, 14, NULL, 1, 'AnonymousSession', NULL),
('2021-05-18 12:38:13.845640', '2021-05-18 12:38:13.000000', 'b8db5f7e6626bb8d25992c11dbf2073df8783db0721d5135c5ca23e104e4b2c6', '2022-05-18 21:38:14', 0, NULL, 17, NULL, 1, 'AnonymousSession', NULL),
('2021-05-18 12:42:48.735153', '2021-05-18 12:42:48.000000', '968c79bef607037c6d4639402ecfc2bfa7d44eb373d34d1753c5becc1f8229ca', '2022-05-18 21:42:49', 0, NULL, 18, NULL, 1, 'AnonymousSession', NULL),
('2021-05-18 15:54:40.272931', '2021-05-18 15:54:40.000000', '7f5c071367f4cfd49093437dc7cf741a92ed24e05252accba832db7b0a5a1870', '2022-05-19 00:54:40', 0, NULL, 40, NULL, 1, 'AnonymousSession', NULL),
('2021-05-18 15:59:40.772721', '2021-05-18 15:59:40.000000', 'f918ecab720b5358df9a9dd9bcb872641a39fdcba9c40853ad03d322b2375f8b', '2022-05-19 00:59:41', 0, NULL, 41, NULL, 1, 'AnonymousSession', NULL),
('2021-05-18 16:00:45.562519', '2021-05-18 16:00:45.000000', '8bdf89bbf104e8b567cf8b4780c35c4410105066d40f69dccf45cb4d5718fd96', '2022-05-19 01:00:46', 0, NULL, 42, NULL, 1, 'AnonymousSession', NULL),
('2021-05-18 16:00:53.969987', '2021-05-18 16:00:54.000000', '26ba514c8ef572004a31848534d9008242b5f3d7b98535b9b4e4b9f838d7380e', '2022-05-19 01:00:54', 0, 'native', 43, NULL, 1, 'AuthenticatedSession', 1),
('2021-05-19 11:09:36.892908', '2021-05-19 11:09:38.000000', '1b4dcdb08a0781511118a508ec4599c06fe29a01a170af3ce7efbb0437b6cf61', '2022-05-19 20:09:37', 0, 'native', 44, NULL, 1, 'AuthenticatedSession', 2),
('2021-05-19 11:13:12.538763', '2021-05-19 11:13:47.000000', '584a901abdcaad8ee3f167b9ce96376076e80171f6923036beda9460b4e16c57', '2022-05-19 20:13:13', 0, 'native', 45, NULL, 1, 'AuthenticatedSession', 2),
('2021-05-19 11:15:53.694871', '2021-05-19 11:16:46.000000', '1a0e1ef6ba2ff48ddf0b0f17810b92470f48da36eb7e23333900ac947031ace8', '2022-05-19 20:15:54', 0, 'native', 46, NULL, 1, 'AuthenticatedSession', 2),
('2021-05-19 11:41:54.746354', '2021-05-19 11:42:28.000000', '5529af869e2b6af98300317de798ad48762c708204ae44625fa0bf4fd32c78f8', '2022-05-19 20:41:55', 0, 'native', 47, NULL, 1, 'AuthenticatedSession', 2),
('2021-05-19 11:46:52.601323', '2021-05-19 11:55:01.000000', '7b575e0335655d9b64ebcded631b8dedfffb60ed1b5cb20cd8f4bfab6ea5b69b', '2022-05-19 20:46:53', 0, 'native', 48, NULL, 1, 'AuthenticatedSession', 2),
('2021-05-19 11:56:00.163896', '2021-05-19 11:57:14.000000', '11470efd68b6d7ad77d90daba086cf8ab6f9faaf72480245bc36edfc37a636f3', '2022-05-19 20:56:00', 0, 'native', 49, NULL, 1, 'AuthenticatedSession', 2),
('2021-05-19 11:57:36.385232', '2021-05-19 11:58:48.000000', '307689db29fee264d87edb521ceede6d8ba006a30ceb7b898332ae52c7e06b75', '2022-05-19 20:57:36', 0, 'native', 50, NULL, 1, 'AuthenticatedSession', 2),
('2021-05-19 11:59:08.785718', '2021-05-19 11:59:50.000000', '950873c20ca208af2dad5469e612ffe3d648b9db4290ea69df78a004f1c5e6ac', '2022-05-19 20:59:09', 0, 'native', 51, NULL, 1, 'AuthenticatedSession', 2),
('2021-05-19 12:04:03.170101', '2021-05-19 12:04:03.170101', '845b085eba3a7c9973af1827f99401a04a12045980bedfef7bcee6cf20a74527', '2022-05-19 21:04:03', 0, 'native', 52, NULL, NULL, 'AuthenticatedSession', 3),
('2021-05-19 12:12:49.319614', '2021-05-19 12:12:49.319614', '4823656e3dd24ad1b1610a602ee9d0904e2b258b128f9d29db707eac90301a19', '2022-05-19 21:12:49', 0, 'native', 53, NULL, NULL, 'AuthenticatedSession', 4),
('2021-05-19 12:20:51.057975', '2021-05-19 12:20:51.057975', '9d66dab4e72393023a4d191453ba605e0c768ce3d36efd33dacc51660b2a74a4', '2022-05-19 21:20:51', 0, 'native', 54, NULL, NULL, 'AuthenticatedSession', 5),
('2021-05-19 12:27:04.253258', '2021-05-19 12:27:04.253258', 'bd57410862d0aba271d756a811212d5b7e0940d63a4a2c60b6c1b8e1b377b2e5', '2022-05-19 21:27:04', 0, 'native', 55, NULL, NULL, 'AuthenticatedSession', 6),
('2021-05-19 12:30:51.191658', '2021-05-19 12:30:51.191658', 'ce0b392b8f2a42c2bf817096ec51266d5fa08b3833726851171bb28a18ee7635', '2022-05-19 21:30:51', 0, 'native', 56, NULL, NULL, 'AuthenticatedSession', 8),
('2021-05-19 12:50:14.872678', '2021-05-19 12:50:15.000000', '80d3b6998440acffaa01f665ad5b3d97281d4ad9122f4cb825c5d265b1c55b64', '2022-05-19 21:50:15', 0, 'native', 57, NULL, 1, 'AuthenticatedSession', 9),
('2021-05-19 13:04:46.264890', '2021-05-19 13:04:46.000000', '12bde32099a63744bb68a04df6f1286508420003dfd0891b68aeb7464cfdb5b6', '2022-05-19 22:04:46', 0, 'native', 58, NULL, 1, 'AuthenticatedSession', 10),
('2021-05-19 13:37:57.796087', '2021-05-19 13:37:57.000000', 'c4bb8fa4d64c5fa6519778245cf38444de623009b43bd869d1a04fdba513130d', '2022-05-19 22:37:58', 0, 'native', 59, NULL, 1, 'AuthenticatedSession', 11),
('2021-05-19 14:11:40.128638', '2021-05-19 14:11:40.128638', 'facb7cf729a9be9235a8b1178f6c9944338c032bfe9cc84dd8500160a22b7cda', '2022-05-19 23:11:40', 0, 'native', 60, NULL, NULL, 'AuthenticatedSession', 2),
('2021-05-19 14:12:13.379390', '2021-05-19 14:12:13.379390', '23510d2dce24e0c85d867cc30e0b461c8eef689f6aff6631a17a0fe2869fbd38', '2022-05-19 23:12:13', 0, 'native', 61, NULL, NULL, 'AuthenticatedSession', 2),
('2021-05-19 14:13:31.992868', '2021-05-19 14:13:32.000000', '9399fa15797787093d00cce14f2410b564fa4f4aaf7118c514939c34fac7b38c', '2022-05-19 23:13:32', 0, 'native', 62, NULL, 1, 'AuthenticatedSession', 2),
('2021-05-19 14:17:29.038634', '2021-05-19 14:17:29.000000', '5dba6a52cdd844ac8e79ec61de438a2b99168d4d30b4fe151f21c9341802b073', '2022-05-19 23:17:29', 0, 'native', 63, NULL, 1, 'AuthenticatedSession', 2),
('2021-05-19 14:21:26.012753', '2021-05-19 14:21:26.000000', '0677c7edc81f4c6943a09031c431cb06602eecdb2790e7ac1da1b257427dc821', '2022-05-19 23:21:26', 0, 'native', 64, NULL, 1, 'AuthenticatedSession', 2),
('2021-05-19 14:25:37.392947', '2021-05-19 14:25:37.000000', 'eb5a2a065c7f1cbd1911e1c618a441c61cc3c9f75b208f779f2506190badb4fd', '2022-05-19 23:25:37', 0, 'native', 65, NULL, 1, 'AuthenticatedSession', 2),
('2021-05-19 14:26:44.938934', '2021-05-19 14:26:45.000000', 'f4e78bc2cd6ce184912d2f23ea0e7c29b23fd9a6d9539ba6bf7f5d8c9da87212', '2022-05-19 23:26:45', 0, 'native', 66, NULL, 1, 'AuthenticatedSession', 2),
('2021-05-19 14:32:49.008342', '2021-05-19 14:32:50.000000', 'abfeedac605c49d42bd10e5c4fe7312d562c898e3e6a914008d1a07a64bf08a9', '2022-05-19 23:32:49', 0, 'native', 67, NULL, 1, 'AuthenticatedSession', 2),
('2021-05-19 14:37:58.550327', '2021-05-19 14:37:59.000000', '42a6e3f31a29fbf8be52b79fd1869a112fef07ac5054ad75d09c7268086e7fdd', '2022-05-19 23:37:59', 0, 'native', 68, NULL, 1, 'AuthenticatedSession', 2),
('2021-05-19 14:39:23.756010', '2021-05-19 14:39:24.000000', 'c9fae90a8489ad8869ce4a7ff7f978ffb601a40c2c043726815bd47ec0aff47f', '2022-05-19 23:39:24', 0, 'native', 69, NULL, 1, 'AuthenticatedSession', 14),
('2021-05-26 10:11:53.863049', '2021-05-26 10:11:53.000000', '6f18c7f821c0b5e71ea997304dcdb0479b7ef504504dca58899d3aa4daa16504', '2022-05-26 19:11:54', 0, 'native', 70, NULL, 1, 'AuthenticatedSession', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shipping_line`
--

CREATE TABLE `shipping_line` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `listPrice` int(11) NOT NULL,
  `listPriceIncludesTax` tinyint(4) NOT NULL,
  `adjustments` text NOT NULL,
  `taxLines` text NOT NULL,
  `id` int(11) NOT NULL,
  `shippingMethodId` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shipping_method`
--

CREATE TABLE `shipping_method` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `checker` text NOT NULL,
  `calculator` text NOT NULL,
  `fulfillmentHandlerCode` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `shipping_method`
--

INSERT INTO `shipping_method` (`createdAt`, `updatedAt`, `deletedAt`, `code`, `checker`, `calculator`, `fulfillmentHandlerCode`, `id`) VALUES
('2021-04-28 13:14:30.455026', '2021-04-28 13:14:30.455026', NULL, 'standard-shipping', '{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]}', '{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"500\"},{\"name\":\"taxRate\",\"value\":\"0\"}]}', 'manual-fulfillment', 1),
('2021-04-28 13:14:30.504669', '2021-04-28 13:14:30.504669', NULL, 'express-shipping', '{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]}', '{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"1000\"},{\"name\":\"taxRate\",\"value\":\"0\"}]}', 'manual-fulfillment', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shipping_method_channels_channel`
--

CREATE TABLE `shipping_method_channels_channel` (
  `shippingMethodId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `shipping_method_channels_channel`
--

INSERT INTO `shipping_method_channels_channel` (`shippingMethodId`, `channelId`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shipping_method_translation`
--

CREATE TABLE `shipping_method_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `shipping_method_translation`
--

INSERT INTO `shipping_method_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `description`, `id`, `baseId`) VALUES
('2021-04-28 13:14:30.434662', '2021-04-28 13:14:30.000000', 'en', 'Standard Shipping', '', 1, 1),
('2021-04-28 13:14:30.495671', '2021-04-28 13:14:30.000000', 'en', 'Express Shipping', '', 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock_movement`
--

CREATE TABLE `stock_movement` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `type` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `discriminator` varchar(255) NOT NULL,
  `productVariantId` int(11) DEFAULT NULL,
  `orderItemId` int(11) DEFAULT NULL,
  `orderLineId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `stock_movement`
--

INSERT INTO `stock_movement` (`createdAt`, `updatedAt`, `type`, `quantity`, `id`, `discriminator`, `productVariantId`, `orderItemId`, `orderLineId`) VALUES
('2021-04-28 13:14:30.940227', '2021-04-28 13:14:30.940227', 'ADJUSTMENT', 100, 1, 'StockAdjustment', 1, NULL, NULL),
('2021-04-28 13:14:30.963209', '2021-04-28 13:14:30.963209', 'ADJUSTMENT', 100, 2, 'StockAdjustment', 2, NULL, NULL),
('2021-04-28 13:14:30.982473', '2021-04-28 13:14:30.982473', 'ADJUSTMENT', 100, 3, 'StockAdjustment', 3, NULL, NULL),
('2021-04-28 13:14:31.002442', '2021-04-28 13:14:31.002442', 'ADJUSTMENT', 100, 4, 'StockAdjustment', 4, NULL, NULL),
('2021-04-28 13:14:31.101690', '2021-04-28 13:14:31.101690', 'ADJUSTMENT', 100, 5, 'StockAdjustment', 5, NULL, NULL),
('2021-04-28 13:14:31.119608', '2021-04-28 13:14:31.119608', 'ADJUSTMENT', 100, 6, 'StockAdjustment', 6, NULL, NULL),
('2021-04-28 13:14:31.202385', '2021-04-28 13:14:31.202385', 'ADJUSTMENT', 100, 7, 'StockAdjustment', 7, NULL, NULL),
('2021-04-28 13:14:31.275016', '2021-04-28 13:14:31.275016', 'ADJUSTMENT', 100, 8, 'StockAdjustment', 8, NULL, NULL),
('2021-04-28 13:14:31.355472', '2021-04-28 13:14:31.355472', 'ADJUSTMENT', 100, 9, 'StockAdjustment', 9, NULL, NULL),
('2021-04-28 13:14:31.372640', '2021-04-28 13:14:31.372640', 'ADJUSTMENT', 100, 10, 'StockAdjustment', 10, NULL, NULL),
('2021-04-28 13:14:31.504542', '2021-04-28 13:14:31.504542', 'ADJUSTMENT', 100, 11, 'StockAdjustment', 11, NULL, NULL),
('2021-04-28 13:14:31.526304', '2021-04-28 13:14:31.526304', 'ADJUSTMENT', 100, 12, 'StockAdjustment', 12, NULL, NULL),
('2021-04-28 13:14:31.545517', '2021-04-28 13:14:31.545517', 'ADJUSTMENT', 100, 13, 'StockAdjustment', 13, NULL, NULL),
('2021-04-28 13:14:31.715437', '2021-04-28 13:14:31.715437', 'ADJUSTMENT', 100, 14, 'StockAdjustment', 14, NULL, NULL),
('2021-04-28 13:14:31.731924', '2021-04-28 13:14:31.731924', 'ADJUSTMENT', 100, 15, 'StockAdjustment', 15, NULL, NULL),
('2021-04-28 13:14:31.750640', '2021-04-28 13:14:31.750640', 'ADJUSTMENT', 100, 16, 'StockAdjustment', 16, NULL, NULL),
('2021-04-28 13:14:31.769310', '2021-04-28 13:14:31.769310', 'ADJUSTMENT', 100, 17, 'StockAdjustment', 17, NULL, NULL),
('2021-04-28 13:14:31.899324', '2021-04-28 13:14:31.899324', 'ADJUSTMENT', 100, 18, 'StockAdjustment', 18, NULL, NULL),
('2021-04-28 13:14:31.919671', '2021-04-28 13:14:31.919671', 'ADJUSTMENT', 100, 19, 'StockAdjustment', 19, NULL, NULL),
('2021-04-28 13:14:31.940577', '2021-04-28 13:14:31.940577', 'ADJUSTMENT', 100, 20, 'StockAdjustment', 20, NULL, NULL),
('2021-04-28 13:14:31.960975', '2021-04-28 13:14:31.960975', 'ADJUSTMENT', 100, 21, 'StockAdjustment', 21, NULL, NULL),
('2021-04-28 13:14:31.981741', '2021-04-28 13:14:31.981741', 'ADJUSTMENT', 100, 22, 'StockAdjustment', 22, NULL, NULL),
('2021-04-28 13:14:32.032517', '2021-04-28 13:14:32.032517', 'ADJUSTMENT', 100, 23, 'StockAdjustment', 23, NULL, NULL),
('2021-04-28 13:14:32.076100', '2021-04-28 13:14:32.076100', 'ADJUSTMENT', 100, 24, 'StockAdjustment', 24, NULL, NULL),
('2021-04-28 13:14:32.117430', '2021-04-28 13:14:32.117430', 'ADJUSTMENT', 100, 25, 'StockAdjustment', 25, NULL, NULL),
('2021-04-28 13:14:32.200605', '2021-04-28 13:14:32.200605', 'ADJUSTMENT', 100, 26, 'StockAdjustment', 26, NULL, NULL),
('2021-04-28 13:14:32.259081', '2021-04-28 13:14:32.259081', 'ADJUSTMENT', 100, 27, 'StockAdjustment', 27, NULL, NULL),
('2021-04-28 13:14:32.314952', '2021-04-28 13:14:32.314952', 'ADJUSTMENT', 100, 28, 'StockAdjustment', 28, NULL, NULL),
('2021-04-28 13:14:32.377445', '2021-04-28 13:14:32.377445', 'ADJUSTMENT', 100, 29, 'StockAdjustment', 29, NULL, NULL),
('2021-04-28 13:14:32.440322', '2021-04-28 13:14:32.440322', 'ADJUSTMENT', 100, 30, 'StockAdjustment', 30, NULL, NULL),
('2021-04-28 13:14:32.514034', '2021-04-28 13:14:32.514034', 'ADJUSTMENT', 100, 31, 'StockAdjustment', 31, NULL, NULL),
('2021-04-28 13:14:32.555035', '2021-04-28 13:14:32.555035', 'ADJUSTMENT', 100, 32, 'StockAdjustment', 32, NULL, NULL),
('2021-04-28 13:14:32.618908', '2021-04-28 13:14:32.618908', 'ADJUSTMENT', 100, 33, 'StockAdjustment', 33, NULL, NULL),
('2021-04-28 13:14:32.704593', '2021-04-28 13:14:32.704593', 'ADJUSTMENT', 100, 34, 'StockAdjustment', 34, NULL, NULL),
('2021-04-28 13:14:32.846293', '2021-04-28 13:14:32.846293', 'ADJUSTMENT', 100, 35, 'StockAdjustment', 35, NULL, NULL),
('2021-04-28 13:14:32.919598', '2021-04-28 13:14:32.919598', 'ADJUSTMENT', 100, 36, 'StockAdjustment', 36, NULL, NULL),
('2021-04-28 13:14:32.955587', '2021-04-28 13:14:32.955587', 'ADJUSTMENT', 100, 37, 'StockAdjustment', 37, NULL, NULL),
('2021-04-28 13:14:33.019859', '2021-04-28 13:14:33.019859', 'ADJUSTMENT', 100, 38, 'StockAdjustment', 38, NULL, NULL),
('2021-04-28 13:14:33.059801', '2021-04-28 13:14:33.059801', 'ADJUSTMENT', 100, 39, 'StockAdjustment', 39, NULL, NULL),
('2021-04-28 13:14:33.110006', '2021-04-28 13:14:33.110006', 'ADJUSTMENT', 100, 40, 'StockAdjustment', 40, NULL, NULL),
('2021-04-28 13:14:33.169765', '2021-04-28 13:14:33.169765', 'ADJUSTMENT', 100, 41, 'StockAdjustment', 41, NULL, NULL),
('2021-04-28 13:14:33.209010', '2021-04-28 13:14:33.209010', 'ADJUSTMENT', 100, 42, 'StockAdjustment', 42, NULL, NULL),
('2021-04-28 13:14:33.382823', '2021-04-28 13:14:33.382823', 'ADJUSTMENT', 100, 43, 'StockAdjustment', 43, NULL, NULL),
('2021-04-28 13:14:33.402654', '2021-04-28 13:14:33.402654', 'ADJUSTMENT', 100, 44, 'StockAdjustment', 44, NULL, NULL),
('2021-04-28 13:14:33.421676', '2021-04-28 13:14:33.421676', 'ADJUSTMENT', 100, 45, 'StockAdjustment', 45, NULL, NULL),
('2021-04-28 13:14:33.439976', '2021-04-28 13:14:33.439976', 'ADJUSTMENT', 100, 46, 'StockAdjustment', 46, NULL, NULL),
('2021-04-28 13:14:33.550174', '2021-04-28 13:14:33.550174', 'ADJUSTMENT', 100, 47, 'StockAdjustment', 47, NULL, NULL),
('2021-04-28 13:14:33.574391', '2021-04-28 13:14:33.574391', 'ADJUSTMENT', 100, 48, 'StockAdjustment', 48, NULL, NULL),
('2021-04-28 13:14:33.597798', '2021-04-28 13:14:33.597798', 'ADJUSTMENT', 100, 49, 'StockAdjustment', 49, NULL, NULL),
('2021-04-28 13:14:33.620152', '2021-04-28 13:14:33.620152', 'ADJUSTMENT', 100, 50, 'StockAdjustment', 50, NULL, NULL),
('2021-04-28 13:14:33.738544', '2021-04-28 13:14:33.738544', 'ADJUSTMENT', 100, 51, 'StockAdjustment', 51, NULL, NULL),
('2021-04-28 13:14:33.757959', '2021-04-28 13:14:33.757959', 'ADJUSTMENT', 100, 52, 'StockAdjustment', 52, NULL, NULL),
('2021-04-28 13:14:33.775121', '2021-04-28 13:14:33.775121', 'ADJUSTMENT', 100, 53, 'StockAdjustment', 53, NULL, NULL),
('2021-04-28 13:14:33.794457', '2021-04-28 13:14:33.794457', 'ADJUSTMENT', 100, 54, 'StockAdjustment', 54, NULL, NULL),
('2021-04-28 13:14:33.896901', '2021-04-28 13:14:33.896901', 'ADJUSTMENT', 100, 55, 'StockAdjustment', 55, NULL, NULL),
('2021-04-28 13:14:33.914179', '2021-04-28 13:14:33.914179', 'ADJUSTMENT', 100, 56, 'StockAdjustment', 56, NULL, NULL),
('2021-04-28 13:14:33.931173', '2021-04-28 13:14:33.931173', 'ADJUSTMENT', 100, 57, 'StockAdjustment', 57, NULL, NULL),
('2021-04-28 13:14:33.948781', '2021-04-28 13:14:33.948781', 'ADJUSTMENT', 100, 58, 'StockAdjustment', 58, NULL, NULL),
('2021-04-28 13:14:34.046346', '2021-04-28 13:14:34.046346', 'ADJUSTMENT', 100, 59, 'StockAdjustment', 59, NULL, NULL),
('2021-04-28 13:14:34.065281', '2021-04-28 13:14:34.065281', 'ADJUSTMENT', 100, 60, 'StockAdjustment', 60, NULL, NULL),
('2021-04-28 13:14:34.081351', '2021-04-28 13:14:34.081351', 'ADJUSTMENT', 100, 61, 'StockAdjustment', 61, NULL, NULL),
('2021-04-28 13:14:34.100490', '2021-04-28 13:14:34.100490', 'ADJUSTMENT', 100, 62, 'StockAdjustment', 62, NULL, NULL),
('2021-04-28 13:14:34.207331', '2021-04-28 13:14:34.207331', 'ADJUSTMENT', 100, 63, 'StockAdjustment', 63, NULL, NULL),
('2021-04-28 13:14:34.224162', '2021-04-28 13:14:34.224162', 'ADJUSTMENT', 100, 64, 'StockAdjustment', 64, NULL, NULL),
('2021-04-28 13:14:34.239439', '2021-04-28 13:14:34.239439', 'ADJUSTMENT', 100, 65, 'StockAdjustment', 65, NULL, NULL),
('2021-04-28 13:14:34.257673', '2021-04-28 13:14:34.257673', 'ADJUSTMENT', 100, 66, 'StockAdjustment', 66, NULL, NULL),
('2021-04-28 13:14:34.354666', '2021-04-28 13:14:34.354666', 'ADJUSTMENT', 100, 67, 'StockAdjustment', 67, NULL, NULL),
('2021-04-28 13:14:34.420303', '2021-04-28 13:14:34.420303', 'ADJUSTMENT', 100, 68, 'StockAdjustment', 68, NULL, NULL),
('2021-04-28 13:14:34.492084', '2021-04-28 13:14:34.492084', 'ADJUSTMENT', 100, 69, 'StockAdjustment', 69, NULL, NULL),
('2021-04-28 13:14:34.531168', '2021-04-28 13:14:34.531168', 'ADJUSTMENT', 100, 70, 'StockAdjustment', 70, NULL, NULL),
('2021-04-28 13:14:34.613563', '2021-04-28 13:14:34.613563', 'ADJUSTMENT', 100, 71, 'StockAdjustment', 71, NULL, NULL),
('2021-04-28 13:14:34.655893', '2021-04-28 13:14:34.655893', 'ADJUSTMENT', 100, 72, 'StockAdjustment', 72, NULL, NULL),
('2021-04-28 13:14:34.739970', '2021-04-28 13:14:34.739970', 'ADJUSTMENT', 100, 73, 'StockAdjustment', 73, NULL, NULL),
('2021-04-28 13:14:34.789442', '2021-04-28 13:14:34.789442', 'ADJUSTMENT', 100, 74, 'StockAdjustment', 74, NULL, NULL),
('2021-04-28 13:14:34.880540', '2021-04-28 13:14:34.880540', 'ADJUSTMENT', 100, 75, 'StockAdjustment', 75, NULL, NULL),
('2021-04-28 13:14:34.939256', '2021-04-28 13:14:34.939256', 'ADJUSTMENT', 100, 76, 'StockAdjustment', 76, NULL, NULL),
('2021-04-28 13:14:34.972317', '2021-04-28 13:14:34.972317', 'ADJUSTMENT', 100, 77, 'StockAdjustment', 77, NULL, NULL),
('2021-04-28 13:14:35.006085', '2021-04-28 13:14:35.006085', 'ADJUSTMENT', 100, 78, 'StockAdjustment', 78, NULL, NULL),
('2021-04-28 13:14:35.065925', '2021-04-28 13:14:35.065925', 'ADJUSTMENT', 100, 79, 'StockAdjustment', 79, NULL, NULL),
('2021-04-28 13:14:35.137391', '2021-04-28 13:14:35.137391', 'ADJUSTMENT', 100, 80, 'StockAdjustment', 80, NULL, NULL),
('2021-04-28 13:14:35.203594', '2021-04-28 13:14:35.203594', 'ADJUSTMENT', 100, 81, 'StockAdjustment', 81, NULL, NULL),
('2021-04-28 13:14:35.247015', '2021-04-28 13:14:35.247015', 'ADJUSTMENT', 100, 82, 'StockAdjustment', 82, NULL, NULL),
('2021-04-28 13:14:35.289962', '2021-04-28 13:14:35.289962', 'ADJUSTMENT', 100, 83, 'StockAdjustment', 83, NULL, NULL),
('2021-04-28 13:14:35.356897', '2021-04-28 13:14:35.356897', 'ADJUSTMENT', 100, 84, 'StockAdjustment', 84, NULL, NULL),
('2021-04-28 13:14:35.390992', '2021-04-28 13:14:35.390992', 'ADJUSTMENT', 100, 85, 'StockAdjustment', 85, NULL, NULL),
('2021-04-28 13:14:35.471062', '2021-04-28 13:14:35.471062', 'ADJUSTMENT', 100, 86, 'StockAdjustment', 86, NULL, NULL),
('2021-04-28 13:14:35.502885', '2021-04-28 13:14:35.502885', 'ADJUSTMENT', 100, 87, 'StockAdjustment', 87, NULL, NULL),
('2021-04-28 13:14:35.523488', '2021-04-28 13:14:35.523488', 'ADJUSTMENT', 100, 88, 'StockAdjustment', 88, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `surcharge`
--

CREATE TABLE `surcharge` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `description` varchar(255) NOT NULL,
  `listPrice` int(11) NOT NULL,
  `listPriceIncludesTax` tinyint(4) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `taxLines` text NOT NULL,
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `orderModificationId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tag`
--

CREATE TABLE `tag` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `value` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tax_category`
--

CREATE TABLE `tax_category` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `name` varchar(255) NOT NULL,
  `isDefault` tinyint(4) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `tax_category`
--

INSERT INTO `tax_category` (`createdAt`, `updatedAt`, `name`, `isDefault`, `id`) VALUES
('2021-04-28 13:14:30.072245', '2021-04-28 13:14:30.072245', 'Standard Tax', 0, 1),
('2021-04-28 13:14:30.232536', '2021-04-28 13:14:30.232536', 'Reduced Tax', 0, 2),
('2021-04-28 13:14:30.322662', '2021-04-28 13:14:30.322662', 'Zero Tax', 0, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tax_rate`
--

CREATE TABLE `tax_rate` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `name` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `value` decimal(5,2) NOT NULL,
  `id` int(11) NOT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `zoneId` int(11) DEFAULT NULL,
  `customerGroupId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `tax_rate`
--

INSERT INTO `tax_rate` (`createdAt`, `updatedAt`, `name`, `enabled`, `value`, `id`, `categoryId`, `zoneId`, `customerGroupId`) VALUES
('2021-04-28 13:14:30.086988', '2021-04-28 13:14:30.086988', 'Standard Tax Asia', 1, '20.00', 1, 1, 1, NULL),
('2021-04-28 13:14:30.122434', '2021-04-28 13:14:30.122434', 'Standard Tax Europe', 1, '20.00', 2, 1, 2, NULL),
('2021-04-28 13:14:30.148179', '2021-04-28 13:14:30.148179', 'Standard Tax Africa', 1, '20.00', 3, 1, 3, NULL),
('2021-04-28 13:14:30.176497', '2021-04-28 13:14:30.176497', 'Standard Tax Oceania', 1, '20.00', 4, 1, 4, NULL),
('2021-04-28 13:14:30.215761', '2021-04-28 13:14:30.215761', 'Standard Tax Americas', 1, '20.00', 5, 1, 5, NULL),
('2021-04-28 13:14:30.240840', '2021-04-28 13:14:30.240840', 'Reduced Tax Asia', 1, '10.00', 6, 2, 1, NULL),
('2021-04-28 13:14:30.251334', '2021-04-28 13:14:30.251334', 'Reduced Tax Europe', 1, '10.00', 7, 2, 2, NULL),
('2021-04-28 13:14:30.261369', '2021-04-28 13:14:30.261369', 'Reduced Tax Africa', 1, '10.00', 8, 2, 3, NULL),
('2021-04-28 13:14:30.276420', '2021-04-28 13:14:30.276420', 'Reduced Tax Oceania', 1, '10.00', 9, 2, 4, NULL),
('2021-04-28 13:14:30.307019', '2021-04-28 13:14:30.307019', 'Reduced Tax Americas', 1, '10.00', 10, 2, 5, NULL),
('2021-04-28 13:14:30.342657', '2021-04-28 13:14:30.342657', 'Zero Tax Asia', 1, '0.00', 11, 3, 1, NULL),
('2021-04-28 13:14:30.359050', '2021-04-28 13:14:30.359050', 'Zero Tax Europe', 1, '0.00', 12, 3, 2, NULL),
('2021-04-28 13:14:30.370480', '2021-04-28 13:14:30.370480', 'Zero Tax Africa', 1, '0.00', 13, 3, 3, NULL),
('2021-04-28 13:14:30.385571', '2021-04-28 13:14:30.385571', 'Zero Tax Oceania', 1, '0.00', 14, 3, 4, NULL),
('2021-04-28 13:14:30.421438', '2021-04-28 13:14:30.421438', 'Zero Tax Americas', 1, '0.00', 15, 3, 5, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime DEFAULT NULL,
  `identifier` varchar(255) NOT NULL,
  `verified` tinyint(4) NOT NULL DEFAULT '0',
  `lastLogin` datetime DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`createdAt`, `updatedAt`, `deletedAt`, `identifier`, `verified`, `lastLogin`, `id`) VALUES
('2021-04-28 13:14:25.781229', '2021-05-18 16:00:53.000000', NULL, 'superadmin', 1, '2021-05-18 19:00:54', 1),
('2021-05-11 12:16:52.375263', '2021-05-26 10:11:53.000000', NULL, 'mativiscusso@gmail.com', 1, '2021-05-26 13:11:54', 2),
('2021-05-19 12:03:42.856343', '2021-05-19 12:04:03.000000', NULL, 'juanmame@gmail.com', 1, '2021-05-19 15:04:03', 3),
('2021-05-19 12:12:33.165598', '2021-05-19 12:12:49.000000', NULL, 'elegante@gmail.com', 1, '2021-05-19 15:12:49', 4),
('2021-05-19 12:20:36.738436', '2021-05-19 12:20:51.000000', NULL, 'matutemorales@gmail.com', 1, '2021-05-19 15:20:51', 5),
('2021-05-19 12:26:29.940203', '2021-05-19 12:27:04.000000', NULL, 'juanperez@gmail.com', 1, '2021-05-19 15:27:04', 6),
('2021-05-19 12:28:43.882802', '2021-05-19 12:28:43.882802', NULL, 'aaa@aaa.com', 0, NULL, 7),
('2021-05-19 12:30:33.492872', '2021-05-19 12:30:51.000000', NULL, 'tt@gmail.com', 1, '2021-05-19 15:30:51', 8),
('2021-05-19 12:50:07.660895', '2021-05-19 12:50:14.000000', NULL, 'tutue@gmail.com', 1, '2021-05-19 15:50:15', 9),
('2021-05-19 13:04:29.555545', '2021-05-19 13:04:46.000000', NULL, 'elmati@gmail.com', 1, '2021-05-19 16:04:46', 10),
('2021-05-19 13:37:42.321496', '2021-05-19 13:37:57.000000', NULL, 'test@example.com', 1, '2021-05-19 16:37:58', 11),
('2021-05-19 14:18:07.577230', '2021-05-19 14:18:07.577230', NULL, 'vendure@gmail.com', 0, NULL, 12),
('2021-05-19 14:19:08.881356', '2021-05-19 14:19:08.881356', NULL, 'lala@gmail.com', 0, NULL, 13),
('2021-05-19 14:39:00.895383', '2021-05-19 14:39:23.000000', NULL, 'liomessi@gmail.com', 1, '2021-05-19 17:39:24', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles_role`
--

CREATE TABLE `user_roles_role` (
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `user_roles_role`
--

INSERT INTO `user_roles_role` (`userId`, `roleId`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zone`
--

CREATE TABLE `zone` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `zone`
--

INSERT INTO `zone` (`createdAt`, `updatedAt`, `name`, `id`) VALUES
('2021-04-28 13:14:25.896730', '2021-04-28 13:14:25.896730', 'Asia', 1),
('2021-04-28 13:14:25.933094', '2021-04-28 13:14:25.933094', 'Europe', 2),
('2021-04-28 13:14:25.980562', '2021-04-28 13:14:25.980562', 'Africa', 3),
('2021-04-28 13:14:26.016801', '2021-04-28 13:14:26.016801', 'Oceania', 4),
('2021-04-28 13:14:26.101497', '2021-04-28 13:14:26.101497', 'Americas', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zone_members_country`
--

CREATE TABLE `zone_members_country` (
  `zoneId` int(11) NOT NULL,
  `countryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `zone_members_country`
--

INSERT INTO `zone_members_country` (`zoneId`, `countryId`) VALUES
(1, 1),
(1, 11),
(1, 15),
(1, 17),
(1, 18),
(1, 25),
(1, 33),
(1, 38),
(1, 45),
(1, 58),
(1, 82),
(1, 100),
(1, 103),
(1, 104),
(1, 105),
(1, 106),
(1, 109),
(1, 112),
(1, 114),
(1, 115),
(1, 118),
(1, 119),
(1, 120),
(1, 121),
(1, 122),
(1, 124),
(1, 131),
(1, 135),
(1, 136),
(1, 148),
(1, 153),
(1, 156),
(1, 167),
(1, 168),
(1, 170),
(1, 175),
(1, 180),
(1, 195),
(1, 200),
(1, 210),
(1, 216),
(1, 217),
(1, 218),
(1, 220),
(1, 221),
(1, 227),
(1, 228),
(1, 233),
(1, 238),
(1, 241),
(1, 246),
(2, 2),
(2, 3),
(2, 6),
(2, 14),
(2, 20),
(2, 21),
(2, 28),
(2, 34),
(2, 55),
(2, 59),
(2, 60),
(2, 69),
(2, 73),
(2, 75),
(2, 76),
(2, 83),
(2, 85),
(2, 86),
(2, 92),
(2, 98),
(2, 101),
(2, 102),
(2, 107),
(2, 108),
(2, 110),
(2, 113),
(2, 123),
(2, 128),
(2, 129),
(2, 130),
(2, 132),
(2, 138),
(2, 146),
(2, 147),
(2, 149),
(2, 157),
(2, 166),
(2, 177),
(2, 178),
(2, 182),
(2, 183),
(2, 193),
(2, 197),
(2, 202),
(2, 203),
(2, 209),
(2, 213),
(2, 214),
(2, 215),
(2, 232),
(2, 234),
(3, 4),
(3, 7),
(3, 23),
(3, 29),
(3, 32),
(3, 35),
(3, 36),
(3, 37),
(3, 39),
(3, 42),
(3, 43),
(3, 49),
(3, 50),
(3, 51),
(3, 54),
(3, 61),
(3, 65),
(3, 67),
(3, 68),
(3, 70),
(3, 71),
(3, 79),
(3, 80),
(3, 81),
(3, 84),
(3, 93),
(3, 94),
(3, 116),
(3, 125),
(3, 126),
(3, 127),
(3, 133),
(3, 134),
(3, 137),
(3, 141),
(3, 142),
(3, 143),
(3, 151),
(3, 152),
(3, 154),
(3, 161),
(3, 162),
(3, 181),
(3, 184),
(3, 186),
(3, 194),
(3, 196),
(3, 198),
(3, 199),
(3, 205),
(3, 206),
(3, 208),
(3, 211),
(3, 219),
(3, 222),
(3, 226),
(3, 231),
(3, 245),
(3, 247),
(3, 248),
(4, 5),
(4, 13),
(4, 46),
(4, 47),
(4, 52),
(4, 74),
(4, 78),
(4, 90),
(4, 97),
(4, 117),
(4, 139),
(4, 145),
(4, 155),
(4, 158),
(4, 159),
(4, 163),
(4, 164),
(4, 165),
(4, 169),
(4, 172),
(4, 176),
(4, 192),
(4, 204),
(4, 223),
(4, 224),
(4, 230),
(4, 236),
(4, 239),
(4, 244),
(5, 8),
(5, 9),
(5, 10),
(5, 12),
(5, 16),
(5, 19),
(5, 22),
(5, 24),
(5, 26),
(5, 27),
(5, 30),
(5, 31),
(5, 40),
(5, 41),
(5, 44),
(5, 48),
(5, 53),
(5, 56),
(5, 57),
(5, 62),
(5, 63),
(5, 64),
(5, 66),
(5, 72),
(5, 77),
(5, 87),
(5, 88),
(5, 89),
(5, 91),
(5, 95),
(5, 96),
(5, 99),
(5, 111),
(5, 140),
(5, 144),
(5, 150),
(5, 160),
(5, 171),
(5, 173),
(5, 174),
(5, 179),
(5, 185),
(5, 187),
(5, 188),
(5, 189),
(5, 190),
(5, 191),
(5, 201),
(5, 207),
(5, 212),
(5, 225),
(5, 229),
(5, 235),
(5, 237),
(5, 240),
(5, 242),
(5, 243);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_dc34d382b493ade1f70e834c4d3` (`customerId`),
  ADD KEY `FK_d87215343c3a3a67e6a0b7f3ea9` (`countryId`);

--
-- Indices de la tabla `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_154f5c538b1576ccc277b1ed63` (`emailAddress`),
  ADD UNIQUE KEY `REL_1966e18ce6a39a82b19204704d` (`userId`);

--
-- Indices de la tabla `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asset_channels_channel`
--
ALTER TABLE `asset_channels_channel`
  ADD PRIMARY KEY (`assetId`,`channelId`),
  ADD KEY `IDX_dc4e7435f9f5e9e6436bebd33b` (`assetId`),
  ADD KEY `IDX_16ca9151a5153f1169da5b7b7e` (`channelId`);

--
-- Indices de la tabla `asset_tags_tag`
--
ALTER TABLE `asset_tags_tag`
  ADD PRIMARY KEY (`assetId`,`tagId`),
  ADD KEY `IDX_9e412b00d4c6cee1a4b3d92071` (`assetId`),
  ADD KEY `IDX_fb5e800171ffbe9823f2cc727f` (`tagId`);

--
-- Indices de la tabla `authentication_method`
--
ALTER TABLE `authentication_method`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_a23445b2c942d8dfcae15b8de2` (`type`),
  ADD KEY `FK_00cbe87bc0d4e36758d61bd31d6` (`userId`);

--
-- Indices de la tabla `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_06127ac6c6d913f4320759971d` (`code`),
  ADD UNIQUE KEY `IDX_842699fce4f3470a7d06d89de8` (`token`),
  ADD KEY `FK_afe9f917a1c82b9e9e69f7c6129` (`defaultTaxZoneId`),
  ADD KEY `FK_c9ca2f58d4517460435cbd8b4c9` (`defaultShippingZoneId`);

--
-- Indices de la tabla `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_7256fef1bb42f1b38156b7449f5` (`featuredAssetId`),
  ADD KEY `FK_4257b61275144db89fa0f5dc059` (`parentId`);

--
-- Indices de la tabla `collection_asset`
--
ALTER TABLE `collection_asset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_51da53b26522dc0525762d2de8e` (`assetId`),
  ADD KEY `FK_1ed9e48dfbf74b5fcbb35d3d686` (`collectionId`);

--
-- Indices de la tabla `collection_channels_channel`
--
ALTER TABLE `collection_channels_channel`
  ADD PRIMARY KEY (`collectionId`,`channelId`),
  ADD KEY `IDX_cdbf33ffb5d451916125152008` (`collectionId`),
  ADD KEY `IDX_7216ab24077cf5cbece7857dbb` (`channelId`);

--
-- Indices de la tabla `collection_product_variants_product_variant`
--
ALTER TABLE `collection_product_variants_product_variant`
  ADD PRIMARY KEY (`collectionId`,`productVariantId`),
  ADD KEY `IDX_6faa7b72422d9c4679e2f186ad` (`collectionId`),
  ADD KEY `IDX_fb05887e2867365f236d7dd95e` (`productVariantId`);

--
-- Indices de la tabla `collection_translation`
--
ALTER TABLE `collection_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_e329f9036210d75caa1d8f2154a` (`baseId`);

--
-- Indices de la tabla `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `country_translation`
--
ALTER TABLE `country_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_20958e5bdb4c996c18ca63d18e4` (`baseId`);

--
-- Indices de la tabla `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REL_3f62b42ed23958b120c235f74d` (`userId`);

--
-- Indices de la tabla `customer_channels_channel`
--
ALTER TABLE `customer_channels_channel`
  ADD PRIMARY KEY (`customerId`,`channelId`),
  ADD KEY `IDX_a842c9fe8cd4c8ff31402d172d` (`customerId`),
  ADD KEY `IDX_dc9f69207a8867f83b0fd257e3` (`channelId`);

--
-- Indices de la tabla `customer_group`
--
ALTER TABLE `customer_group`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `customer_groups_customer_group`
--
ALTER TABLE `customer_groups_customer_group`
  ADD PRIMARY KEY (`customerId`,`customerGroupId`),
  ADD KEY `IDX_b823a3c8bf3b78d3ed68736485` (`customerId`),
  ADD KEY `IDX_85feea3f0e5e82133605f78db0` (`customerGroupId`);

--
-- Indices de la tabla `facet`
--
ALTER TABLE `facet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_0c9a5d053fdf4ebb5f0490b40f` (`code`);

--
-- Indices de la tabla `facet_channels_channel`
--
ALTER TABLE `facet_channels_channel`
  ADD PRIMARY KEY (`facetId`,`channelId`),
  ADD KEY `IDX_ca796020c6d097e251e5d6d2b0` (`facetId`),
  ADD KEY `IDX_2a8ea404d05bf682516184db7d` (`channelId`);

--
-- Indices de la tabla `facet_translation`
--
ALTER TABLE `facet_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_eaea53f44bf9e97790d38a3d68f` (`baseId`);

--
-- Indices de la tabla `facet_value`
--
ALTER TABLE `facet_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_d101dc2265a7341be3d94968c5b` (`facetId`);

--
-- Indices de la tabla `facet_value_channels_channel`
--
ALTER TABLE `facet_value_channels_channel`
  ADD PRIMARY KEY (`facetValueId`,`channelId`),
  ADD KEY `IDX_ad690c1b05596d7f52e52ffeed` (`facetValueId`),
  ADD KEY `IDX_e1d54c0b9db3e2eb17faaf5919` (`channelId`);

--
-- Indices de la tabla `facet_value_translation`
--
ALTER TABLE `facet_value_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_3d6e45823b65de808a66cb1423b` (`baseId`);

--
-- Indices de la tabla `fulfillment`
--
ALTER TABLE `fulfillment`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `global_settings`
--
ALTER TABLE `global_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `history_entry`
--
ALTER TABLE `history_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_f3a761f6bcfabb474b11e1e51f` (`discriminator`),
  ADD KEY `FK_92f8c334ef06275f9586fd01832` (`administratorId`),
  ADD KEY `FK_43ac602f839847fdb91101f30ec` (`customerId`),
  ADD KEY `FK_3a05127e67435b4d2332ded7c9e` (`orderId`);

--
-- Indices de la tabla `job_record`
--
ALTER TABLE `job_record`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_124456e637cca7a415897dce659` (`customerId`);

--
-- Indices de la tabla `order_channels_channel`
--
ALTER TABLE `order_channels_channel`
  ADD PRIMARY KEY (`orderId`,`channelId`),
  ADD KEY `IDX_0d8e5c204480204a60e151e485` (`orderId`),
  ADD KEY `IDX_d0d16db872499e83b15999f8c7` (`channelId`);

--
-- Indices de la tabla `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_69384323444206753f0cdeb64e0` (`lineId`),
  ADD KEY `FK_3e5161133689fba526377cbccd3` (`refundId`);

--
-- Indices de la tabla `order_item_fulfillments_fulfillment`
--
ALTER TABLE `order_item_fulfillments_fulfillment`
  ADD PRIMARY KEY (`orderItemId`,`fulfillmentId`),
  ADD KEY `IDX_a568a3d5aa7f237edab624960b` (`orderItemId`),
  ADD KEY `IDX_8132041a647c28eb27ecc1691f` (`fulfillmentId`);

--
-- Indices de la tabla `order_line`
--
ALTER TABLE `order_line`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_cbcd22193eda94668e84d33f185` (`productVariantId`),
  ADD KEY `FK_77be94ce9ec6504466179462275` (`taxCategoryId`),
  ADD KEY `FK_9f065453910ea77d4be8e92618f` (`featuredAssetId`),
  ADD KEY `FK_239cfca2a55b98b90b6bef2e44f` (`orderId`);

--
-- Indices de la tabla `order_modification`
--
ALTER TABLE `order_modification`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REL_ad2991fa2933ed8b7f86a71633` (`paymentId`),
  ADD UNIQUE KEY `REL_cb66b63b6e97613013795eadbd` (`refundId`),
  ADD KEY `FK_1df5bc14a47ef24d2e681f45598` (`orderId`);

--
-- Indices de la tabla `order_modification_order_items_order_item`
--
ALTER TABLE `order_modification_order_items_order_item`
  ADD PRIMARY KEY (`orderModificationId`,`orderItemId`),
  ADD KEY `IDX_a48502a38aded69d087a8ec08a` (`orderModificationId`),
  ADD KEY `IDX_9d631d7bd3d44af50eca535d72` (`orderItemId`);

--
-- Indices de la tabla `order_promotions_promotion`
--
ALTER TABLE `order_promotions_promotion`
  ADD PRIMARY KEY (`orderId`,`promotionId`),
  ADD KEY `IDX_67be0e40122ab30a62a9817efe` (`orderId`),
  ADD KEY `IDX_2c26b988769c0e3b0120bdef31` (`promotionId`);

--
-- Indices de la tabla `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_d09d285fe1645cd2f0db811e293` (`orderId`);

--
-- Indices de la tabla `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `payment_method_channels_channel`
--
ALTER TABLE `payment_method_channels_channel`
  ADD PRIMARY KEY (`paymentMethodId`,`channelId`),
  ADD KEY `IDX_5bcb569635ce5407eb3f264487` (`paymentMethodId`),
  ADD KEY `IDX_c00e36f667d35031087b382e61` (`channelId`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_91a19e6613534949a4ce6e76ff8` (`featuredAssetId`);

--
-- Indices de la tabla `product_asset`
--
ALTER TABLE `product_asset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_5888ac17b317b93378494a10620` (`assetId`),
  ADD KEY `FK_0d1294f5c22a56da7845ebab72c` (`productId`);

--
-- Indices de la tabla `product_channels_channel`
--
ALTER TABLE `product_channels_channel`
  ADD PRIMARY KEY (`productId`,`channelId`),
  ADD KEY `IDX_26d12be3b5fec6c4adb1d79284` (`productId`),
  ADD KEY `IDX_a51dfbd87c330c075c39832b6e` (`channelId`);

--
-- Indices de la tabla `product_facet_values_facet_value`
--
ALTER TABLE `product_facet_values_facet_value`
  ADD PRIMARY KEY (`productId`,`facetValueId`),
  ADD KEY `IDX_6a0558e650d75ae639ff38e413` (`productId`),
  ADD KEY `IDX_06e7d73673ee630e8ec50d0b29` (`facetValueId`);

--
-- Indices de la tabla `product_option`
--
ALTER TABLE `product_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_a6debf9198e2fbfa006aa10d710` (`groupId`);

--
-- Indices de la tabla `product_option_group`
--
ALTER TABLE `product_option_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_a6e91739227bf4d442f23c52c75` (`productId`);

--
-- Indices de la tabla `product_option_group_translation`
--
ALTER TABLE `product_option_group_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_93751abc1451972c02e033b766c` (`baseId`);

--
-- Indices de la tabla `product_option_translation`
--
ALTER TABLE `product_option_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_a79a443c1f7841f3851767faa6d` (`baseId`);

--
-- Indices de la tabla `product_translation`
--
ALTER TABLE `product_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_7dbc75cb4e8b002620c4dbfdac5` (`baseId`);

--
-- Indices de la tabla `product_variant`
--
ALTER TABLE `product_variant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_0e6f516053cf982b537836e21cf` (`featuredAssetId`),
  ADD KEY `FK_e38dca0d82fd64c7cf8aac8b8ef` (`taxCategoryId`),
  ADD KEY `FK_6e420052844edf3a5506d863ce6` (`productId`);

--
-- Indices de la tabla `product_variant_asset`
--
ALTER TABLE `product_variant_asset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_10b5a2e3dee0e30b1e26c32f5c7` (`assetId`),
  ADD KEY `FK_fa21412afac15a2304f3eb35feb` (`productVariantId`);

--
-- Indices de la tabla `product_variant_channels_channel`
--
ALTER TABLE `product_variant_channels_channel`
  ADD PRIMARY KEY (`productVariantId`,`channelId`),
  ADD KEY `IDX_beeb2b3cd800e589f2213ae99d` (`productVariantId`),
  ADD KEY `IDX_d194bff171b62357688a5d0f55` (`channelId`);

--
-- Indices de la tabla `product_variant_facet_values_facet_value`
--
ALTER TABLE `product_variant_facet_values_facet_value`
  ADD PRIMARY KEY (`productVariantId`,`facetValueId`),
  ADD KEY `IDX_69567bc225b6bbbd732d6c5455` (`productVariantId`),
  ADD KEY `IDX_0d641b761ed1dce4ef3cd33d55` (`facetValueId`);

--
-- Indices de la tabla `product_variant_options_product_option`
--
ALTER TABLE `product_variant_options_product_option`
  ADD PRIMARY KEY (`productVariantId`,`productOptionId`),
  ADD KEY `IDX_526f0131260eec308a3bd2b61b` (`productVariantId`),
  ADD KEY `IDX_e96a71affe63c97f7fa2f076da` (`productOptionId`);

--
-- Indices de la tabla `product_variant_price`
--
ALTER TABLE `product_variant_price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_e6126cd268aea6e9b31d89af9ab` (`variantId`);

--
-- Indices de la tabla `product_variant_translation`
--
ALTER TABLE `product_variant_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_420f4d6fb75d38b9dca79bc43b4` (`baseId`);

--
-- Indices de la tabla `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `promotion_channels_channel`
--
ALTER TABLE `promotion_channels_channel`
  ADD PRIMARY KEY (`promotionId`,`channelId`),
  ADD KEY `IDX_6d9e2c39ab12391aaa374bcdaa` (`promotionId`),
  ADD KEY `IDX_0eaaf0f4b6c69afde1e88ffb52` (`channelId`);

--
-- Indices de la tabla `refund`
--
ALTER TABLE `refund`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_1c6932a756108788a361e7d4404` (`paymentId`);

--
-- Indices de la tabla `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role_channels_channel`
--
ALTER TABLE `role_channels_channel`
  ADD PRIMARY KEY (`roleId`,`channelId`),
  ADD KEY `IDX_bfd2a03e9988eda6a9d1176011` (`roleId`),
  ADD KEY `IDX_e09dfee62b158307404202b43a` (`channelId`);

--
-- Indices de la tabla `search_index_item`
--
ALTER TABLE `search_index_item`
  ADD PRIMARY KEY (`languageCode`,`productVariantId`,`channelId`);
ALTER TABLE `search_index_item` ADD FULLTEXT KEY `IDX_6fb55742e13e8082954d0436dc` (`productName`);
ALTER TABLE `search_index_item` ADD FULLTEXT KEY `IDX_d8791f444a8bf23fe4c1bc020c` (`productVariantName`);
ALTER TABLE `search_index_item` ADD FULLTEXT KEY `IDX_9a5a6a556f75c4ac7bfdd03410` (`description`);

--
-- Indices de la tabla `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_232f8e85d7633bd6ddfad42169` (`token`),
  ADD KEY `IDX_e5598363000cab9d9116bd5835` (`type`),
  ADD KEY `FK_7a75399a4f4ffa48ee02e98c059` (`activeOrderId`),
  ADD KEY `FK_eb87ef1e234444728138302263b` (`activeChannelId`),
  ADD KEY `FK_3d2f174ef04fb312fdebd0ddc53` (`userId`);

--
-- Indices de la tabla `shipping_line`
--
ALTER TABLE `shipping_line`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_e2e7642e1e88167c1dfc827fdf3` (`shippingMethodId`),
  ADD KEY `FK_c9f34a440d490d1b66f6829b86c` (`orderId`);

--
-- Indices de la tabla `shipping_method`
--
ALTER TABLE `shipping_method`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `shipping_method_channels_channel`
--
ALTER TABLE `shipping_method_channels_channel`
  ADD PRIMARY KEY (`shippingMethodId`,`channelId`),
  ADD KEY `IDX_f0a17b94aa5a162f0d422920eb` (`shippingMethodId`),
  ADD KEY `IDX_f2b98dfb56685147bed509acc3` (`channelId`);

--
-- Indices de la tabla `shipping_method_translation`
--
ALTER TABLE `shipping_method_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_85ec26c71067ebc84adcd98d1a5` (`baseId`);

--
-- Indices de la tabla `stock_movement`
--
ALTER TABLE `stock_movement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_94e15d5f12d355d117390131ac` (`discriminator`),
  ADD KEY `FK_e65ba3882557cab4febb54809bb` (`productVariantId`),
  ADD KEY `FK_cbb0990e398bf7713aebdd38482` (`orderItemId`),
  ADD KEY `FK_d2c8d5fca981cc820131f81aa83` (`orderLineId`);

--
-- Indices de la tabla `surcharge`
--
ALTER TABLE `surcharge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_154eb685f9b629033bd266df7fa` (`orderId`),
  ADD KEY `FK_a49c5271c39cc8174a0535c8088` (`orderModificationId`);

--
-- Indices de la tabla `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tax_category`
--
ALTER TABLE `tax_category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tax_rate`
--
ALTER TABLE `tax_rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_7ee3306d7638aa85ca90d672198` (`categoryId`),
  ADD KEY `FK_9872fc7de2f4e532fd3230d1915` (`zoneId`),
  ADD KEY `FK_8b5ab52fc8887c1a769b9276caf` (`customerGroupId`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_roles_role`
--
ALTER TABLE `user_roles_role`
  ADD PRIMARY KEY (`userId`,`roleId`),
  ADD KEY `IDX_5f9286e6c25594c6b88c108db7` (`userId`),
  ADD KEY `IDX_4be2f7adf862634f5f803d246b` (`roleId`);

--
-- Indices de la tabla `zone`
--
ALTER TABLE `zone`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zone_members_country`
--
ALTER TABLE `zone_members_country`
  ADD PRIMARY KEY (`zoneId`,`countryId`),
  ADD KEY `IDX_7350d77b6474313fbbaf4b094c` (`zoneId`),
  ADD KEY `IDX_7baeecaf955e54bec73f998b0d` (`countryId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `asset`
--
ALTER TABLE `asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `authentication_method`
--
ALTER TABLE `authentication_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `channel`
--
ALTER TABLE `channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `collection`
--
ALTER TABLE `collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `collection_asset`
--
ALTER TABLE `collection_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `collection_translation`
--
ALTER TABLE `collection_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT de la tabla `country_translation`
--
ALTER TABLE `country_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT de la tabla `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `customer_group`
--
ALTER TABLE `customer_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `facet`
--
ALTER TABLE `facet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `facet_translation`
--
ALTER TABLE `facet_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `facet_value`
--
ALTER TABLE `facet_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `facet_value_translation`
--
ALTER TABLE `facet_value_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `fulfillment`
--
ALTER TABLE `fulfillment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `global_settings`
--
ALTER TABLE `global_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `history_entry`
--
ALTER TABLE `history_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `job_record`
--
ALTER TABLE `job_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `order_line`
--
ALTER TABLE `order_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `order_modification`
--
ALTER TABLE `order_modification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `product_asset`
--
ALTER TABLE `product_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `product_option`
--
ALTER TABLE `product_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `product_option_group`
--
ALTER TABLE `product_option_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `product_option_group_translation`
--
ALTER TABLE `product_option_group_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `product_option_translation`
--
ALTER TABLE `product_option_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `product_translation`
--
ALTER TABLE `product_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `product_variant`
--
ALTER TABLE `product_variant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `product_variant_asset`
--
ALTER TABLE `product_variant_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `product_variant_price`
--
ALTER TABLE `product_variant_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `product_variant_translation`
--
ALTER TABLE `product_variant_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `refund`
--
ALTER TABLE `refund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `shipping_line`
--
ALTER TABLE `shipping_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `shipping_method`
--
ALTER TABLE `shipping_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `shipping_method_translation`
--
ALTER TABLE `shipping_method_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `stock_movement`
--
ALTER TABLE `stock_movement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `surcharge`
--
ALTER TABLE `surcharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tax_category`
--
ALTER TABLE `tax_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tax_rate`
--
ALTER TABLE `tax_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `zone`
--
ALTER TABLE `zone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_d87215343c3a3a67e6a0b7f3ea9` FOREIGN KEY (`countryId`) REFERENCES `country` (`id`),
  ADD CONSTRAINT `FK_dc34d382b493ade1f70e834c4d3` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`);

--
-- Filtros para la tabla `administrator`
--
ALTER TABLE `administrator`
  ADD CONSTRAINT `FK_1966e18ce6a39a82b19204704d7` FOREIGN KEY (`userId`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `asset_channels_channel`
--
ALTER TABLE `asset_channels_channel`
  ADD CONSTRAINT `FK_16ca9151a5153f1169da5b7b7e3` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_dc4e7435f9f5e9e6436bebd33bb` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `asset_tags_tag`
--
ALTER TABLE `asset_tags_tag`
  ADD CONSTRAINT `FK_9e412b00d4c6cee1a4b3d920716` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_fb5e800171ffbe9823f2cc727fd` FOREIGN KEY (`tagId`) REFERENCES `tag` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `authentication_method`
--
ALTER TABLE `authentication_method`
  ADD CONSTRAINT `FK_00cbe87bc0d4e36758d61bd31d6` FOREIGN KEY (`userId`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `channel`
--
ALTER TABLE `channel`
  ADD CONSTRAINT `FK_afe9f917a1c82b9e9e69f7c6129` FOREIGN KEY (`defaultTaxZoneId`) REFERENCES `zone` (`id`),
  ADD CONSTRAINT `FK_c9ca2f58d4517460435cbd8b4c9` FOREIGN KEY (`defaultShippingZoneId`) REFERENCES `zone` (`id`);

--
-- Filtros para la tabla `collection`
--
ALTER TABLE `collection`
  ADD CONSTRAINT `FK_4257b61275144db89fa0f5dc059` FOREIGN KEY (`parentId`) REFERENCES `collection` (`id`),
  ADD CONSTRAINT `FK_7256fef1bb42f1b38156b7449f5` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `collection_asset`
--
ALTER TABLE `collection_asset`
  ADD CONSTRAINT `FK_1ed9e48dfbf74b5fcbb35d3d686` FOREIGN KEY (`collectionId`) REFERENCES `collection` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_51da53b26522dc0525762d2de8e` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `collection_channels_channel`
--
ALTER TABLE `collection_channels_channel`
  ADD CONSTRAINT `FK_7216ab24077cf5cbece7857dbbd` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_cdbf33ffb5d4519161251520083` FOREIGN KEY (`collectionId`) REFERENCES `collection` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `collection_product_variants_product_variant`
--
ALTER TABLE `collection_product_variants_product_variant`
  ADD CONSTRAINT `FK_6faa7b72422d9c4679e2f186ad1` FOREIGN KEY (`collectionId`) REFERENCES `collection` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_fb05887e2867365f236d7dd95ee` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `collection_translation`
--
ALTER TABLE `collection_translation`
  ADD CONSTRAINT `FK_e329f9036210d75caa1d8f2154a` FOREIGN KEY (`baseId`) REFERENCES `collection` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `country_translation`
--
ALTER TABLE `country_translation`
  ADD CONSTRAINT `FK_20958e5bdb4c996c18ca63d18e4` FOREIGN KEY (`baseId`) REFERENCES `country` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FK_3f62b42ed23958b120c235f74df` FOREIGN KEY (`userId`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `customer_channels_channel`
--
ALTER TABLE `customer_channels_channel`
  ADD CONSTRAINT `FK_a842c9fe8cd4c8ff31402d172d7` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_dc9f69207a8867f83b0fd257e30` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `customer_groups_customer_group`
--
ALTER TABLE `customer_groups_customer_group`
  ADD CONSTRAINT `FK_85feea3f0e5e82133605f78db02` FOREIGN KEY (`customerGroupId`) REFERENCES `customer_group` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_b823a3c8bf3b78d3ed68736485c` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `facet_channels_channel`
--
ALTER TABLE `facet_channels_channel`
  ADD CONSTRAINT `FK_2a8ea404d05bf682516184db7d3` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_ca796020c6d097e251e5d6d2b02` FOREIGN KEY (`facetId`) REFERENCES `facet` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `facet_translation`
--
ALTER TABLE `facet_translation`
  ADD CONSTRAINT `FK_eaea53f44bf9e97790d38a3d68f` FOREIGN KEY (`baseId`) REFERENCES `facet` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `facet_value`
--
ALTER TABLE `facet_value`
  ADD CONSTRAINT `FK_d101dc2265a7341be3d94968c5b` FOREIGN KEY (`facetId`) REFERENCES `facet` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `facet_value_channels_channel`
--
ALTER TABLE `facet_value_channels_channel`
  ADD CONSTRAINT `FK_ad690c1b05596d7f52e52ffeedd` FOREIGN KEY (`facetValueId`) REFERENCES `facet_value` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_e1d54c0b9db3e2eb17faaf5919c` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `facet_value_translation`
--
ALTER TABLE `facet_value_translation`
  ADD CONSTRAINT `FK_3d6e45823b65de808a66cb1423b` FOREIGN KEY (`baseId`) REFERENCES `facet_value` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `history_entry`
--
ALTER TABLE `history_entry`
  ADD CONSTRAINT `FK_3a05127e67435b4d2332ded7c9e` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_43ac602f839847fdb91101f30ec` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_92f8c334ef06275f9586fd01832` FOREIGN KEY (`administratorId`) REFERENCES `administrator` (`id`);

--
-- Filtros para la tabla `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_124456e637cca7a415897dce659` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`);

--
-- Filtros para la tabla `order_channels_channel`
--
ALTER TABLE `order_channels_channel`
  ADD CONSTRAINT `FK_0d8e5c204480204a60e151e4853` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_d0d16db872499e83b15999f8c7a` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `FK_3e5161133689fba526377cbccd3` FOREIGN KEY (`refundId`) REFERENCES `refund` (`id`),
  ADD CONSTRAINT `FK_69384323444206753f0cdeb64e0` FOREIGN KEY (`lineId`) REFERENCES `order_line` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `order_item_fulfillments_fulfillment`
--
ALTER TABLE `order_item_fulfillments_fulfillment`
  ADD CONSTRAINT `FK_8132041a647c28eb27ecc1691fa` FOREIGN KEY (`fulfillmentId`) REFERENCES `fulfillment` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_a568a3d5aa7f237edab624960b9` FOREIGN KEY (`orderItemId`) REFERENCES `order_item` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `order_line`
--
ALTER TABLE `order_line`
  ADD CONSTRAINT `FK_239cfca2a55b98b90b6bef2e44f` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_77be94ce9ec6504466179462275` FOREIGN KEY (`taxCategoryId`) REFERENCES `tax_category` (`id`),
  ADD CONSTRAINT `FK_9f065453910ea77d4be8e92618f` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`),
  ADD CONSTRAINT `FK_cbcd22193eda94668e84d33f185` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`);

--
-- Filtros para la tabla `order_modification`
--
ALTER TABLE `order_modification`
  ADD CONSTRAINT `FK_1df5bc14a47ef24d2e681f45598` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_ad2991fa2933ed8b7f86a716338` FOREIGN KEY (`paymentId`) REFERENCES `payment` (`id`),
  ADD CONSTRAINT `FK_cb66b63b6e97613013795eadbd5` FOREIGN KEY (`refundId`) REFERENCES `refund` (`id`);

--
-- Filtros para la tabla `order_modification_order_items_order_item`
--
ALTER TABLE `order_modification_order_items_order_item`
  ADD CONSTRAINT `FK_9d631d7bd3d44af50eca535d728` FOREIGN KEY (`orderItemId`) REFERENCES `order_item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_a48502a38aded69d087a8ec08ad` FOREIGN KEY (`orderModificationId`) REFERENCES `order_modification` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `order_promotions_promotion`
--
ALTER TABLE `order_promotions_promotion`
  ADD CONSTRAINT `FK_2c26b988769c0e3b0120bdef31b` FOREIGN KEY (`promotionId`) REFERENCES `promotion` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_67be0e40122ab30a62a9817efe0` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `FK_d09d285fe1645cd2f0db811e293` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`);

--
-- Filtros para la tabla `payment_method_channels_channel`
--
ALTER TABLE `payment_method_channels_channel`
  ADD CONSTRAINT `FK_5bcb569635ce5407eb3f264487d` FOREIGN KEY (`paymentMethodId`) REFERENCES `payment_method` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_c00e36f667d35031087b382e61b` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_91a19e6613534949a4ce6e76ff8` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `product_asset`
--
ALTER TABLE `product_asset`
  ADD CONSTRAINT `FK_0d1294f5c22a56da7845ebab72c` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5888ac17b317b93378494a10620` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_channels_channel`
--
ALTER TABLE `product_channels_channel`
  ADD CONSTRAINT `FK_26d12be3b5fec6c4adb1d792844` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_a51dfbd87c330c075c39832b6e7` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_facet_values_facet_value`
--
ALTER TABLE `product_facet_values_facet_value`
  ADD CONSTRAINT `FK_06e7d73673ee630e8ec50d0b29f` FOREIGN KEY (`facetValueId`) REFERENCES `facet_value` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6a0558e650d75ae639ff38e413a` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_option`
--
ALTER TABLE `product_option`
  ADD CONSTRAINT `FK_a6debf9198e2fbfa006aa10d710` FOREIGN KEY (`groupId`) REFERENCES `product_option_group` (`id`);

--
-- Filtros para la tabla `product_option_group`
--
ALTER TABLE `product_option_group`
  ADD CONSTRAINT `FK_a6e91739227bf4d442f23c52c75` FOREIGN KEY (`productId`) REFERENCES `product` (`id`);

--
-- Filtros para la tabla `product_option_group_translation`
--
ALTER TABLE `product_option_group_translation`
  ADD CONSTRAINT `FK_93751abc1451972c02e033b766c` FOREIGN KEY (`baseId`) REFERENCES `product_option_group` (`id`);

--
-- Filtros para la tabla `product_option_translation`
--
ALTER TABLE `product_option_translation`
  ADD CONSTRAINT `FK_a79a443c1f7841f3851767faa6d` FOREIGN KEY (`baseId`) REFERENCES `product_option` (`id`);

--
-- Filtros para la tabla `product_translation`
--
ALTER TABLE `product_translation`
  ADD CONSTRAINT `FK_7dbc75cb4e8b002620c4dbfdac5` FOREIGN KEY (`baseId`) REFERENCES `product` (`id`);

--
-- Filtros para la tabla `product_variant`
--
ALTER TABLE `product_variant`
  ADD CONSTRAINT `FK_0e6f516053cf982b537836e21cf` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_6e420052844edf3a5506d863ce6` FOREIGN KEY (`productId`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FK_e38dca0d82fd64c7cf8aac8b8ef` FOREIGN KEY (`taxCategoryId`) REFERENCES `tax_category` (`id`);

--
-- Filtros para la tabla `product_variant_asset`
--
ALTER TABLE `product_variant_asset`
  ADD CONSTRAINT `FK_10b5a2e3dee0e30b1e26c32f5c7` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_fa21412afac15a2304f3eb35feb` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_variant_channels_channel`
--
ALTER TABLE `product_variant_channels_channel`
  ADD CONSTRAINT `FK_beeb2b3cd800e589f2213ae99d6` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_d194bff171b62357688a5d0f559` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_variant_facet_values_facet_value`
--
ALTER TABLE `product_variant_facet_values_facet_value`
  ADD CONSTRAINT `FK_0d641b761ed1dce4ef3cd33d559` FOREIGN KEY (`facetValueId`) REFERENCES `facet_value` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_69567bc225b6bbbd732d6c5455b` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_variant_options_product_option`
--
ALTER TABLE `product_variant_options_product_option`
  ADD CONSTRAINT `FK_526f0131260eec308a3bd2b61b6` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_e96a71affe63c97f7fa2f076dac` FOREIGN KEY (`productOptionId`) REFERENCES `product_option` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `product_variant_price`
--
ALTER TABLE `product_variant_price`
  ADD CONSTRAINT `FK_e6126cd268aea6e9b31d89af9ab` FOREIGN KEY (`variantId`) REFERENCES `product_variant` (`id`);

--
-- Filtros para la tabla `product_variant_translation`
--
ALTER TABLE `product_variant_translation`
  ADD CONSTRAINT `FK_420f4d6fb75d38b9dca79bc43b4` FOREIGN KEY (`baseId`) REFERENCES `product_variant` (`id`);

--
-- Filtros para la tabla `promotion_channels_channel`
--
ALTER TABLE `promotion_channels_channel`
  ADD CONSTRAINT `FK_0eaaf0f4b6c69afde1e88ffb52d` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6d9e2c39ab12391aaa374bcdaa4` FOREIGN KEY (`promotionId`) REFERENCES `promotion` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `refund`
--
ALTER TABLE `refund`
  ADD CONSTRAINT `FK_1c6932a756108788a361e7d4404` FOREIGN KEY (`paymentId`) REFERENCES `payment` (`id`);

--
-- Filtros para la tabla `role_channels_channel`
--
ALTER TABLE `role_channels_channel`
  ADD CONSTRAINT `FK_bfd2a03e9988eda6a9d11760119` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_e09dfee62b158307404202b43a5` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `FK_3d2f174ef04fb312fdebd0ddc53` FOREIGN KEY (`userId`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_7a75399a4f4ffa48ee02e98c059` FOREIGN KEY (`activeOrderId`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `FK_eb87ef1e234444728138302263b` FOREIGN KEY (`activeChannelId`) REFERENCES `channel` (`id`);

--
-- Filtros para la tabla `shipping_line`
--
ALTER TABLE `shipping_line`
  ADD CONSTRAINT `FK_c9f34a440d490d1b66f6829b86c` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `FK_e2e7642e1e88167c1dfc827fdf3` FOREIGN KEY (`shippingMethodId`) REFERENCES `shipping_method` (`id`);

--
-- Filtros para la tabla `shipping_method_channels_channel`
--
ALTER TABLE `shipping_method_channels_channel`
  ADD CONSTRAINT `FK_f0a17b94aa5a162f0d422920eb2` FOREIGN KEY (`shippingMethodId`) REFERENCES `shipping_method` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_f2b98dfb56685147bed509acc3d` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `shipping_method_translation`
--
ALTER TABLE `shipping_method_translation`
  ADD CONSTRAINT `FK_85ec26c71067ebc84adcd98d1a5` FOREIGN KEY (`baseId`) REFERENCES `shipping_method` (`id`);

--
-- Filtros para la tabla `stock_movement`
--
ALTER TABLE `stock_movement`
  ADD CONSTRAINT `FK_cbb0990e398bf7713aebdd38482` FOREIGN KEY (`orderItemId`) REFERENCES `order_item` (`id`),
  ADD CONSTRAINT `FK_d2c8d5fca981cc820131f81aa83` FOREIGN KEY (`orderLineId`) REFERENCES `order_line` (`id`),
  ADD CONSTRAINT `FK_e65ba3882557cab4febb54809bb` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`);

--
-- Filtros para la tabla `surcharge`
--
ALTER TABLE `surcharge`
  ADD CONSTRAINT `FK_154eb685f9b629033bd266df7fa` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_a49c5271c39cc8174a0535c8088` FOREIGN KEY (`orderModificationId`) REFERENCES `order_modification` (`id`);

--
-- Filtros para la tabla `tax_rate`
--
ALTER TABLE `tax_rate`
  ADD CONSTRAINT `FK_7ee3306d7638aa85ca90d672198` FOREIGN KEY (`categoryId`) REFERENCES `tax_category` (`id`),
  ADD CONSTRAINT `FK_8b5ab52fc8887c1a769b9276caf` FOREIGN KEY (`customerGroupId`) REFERENCES `customer_group` (`id`),
  ADD CONSTRAINT `FK_9872fc7de2f4e532fd3230d1915` FOREIGN KEY (`zoneId`) REFERENCES `zone` (`id`);

--
-- Filtros para la tabla `user_roles_role`
--
ALTER TABLE `user_roles_role`
  ADD CONSTRAINT `FK_4be2f7adf862634f5f803d246b8` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5f9286e6c25594c6b88c108db77` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `zone_members_country`
--
ALTER TABLE `zone_members_country`
  ADD CONSTRAINT `FK_7350d77b6474313fbbaf4b094c1` FOREIGN KEY (`zoneId`) REFERENCES `zone` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_7baeecaf955e54bec73f998b0d5` FOREIGN KEY (`countryId`) REFERENCES `country` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
