-- Adminer 4.7.3 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `publisher_id` bigint unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authors` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint unsigned DEFAULT NULL,
  `subcategory_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `books` (`id`, `publisher_id`, `title`, `authors`, `image`, `created_at`, `updated_at`, `category_id`, `subcategory_id`) VALUES
(1,	NULL,	'The Hunger Games',	'Suzanne Collins',	'https://images.gr-assets.com/books/1447303603m/2767052.jpg',	'2021-02-14 21:26:52',	'2021-02-14 21:26:52',	NULL,	NULL),
(2,	NULL,	'Harry Potter and the Philosopher\'s Stone',	'J.K. Rowling, Mary GrandPré',	'https://images.gr-assets.com/books/1474154022m/3.jpg',	'2021-02-14 21:26:52',	'2021-02-14 21:26:52',	NULL,	NULL),
(3,	NULL,	'Twilight',	'Stephenie Meyer',	'https://images.gr-assets.com/books/1361039443m/41865.jpg',	'2021-02-14 21:26:52',	'2021-02-14 21:26:52',	NULL,	NULL),
(4,	NULL,	'To Kill a Mockingbird',	'Harper Lee',	'https://images.gr-assets.com/books/1361975680m/2657.jpg',	'2021-02-14 21:26:52',	'2021-02-14 21:26:52',	NULL,	NULL),
(5,	NULL,	'The Great Gatsby',	'F. Scott Fitzgerald',	'https://images.gr-assets.com/books/1490528560m/4671.jpg',	'2021-02-14 21:26:52',	'2021-02-14 21:26:52',	2,	NULL),
(6,	NULL,	'The Fault in Our Stars',	'John Green',	'https://images.gr-assets.com/books/1360206420m/11870085.jpg',	'2021-02-14 21:26:52',	'2021-02-14 21:26:52',	NULL,	NULL),
(7,	NULL,	'The Hobbit or There and Back Again',	'J.R.R. Tolkien',	'https://images.gr-assets.com/books/1372847500m/5907.jpg',	'2021-02-14 21:26:52',	'2021-02-14 21:26:52',	NULL,	NULL),
(8,	NULL,	'The Catcher in the Rye',	'J.D. Salinger',	'https://images.gr-assets.com/books/1398034300m/5107.jpg',	'2021-02-14 21:26:52',	'2021-02-14 21:26:52',	NULL,	NULL),
(9,	NULL,	'Angels & Demons ',	'Dan Brown',	'https://images.gr-assets.com/books/1303390735m/960.jpg',	'2021-02-14 21:26:52',	'2021-02-14 21:26:52',	NULL,	NULL),
(10,	NULL,	'Shade: A Tale of Two Presidents',	'Pete Souza',	'https://images-na.ssl-images-amazon.com/images/I/41IgIfhXb0L._AC_US436_FMwebp_QL65_.jpg',	NULL,	NULL,	1,	1),
(11,	NULL,	'Into the Wild',	'Jon Krakauer',	'https://images-na.ssl-images-amazon.com/images/I/51rJVzn7lsL._AC_US436_FMwebp_QL65_.jpg',	NULL,	NULL,	1,	2),
(12,	NULL,	'Leadership Strategy and Tactics: Field Manual',	'Jocko Willink',	'https://images-na.ssl-images-amazon.com/images/I/41f1H2rgSoL._AC_US436_FMwebp_QL65_.jpg',	NULL,	NULL,	2,	3),
(13,	NULL,	'Dune (Dune Chronicles, Book 1)',	'Frank Herbert',	'https://images-na.ssl-images-amazon.com/images/I/41UZeCEKOBL._AC_US436_FMwebp_QL65_.jpg',	NULL,	NULL,	3,	5),
(14,	NULL,	'1984',	'George Orwell, Erich Fromm',	'https://images-na.ssl-images-amazon.com/images/I/41aM4xOZxaL._AC_US436_FMwebp_QL65_.jpg',	NULL,	NULL,	3,	6);

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1,	'Biographies & Memoirs',	NULL,	NULL),
(2,	'Business & Investing',	NULL,	NULL),
(3,	'Sci-Fi & Fantasy',	NULL,	NULL);

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'2014_10_12_000000_create_users_table',	1),
(2,	'2014_10_12_100000_create_password_resets_table',	1),
(3,	'2019_08_19_000000_create_failed_jobs_table',	1),
(4,	'2021_02_14_212317_create_books_table',	1),
(5,	'2021_02_15_151718_create_publishers_table',	2),
(6,	'2021_02_15_152915_add_publisher_id_column_to_books_table',	3),
(7,	'2021_02_15_203214_create_categories_table',	4),
(8,	'2021_02_15_203258_create_subcategories_table',	4),
(9,	'2021_02_15_203325_add_columns_to_books_table',	4);

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `publishers`;
CREATE TABLE `publishers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `publishers` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1,	'Penguin Random House',	'2021-02-15 15:43:14',	'2021-02-15 15:43:14'),
(2,	'Hachette Livre',	'2021-02-15 15:43:14',	'2021-02-15 15:43:14'),
(3,	'HarperCollins',	'2021-02-15 15:43:14',	'2021-02-15 15:43:14'),
(4,	'Mac',	'2021-02-15 15:43:14',	'2021-02-16 09:35:00'),
(7,	'New publisher',	'2021-02-16 13:45:46',	'2021-02-16 13:45:46'),
(8,	'New publisher 2',	'2021-02-16 13:46:10',	'2021-02-16 13:46:10'),
(9,	'Another one',	'2021-02-16 13:47:38',	'2021-02-16 13:47:38');

DROP TABLE IF EXISTS `subcategories`;
CREATE TABLE `subcategories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `created_at`, `updated_at`) VALUES
(1,	1,	'Historical',	NULL,	NULL),
(2,	1,	'Travelers & Explorers',	NULL,	NULL),
(3,	2,	'Management & Leadership',	NULL,	NULL),
(4,	2,	'Economics',	NULL,	NULL),
(5,	3,	'Fantasy',	NULL,	NULL),
(6,	3,	'Sci-Fi',	NULL,	NULL);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- 2021-02-17 09:26:49
