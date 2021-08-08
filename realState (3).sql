-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 03, 2021 at 07:47 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realState`
--

-- --------------------------------------------------------

--
-- Table structure for table `action_events`
--

CREATE TABLE `action_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionable_id` bigint(20) UNSIGNED NOT NULL,
  `target_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fields` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'running',
  `exception` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `original` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `changes` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `action_events`
--

INSERT INTO `action_events` (`id`, `batch_id`, `user_id`, `name`, `actionable_type`, `actionable_id`, `target_type`, `target_id`, `model_type`, `model_id`, `fields`, `status`, `exception`, `created_at`, `updated_at`, `original`, `changes`) VALUES
(1, '93b0a4dc-c50e-48e7-bb12-741b84f1f489', 1, 'Create', 'App\\Owner', 1, 'App\\Owner', 1, 'App\\Owner', 1, '', 'finished', '', '2021-06-16 15:41:34', '2021-06-16 15:41:34', NULL, '{\"name\":\"Ahmed Almajed\",\"address\":\"Exit 12\",\"email\":\"supplier@gmail.com\",\"nationalId\":\"1092243961\",\"phone\":\"0568595106\",\"birthDate\":\"2021-06-23T00:00:00.000000Z\",\"expireDate\":\"2021-06-22T00:00:00.000000Z\",\"issuer\":\"sds\",\"placeOfBirth\":\"sfsf\",\"sex\":\"0\",\"isActive\":\"0\",\"updated_at\":\"2021-06-16T18:41:34.000000Z\",\"created_at\":\"2021-06-16T18:41:34.000000Z\",\"id\":1}'),
(2, '93b0a7bc-5548-4e54-8368-101e20ca9381', 1, 'Create', 'App\\Bank', 1, 'App\\Bank', 1, 'App\\Bank', 1, '', 'finished', '', '2021-06-16 15:49:36', '2021-06-16 15:49:36', NULL, '{\"name\":\"\\u0627\\u0644\\u0631\\u0627\\u062c\\u062d\\u064a\",\"updated_at\":\"2021-06-16T18:49:36.000000Z\",\"created_at\":\"2021-06-16T18:49:36.000000Z\",\"id\":1}'),
(3, '93b0b216-835e-4fa8-8e3c-58a81daa397a', 1, 'Create', 'App\\OwnerBank', 1, 'App\\OwnerBank', 1, 'App\\OwnerBank', 1, '', 'finished', '', '2021-06-16 16:18:33', '2021-06-16 16:18:33', NULL, '{\"name\":\"fsf\",\"iban\":\"fsgbn\",\"bankId\":\"1\",\"owner_id\":1,\"updated_at\":\"2021-06-16T19:18:33.000000Z\",\"created_at\":\"2021-06-16T19:18:33.000000Z\",\"id\":1}'),
(4, '93b45184-a66b-4ff0-9102-3ae4e3c94df9', 1, 'Update', 'App\\OwnerBank', 1, 'App\\OwnerBank', 1, 'App\\OwnerBank', 1, '', 'finished', '', '2021-06-18 11:31:50', '2021-06-18 11:31:50', '[]', '[]'),
(5, '93b4518c-8fbd-4a2f-91ff-a31439c62a76', 1, 'Update', 'App\\OwnerBank', 1, 'App\\OwnerBank', 1, 'App\\OwnerBank', 1, '', 'finished', '', '2021-06-18 11:31:55', '2021-06-18 11:31:55', '{\"name\":\"fsf\"}', '{\"name\":\"dfsgd\"}'),
(6, '93b45437-a4be-42dc-9e7b-40300a2439a9', 1, 'Create', 'App\\OwnerBank', 13, 'App\\OwnerBank', 13, 'App\\OwnerBank', 13, '', 'finished', '', '2021-06-18 11:39:23', '2021-06-18 11:39:23', NULL, '{\"name\":\"rfgh\",\"iban\":\"sdfgd\",\"bankId\":\"1\",\"owner_id\":\"1\",\"updated_at\":\"2021-06-18T14:39:23.000000Z\",\"created_at\":\"2021-06-18T14:39:23.000000Z\",\"id\":13}'),
(7, '93b45444-65b1-4873-bc68-da36f1cd1f0b', 1, 'Create', 'App\\OwnerBank', 14, 'App\\OwnerBank', 14, 'App\\OwnerBank', 14, '', 'finished', '', '2021-06-18 11:39:31', '2021-06-18 11:39:31', NULL, '{\"name\":\"dff\",\"iban\":\"dsf\",\"bankId\":\"1\",\"owner_id\":\"1\",\"updated_at\":\"2021-06-18T14:39:31.000000Z\",\"created_at\":\"2021-06-18T14:39:31.000000Z\",\"id\":14}'),
(8, '93b45d89-3efb-4741-8aab-80d750d98556', 1, 'Create', 'App\\OwnerBank', 15, 'App\\OwnerBank', 15, 'App\\OwnerBank', 15, '', 'finished', '', '2021-06-18 12:05:26', '2021-06-18 12:05:26', NULL, '{\"name\":\"\\u062a\\u062c\\u0631\\u0628\\u0629\",\"iban\":\"\\u062a\\u062c\\u0631\\u0628\\u0629\",\"bankId\":\"1\",\"owner_id\":1,\"updated_at\":\"2021-06-18T15:05:26.000000Z\",\"created_at\":\"2021-06-18T15:05:26.000000Z\",\"id\":15}'),
(9, '93c4053a-7447-4221-9676-15fcd6b129e9', 1, 'Create', 'App\\City', 1, 'App\\City', 1, 'App\\City', 1, '', 'finished', '', '2021-06-26 06:51:45', '2021-06-26 06:51:45', NULL, '{\"name\":\"\\u0627\\u0644\\u0631\\u064a\\u0627\\u0636\",\"updated_at\":\"2021-06-26T09:51:45.000000Z\",\"created_at\":\"2021-06-26T09:51:45.000000Z\",\"id\":1}'),
(10, '93c40545-eeff-4531-bd8d-63f67c8fc370', 1, 'Create', 'App\\Neighbor', 1, 'App\\Neighbor', 1, 'App\\Neighbor', 1, '', 'finished', '', '2021-06-26 06:51:53', '2021-06-26 06:51:53', NULL, '{\"name\":\"\\u0627\\u0644\\u0645\\u0644\\u0642\\u0649\",\"cityId\":\"1\",\"updated_at\":\"2021-06-26T09:51:53.000000Z\",\"created_at\":\"2021-06-26T09:51:53.000000Z\",\"id\":1}'),
(11, '93c4055c-88cc-4320-8868-a3af900ab582', 1, 'Create', 'App\\Zone', 1, 'App\\Zone', 1, 'App\\Zone', 1, '', 'finished', '', '2021-06-26 06:52:08', '2021-06-26 06:52:08', NULL, '{\"name\":\"\\u062a\\u062c\\u0631\\u0628\\u0629\",\"neighbor_id\":\"1\",\"updated_at\":\"2021-06-26T09:52:08.000000Z\",\"created_at\":\"2021-06-26T09:52:08.000000Z\",\"id\":1}'),
(12, '93c4084b-6eba-4367-b3e6-28930f645084', 1, 'Create', 'App\\ApartmentStatus', 1, 'App\\ApartmentStatus', 1, 'App\\ApartmentStatus', 1, '', 'finished', '', '2021-06-26 07:00:20', '2021-06-26 07:00:20', NULL, '{\"name\":\"\\u0634\\u0627\\u063a\\u0631\\u0629\",\"updated_at\":\"2021-06-26T10:00:20.000000Z\",\"created_at\":\"2021-06-26T10:00:20.000000Z\",\"id\":1}'),
(13, '93c442e1-acb2-4e27-913d-31deb1f48901', 1, 'Create', 'App\\BuildingType', 1, 'App\\BuildingType', 1, 'App\\BuildingType', 1, '', 'finished', '', '2021-06-26 09:44:09', '2021-06-26 09:44:09', NULL, '{\"name\":\"\\u0633\\u0643\\u0646\\u064a\\u0629\",\"updated_at\":\"2021-06-26T12:44:09.000000Z\",\"created_at\":\"2021-06-26T12:44:09.000000Z\",\"id\":1}'),
(14, '93c443b0-94d1-4f84-9d1c-5c59567793b7', 1, 'Create', 'App\\Building', 1, 'App\\Building', 1, 'App\\Building', 1, '', 'finished', '', '2021-06-26 09:46:25', '2021-06-26 09:46:25', NULL, '{\"buildingName\":\"\\u0627\\u0644\\u0642\\u0627\\u0633\\u0645\",\"street\":\"\\u0627\\u0644\\u062b\\u0645\\u0627\\u0645\\u0629\",\"cityId\":\"1\",\"neighborId\":\"1\",\"buildingTypeId\":\"1\",\"buildingNo\":\"233\",\"enteranceNo\":\"123\",\"apartmentNo\":\"12\",\"officesNo\":\"1\",\"shopsNo\":\"5\",\"populationType\":\"1\",\"isActive\":\"0\",\"updated_at\":\"2021-06-26T12:46:25.000000Z\",\"created_at\":\"2021-06-26T12:46:25.000000Z\",\"id\":1}'),
(15, '93c4f0fb-9305-491c-9904-d7ead4b68a86', 1, 'Create', 'App\\Instrument', 1, 'App\\Instrument', 1, 'App\\Instrument', 1, '', 'finished', '', '2021-06-26 17:50:58', '2021-06-26 17:50:58', NULL, '{\"instrument_number\":\"\\u0642\\u064a\\u0641\\u0628\\u0644\",\"issue_date\":\"2021-06-16\",\"land_number\":\"\\u0662\\u0663\\u0664\\u0664\\u0641\",\"chart_number\":\"\\u0633\\u0628\\u064a\\u0644\\u0628\\u0644\",\"building_id\":\"1\",\"owner_id\":\"1\",\"updated_at\":\"2021-06-26T20:50:58.000000Z\",\"created_at\":\"2021-06-26T20:50:58.000000Z\",\"id\":1}'),
(16, '93d0944c-2047-4afd-9e32-b73d24375951', 1, 'Create', 'App\\RentalContract', 1, 'App\\RentalContract', 1, 'App\\RentalContract', 1, '', 'finished', '', '2021-07-02 12:41:44', '2021-07-02 12:41:44', NULL, '{\"contract_no\":\"1234\",\"name\":\"Test\",\"date_from\":\"2021-07-06T00:00:00.000000Z\",\"date_to\":\"2021-07-07T00:00:00.000000Z\",\"instrument_id\":\"1\",\"owner_id\":\"1\",\"clause5\":\"22\",\"clause6\":\"1\",\"clause13\":\"1\",\"updated_at\":\"2021-07-02T15:41:44.000000Z\",\"created_at\":\"2021-07-02T15:41:44.000000Z\",\"id\":1}'),
(97, '93ff45de-f802-4c6c-92e1-b6eb295415b1', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-07-25 17:46:21', '2021-07-25 17:46:21', NULL, NULL),
(98, '93ff4633-061c-4dba-8f54-bd2b4f1a7613', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-07-25 17:47:16', '2021-07-25 17:47:16', NULL, NULL),
(99, '93ff4682-0705-42d5-a4e7-0f4e2886a419', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-07-25 17:48:08', '2021-07-25 17:48:08', NULL, NULL),
(101, '93ff473a-a53c-4e73-aa63-5fb4bd7628e8', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-07-25 17:50:09', '2021-07-25 17:50:09', NULL, NULL),
(102, '93ff4760-743b-49ea-8eed-f762f7c608a0', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-07-25 17:50:34', '2021-07-25 17:50:34', NULL, NULL),
(103, '93ff47d1-3a23-4f48-8dac-0e660d95537a', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-07-25 17:51:48', '2021-07-25 17:51:48', NULL, NULL),
(104, '93ff4d15-2364-43ce-acc4-bca1e33dc9c4', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-07-25 18:06:31', '2021-07-25 18:06:31', NULL, NULL),
(105, '93ff4d62-1baf-4dc4-81cb-b1cc27870834', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-07-25 18:07:22', '2021-07-25 18:07:22', NULL, NULL),
(106, '93ff4d71-d890-40ff-a297-2afc4477ebba', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-07-25 18:07:32', '2021-07-25 18:07:32', NULL, NULL),
(108, '93ff4fcd-4046-4c6c-b3ff-317b2724bae4', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-07-25 18:14:07', '2021-07-25 18:14:07', NULL, NULL),
(109, '93ff500c-c757-41e0-82ff-587a6b505438', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-07-25 18:14:49', '2021-07-25 18:14:49', NULL, NULL),
(110, '93ff503e-6d73-40f7-a4f1-e188d037ce3c', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-07-25 18:15:22', '2021-07-25 18:15:22', NULL, NULL),
(111, '93ff51b5-7295-48fd-9426-cc3750d0ab3d', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-07-25 18:19:27', '2021-07-25 18:19:27', NULL, NULL),
(112, '93ff51e9-2720-4f49-a4eb-0f8fd730501a', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-07-25 18:20:01', '2021-07-25 18:20:01', NULL, NULL),
(113, '93ff5201-c795-4c13-a0d6-a1b2ac54a01c', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-07-25 18:20:17', '2021-07-25 18:20:17', NULL, NULL),
(114, '93ff5268-77c9-4217-82a4-56336caa15d3', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-07-25 18:21:25', '2021-07-25 18:21:25', NULL, NULL),
(116, '93ff5404-e619-4842-837a-ae1ec84b3626', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-07-25 18:25:55', '2021-07-25 18:25:55', NULL, NULL),
(117, '93ff555d-bbe3-46c3-ba15-d634a108c6b8', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-07-25 18:29:41', '2021-07-25 18:29:41', NULL, NULL),
(118, '93ff567a-4160-40f5-aa04-fc1f91aeb312', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-07-25 18:32:47', '2021-07-25 18:32:47', NULL, NULL),
(120, '9400abd8-890d-4b45-b01f-863ef528b705', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-07-26 10:27:20', '2021-07-26 10:28:20', NULL, NULL),
(121, '9400ac43-3c93-41a8-bf18-b60b6a1543ee', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-07-26 10:28:29', '2021-07-26 10:29:30', NULL, NULL),
(122, '9400c177-e292-4810-8b3a-54d2f34eebdf', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-07-26 11:27:47', '2021-07-26 11:28:48', NULL, NULL),
(123, '940b37e6-f951-4411-8b2d-2bb51afa9f19', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-07-31 16:17:14', '2021-07-31 16:18:15', NULL, NULL),
(124, '940b38a9-96c5-4240-9205-e9fb93a14b3d', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-07-31 16:19:21', '2021-07-31 16:20:22', NULL, NULL),
(126, '940b3ade-fed0-4c36-befb-c57fa2245b42', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-07-31 16:25:32', '2021-07-31 16:26:33', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `apartments`
--

CREATE TABLE `apartments` (
  `id` int(10) UNSIGNED NOT NULL,
  `buildingId` int(10) UNSIGNED NOT NULL,
  `floor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apartmentNo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noRoom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noHalls` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noBathroom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noKitchen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `rentPeriod` tinyint(4) NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kitchenTypeId` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apartment_statuses`
--

CREATE TABLE `apartment_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apartment_statuses`
--

INSERT INTO `apartment_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'شاغرة', '2021-06-26 07:00:20', '2021-06-26 07:00:20');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'الراجحي', '2021-06-16 15:49:36', '2021-06-16 15:49:36');

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `id` int(10) UNSIGNED NOT NULL,
  `cityId` int(10) UNSIGNED NOT NULL,
  `neighborId` int(10) UNSIGNED NOT NULL,
  `buildingName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buildingNo` int(11) NOT NULL,
  `populationType` tinyint(4) NOT NULL,
  `enteranceNo` int(11) NOT NULL,
  `apartmentNo` int(11) NOT NULL,
  `isActive` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `buildingTypeId` int(10) UNSIGNED NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shopsNo` int(11) NOT NULL,
  `officesNo` int(11) NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buildings`
--

INSERT INTO `buildings` (`id`, `cityId`, `neighborId`, `buildingName`, `buildingNo`, `populationType`, `enteranceNo`, `apartmentNo`, `isActive`, `created_at`, `updated_at`, `buildingTypeId`, `street`, `shopsNo`, `officesNo`, `lat`, `lang`) VALUES
(1, 1, 1, 'القاسم', 233, 1, 123, 12, 0, '2021-06-26 09:46:25', '2021-06-26 09:46:25', 1, 'الثمامة', 5, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `building_types`
--

CREATE TABLE `building_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `building_types`
--

INSERT INTO `building_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'سكنية', '2021-06-26 09:44:09', '2021-06-26 09:44:09');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'الرياض', '2021-06-26 06:51:45', '2021-06-26 06:51:45');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone` int(11) NOT NULL,
  `nationalType` tinyint(4) NOT NULL,
  `nationalId` int(11) NOT NULL,
  `employer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nameAr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nameEng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issuer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeOfBirth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` tinyint(4) NOT NULL,
  `copy` int(11) NOT NULL,
  `isActive` tinyint(4) NOT NULL,
  `birthDate` datetime NOT NULL,
  `expireDate` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instruments`
--

CREATE TABLE `instruments` (
  `id` int(10) UNSIGNED NOT NULL,
  `instrument_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `building_id` int(10) UNSIGNED NOT NULL,
  `issue_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `land_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chart_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instruments`
--

INSERT INTO `instruments` (`id`, `instrument_number`, `owner_id`, `building_id`, `issue_date`, `land_number`, `chart_number`, `created_at`, `updated_at`) VALUES
(1, 'قيفبل', 1, 1, '2021-06-15 21:00:00', '٢٣٤٤ف', 'سبيلبل', '2021-06-26 17:50:58', '2021-06-26 17:50:58');

-- --------------------------------------------------------

--
-- Table structure for table `investment_contracts`
--

CREATE TABLE `investment_contracts` (
  `id` int(10) UNSIGNED NOT NULL,
  `contract_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_from` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_to` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner_id` int(10) UNSIGNED NOT NULL,
  `instrument_id` int(10) UNSIGNED NOT NULL,
  `clause5` int(11) NOT NULL,
  `clause6` int(11) NOT NULL,
  `clause13` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `investment_contracts`
--

INSERT INTO `investment_contracts` (`id`, `contract_no`, `name`, `date_from`, `date_to`, `owner_id`, `instrument_id`, `clause5`, `clause6`, `clause13`, `created_at`, `updated_at`) VALUES
(1, '12', 'aa', '2021-07-12 21:00:00', '2021-07-04 21:00:00', 1, 1, 23, 312, 13, '2021-07-06 15:50:03', '2021-07-06 15:50:03');

-- --------------------------------------------------------

--
-- Table structure for table `kitchen_types`
--

CREATE TABLE `kitchen_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2018_01_01_000000_create_action_events_table', 1),
(4, '2019_05_10_000000_add_fields_to_action_events_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2021_06_07_214101_create_owners_table', 1),
(7, '2021_06_12_111106_add_columns_to_owner_table', 1),
(8, '2021_06_12_123318_create_cities_table', 1),
(9, '2021_06_12_123358_create_neighbors_table', 1),
(10, '2021_06_12_123504_create_buildings_table', 1),
(11, '2021_06_12_123559_create_banks_table', 1),
(12, '2021_06_12_123722_create_clients_table', 1),
(13, '2021_06_12_124054_create_building_typs_table', 1),
(14, '2021_06_12_124232_add_columns_to_buildings_table', 1),
(15, '2021_06_12_131444_add_manycolumns_to_buildings_table', 1),
(16, '2021_06_12_132153_create_apartments_table', 1),
(17, '2021_06_12_133223_create_kitchen_types_table', 1),
(18, '2021_06_12_133314_add_columns_to_apartments_table', 1),
(19, '2021_06_14_210549_add_columns_to_owners_table', 1),
(20, '2021_06_16_161744_create_owner_banks_table', 1),
(21, '2021_06_26_094723_create_zones_table', 2),
(22, '2021_06_26_095835_create_apartment_statuses_table', 3),
(26, '2021_06_26_123401_create_instruments_table', 4),
(27, '2021_06_26_202214_create_rental_contracts_table', 5),
(30, '2021_07_02_153108_create_investment_contracts_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `neighbors`
--

CREATE TABLE `neighbors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cityId` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `neighbors`
--

INSERT INTO `neighbors` (`id`, `name`, `cityId`, `created_at`, `updated_at`) VALUES
(1, 'الملقى', 1, '2021-06-26 06:51:53', '2021-06-26 06:51:53');

-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

CREATE TABLE `owners` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone` int(11) NOT NULL,
  `nationalId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `issuer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeOfBirth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` tinyint(4) NOT NULL,
  `isActive` tinyint(4) NOT NULL,
  `birthDate` timestamp NULL DEFAULT NULL,
  `expireDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `owners`
--

INSERT INTO `owners` (`id`, `phone`, `nationalId`, `name`, `address`, `email`, `created_at`, `updated_at`, `issuer`, `placeOfBirth`, `sex`, `isActive`, `birthDate`, `expireDate`) VALUES
(1, 568595106, 1092243961, 'Ahmed Almajed', 'Exit 12', 'ahmed@almajed.com', '2021-06-16 15:41:34', '2021-06-16 15:41:34', 'sds', 'sfsf', 0, 0, '2021-06-22 21:00:00', '2021-06-21 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `owner_banks`
--

CREATE TABLE `owner_banks` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iban` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bankId` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `owner_banks`
--

INSERT INTO `owner_banks` (`id`, `owner_id`, `name`, `iban`, `bankId`, `created_at`, `updated_at`) VALUES
(13, 1, 'rfgh', 'sdfgd', 1, '2021-06-18 11:39:23', '2021-06-18 11:39:23'),
(14, 1, 'dff', 'dsf', 1, '2021-06-18 11:39:31', '2021-06-18 11:39:31'),
(15, 1, 'تجربة', 'تجربة', 1, '2021-06-18 12:05:26', '2021-06-18 12:05:26');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rental_contracts`
--

CREATE TABLE `rental_contracts` (
  `id` int(10) UNSIGNED NOT NULL,
  `contract_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_from` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_to` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner_id` int(10) UNSIGNED NOT NULL,
  `instrument_id` int(10) UNSIGNED NOT NULL,
  `clause5` int(11) NOT NULL,
  `clause6` int(11) NOT NULL,
  `clause13` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rental_contracts`
--

INSERT INTO `rental_contracts` (`id`, `contract_no`, `name`, `date_from`, `date_to`, `owner_id`, `instrument_id`, `clause5`, `clause6`, `clause13`, `created_at`, `updated_at`) VALUES
(1, '1234', 'Test', '2021-07-05 21:00:00', '2021-07-06 21:00:00', 1, 1, 22, 1, 1, '2021-07-02 12:41:44', '2021-07-02 12:41:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ahmed', 'ahmed01799@gmail.com', NULL, '$2y$10$TKieIgTC8sSBSPV5R2seMe4FU6A60c8TG3ralmlwXW9rnCTmTpBy2', 'n1ngcRZBh1qPgxCaIFTcuIyZ3yCOZPZUIOppGAgEpnyHnMa9QU9s8PoysbGo', '2021-06-16 18:40:37', '2021-06-24 18:40:37'),
(2, 'hakeem', 'hakeem@wehad.com', NULL, '123456', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` int(10) UNSIGNED NOT NULL,
  `neighbor_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `neighbor_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'تجربة', '2021-06-26 06:52:08', '2021-06-26 06:52:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action_events`
--
ALTER TABLE `action_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action_events_actionable_type_actionable_id_index` (`actionable_type`,`actionable_id`),
  ADD KEY `action_events_batch_id_model_type_model_id_index` (`batch_id`,`model_type`,`model_id`),
  ADD KEY `action_events_user_id_index` (`user_id`);

--
-- Indexes for table `apartments`
--
ALTER TABLE `apartments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `apartments_buildingid_foreign` (`buildingId`),
  ADD KEY `apartments_kitchentypeid_foreign` (`kitchenTypeId`);

--
-- Indexes for table `apartment_statuses`
--
ALTER TABLE `apartment_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buildings_cityid_foreign` (`cityId`),
  ADD KEY `buildings_neighborid_foreign` (`neighborId`),
  ADD KEY `buildings_buildingtypeid_foreign` (`buildingTypeId`);

--
-- Indexes for table `building_types`
--
ALTER TABLE `building_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instruments`
--
ALTER TABLE `instruments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instruments_owner_id_foreign` (`owner_id`),
  ADD KEY `instruments_building_id_foreign` (`building_id`);

--
-- Indexes for table `investment_contracts`
--
ALTER TABLE `investment_contracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `investment_contracts_owner_id_foreign` (`owner_id`),
  ADD KEY `investment_contracts_instrument_id_foreign` (`instrument_id`);

--
-- Indexes for table `kitchen_types`
--
ALTER TABLE `kitchen_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `neighbors`
--
ALTER TABLE `neighbors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `neighbors_cityid_foreign` (`cityId`);

--
-- Indexes for table `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owner_banks`
--
ALTER TABLE `owner_banks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_banks_bankid_foreign` (`bankId`),
  ADD KEY `owner_banks_owner_id_foreign` (`owner_id`) USING BTREE;

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `rental_contracts`
--
ALTER TABLE `rental_contracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rental_contracts_owner_id_foreign` (`owner_id`),
  ADD KEY `rental_contracts_instrument_id_foreign` (`instrument_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zones_neighbor_id_foreign` (`neighbor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `action_events`
--
ALTER TABLE `action_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `apartments`
--
ALTER TABLE `apartments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apartment_statuses`
--
ALTER TABLE `apartment_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `building_types`
--
ALTER TABLE `building_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instruments`
--
ALTER TABLE `instruments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `investment_contracts`
--
ALTER TABLE `investment_contracts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kitchen_types`
--
ALTER TABLE `kitchen_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `neighbors`
--
ALTER TABLE `neighbors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `owners`
--
ALTER TABLE `owners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `owner_banks`
--
ALTER TABLE `owner_banks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rental_contracts`
--
ALTER TABLE `rental_contracts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apartments`
--
ALTER TABLE `apartments`
  ADD CONSTRAINT `apartments_buildingid_foreign` FOREIGN KEY (`buildingId`) REFERENCES `buildings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `apartments_kitchentypeid_foreign` FOREIGN KEY (`kitchenTypeId`) REFERENCES `kitchen_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `buildings`
--
ALTER TABLE `buildings`
  ADD CONSTRAINT `buildings_buildingtypeid_foreign` FOREIGN KEY (`buildingTypeId`) REFERENCES `building_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `buildings_cityid_foreign` FOREIGN KEY (`cityId`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `buildings_neighborid_foreign` FOREIGN KEY (`neighborId`) REFERENCES `neighbors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `instruments`
--
ALTER TABLE `instruments`
  ADD CONSTRAINT `instruments_building_id_foreign` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `instruments_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `owners` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `investment_contracts`
--
ALTER TABLE `investment_contracts`
  ADD CONSTRAINT `investment_contracts_instrument_id_foreign` FOREIGN KEY (`instrument_id`) REFERENCES `instruments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `investment_contracts_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `owners` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `neighbors`
--
ALTER TABLE `neighbors`
  ADD CONSTRAINT `neighbors_cityid_foreign` FOREIGN KEY (`cityId`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `owner_banks`
--
ALTER TABLE `owner_banks`
  ADD CONSTRAINT `owner_banks_bankid_foreign` FOREIGN KEY (`bankId`) REFERENCES `banks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `owner_banks_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `owners` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rental_contracts`
--
ALTER TABLE `rental_contracts`
  ADD CONSTRAINT `rental_contracts_instrument_id_foreign` FOREIGN KEY (`instrument_id`) REFERENCES `instruments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rental_contracts_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `owners` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `zones`
--
ALTER TABLE `zones`
  ADD CONSTRAINT `zones_neighbor_id_foreign` FOREIGN KEY (`neighbor_id`) REFERENCES `neighbors` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
