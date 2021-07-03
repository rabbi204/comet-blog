-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2021 at 06:27 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cometdev`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(15, 'bangladesh', 'bangladesh', 1, '2021-07-03 06:46:07', '2021-07-03 06:46:07'),
(16, 'covid', 'covid', 1, '2021-07-03 06:46:35', '2021-07-03 06:46:35'),
(17, 'rajniti', 'rajniti', 1, '2021-07-03 06:46:45', '2021-07-03 06:46:45'),
(18, 'world', 'world', 1, '2021-07-03 06:46:51', '2021-07-03 06:46:51'),
(19, 'khela dula', 'khela-dula', 1, '2021-07-03 06:47:10', '2021-07-03 06:48:48'),
(20, 'ইসলামী জীবন', 'ইসলামী-জীবন', 1, '2021-07-03 06:47:43', '2021-07-03 06:47:43');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 24, 4, NULL, NULL),
(2, 24, 8, NULL, NULL),
(3, 25, 10, NULL, NULL),
(4, 25, 12, NULL, NULL),
(5, 26, 10, NULL, NULL),
(6, 26, 12, NULL, NULL),
(7, 27, 10, NULL, NULL),
(8, 27, 12, NULL, NULL),
(9, 28, 13, NULL, NULL),
(10, 29, 11, NULL, NULL),
(11, 30, 9, NULL, NULL),
(12, 31, 13, NULL, NULL),
(13, 32, 12, NULL, NULL),
(14, 33, 9, NULL, NULL),
(15, 34, 10, NULL, NULL),
(16, 34, 12, NULL, NULL),
(17, 35, 13, NULL, NULL),
(18, 36, 10, NULL, NULL),
(19, 36, 11, NULL, NULL),
(20, 37, 9, NULL, NULL),
(21, 38, 11, NULL, NULL),
(22, 38, 12, NULL, NULL),
(23, 39, 11, NULL, NULL),
(24, 39, 12, NULL, NULL),
(25, 40, 10, NULL, NULL),
(26, 41, 10, NULL, NULL),
(27, 42, 11, NULL, NULL),
(28, 43, 15, NULL, NULL),
(29, 43, 17, NULL, NULL),
(30, 44, 15, NULL, NULL),
(31, 45, 16, NULL, NULL),
(32, 45, 18, NULL, NULL),
(33, 46, 18, NULL, NULL),
(34, 46, 19, NULL, NULL),
(35, 47, 18, NULL, NULL),
(36, 47, 20, NULL, NULL),
(37, 48, 18, NULL, NULL),
(38, 49, 15, NULL, NULL),
(39, 49, 17, NULL, NULL),
(40, 50, 15, NULL, NULL),
(41, 51, 18, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment_id`, `text`, `status`, `created_at`, `updated_at`) VALUES
(1, 49, 6, NULL, 'good job', 1, '2021-07-03 10:50:27', '2021-07-03 10:50:27'),
(2, 49, 6, NULL, 'ki obostha', 1, '2021-07-03 10:55:25', '2021-07-03 10:55:25'),
(3, 49, 6, NULL, 'kemon acho', 1, '2021-07-03 11:16:28', '2021-07-03 11:16:28'),
(4, 49, 8, NULL, 'kemon achen vai', 1, '2021-07-03 11:40:01', '2021-07-03 11:40:01'),
(5, 49, 6, 1, 'thanks', 1, '2021-07-03 15:44:16', '2021-07-03 15:44:16'),
(6, 49, 6, 4, 'valo', 1, '2021-07-03 15:45:24', '2021-07-03 15:45:24'),
(7, 49, 7, 3, 'alhamdulliah', 1, '2021-07-03 16:19:43', '2021-07-03 16:19:43'),
(8, 49, 7, 4, 'apni kemon achen', 1, '2021-07-03 16:22:09', '2021-07-03 16:22:09');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2014_10_12_100000_create_password_resets_table', 1),
(19, '2019_08_19_000000_create_failed_jobs_table', 1),
(20, '2021_03_21_123743_create_roles_table', 1),
(22, '2021_03_22_235803_create_categories_table', 2),
(23, '2021_03_28_131016_create_tags_table', 3),
(24, '2021_03_22_231008_create_posts_table', 4),
(25, '2021_04_06_174125_create_category_post_table', 5),
(26, '2021_04_06_181925_create_post_tag_table', 6),
(27, '2021_07_03_161123_create_comments_table', 7);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `featured`, `content`, `trash`, `views`, `status`, `created_at`, `updated_at`) VALUES
(43, '6', 'সংসদে বাজেটের ওপর সমাপনী অধিবেশন শুরু', 'সংসদে-বাজেটের-ওপর-সমাপনী-অধিবেশন-শুরু', '{\"post_type\":\"Image\",\"image\":\"a5c1b55fed40fb52ef45bab7c0326e19.jpg\",\"post_gallery\":[],\"post_video\":null,\"post_audio\":null}', '<p>দুই দিন বিরতির পর করোনা পরিস্থিতির মধ্যে চলা জাতীয় সংসদের বাজেট অধিবেশন পুনরায় শুরু হয়েছে। স্পিকার ড. শিরীন শারমিন চৌধুরীর সভাপতিত্বে আজ শনিবার (৩ জুলাই) সকাল ১১টায়&nbsp;শুরু হয় সমাপনী দিনের বৈঠক।</p>\r\n\r\n<p>সংসদ সচিবালয়ের সংশ্লিষ্ট কর্মকর্তারা জানান, আজ&nbsp;সমাপনী দিনে আইন বিচার ও সংসদ বিষয়ক মন্ত্রী আনিসুল হক &#39;জাতীয় সংসদের নির্বাচনী&nbsp;এলাকার সীমানা নির্ধারণ বিল-২০২১&#39; ও &#39;গান্ধী আশ্রম (ট্রাস্টি বোর্ড) বিল-২০২১&#39;&nbsp; নামে দুটি উত্থাপন করবেন। এছাড়া তথ্যমন্ত্রী ড. হাছান মাহমুদ উত্থাপিত &#39;বাংলাদেশ চলচ্চিত্র শিল্পী কল্যাণ ট্রাস্ট বিল-২০২১&#39; পাস হওয়ার কথা রয়েছে। সংসদ নেতা ও প্রধানমন্ত্রী শেখ হাসিনার সমাপনী ভাষণের মধ্য দিয়ে অধিবেশন শেষ হবে।</p>\r\n\r\n<p>করোনা পরিস্থিতির কারণে কঠোরভাবে স্বাস্থ্যবিধি অনুসরণ করে গত ২ জুন শুরু হওয়া সংসদের অধিবেশনে ৩ জুন বাজেট প্রস্তাব উত্থাপন করেন অর্থমন্ত্রী আ হ ম মুস্তফা কামাল। এরপর দুই দিনের আলোচনা শেষে ৭ জুন সম্পুরক বাজেট পাস এবং ১৪ জুন থেকে প্রস্তাবিত বাজেটের ওপর আলোচনা শুরু হয়।</p>\r\n\r\n<p>প্রায় ২০ ঘন্টা আলোচনা শেষে গত ৩০ জুন বাজেট পাস হয়। ১২ কার্যদিবস শেষে অধিবেশন শেষ হবে। করোনা মহামারির কারণে গত বছর মাত্র ৯ কার্যদিবস চলে বাজেট অধিবেশন, যা বাংলাদেশের ইতিহাসের সংক্ষিপ্ততম অধিবেশন।&nbsp;</p>', 0, 0, 1, '2021-07-03 06:59:06', '2021-07-03 06:59:06'),
(44, '6', 'কেমন আছেন দিলীপ কুমার?', 'কেমন-আছেন-দিলীপ-কুমার?', '{\"post_type\":\"Image\",\"image\":\"b8cb92a67186e8c2a43ad2fbb6244da7.jpg\",\"post_gallery\":[],\"post_video\":null,\"post_audio\":null}', '<p>আপাতত স্থিতিশীল অবস্থায় আছেন দিলীপ কুমার। তবে এখনো আইসিইউতে। শ্বাসকষ্ট হওয়ার কারণে গত মঙ্গলবার থেকে মুম্বাইয়ের হিন্দুজা হাসপাতালে ভর্তি রয়েছেন তিনি। তবে তার করোনার পরীক্ষার ফলাফল নেগেটিভ এসেছে।নিউমোনিয়ার কারণে শ্বাসকষ্ট হচ্ছে&nbsp;তার।</p>\r\n\r\n<p>কিংবদন্তি অভিনেতার ঘনিষ্ঠ বন্ধু ফয়জল ফারুকি জানিয়েছেন,&nbsp;এই বর্ষীয়ান অভিনেতার শারীরিক অবস্থা আপাতত স্থিতিশীল। হাসপাতালে চিকিৎসকদের পর্যবেক্ষণে রয়েছেন তিনি,&nbsp;৯৮ বছর বয়সী একজন মানুষের জন্য যা ভীষণই প্রয়োজন। সবকিছু ঠিকঠাক থাকলে আগামী দু&#39;একদিনের মধ্যেই এই প্রবীণ অভিনেতা বাড়ি ফিরতে পারবেন বলে জানিয়েছেন তিনি। সেই সঙ্গে&nbsp;অভিনেতার সুস্বাস্থ্যের কামনা করার জন্য অনুরাগীদের উদ্দেশে &nbsp;কৃতজ্ঞতা জানিয়েছেন দিলীপ কুমারের পরিবার।&nbsp;</p>\r\n\r\n<p>একই ধরণের শারীরিক অসুস্থতার কারণে&nbsp; জুন মাসে প্রথমবার হাসপাতালে ভর্তি হওয়ার পর জানা গেছিল দিলীপ কুমারের ২টি ফুসফুসেই পানি জমে রয়েছে। যদিও করোনা পরীক্ষার ফলাফল নেগেটিভ এসেছিল অভিনেতার। গত মাসের দুই বার শ্বাসকষ্টের জন্য দিলীপ কুমারকে হাসপাতালে ভর্তি করা হয়।</p>', 0, 0, 1, '2021-07-03 07:00:33', '2021-07-03 07:00:33'),
(45, '6', 'সন্তান অনলাইন গেমে, দুশ্চিন্তায় মা–বাবা', 'সন্তান-অনলাইন-গেমে,-দুশ্চিন্তায়-মা–বাবা', '{\"post_type\":\"Image\",\"image\":\"5038aa2d26febc29337a186a46d29c66.jpg\",\"post_gallery\":[],\"post_video\":null,\"post_audio\":null}', '<p>কিশোরটির বয়স ১৬ বছর। দিনের বেশির ভাগ সময় সে ব্যস্ত থাকে অনলাইনে গেম খেলায়। শুরুতে তার মা&ndash;বাবা বিষয়টি স্বাভাবিক হিসেবেই নিয়েছিলেন। কিন্তু পরে দেখা গেল, গেম খেলতে না পারলে সে ঘরে ভাঙচুর শুরু করে। কখনো কখনো মা&ndash;বাবাকে আঘাত করতেও তার দ্বিধা হয় না।</p>\r\n\r\n<p>এই কিশোরকে নিয়ে তার অভিভাবকেরা গিয়েছিলেন ক্লিনিক্যাল সাইকোলজিস্ট ও রাজশাহী বিশ্ববিদ্যালয়ের মনোবিজ্ঞান বিভাগের সহযোগী অধ্যাপক তানজির আহম্মদের কাছে। তিনিই প্রথম আলোকে জানান এই ঘটনা।</p>\r\n\r\n<p>রাজশাহীর পরিবারটি যেমন সন্তানের অনলাইনে গেম খেলার আসক্তি নিয়ে সংকটে পড়েছে, তেমনি দেশের অনেক পরিবারে দুশ্চিন্তা বাড়ছে। শিশু, কিশোর ও তরুণদের অনেকে দিনের বড় একটা অংশ এখন মুঠোফোন বা কম্পিউটারে গেম খেলে কাটাচ্ছে। এ কারণে তাদের পড়াশোনা ক্ষতিগ্রস্ত হচ্ছে, চোখের ওপর চাপ পড়ছে এবং শারীরিক নানা সমস্যা দেখা দিচ্ছে। তরুণদের অনেকে সারা রাত জেগে গেমে ব্যস্ত থাকছেন।</p>', 0, 1, 1, '2021-07-03 07:03:41', '2021-07-03 07:35:28'),
(46, '6', 'ভারত ‘দ্বিতীয় সারির’ দল পাঠায়নি', 'ভারত-‘দ্বিতীয়-সারির’-দল-পাঠায়নি', '{\"post_type\":\"Gallery\",\"image\":\"\",\"post_gallery\":[\"0bf0ff0f0c676a1b88b88f889338c48f.jpg\",\"8bc5256e1bc0252b2059d73a130557ee.jpg\",\"5cb0d8a37bd196e77ac820be82805596.jpg\"],\"post_video\":null,\"post_audio\":null}', '<p>এক দেশ, দুটি দল। আগস্ট-সেপ্টেম্বরে ভারতের একটি দল টেস্ট সিরিজ খেলবে ইংল্যান্ডের বিপক্ষে তাদের মাঠে। ঠিক তার আগেই জুলাইয়ে শ্রীলঙ্কার বিপক্ষে ভারতের আরেকটি দল খেলবে সীমিত ওভারের সিরিজ। দুই দলের খেলোয়াড় তালিকা বলছে, শ্রীলঙ্কায় অপেক্ষাকৃত দ্বিতীয় সারির দল পাঠিয়েছে ভারত আর এতেই খেপেছেন অর্জুনা রানাতুঙ্গা। এটি শ্রীলঙ্কা ক্রিকেটের জন্য অপমান বলে মনে করেন বিশ্বকাপ জেতানো অধিনায়ক। রানাতুঙ্গার মন্তব্যের পর চুপ করে বসে থাকেনি শ্রীলঙ্কান ক্রিকেট বোর্ডও।</p>\r\n\r\n<p>ইংল্যান্ডের বিপক্ষে ৫ টেস্ট সিরিজের জন্য বিরাট কোহলির নেতৃত্বে বর্তমানে ইংল্যান্ডে আছেন ভারতের শীর্ষ সারির ক্রিকেটাররা। শ্রীলঙ্কায় অবস্থান করা দলটির নেতৃত্ব দিচ্ছেন শিখর ধাওয়ান। লঙ্কা সফরে থাকা দলটিতে আছেন পৃথ্বি শ ও হার্দিক পান্ডিয়ার মতো ইংল্যান্ড সফর থেকে বাদ পড়া ক্রিকেটাররা। সঙ্গে আছে বেশ কিছু নতুন মুখও।</p>\r\n\r\n<p>দলের প্রধান কোচের দায়িত্ব পালন করবেন ভারতের জাতীয় ক্রিকেট একাডেমির প্রধান রাহুল দ্রাবিড়। শ্রীলঙ্কা সফরে থাকা এই দলটিকে মেনে নিতে পারছেন না রানাতুঙ্গা। শ্রীলঙ্কাকে বিশ্বকাপ জেতানো এই অধিনায়ক ভারত দল নিয়ে বলেন, &lsquo;এটি দ্বিতীয় সারির ভারতীয় দল এবং তাদের এখানে আসাটা আমাদের ক্রিকেটের জন্য অপমানের।&rsquo;</p>', 0, 0, 1, '2021-07-03 07:06:02', '2021-07-03 07:06:02'),
(47, '6', 'ইসলাম, অন্যান্য ধর্ম ও মতবাদে সুদ', 'ইসলাম,-অন্যান্য-ধর্ম-ও-মতবাদে-সুদ', '{\"post_type\":\"Video\",\"image\":\"\",\"post_gallery\":[],\"post_video\":\"https:\\/\\/www.youtube.com\\/embed\\/RLGZuFgF5Kc\",\"post_audio\":null}', '<p>আল-কোরআনে &lsquo;রিবা&rsquo; শব্দের সমার্থক হলো &lsquo;সুদ&rsquo; বা &lsquo;ইন্টারেস্ট&rsquo; &nbsp;(interest। প্রচলিত অর্থে সুদ বলতে বোঝায়, নির্দিষ্ট পরিমাণ অর্থ নির্দিষ্ট সময়ের জন্য ধার দিয়ে চুক্তির শর্ত মোতাবেক আসলের ওপর নির্দিষ্ট পরিমাণ অতিরিক্ত গ্রহণ করা। কিন্তু রিবা শুধু ঋণের ক্ষেত্রে আসলের অতিরিক্ত গ্রহণ করার মধ্যেই সীমাবদ্ধ নয়। এর পরিধি ও পরিসর আরো ব্যাপক ও বিস্তৃত। কেননা ঋণের বাইরেও এমন কিছু কেনাবেচা ও লেনদেন আছে, যার সঙ্গে সুদের সম্পর্ক আছে। রিবা, সুদ বা ইন্টারেস্ট&mdash;যে নামেই বলি না কেন, ইসলামে এগুলোকে নিষিদ্ধ বা হারাম ঘোষণা করা হয়েছে। শুধু ইসলাম সুদ নিষিদ্ধ করেনি, দুনিয়ার প্রধানতম ধর্মগুলো, এমনকি বিভিন্ন মতবাদেও সুদ নিষিদ্ধ।</p>\r\n\r\n<p>আল-কোরআনে সুদ : আল-কোরআনের চারটি সুরার মোট ১২টি আয়াতে সুদের কথা উল্লেখ করা হয়েছে। সুরা রুমের ৩৯ নম্বর আয়াতে আল্লাহ বলেন,&nbsp; &lsquo;আর মানুষের ধন-সম্পদের মধ্যে বৃদ্ধি পাবে বলে তোমরা সুদের ভিত্তিতে যা প্রদান করে থাকো, তা আল্লাহর কাছে বৃদ্ধি পায় না। আর আল্লাহর সন্তুষ্টি লাভের উদ্দেশ্যে যে জাকাত (দান-সদকা) তোমরা দিয়ে থাক (তা-ই বৃদ্ধি পায়) এবং তারাই সমৃদ্ধিশালী।&rsquo;</p>', 0, 0, 1, '2021-07-03 07:09:57', '2021-07-03 07:09:57'),
(48, '6', 'পালে দে ফেস্টিভ্যালে দেখানো হবে রেহানা', 'পালে-দে-ফেস্টিভ্যালে-দেখানো-হবে-রেহানা', '{\"post_type\":\"Video\",\"image\":\"\",\"post_gallery\":[],\"post_video\":\"https:\\/\\/player.vimeo.com\\/video\\/563568179\",\"post_audio\":null}', '<p>গতকাল শুক্রবার সন্ধ্যায় ফেসবুক ইনবক্সে একটি লিংক পাঠালেন অভিনেত্রী আজমেরী হক বাঁধন। সেখানে ১ মিনিট ৩৯ সেকেন্ডের একটি ভিডিও। যেটি আবদুল্লাহ মোহাম্মদ সাদ পরিচালিত &lsquo;রেহানা মরিয়ম নূর&rsquo; সিনেমার ট্রেলার।</p>\r\n\r\n<p>ট্রেলারে দেখা যায়, এক সন্ধ্যায় পরিচিত এক অধ্যাপকের রুম থেকে একজন শিক্ষার্থীকে কাঁদতে কাঁদতে বের হয়ে আসতে দেখেন রেহানা (আজমেরী হক বাঁধন)। ওই ঘটনার পর আস্তে আস্তে কেমন যেন &lsquo;একরোখা&rsquo; হয়ে ওঠেন তিনি। ওই শিক্ষার্থীর পক্ষ নিয়ে সহকর্মীর বিরুদ্ধে প্রতিবাদ জানাতে শুরু করেন।</p>', 0, 1, 1, '2021-07-03 07:14:58', '2021-07-03 14:48:39'),
(49, '6', 'আন্দোলন ছাড়া বিকল্প নেই: ফখরুল', 'আন্দোলন-ছাড়া-বিকল্প-নেই:-ফখরুল', '{\"post_type\":\"Image\",\"image\":\"41fe6d3609e72f065b951e2c92ab1c95.jpg\",\"post_gallery\":[],\"post_video\":null,\"post_audio\":null}', '<p>বিএনপির মহাসচিব মির্জা ফখরুল ইসলাম আলমগীর বলেছেন, গণতন্ত্র পুনরুদ্ধারে আন্দোলন ছাড়া বিকল্প নেই। তিনি তরুণদের উদ্দেশে বলেন, &lsquo;সামনে এগিয়ে আসুন। আর সময় নেই। এখন জেগে উঠতে হবে। জেগে উঠতে হবে এবং দেশকে, দেশের মানুষকে বাঁচাতে হবে।&rsquo;</p>\r\n\r\n<p>গতকাল শুক্রবার বিকেলে এক ভার্চ্যুয়াল আলোচনা সভায় মির্জা ফখরুল ইসলাম এ আহ্বান জানান। বিএনপির স্বাধীনতার সুবর্ণজয়ন্তী উদ্&zwnj;যাপন কমিটি এই ভার্চ্যুয়াল আলোচনা সভার আয়োজন করে। এই কমিটি জানায়, ১৯৭১ সালের ২ জুলাই মালিবাগের একটি বাসা থেকে মুক্তিযুদ্ধের সময়ে পাকিস্তান সেনাবাহিনী তারেক রহমান, আরাফাত রহমানসহ তাঁদের মা খালেদা জিয়াকে বন্দী করে। দিনটি পালন উপলক্ষে এই আলোচনা সভার আয়োজন করা হয়।</p>', 0, 72, 1, '2021-07-03 07:17:58', '2021-07-03 16:22:10'),
(50, '6', 'মধুর ক্যানটিনে গেলেই গান গাইতে হতো', 'মধুর-ক্যানটিনে-গেলেই-গান-গাইতে-হতো', '{\"post_type\":\"Audio\",\"image\":\"\",\"post_gallery\":[],\"post_video\":null,\"post_audio\":\"https:\\/\\/gaana.com\\/song\\/radhe-title-track\"}', '<p>বড় বোন নীলুফার ইয়াসমিনকে দেখে আমার ঢাকা বিশ্ববিদ্যালয়ে পড়ার আগ্রহ। তিনি পড়তেন সমাজবিজ্ঞানে, আমিও তাই এই বিভাগেই ভর্তি হলাম। ভেবেছিলাম, তার কাছ থেকে নোট পাব, সহযোগিতা পাব, পেয়েছিলামও।</p>\r\n\r\n<p>এই বিশ্ববিদ্যালয়ে পড়তে এসে এমন এমন সব শিক্ষক পেয়েছি, যাঁদের কাছ থেকে পাওয়া শিক্ষা আমার সারা জীবনের পাথেয় হয়েছে। এই বিশ্ববিদ্যালয় আমাকে মানুষ হিসেবে গড়ে তুলতে অনেক বেশি সাহায্য করেছে।</p>\r\n\r\n<p>স্যারদের ভূমিকাই ছিল বেশি। আমাদের বিভাগের প্রধান ছিলেন নাজমুল করিম। গানে ব্যস্ত সময় পার করার কারণে তাঁর কাছ থেকে যেমন ছাড় পেতাম, তেমনি আমাকে লেখাপড়ায় সবচেয়ে বেশি সাহায্য করত সহপাঠীরা। অনেক ক্লাসই করতে পারতাম না।</p>', 1, 3, 1, '2021-07-03 07:24:05', '2021-07-03 07:35:23'),
(51, '6', 'this is a audio post title', 'this-is-a-audio-post-title', '{\"post_type\":\"Audio\",\"image\":\"\",\"post_gallery\":[],\"post_video\":null,\"post_audio\":\"https:\\/\\/www.soundhelix.com\\/examples\\/mp3\\/SoundHelix-Song-1.mp3\"}', '<p>বড় বোন নীলুফার ইয়াসমিনকে দেখে আমার ঢাকা বিশ্ববিদ্যালয়ে পড়ার আগ্রহ। তিনি পড়তেন সমাজবিজ্ঞানে, আমিও তাই এই বিভাগেই ভর্তি হলাম। ভেবেছিলাম, তার কাছ থেকে নোট পাব, সহযোগিতা পাব, পেয়েছিলামও।</p>\r\n\r\n<p>এই বিশ্ববিদ্যালয়ে পড়তে এসে এমন এমন সব শিক্ষক পেয়েছি, যাঁদের কাছ থেকে পাওয়া শিক্ষা আমার সারা জীবনের পাথেয় হয়েছে। এই বিশ্ববিদ্যালয় আমাকে মানুষ হিসেবে গড়ে তুলতে অনেক বেশি সাহায্য করেছে।</p>\r\n\r\n<p>স্যারদের ভূমিকাই ছিল বেশি। আমাদের বিভাগের প্রধান ছিলেন নাজমুল করিম। গানে ব্যস্ত সময় পার করার কারণে তাঁর কাছ থেকে যেমন ছাড় পেতাম, তেমনি আমাকে লেখাপড়ায় সবচেয়ে বেশি সাহায্য করত সহপাঠীরা। অনেক ক্লাসই করতে পারতাম না।</p>', 0, 1, 1, '2021-07-03 07:31:25', '2021-07-03 09:41:37');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 26, 2, NULL, NULL),
(2, 26, 3, NULL, NULL),
(3, 27, 3, NULL, NULL),
(4, 28, 4, NULL, NULL),
(5, 29, 2, NULL, NULL),
(6, 30, 8, NULL, NULL),
(7, 31, 8, NULL, NULL),
(8, 32, 8, NULL, NULL),
(9, 33, 8, NULL, NULL),
(10, 34, 8, NULL, NULL),
(11, 34, 10, NULL, NULL),
(12, 35, 4, NULL, NULL),
(13, 36, 3, NULL, NULL),
(14, 37, 3, NULL, NULL),
(15, 38, 10, NULL, NULL),
(16, 39, 10, NULL, NULL),
(17, 40, 3, NULL, NULL),
(18, 41, 4, NULL, NULL),
(19, 42, 3, NULL, NULL),
(20, 43, 17, NULL, NULL),
(21, 44, 15, NULL, NULL),
(22, 45, 11, NULL, NULL),
(23, 46, 13, NULL, NULL),
(24, 47, 14, NULL, NULL),
(25, 48, 15, NULL, NULL),
(26, 49, 12, NULL, NULL),
(27, 49, 14, NULL, NULL),
(28, 50, 11, NULL, NULL),
(29, 51, 15, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(11, 'lockdown', 'lockdown', 1, '2021-07-03 06:50:41', '2021-07-03 06:50:41'),
(12, 'hortal', 'hortal', 1, '2021-07-03 06:50:50', '2021-07-03 06:50:50'),
(13, 'icc', 'icc', 1, '2021-07-03 06:51:00', '2021-07-03 06:51:00'),
(14, 'bangladesh', 'bangladesh', 1, '2021-07-03 06:51:12', '2021-07-03 06:51:12'),
(15, 'actor actress', 'actor-actress', 1, '2021-07-03 06:53:52', '2021-07-03 06:53:52'),
(16, 'fifa', 'fifa', 1, '2021-07-03 06:54:05', '2021-07-03 06:54:05'),
(17, 'songsod', 'songsod', 1, '2021-07-03 06:58:15', '2021-07-03 06:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.jpg',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role_id`, `email`, `phone_number`, `username`, `email_verified_at`, `password`, `photo`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Md. Rabbi', '1', 'md.rabbi.ziauddin@gmail.com', '8801729673492', 'rabbi204', NULL, '$2y$10$H6SrOyQAC8vZuCTKXiFYe.bGMlTl.8AmYPfVxO1TjDdMRshau4zj2', 'avatar.jpg', 1, NULL, '2021-03-21 08:15:05', '2021-03-21 08:15:05'),
(6, 'Md. Rabbi', '2', 'md.rabbi.web@gmail.com', '01638621295', 'rabbi2004', NULL, '$2y$10$e56KSFLC.rLwp6XmoUAcYe3qXXqCmynEiF6oxhMukF6xrk0zuQpTC', 'avatar.jpg', 1, NULL, '2021-04-27 16:27:52', '2021-04-27 16:27:52'),
(7, 'Nafiz Khan', '2', 'nafizkhan@gmail.com', '01910697276', 'nafiz204', NULL, '$2y$10$tOC5PHSLYNS81128CgKwROCUmGKFXmNI7uvWjz7RgW/SmQolLMx/i', 'avatar.jpg', 1, NULL, '2021-07-02 09:09:17', '2021-07-02 09:09:17'),
(8, 'Sohan Khan', '2', 'sohan@gmail.com', '01729673392', 'sohan204', NULL, '$2y$10$qaIsP6F8jZn.oCYfLiKrzuEi2ecunKfsHv4VbvG9.WlFUY7kNPTQS', 'avatar.jpg', 1, NULL, '2021-07-03 11:38:57', '2021-07-03 11:38:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_number_unique` (`phone_number`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
