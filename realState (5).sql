-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 23, 2021 at 09:42 PM
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
(126, '940b3ade-fed0-4c36-befb-c57fa2245b42', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-07-31 16:25:32', '2021-07-31 16:26:33', NULL, NULL),
(127, '941125f0-c724-4826-b98f-5e3bf05dcbac', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-08-03 15:01:58', '2021-08-03 15:02:59', NULL, NULL),
(128, '941128cd-3b8e-448e-8bb4-b219db389894', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-08-03 15:09:58', '2021-08-03 15:09:59', NULL, NULL),
(129, '941128f0-bdde-46da-a7e4-e0a70b53119d', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-08-03 15:10:22', '2021-08-03 15:10:23', NULL, NULL),
(130, '94112900-2b2a-4072-8024-7b914e410b8e', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-08-03 15:10:32', '2021-08-03 15:10:32', NULL, NULL),
(131, '94112991-59f6-4263-b757-51d5b6b215fc', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-08-03 15:12:07', '2021-08-03 15:12:08', NULL, NULL),
(132, '94112e7e-d842-4089-9d04-f036431bde13', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-08-03 15:25:54', '2021-08-03 15:25:54', NULL, NULL),
(133, '94112e96-726e-47c8-8b94-fdcebbd49af3', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-08-03 15:26:09', '2021-08-03 15:26:10', NULL, NULL),
(134, '9411363e-fa20-435d-9067-dd9cf8f333b6', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-08-03 15:47:34', '2021-08-03 15:47:35', NULL, NULL),
(147, '941141dd-4b43-4058-9e7e-edb4b3b4f41a', 1, 'Print P D F', 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'App\\InvestmentContract', 1, 'a:0:{}', 'finished', '', '2021-08-03 16:20:03', '2021-08-03 16:20:04', NULL, NULL),
(148, '94136584-6da8-43ca-b884-e80b8a67155b', 1, 'Print P D F', 'App\\RentalContract', 1, 'App\\RentalContract', 1, 'App\\RentalContract', 1, 'a:0:{}', 'finished', '', '2021-08-04 17:51:24', '2021-08-04 17:51:25', NULL, NULL),
(149, '94136baf-758e-451a-b0e9-e3da540b5e5a', 1, 'Print P D F', 'App\\RentalContract', 1, 'App\\RentalContract', 1, 'App\\RentalContract', 1, 'a:0:{}', 'finished', '', '2021-08-04 18:08:39', '2021-08-04 18:08:39', NULL, NULL),
(150, '94136c26-393e-4dea-911c-3e1f731fa770', 1, 'Print P D F', 'App\\RentalContract', 1, 'App\\RentalContract', 1, 'App\\RentalContract', 1, 'a:0:{}', 'finished', '', '2021-08-04 18:09:57', '2021-08-04 18:09:57', NULL, NULL),
(151, '941519ee-8984-455b-8340-f4ac7637dbf9', 1, 'Print P D F', 'App\\RentalContract', 1, 'App\\RentalContract', 1, 'App\\RentalContract', 1, 'a:0:{}', 'finished', '', '2021-08-05 14:11:42', '2021-08-05 14:11:43', NULL, NULL),
(152, '94151b02-1bb9-4b50-a2e1-41b99de580b6', 1, 'Print P D F', 'App\\RentalContract', 1, 'App\\RentalContract', 1, 'App\\RentalContract', 1, 'a:0:{}', 'finished', '', '2021-08-05 14:14:43', '2021-08-05 14:14:43', NULL, NULL),
(153, '94151ba8-4201-4ce9-9a37-e6ad226b94ce', 1, 'Print P D F', 'App\\RentalContract', 1, 'App\\RentalContract', 1, 'App\\RentalContract', 1, 'a:0:{}', 'finished', '', '2021-08-05 14:16:32', '2021-08-05 14:16:32', NULL, NULL),
(154, '94151bdd-d095-40c6-9fa2-dfcc25385faa', 1, 'Print P D F', 'App\\RentalContract', 1, 'App\\RentalContract', 1, 'App\\RentalContract', 1, 'a:0:{}', 'finished', '', '2021-08-05 14:17:07', '2021-08-05 14:17:07', NULL, NULL),
(155, '94151c00-8e42-4ca6-8b8d-d6c1c02ac210', 1, 'Print P D F', 'App\\RentalContract', 1, 'App\\RentalContract', 1, 'App\\RentalContract', 1, 'a:0:{}', 'finished', '', '2021-08-05 14:17:30', '2021-08-05 14:17:30', NULL, NULL),
(156, '94151c95-65f3-4393-a6db-8ac8843dfecb', 1, 'Print P D F', 'App\\RentalContract', 1, 'App\\RentalContract', 1, 'App\\RentalContract', 1, 'a:0:{}', 'finished', '', '2021-08-05 14:19:07', '2021-08-05 14:19:08', NULL, NULL),
(189, '94176cf5-5355-4b6b-95f1-609c824726b0', 1, 'Print P D F', 'App\\RentalContract', 1, 'App\\RentalContract', 1, 'App\\RentalContract', 1, 'a:0:{}', 'finished', '', '2021-08-06 17:55:31', '2021-08-06 17:55:32', NULL, NULL),
(191, '94176de8-e1b8-4105-9bc2-3feff04b6769', 1, 'Print P D F', 'App\\RentalContract', 1, 'App\\RentalContract', 1, 'App\\RentalContract', 1, 'a:0:{}', 'finished', '', '2021-08-06 17:58:11', '2021-08-06 17:58:11', NULL, NULL),
(192, '9418ffd7-1bf1-48d9-afcc-a65f5f029231', 1, 'Create', 'App\\RentalContract', 2, 'App\\RentalContract', 2, 'App\\RentalContract', 2, '', 'finished', '', '2021-08-07 12:42:04', '2021-08-07 12:42:04', NULL, '{\"contract_no\":\"123\",\"name\":\"asa\",\"date_from\":\"2021-08-10T00:00:00.000000Z\",\"date_to\":\"2021-08-24T00:00:00.000000Z\",\"instrument_id\":\"1\",\"owner_id\":\"1\",\"clause5\":\"1\",\"clause6\":\"2\",\"clause13\":\"4\",\"updated_at\":\"2021-08-07T15:42:04.000000Z\",\"created_at\":\"2021-08-07T15:42:04.000000Z\",\"id\":2}'),
(193, '9418ffe9-e241-49fb-8933-69e36c12520d', 1, 'Delete', 'App\\RentalContract', 2, 'App\\RentalContract', 2, 'App\\RentalContract', 2, '', 'finished', '', '2021-08-07 12:42:16', '2021-08-07 12:42:16', NULL, NULL),
(194, '9421546a-4c07-4d9e-bdeb-244cec2d85e5', 1, 'Create', 'App\\Instrument', 2, 'App\\Instrument', 2, 'App\\Instrument', 2, '', 'finished', '', '2021-08-11 16:05:10', '2021-08-11 16:05:10', NULL, '{\"instrument_number\":\"134\",\"issue_date\":\"2021-08-02T00:00:00.000000Z\",\"land_number\":\"34\",\"chart_number\":\"242\",\"building_id\":\"1\",\"owner_id\":\"1\",\"updated_at\":\"2021-08-11T19:05:10.000000Z\",\"created_at\":\"2021-08-11T19:05:10.000000Z\",\"id\":2}'),
(195, '94215476-2ec0-42f5-bd1a-d197fd0627e3', 1, 'Create', 'App\\RentalContract', 3, 'App\\RentalContract', 3, 'App\\RentalContract', 3, '', 'finished', '', '2021-08-11 16:05:18', '2021-08-11 16:05:18', NULL, '{\"contract_no\":\"124\",\"name\":\"Testing\",\"date_from\":\"2021-08-03T00:00:00.000000Z\",\"date_to\":\"2021-08-26T00:00:00.000000Z\",\"instrument_id\":2,\"owner_id\":1,\"clause5\":\"13\",\"clause6\":\"42\",\"clause13\":\"24\",\"updated_at\":\"2021-08-11T19:05:18.000000Z\",\"created_at\":\"2021-08-11T19:05:18.000000Z\",\"id\":3}'),
(196, '94256315-e9ff-4291-8508-ca82668ff6b2', 1, 'Create', 'App\\Instrument', 3, 'App\\Instrument', 3, 'App\\Instrument', 3, '', 'finished', '', '2021-08-13 16:29:30', '2021-08-13 16:29:30', NULL, '{\"instrument_number\":\"123\",\"issue_date\":\"2021-08-10T00:00:00.000000Z\",\"land_number\":\"34\",\"chart_number\":\"53\",\"building_id\":\"1\",\"owner_id\":\"1\",\"updated_at\":\"2021-08-13T19:29:30.000000Z\",\"created_at\":\"2021-08-13T19:29:30.000000Z\",\"id\":3}'),
(197, '94256329-ed0a-46fc-b49d-311a7b227008', 1, 'Create', 'App\\InvestmentContract', 2, 'App\\InvestmentContract', 2, 'App\\InvestmentContract', 2, '', 'finished', '', '2021-08-13 16:29:43', '2021-08-13 16:29:43', NULL, '{\"contract_no\":\"124\",\"name\":\"TEstg\",\"date_from\":\"2021-08-10T00:00:00.000000Z\",\"date_to\":\"2021-08-26T00:00:00.000000Z\",\"instrument_id\":3,\"owner_id\":1,\"clause5\":\"234\",\"clause6\":\"24\",\"clause13\":\"24\",\"updated_at\":\"2021-08-13T19:29:43.000000Z\",\"created_at\":\"2021-08-13T19:29:43.000000Z\",\"id\":2}'),
(198, '9425700a-81d2-444a-80f6-34bb96bdc6c3', 1, 'Create', 'App\\RentalContract', 4, 'App\\RentalContract', 4, 'App\\RentalContract', 4, '', 'finished', '', '2021-08-13 17:05:44', '2021-08-13 17:05:44', NULL, '{\"contract_no\":\"3\",\"name\":\"\\u0627\\u0644\\u0627\\u062d\\u0632\\u0627\\u0646\",\"date_from\":\"2021-08-18T00:00:00.000000Z\",\"date_to\":\"2021-08-27T00:00:00.000000Z\",\"instrument_id\":3,\"owner_id\":1,\"clause5\":\"13\",\"clause6\":\"3\",\"clause9\":\"4\",\"clause13\":\"5\",\"updated_at\":\"2021-08-13T20:05:44.000000Z\",\"created_at\":\"2021-08-13T20:05:44.000000Z\",\"id\":4}'),
(199, '94257682-6917-4544-ad93-ba52b5eded3d', 1, 'Create', 'App\\Instrument', 4, 'App\\Instrument', 4, 'App\\Instrument', 4, '', 'finished', '', '2021-08-13 17:23:49', '2021-08-13 17:23:49', NULL, '{\"instrument_number\":\"55\",\"issue_date\":\"2021-08-11T00:00:00.000000Z\",\"land_number\":\"2\",\"chart_number\":\"1\",\"building_id\":\"1\",\"city_id\":\"1\",\"neighbor_id\":\"1\",\"owner_id\":\"1\",\"updated_at\":\"2021-08-13T20:23:49.000000Z\",\"created_at\":\"2021-08-13T20:23:49.000000Z\",\"id\":4}'),
(200, '9425afae-a625-42aa-b950-fe42f8fe4043', 1, 'Update', 'App\\Zone', 1, 'App\\Zone', 1, 'App\\Zone', 1, '', 'finished', '', '2021-08-13 20:03:41', '2021-08-13 20:03:41', '[]', '[]'),
(201, '9425afdf-6bf0-442a-85fd-7a0696a82914', 1, 'Update', 'App\\Neighbor', 1, 'App\\Neighbor', 1, 'App\\Neighbor', 1, '', 'finished', '', '2021-08-13 20:04:13', '2021-08-13 20:04:13', '[]', '[]'),
(202, '942b1257-6a95-4fd1-b667-7a9aa5d5358b', 1, 'Create', 'App\\Instrument', 5, 'App\\Instrument', 5, 'App\\Instrument', 5, '', 'finished', '', '2021-08-16 12:18:42', '2021-08-16 12:18:42', NULL, '{\"instrument_number\":\"12\",\"issue_date\":\"2021-08-10T00:00:00.000000Z\",\"land_number\":\"44\",\"chart_number\":\"1244\",\"building_id\":\"1\",\"city_id\":\"1\",\"neighbor_id\":\"1\",\"owner_id\":\"1\",\"updated_at\":\"2021-08-16T15:18:42.000000Z\",\"created_at\":\"2021-08-16T15:18:42.000000Z\",\"id\":5}'),
(203, '942b128e-1426-4c30-988b-8b437f5a8dac', 1, 'Create', 'App\\InvestmentContract', 3, 'App\\InvestmentContract', 3, 'App\\InvestmentContract', 3, '', 'finished', '', '2021-08-16 12:19:18', '2021-08-16 12:19:18', NULL, '{\"contract_no\":\"3\",\"name\":\"LongTime\",\"date_from\":\"2021-08-09T00:00:00.000000Z\",\"date_to\":\"2021-08-17T00:00:00.000000Z\",\"instrument_id\":4,\"owner_id\":1,\"updated_at\":\"2021-08-16T15:19:18.000000Z\",\"created_at\":\"2021-08-16T15:19:18.000000Z\",\"id\":3}'),
(204, '942b1297-8122-4888-8299-d0eeb1d22131', 1, 'Print Investment Contract', 'App\\InvestmentContract', 3, 'App\\InvestmentContract', 3, 'App\\InvestmentContract', 3, 'a:0:{}', 'finished', '', '2021-08-16 12:19:24', '2021-08-16 12:19:24', NULL, NULL),
(205, '942b19ba-9c4f-4361-8561-662b40dd9e56', 1, 'Print Investment Contract', 'App\\InvestmentContract', 3, 'App\\InvestmentContract', 3, 'App\\InvestmentContract', 3, 'a:0:{}', 'finished', '', '2021-08-16 12:39:21', '2021-08-16 12:39:21', NULL, NULL),
(206, '942b19f2-643e-4e1d-94a6-2d14b2d790c7', 1, 'Print Investment Contract', 'App\\InvestmentContract', 3, 'App\\InvestmentContract', 3, 'App\\InvestmentContract', 3, 'a:0:{}', 'finished', '', '2021-08-16 12:39:58', '2021-08-16 12:39:58', NULL, NULL),
(207, '942b1a26-3778-4113-9125-48e139035c95', 1, 'Print P D F', 'App\\RentalContract', 4, 'App\\RentalContract', 4, 'App\\RentalContract', 4, 'a:0:{}', 'finished', '', '2021-08-16 12:40:32', '2021-08-16 12:40:32', NULL, NULL),
(208, '942b1c4a-6a1c-45b8-9a0e-2ce280b169d3', 1, 'Print P D F', 'App\\RentalContract', 4, 'App\\RentalContract', 4, 'App\\RentalContract', 4, 'a:0:{}', 'finished', '', '2021-08-16 12:46:31', '2021-08-16 12:46:31', NULL, NULL),
(209, '942b1cfc-1532-4c0f-9ad6-31a0275e0204', 1, 'Print P D F', 'App\\RentalContract', 4, 'App\\RentalContract', 4, 'App\\RentalContract', 4, 'a:0:{}', 'finished', '', '2021-08-16 12:48:27', '2021-08-16 12:48:28', NULL, NULL),
(210, '942b1d1b-10e8-415b-b372-bb466649e7dd', 1, 'Print P D F', 'App\\RentalContract', 3, 'App\\RentalContract', 3, 'App\\RentalContract', 3, 'a:0:{}', 'finished', '', '2021-08-16 12:48:48', '2021-08-16 12:48:48', NULL, NULL),
(220, '942b2016-1f83-44e6-95ef-ca259bc0d2f1', 1, 'Print P D F', 'App\\RentalContract', 4, 'App\\RentalContract', 4, 'App\\RentalContract', 4, 'a:0:{}', 'finished', '', '2021-08-16 12:57:08', '2021-08-16 12:57:08', NULL, NULL),
(221, '942b2036-ab70-4cfe-b58a-9100fc408384', 1, 'Print P D F', 'App\\RentalContract', 3, 'App\\RentalContract', 3, 'App\\RentalContract', 3, 'a:0:{}', 'finished', '', '2021-08-16 12:57:29', '2021-08-16 12:57:29', NULL, NULL),
(222, '942b367c-fa3a-4ca8-9cd3-10405aa5d761', 1, 'Print P D F', 'App\\RentalContract', 4, 'App\\RentalContract', 4, 'App\\RentalContract', 4, 'a:0:{}', 'finished', '', '2021-08-16 13:59:46', '2021-08-16 13:59:46', NULL, NULL),
(223, '942ba2c9-9616-42b1-a168-2c2042b06e20', 1, 'Create', 'App\\Building', 2, 'App\\Building', 2, 'App\\Building', 2, '', 'finished', '', '2021-08-16 19:02:36', '2021-08-16 19:02:36', NULL, '{\"buildingName\":\"tes\",\"street\":\"1234\",\"buildingTypeId\":\"1\",\"buildingNo\":\"3\",\"enteranceNo\":\"2\",\"apartmentNo\":\"1\",\"officesNo\":\"0\",\"shopsNo\":\"12\",\"populationType\":\"1\",\"isActive\":\"0\",\"updated_at\":\"2021-08-16T22:02:36.000000Z\",\"created_at\":\"2021-08-16T22:02:36.000000Z\",\"id\":2}'),
(224, '943310c4-35d4-40de-808a-1dd36d63240d', 1, 'Create', 'App\\Instrument', 6, 'App\\Instrument', 6, 'App\\Instrument', 6, '', 'finished', '', '2021-08-20 11:40:55', '2021-08-20 11:40:55', NULL, '{\"instrument_number\":\"123\",\"issue_date\":\"2021-08-02T00:00:00.000000Z\",\"land_number\":\"3\",\"chart_number\":\"2\",\"building_id\":\"2\",\"city_id\":\"1\",\"neighbor_id\":\"1\",\"owner_id\":\"1\",\"updated_at\":\"2021-08-20T14:40:55.000000Z\",\"created_at\":\"2021-08-20T14:40:55.000000Z\",\"id\":6}'),
(225, '9433110b-3840-494a-ba8f-062fe37e55f0', 1, 'Create', 'App\\InvestmentContract', 4, 'App\\InvestmentContract', 4, 'App\\InvestmentContract', 4, '', 'finished', '', '2021-08-20 11:41:41', '2021-08-20 11:41:41', NULL, '{\"contract_no\":\"1\",\"name\":\"\\u062a\\u062c\\u0631\\u0628\\u0629\",\"date_from\":\"2021-08-20T00:00:00.000000Z\",\"date_to\":\"2021-08-28T00:00:00.000000Z\",\"instrument_id\":6,\"owner_id\":1,\"duration\":\"5\",\"duration_name\":\"\\u062e\\u0645\\u0633 \\u0633\\u0646\\u064a\\u0646\",\"investment_cost\":\"12000\",\"installment\":\"60000\",\"updated_at\":\"2021-08-20T14:41:41.000000Z\",\"created_at\":\"2021-08-20T14:41:41.000000Z\",\"id\":4}'),
(226, '94331117-ed63-4af7-9ae5-3d6f5aec5c69', 1, 'Print Investment Contract', 'App\\InvestmentContract', 4, 'App\\InvestmentContract', 4, 'App\\InvestmentContract', 4, 'a:0:{}', 'finished', '', '2021-08-20 11:41:50', '2021-08-20 11:41:50', NULL, NULL),
(227, '94379665-440d-434d-bff4-764d30a666c2', 1, 'Create', 'App\\InvestmentContract', 5, 'App\\InvestmentContract', 5, 'App\\InvestmentContract', 5, '', 'finished', '', '2021-08-22 17:37:53', '2021-08-22 17:37:53', NULL, '{\"contract_no\":\"2\",\"name\":\"24\",\"date_from\":\"2021-08-04T00:00:00.000000Z\",\"date_to\":\"2021-08-02T00:00:00.000000Z\",\"owner_id\":1,\"instrument_id\":6,\"duration\":\"13\",\"duration_name\":\"31\",\"investment_cost\":\"4\",\"installment\":\"1\",\"is_auto_renew\":true,\"updated_at\":\"2021-08-22T20:37:53.000000Z\",\"created_at\":\"2021-08-22T20:37:53.000000Z\",\"id\":5}');

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

INSERT INTO `buildings` (`id`, `buildingName`, `buildingNo`, `populationType`, `enteranceNo`, `apartmentNo`, `isActive`, `created_at`, `updated_at`, `buildingTypeId`, `street`, `shopsNo`, `officesNo`, `lat`, `lang`) VALUES
(2, 'tes', 3, 1, 2, 1, 0, '2021-08-16 19:02:36', '2021-08-16 19:02:36', 1, '1234', 12, 0, NULL, NULL);

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
  `city_id` int(10) UNSIGNED NOT NULL,
  `neighbor_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instruments`
--

INSERT INTO `instruments` (`id`, `instrument_number`, `owner_id`, `building_id`, `issue_date`, `land_number`, `chart_number`, `city_id`, `neighbor_id`, `created_at`, `updated_at`) VALUES
(6, '123', 1, 2, '2021-08-01 21:00:00', '3', '2', 1, 1, '2021-08-20 11:40:55', '2021-08-20 11:40:55');

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
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `investment_cost` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `installment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_auto_renew` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `investment_contracts`
--

INSERT INTO `investment_contracts` (`id`, `contract_no`, `name`, `date_from`, `date_to`, `owner_id`, `instrument_id`, `duration`, `duration_name`, `investment_cost`, `installment`, `is_auto_renew`, `created_at`, `updated_at`) VALUES
(4, '1', 'تجربة', '2021-08-19 21:00:00', '2021-08-27 21:00:00', 1, 6, '5', 'خمس سنين', '12000', '60000', 1, '2021-08-20 11:41:41', '2021-08-20 11:41:41'),
(5, '2', '24', '2021-08-03 21:00:00', '2021-08-01 21:00:00', 1, 6, '13', '31', '4', '1', 1, '2021-08-22 17:37:53', '2021-08-22 17:37:53');

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
  `city_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `neighbors`
--

INSERT INTO `neighbors` (`id`, `name`, `city_id`, `created_at`, `updated_at`) VALUES
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
  `clause9` int(11) DEFAULT NULL,
  `clause13` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_auto_renew` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  ADD KEY `instruments_building_id_foreign` (`building_id`),
  ADD KEY `instruments_city_id_foreign` (`city_id`),
  ADD KEY `instruments_neighbor_id_foreign` (`neighbor_id`);

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
  ADD KEY `neighbors_city_id_foreign` (`city_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `investment_contracts`
--
ALTER TABLE `investment_contracts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  ADD CONSTRAINT `buildings_buildingtypeid_foreign` FOREIGN KEY (`buildingTypeId`) REFERENCES `building_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `instruments`
--
ALTER TABLE `instruments`
  ADD CONSTRAINT `instruments_building_id_foreign` FOREIGN KEY (`building_id`) REFERENCES `buildings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `instruments_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `instruments_neighbor_id_foreign` FOREIGN KEY (`neighbor_id`) REFERENCES `neighbors` (`id`) ON DELETE CASCADE,
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
  ADD CONSTRAINT `neighbors_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

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
