-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table db_myblog.categories: ~6 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `title`, `slug`, `thumbnail`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES
	(1, 'HTML', 'html', '/storage/photos/1/Categories/HTML.png', 'HTML adalah singkatan dari Hypertext Markup Language', NULL, '2022-05-17 18:02:31', '2022-05-17 20:32:50'),
	(2, 'HTML basic', 'html-basic-1', 'noimage.jpg', 'HTML tingkat dasar', 1, '2022-05-17 18:02:31', '2022-05-17 18:02:31'),
	(3, 'HTML advanced', 'html-advanced-1', 'noimage.jpg', 'HTML tingkat dasar', 1, '2022-05-17 18:02:31', '2022-05-17 18:02:31'),
	(4, 'CSS', 'css', '/storage/photos/1/Categories/CSS.jpg', 'CSS atau Cascading Style Sheets adalah salah satu topik yang harus diketahui dalam pengembangan website.', NULL, '2022-05-17 18:02:31', '2022-05-17 20:32:29'),
	(5, 'Javascript', 'javascript', '/storage/photos/1/Categories/JS.png', 'JavaScript adalah salah satu bahasa pemrograman yang sering digunakan oleh website programmer atau website developer.', NULL, '2022-05-17 18:02:31', '2022-05-17 20:32:09'),
	(6, 'PHP', 'php', '/storage/photos/1/Categories/PHP.png', 'Hypertext Preprocessor adalah bahasa skrip yang dapat ditanamkan atau disisipkan ke dalam HTML. PHP banyak dipakai untuk memprogram situs web dinamis. PHP dapat digunakan untuk membangun sebuah CMS.', NULL, '2022-05-17 18:02:31', '2022-05-17 20:33:03'),
	(7, 'Laravel 8', 'laravel-8', '/storage/photos/1/Categories/Laravel 8.png', 'Laravel adalah satu-satunya framework yang membantu Anda untuk memaksimalkan penggunaan PHP di dalam proses pengembangan website.', NULL, '2022-05-17 20:31:07', '2022-05-17 20:33:27');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping data for table db_myblog.category_post: ~17 rows (approximately)
/*!40000 ALTER TABLE `category_post` DISABLE KEYS */;
INSERT INTO `category_post` (`id`, `category_id`, `post_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2022-05-17 20:35:43', '2022-05-17 20:35:43'),
	(2, 2, 1, '2022-05-17 20:35:43', '2022-05-17 20:35:43'),
	(3, 3, 1, '2022-05-17 20:35:43', '2022-05-17 20:35:43'),
	(4, 1, 2, '2022-05-17 20:37:30', '2022-05-17 20:37:30'),
	(5, 4, 2, '2022-05-17 20:37:30', '2022-05-17 20:37:30'),
	(6, 1, 3, '2022-05-17 20:38:41', '2022-05-17 20:38:41'),
	(7, 4, 3, '2022-05-17 20:38:41', '2022-05-17 20:38:41'),
	(8, 5, 3, '2022-05-17 20:38:41', '2022-05-17 20:38:41'),
	(9, 1, 4, '2022-05-17 20:39:49', '2022-05-17 20:39:49'),
	(10, 4, 4, '2022-05-17 20:39:49', '2022-05-17 20:39:49'),
	(11, 5, 4, '2022-05-17 20:39:49', '2022-05-17 20:39:49'),
	(12, 6, 4, '2022-05-17 20:39:49', '2022-05-17 20:39:49'),
	(13, 1, 5, '2022-05-17 20:41:15', '2022-05-17 20:41:15'),
	(14, 4, 5, '2022-05-17 20:41:15', '2022-05-17 20:41:15'),
	(15, 5, 5, '2022-05-17 20:41:15', '2022-05-17 20:41:15'),
	(16, 6, 5, '2022-05-17 20:41:15', '2022-05-17 20:41:15'),
	(17, 7, 5, '2022-05-17 20:41:15', '2022-05-17 20:41:15');
/*!40000 ALTER TABLE `category_post` ENABLE KEYS */;

-- Dumping data for table db_myblog.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping data for table db_myblog.migrations: ~10 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2022_04_14_071736_create_categories_table', 1),
	(5, '2022_04_14_073603_rollback', 1),
	(6, '2022_04_18_070839_create_tags_table', 1),
	(7, '2022_04_22_053502_create_posts_table', 1),
	(8, '2022_04_22_054817_create_category_post_table', 1),
	(9, '2022_04_22_054940_create_post_tag_table', 1),
	(10, '2022_05_08_231510_create_permission_tables', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping data for table db_myblog.model_has_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;

-- Dumping data for table db_myblog.model_has_roles: ~3 rows (approximately)
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(1, 'App\\Models\\User', 1),
	(2, 'App\\Models\\User', 2),
	(3, 'App\\Models\\User', 3),
	(4, 'App\\Models\\User', 4);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;

-- Dumping data for table db_myblog.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping data for table db_myblog.permissions: ~24 rows (approximately)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'post_show', 'web', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(2, 'post_create', 'web', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(3, 'post_update', 'web', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(4, 'post_detail', 'web', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(5, 'post_delete', 'web', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(6, 'category_show', 'web', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(7, 'category_create', 'web', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(8, 'category_update', 'web', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(9, 'category_detail', 'web', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(10, 'category_delete', 'web', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(11, 'tag_show', 'web', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(12, 'tag_create', 'web', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(13, 'tag_update', 'web', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(14, 'tag_delete', 'web', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(15, 'role_show', 'web', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(16, 'role_create', 'web', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(17, 'role_update', 'web', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(18, 'role_detail', 'web', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(19, 'role_delete', 'web', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(20, 'user_show', 'web', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(21, 'user_create', 'web', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(22, 'user_update', 'web', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(23, 'user_detail', 'web', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(24, 'user_delete', 'web', '2022-05-17 18:02:32', '2022-05-17 18:02:32');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Dumping data for table db_myblog.posts: ~4 rows (approximately)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `title`, `slug`, `thumbnail`, `description`, `content`, `status`, `created_at`, `updated_at`, `user_id`) VALUES
	(1, 'Belajar HTML', 'belajar-html', '/storage/photos/1/Categories/HTML.png', 'HTML adalah singkatan dari Hypertext Markup Language', '<p><em>HTML adalah singkatan dari Hypertext Markup Language</em></p>', 'publish', '2022-05-17 20:35:43', '2022-05-17 20:35:43', 1),
	(2, 'Belajar CSS', 'belajar-css', '/storage/photos/1/Categories/CSS.jpg', 'CSS atau Cascading Style Sheets adalah salah satu topik yang harus diketahui dalam pengembangan website.', '<p><em>CSS atau Cascading Style Sheets adalah salah satu topik yang harus diketahui dalam pengembangan website.</em></p>', 'publish', '2022-05-17 20:37:30', '2022-05-17 20:37:30', 1),
	(3, 'Belajar JavaScript', 'belajar-javascript', '/storage/photos/1/Categories/JS.png', 'JavaScript adalah salah satu bahasa pemrograman yang sering digunakan oleh website programmer atau website developer.', '<p><em>JavaScript adalah salah satu bahasa pemrograman yang sering digunakan oleh website programmer atau website developer.</em></p>', 'publish', '2022-05-17 20:38:41', '2022-05-17 20:38:41', 1),
	(4, 'Belajar PHP', 'belajar-php', '/storage/photos/1/Categories/PHP.png', 'Hypertext Preprocessor adalah bahasa skrip yang dapat ditanamkan atau disisipkan ke dalam HTML. PHP banyak dipakai untuk memprogram situs web dinamis. PHP dapat digunakan untuk membangun sebuah CMS.', '<p><em>Hypertext Preprocessor adalah bahasa skrip yang dapat ditanamkan atau disisipkan ke dalam HTML. PHP banyak dipakai untuk memprogram situs web dinamis. PHP dapat digunakan untuk membangun sebuah CMS.</em></p>', 'publish', '2022-05-17 20:39:49', '2022-05-17 20:39:49', 1),
	(5, 'Laravel 8', 'laravel-8', '/storage/photos/1/Categories/Laravel 8.png', 'Laravel adalah satu-satunya framework yang membantu Anda untuk memaksimalkan penggunaan PHP di dalam proses pengembangan website.', '<p><em>Laravel adalah satu-satunya framework yang membantu Anda untuk memaksimalkan penggunaan PHP di dalam proses pengembangan website.</em></p>', 'publish', '2022-05-17 20:41:15', '2022-05-17 20:41:43', 1);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Dumping data for table db_myblog.post_tag: ~21 rows (approximately)
/*!40000 ALTER TABLE `post_tag` DISABLE KEYS */;
INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2022-05-17 20:35:43', '2022-05-17 20:35:43'),
	(2, 1, 2, '2022-05-17 20:35:43', '2022-05-17 20:35:43'),
	(3, 1, 5, '2022-05-17 20:35:43', '2022-05-17 20:35:43'),
	(4, 2, 1, '2022-05-17 20:37:30', '2022-05-17 20:37:30'),
	(5, 2, 2, '2022-05-17 20:37:30', '2022-05-17 20:37:30'),
	(6, 2, 3, '2022-05-17 20:37:30', '2022-05-17 20:37:30'),
	(7, 2, 5, '2022-05-17 20:37:30', '2022-05-17 20:37:30'),
	(8, 3, 2, '2022-05-17 20:38:41', '2022-05-17 20:38:41'),
	(9, 3, 1, '2022-05-17 20:38:41', '2022-05-17 20:38:41'),
	(10, 3, 3, '2022-05-17 20:38:41', '2022-05-17 20:38:41'),
	(11, 3, 4, '2022-05-17 20:38:41', '2022-05-17 20:38:41'),
	(12, 3, 5, '2022-05-17 20:38:41', '2022-05-17 20:38:41'),
	(13, 4, 1, '2022-05-17 20:39:49', '2022-05-17 20:39:49'),
	(14, 4, 2, '2022-05-17 20:39:49', '2022-05-17 20:39:49'),
	(15, 4, 4, '2022-05-17 20:39:49', '2022-05-17 20:39:49'),
	(16, 4, 5, '2022-05-17 20:39:49', '2022-05-17 20:39:49'),
	(17, 4, 7, '2022-05-17 20:40:17', '2022-05-17 20:40:17'),
	(18, 5, 1, '2022-05-17 20:41:15', '2022-05-17 20:41:15'),
	(19, 5, 2, '2022-05-17 20:41:15', '2022-05-17 20:41:15'),
	(20, 5, 3, '2022-05-17 20:41:15', '2022-05-17 20:41:15'),
	(21, 5, 4, '2022-05-17 20:41:15', '2022-05-17 20:41:15'),
	(22, 5, 7, '2022-05-17 20:41:15', '2022-05-17 20:41:15'),
	(23, 5, 6, '2022-05-17 20:41:15', '2022-05-17 20:41:15'),
	(24, 5, 5, '2022-05-17 20:41:15', '2022-05-17 20:41:15');
/*!40000 ALTER TABLE `post_tag` ENABLE KEYS */;

-- Dumping data for table db_myblog.roles: ~3 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'SuperAdmin', 'web', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(2, 'Admin', 'web', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(3, 'Editor', 'web', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(4, 'Role test', 'web', '2022-05-17 20:26:40', '2022-05-17 20:26:40');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping data for table db_myblog.role_has_permissions: ~67 rows (approximately)
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
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
	(1, 2),
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
	(14, 2),
	(1, 3),
	(2, 3),
	(3, 3),
	(4, 3),
	(5, 3),
	(1, 4),
	(2, 4),
	(3, 4),
	(4, 4),
	(5, 4),
	(6, 4),
	(7, 4),
	(8, 4),
	(9, 4),
	(10, 4),
	(11, 4),
	(12, 4),
	(13, 4),
	(14, 4),
	(15, 4),
	(16, 4),
	(17, 4),
	(18, 4),
	(19, 4),
	(20, 4),
	(21, 4),
	(22, 4),
	(23, 4),
	(24, 4);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;

-- Dumping data for table db_myblog.tags: ~7 rows (approximately)
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Tutorial', 'tutorial', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(2, 'HTML', 'html', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(3, 'CSS', 'css', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(4, 'Javascript', 'javascript', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(5, 'Pemrograman', 'pemrograman', '2022-05-17 18:02:32', '2022-05-17 18:02:32'),
	(6, 'Laravel 8', 'laravel-8', '2022-05-17 20:34:17', '2022-05-17 20:34:17'),
	(7, 'PHP', 'php', '2022-05-17 20:39:59', '2022-05-17 20:39:59');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;

-- Dumping data for table db_myblog.users: ~3 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Heyuu', 'superadmin@gmail.com', '2022-05-17 18:02:31', '$2y$10$WGdwsK62GjRcGg7MpjKhd.Qg8FqlascpPdU5ppLurRPaCl2qHNcV2', 'AOwzEbOaSKnjj5cwTlRMQQlbHbCOT37BJBmHA4u1pAZPAOeCR5fHQtHq2EHb', '2022-05-17 18:02:31', '2022-05-17 18:02:31'),
	(2, 'Admin', 'admin@gmail.com', NULL, '$2y$10$IicotXH1vX9f1rIaSlvX8uj62tonCOFQlLhQfnpGonS/ZlCUvFFM.', NULL, '2022-05-17 20:27:24', '2022-05-17 20:27:24'),
	(3, 'Editor', 'editor@gmail.com', NULL, '$2y$10$OVi9nMANzVmPHtUZ8e905.MViKAqa6llUKRyrWS8Klib3why1UWzG', NULL, '2022-05-17 20:28:57', '2022-05-17 20:28:57'),
	(4, 'Test', 'test@gmail.com', NULL, '$2y$10$lGtDFSC4WHhM9aiLYjMgc.gx/XJ0aSQRndm/fYsF0uzQeiBzkp156', NULL, '2022-05-17 20:29:34', '2022-05-17 20:29:34');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
