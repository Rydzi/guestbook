-- --------------------------------------------------------
-- Hostiteľ:                     localhost
-- Verze serveru:                5.7.34 - MySQL Community Server (GPL)
-- OS serveru:                   Win64
-- HeidiSQL Verzia:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Exportování struktury pro tabulka guestbook.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportování dat pro tabulku guestbook.posts: ~0 rows (přibližně)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `name`, `email`, `phone_number`, `region_id`, `message`, `ip`, `browser`, `created_at`) VALUES
	(1, 'Irena', 'horvathova.ivana@example.com', '+421901873003', '7', 'Qui aliquam natus sed modi aut. Perferendis consequatur id eaque minus rerum reprehenderit enim odit. Distinctio porro aperiam dolores necessitatibus qui modi aliquid. Est voluptate quasi at dignissimos illum fugit.', '236.184.29.60', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_9) AppleWebKit/5320 (KHTML, like Gecko) Chrome/37.0.814.0 Mobile Safari/5320', '2021-04-13 14:11:42'),
	(2, 'Žofia', 'kondrejkova@example.com', '+421949865029', '1', 'Vel officiis nesciunt et reprehenderit dolores nihil maiores aut. Sequi nemo ut provident. Qui adipisci quas pariatur aut necessitatibus aut doloribus.', '20.141.239.43', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows 98; Trident/5.0)', '2021-01-03 09:29:45'),
	(3, 'Drahoslav', 'qkonecna@example.net', '+421908048870', '4', 'Optio omnis quas corrupti totam assumenda. Laboriosam sequi sunt doloremque. Blanditiis aperiam eos nostrum magnam est consequatur quis. Omnis deserunt eum pariatur molestiae.', '90.164.254.167', 'Mozilla/5.0 (Windows; U; Windows NT 5.01) AppleWebKit/532.31.3 (KHTML, like Gecko) Version/4.0.4 Safari/532.31.3', '2020-08-23 00:02:22'),
	(4, 'Patrik', 'zkoza@example.net', '+421901995120', '1', 'Quo nihil optio adipisci est ex. Quia sequi laudantium enim. Id eius reiciendis perferendis ab repellat. Accusantium vel rem quo id.', '165.0.163.42', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/3.1)', '2021-02-25 00:49:03'),
	(5, 'Ondrej', 'horvath.svatopluk@example.com', '+421949791931', '8', 'Voluptatem perferendis aut iure voluptas blanditiis. Maxime blanditiis in iure nobis voluptas nihil. Perferendis non debitis facilis tempora alias.', '59.214.107.214', 'Opera/9.80 (X11; Linux x86_64; sl-SI) Presto/2.10.301 Version/12.00', '2021-01-24 02:37:49'),
	(6, 'Gertrúda', 'lydia.vlckova@example.com', '+421901726589', '6', 'Voluptatem vel expedita eligendi non dolore possimus commodi. Sint dolorum cupiditate quaerat quos vel. Excepturi amet voluptatibus velit saepe voluptate quia praesentium.', '134.216.45.87', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/4.1)', '2020-11-02 19:29:15'),
	(7, 'Ľudomil', 'oslejova.jaromir@example.net', '+421908150124', '5', 'Totam aut nesciunt totam rem. Non magnam officia neque fugiat unde quod aut. Quia nisi dolores natus. Rerum iste quidem facere eum nam assumenda.', '229.66.17.248', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0)', '2021-05-26 03:27:10'),
	(8, 'Vilma', 'tdrajna@example.com', '+421918944785', '7', 'Debitis quo laborum rerum debitis. Qui dolores quas harum est. Fugit dolor in omnis minus quia. Nesciunt odit porro doloribus et adipisci praesentium quo.', '229.187.196.160', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 6.0; Trident/3.1)', '2021-07-18 16:39:55'),
	(9, 'Levoslav', 'adamec.alexandra@example.com', '+421907736027', '7', 'Vel perferendis corporis minima et sint. Aut eos reiciendis rerum provident voluptatem.', '247.236.67.218', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 5.01; Trident/4.0)', '2021-02-14 07:39:35'),
	(10, 'Karina', 'reznickova.ivica@example.com', '+421905982384', '3', 'Omnis aut minus est earum est nobis fuga. Nostrum necessitatibus explicabo aut porro atque esse qui. Temporibus suscipit provident labore sit officiis corrupti.', '27.80.236.156', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows 98; Trident/3.1)', '2020-08-04 11:19:09'),
	(11, 'Slavomír', 'drahoslav.tatar@example.org', '+421949234662', '6', 'Voluptatem at enim dolores tempore sit sunt. Eligendi quo est impedit reiciendis. Tenetur quis consequatur eum consequuntur optio occaecati esse.', '115.29.31.144', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_8_4 rv:2.0) Gecko/20160620 Firefox/37.0', '2020-11-13 21:00:12'),
	(12, 'Svetozár', 'moric80@example.org', '+421909944172', '4', 'Unde hic veniam ipsum est magnam. Accusamus accusamus eligendi laudantium excepturi illo ipsam non earum. Maxime sapiente nesciunt qui est iste at.', '81.138.185.246', 'Mozilla/5.0 (iPad; CPU OS 8_2_2 like Mac OS X; sl-SI) AppleWebKit/531.38.5 (KHTML, like Gecko) Version/3.0.5 Mobile/8B111 Safari/6531.38.5', '2021-04-02 18:59:47'),
	(13, 'Petra', 'jani.alena@example.org', '+421948126100', '6', 'Voluptatem voluptatum aut pariatur ad eum. Deserunt non inventore qui aliquid repellendus quia similique. Eum consequatur ut itaque id et neque.', '194.211.202.157', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 5.1; Trident/5.0)', '2021-03-11 23:45:28'),
	(14, 'Justína', 'fialova.gabriel@example.org', '+421911474064', '7', 'Minima aut maxime cum est et sint. Ipsam temporibus non molestiae tempora quas tempora. Eos incidunt omnis qui amet sapiente. Dolores qui a reiciendis et.', '148.21.164.219', 'Mozilla/5.0 (compatible; MSIE 6.0; Windows 98; Win 9x 4.90; Trident/5.0)', '2021-07-03 17:15:40'),
	(15, 'Ľubica', 'vargova.vilma@example.com', '+421908637452', '1', 'Eaque tenetur mollitia placeat molestiae. Ipsam eius omnis et rerum ex. Necessitatibus sapiente ea exercitationem et molestiae sit id ullam. Ut iure voluptates qui eveniet quisquam id.', '3.92.89.17', 'Mozilla/5.0 (Windows NT 5.2; en-US; rv:1.9.2.20) Gecko/20160609 Firefox/36.0', '2020-11-27 20:22:25'),
	(16, 'Zdenka', 'rsarova@example.org', '+421905281927', '8', 'Quisquam rem maxime ratione distinctio. Atque maiores non voluptatem eius. Eum et aperiam vel velit ut earum. Perspiciatis fugit assumenda facilis aut consectetur est.', '87.62.122.211', 'Mozilla/5.0 (Windows; U; Windows 98) AppleWebKit/535.16.3 (KHTML, like Gecko) Version/5.0.5 Safari/535.16.3', '2021-04-30 17:54:10'),
	(17, 'Dana', 'ivana.szabova@example.org', '+421948729345', '3', 'Sunt nesciunt voluptatem qui cumque. Et et reprehenderit temporibus commodi dolores molestias. Id et assumenda sed dolorem est aut.', '186.110.222.185', 'Opera/9.14 (Windows NT 6.1; sl-SI) Presto/2.8.200 Version/10.00', '2021-03-06 00:50:51'),
	(18, 'Ivan', 'hhorak@example.org', '+421919615619', '3', 'Sint eveniet quasi iure et. Vel dolores suscipit quo vitae cupiditate quo dolores et. Et et fugit rerum. Quaerat cumque reprehenderit molestiae corporis quo ab assumenda. Odit sapiente perspiciatis enim sunt sed at veniam.', '36.56.120.27', 'Mozilla/5.0 (Windows NT 5.2; sl-SI; rv:1.9.0.20) Gecko/20160429 Firefox/36.0', '2021-07-13 23:07:33'),
	(19, 'Viera', 'finkova.jergus@example.net', '+421945027747', '8', 'Animi eveniet quia reiciendis reprehenderit corrupti enim. Perspiciatis aut tempore sed ex. Unde eaque soluta adipisci ea maxime itaque. Provident nesciunt provident molestiae neque ipsum excepturi voluptatem.', '178.132.42.45', 'Opera/8.26 (X11; Linux i686; sl-SI) Presto/2.10.296 Version/10.00', '2021-01-03 07:38:16'),
	(20, 'Branislav', 'stanekova.tibor@example.org', '+421915418596', '2', 'Deserunt quia dolores aliquam laboriosam quisquam ipsa ad et. Vitae vitae iste repellat. Debitis est fuga qui esse molestias sed fugiat debitis.', '237.47.137.71', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows 98; Win 9x 4.90; Trident/5.0)', '2021-04-19 14:27:22'),
	(21, 'Svetlana', 'mikus.irma@example.net', '+421941162245', '1', 'Omnis eligendi qui voluptatum labore assumenda quo. Et eos dignissimos quibusdam quam quis vel. Qui ut iste enim quo. Quas explicabo suscipit sequi perspiciatis.', '237.236.28.166', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_0 rv:3.0) Gecko/20161023 Firefox/35.0', '2021-02-18 11:10:00'),
	(22, 'Zlatko', 'mdado@example.com', '+421948982024', '5', 'Maiores pariatur enim esse temporibus assumenda perspiciatis quas. Ut necessitatibus impedit sunt. Adipisci ut distinctio distinctio natus. Esse assumenda sed ipsa et sunt culpa.', '237.168.247.181', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_5_8 rv:6.0) Gecko/20180628 Firefox/36.0', '2020-09-29 19:59:08'),
	(23, 'Blanka', 'malikova.frantiska@example.net', '+421905587521', '6', 'Perferendis ea est expedita est dolorem recusandae rerum. Perspiciatis accusantium dolores aliquid hic. Aut iste maiores magni sed. Enim et in qui excepturi inventore voluptas.', '51.243.107.196', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_5 rv:2.0) Gecko/20210308 Firefox/35.0', '2021-05-18 09:38:44'),
	(24, 'Rozália', 'ckucerova@example.net', '+421941244556', '2', 'Maxime laudantium alias dolor adipisci et. Voluptatem ab aspernatur enim. Iusto iure maxime dolor asperiores. Et impedit nemo modi et.', '8.184.171.243', 'Opera/8.17 (X11; Linux x86_64; en-US) Presto/2.12.260 Version/12.00', '2020-10-02 19:39:56'),
	(25, 'Ľudomila', 'baranka.radoslav@example.org', '+421941873083', '2', 'Officiis repellat repellendus sed excepturi laboriosam alias. Aperiam veniam illum illo id fugiat vero nostrum. Rerum recusandae consequatur rem. Aut atque magni explicabo.', '217.151.74.40', 'Mozilla/5.0 (iPad; CPU OS 8_0_2 like Mac OS X; sl-SI) AppleWebKit/531.24.6 (KHTML, like Gecko) Version/4.0.5 Mobile/8B117 Safari/6531.24.6', '2020-11-07 17:45:50'),
	(26, 'Viera', 'tdostal@example.net', '+421945455322', '3', 'Officiis voluptate maiores ut ut quisquam ea. Commodi assumenda porro aut et. Officiis aut corporis facilis odio ut.', '8.153.143.97', 'Opera/8.47 (Windows NT 5.1; sl-SI) Presto/2.8.232 Version/10.00', '2021-06-09 22:15:38'),
	(27, 'Edmund', 'jergus34@example.org', '+421901781838', '7', 'Id voluptatem temporibus non cupiditate sed quos. Totam consequuntur quasi est.', '247.64.227.234', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_1 rv:6.0) Gecko/20111020 Firefox/35.0', '2020-10-27 17:46:31'),
	(28, 'Radúz', 'kusnirova.urban@example.com', '+421919192316', '3', 'Repellat eligendi quasi reiciendis culpa aut laborum qui. Odit at iure ut. Deleniti est dignissimos est qui. Architecto est dolorum eveniet sit consectetur.', '156.136.121.53', 'Mozilla/5.0 (Windows 98; en-US; rv:1.9.1.20) Gecko/20191111 Firefox/36.0', '2020-11-05 16:18:45'),
	(29, 'Bohdan', 'yzelenayova@example.com', '+421905518463', '8', 'Et quis minima labore temporibus id. Veniam dolores sit harum id. Velit vitae ea delectus. Quo aut quo laboriosam dolore id aut.', '183.188.230.226', 'Mozilla/5.0 (iPad; CPU OS 8_0_2 like Mac OS X; sl-SI) AppleWebKit/534.19.4 (KHTML, like Gecko) Version/3.0.5 Mobile/8B115 Safari/6534.19.4', '2020-08-12 01:45:16'),
	(30, 'Eliška', 'kamila.molnar@example.com', '+421908142484', '4', 'Sed vitae voluptate aspernatur voluptas nihil perferendis qui. Pariatur magnam enim architecto ipsa doloribus. Cupiditate quia ad ut consequuntur.', '211.159.46.48', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_2 like Mac OS X; en-US) AppleWebKit/532.43.2 (KHTML, like Gecko) Version/3.0.5 Mobile/8B113 Safari/6532.43.2', '2020-09-13 14:40:00'),
	(31, 'Klaudia', 'senko.jana@example.org', '+421948023027', '4', 'Ut totam sed ut est et saepe soluta. Occaecati voluptatum sint qui voluptatem quo error molestiae vero. Modi sit beatae qui ea.', '97.110.112.244', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2_1 like Mac OS X; en-US) AppleWebKit/531.9.5 (KHTML, like Gecko) Version/4.0.5 Mobile/8B113 Safari/6531.9.5', '2021-07-25 00:59:01'),
	(32, 'Sabína', 'barbora44@example.com', '+421947374688', '4', 'Consectetur labore tenetur aut delectus tempore voluptatem. Sequi dolores sapiente unde sed suscipit aperiam. Quisquam nihil cum fuga laudantium non.', '113.124.212.208', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 5.2; Trident/3.1)', '2020-10-24 16:05:33'),
	(33, 'Kazimír', 'ihrda@example.net', '+421901627128', '7', 'Possimus amet pariatur nostrum cupiditate. Vel omnis rerum ut ex. Iure nemo fugit aut atque ut maxime voluptatem.', '254.99.219.166', 'Mozilla/5.0 (compatible; MSIE 11.0; Windows NT 5.01; Trident/4.0)', '2021-07-22 20:40:57'),
	(34, 'Ferdinand', 'qnovotny@example.org', '+421945455881', '7', 'Ipsam omnis est suscipit porro. Atque voluptas ullam delectus non et. Ex illum enim omnis tenetur quis et.', '158.198.91.121', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_2 rv:5.0; sl-SI) AppleWebKit/534.50.4 (KHTML, like Gecko) Version/5.0.2 Safari/534.50.4', '2021-01-02 11:31:39'),
	(35, 'Bernard', 'lubomir09@example.net', '+421901340104', '6', 'Delectus temporibus non accusantium totam natus et est occaecati. Doloremque quia maxime vero. Molestiae consequatur quos rerum dolorem. Minus aut est quis repellendus.', '118.179.42.236', 'Opera/9.23 (Windows CE; sl-SI) Presto/2.9.183 Version/11.00', '2020-12-19 04:25:02'),
	(36, 'Iveta', 'florian.kolrusova@example.org', '+421949325541', '7', 'Odio iste odio placeat consequatur impedit. Et dolorem aspernatur quam. Sed nam eos quasi repellendus.', '3.234.132.237', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5342 (KHTML, like Gecko) Chrome/39.0.876.0 Mobile Safari/5342', '2021-06-17 05:38:49'),
	(37, 'Zora', 'leonard.noskova@example.net', '+421918749682', '4', 'Ratione exercitationem reprehenderit voluptas odio sequi labore voluptas a. Dolore dolores adipisci aut eum maiores aut et. Qui eos voluptatibus in. Repudiandae omnis nesciunt aut in.', '136.136.180.157', 'Opera/9.19 (X11; Linux i686; sl-SI) Presto/2.12.165 Version/12.00', '2020-10-20 07:17:30'),
	(38, 'Vincent', 'ludomil.puskas@example.com', '+421908726062', '8', 'Sunt atque ut eveniet placeat quaerat laborum. Aut optio beatae ut ut dolores molestiae. Atque neque veniam rerum quisquam ea iure et. Et qui et sapiente.', '80.63.177.99', 'Mozilla/5.0 (Windows; U; Windows NT 5.01) AppleWebKit/535.28.7 (KHTML, like Gecko) Version/5.0.3 Safari/535.28.7', '2021-06-23 23:16:03'),
	(39, 'Zoja', 'wmiklosko@example.net', '+421901766944', '4', 'Amet tempora suscipit veniam. Debitis odit quae rerum enim rerum qui blanditiis.', '3.41.19.51', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/5.1)', '2020-12-02 05:55:36'),
	(40, 'Oskar', 'alojz33@example.com', '+421945017734', '8', 'Velit ipsum doloribus reiciendis voluptatem alias et. Assumenda ullam rerum quos expedita doloremque ab. Eos voluptas sequi laboriosam dicta. Voluptas corrupti perferendis ipsam ratione.', '202.178.65.168', 'Opera/8.77 (X11; Linux i686; en-US) Presto/2.10.355 Version/11.00', '2020-08-23 13:15:16'),
	(41, 'Františka', 'ycerna@example.org', '+421917157816', '6', 'Distinctio aperiam non doloremque adipisci excepturi asperiores quisquam ut. Saepe quasi libero non blanditiis voluptatibus. Repudiandae in accusamus fuga est accusamus eum a.', '114.108.244.229', 'Mozilla/5.0 (Windows NT 6.1; sl-SI; rv:1.9.2.20) Gecko/20160429 Firefox/36.0', '2021-06-03 23:57:19'),
	(42, 'Otília', 'svobodova.ludomil@example.org', '+421907416314', '6', 'Autem magnam cum nihil explicabo. Porro harum doloribus ut dolorem hic. Non eveniet placeat eligendi quod beatae itaque. Ut aspernatur sunt nulla et aspernatur.', '201.42.183.129', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5350 (KHTML, like Gecko) Chrome/39.0.818.0 Mobile Safari/5350', '2021-07-07 22:42:07'),
	(43, 'Žaneta', 'zaneta.talianova@example.net', '+421949441050', '3', 'Impedit ex quo et modi quidem ut. Et sed velit adipisci quisquam quis perferendis minima. Sunt explicabo aut distinctio dolorem molestiae.', '105.170.138.245', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows 95; Trident/3.0)', '2020-11-12 04:01:03'),
	(44, 'Fridrich', 'drahomir59@example.com', '+421909374813', '5', 'At aut natus dolore aut ut aut. Natus facilis sunt quo. Reprehenderit voluptas et maxime earum consequuntur ea a.', '224.38.221.198', 'Mozilla/5.0 (Windows; U; Windows NT 6.2) AppleWebKit/532.14.4 (KHTML, like Gecko) Version/5.0.2 Safari/532.14.4', '2021-01-15 07:51:04'),
	(45, 'Margaréta', 'osoltisova@example.org', '+421909626599', '3', 'Inventore nihil quia rerum laudantium et ut. Minima tempora et aspernatur soluta. Ut et placeat recusandae ad.', '185.92.99.69', 'Mozilla/5.0 (Windows CE) AppleWebKit/5321 (KHTML, like Gecko) Chrome/36.0.890.0 Mobile Safari/5321', '2021-03-28 11:19:34'),
	(46, 'Dominik', 'viktor93@example.org', '+421949971667', '2', 'Sapiente fuga quis neque. Blanditiis eveniet blanditiis sit sit.', '120.20.119.200', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_8 rv:6.0) Gecko/20150722 Firefox/37.0', '2021-07-21 06:55:13'),
	(47, 'Henrich', 'nemec.maros@example.org', '+421909655383', '3', 'Voluptas voluptas sequi ut inventore. Exercitationem quam nulla omnis. Labore ullam cum ea quae cupiditate ipsam.', '219.178.100.56', 'Mozilla/5.0 (X11; Linux x86_64; rv:5.0) Gecko/20180922 Firefox/36.0', '2021-07-20 16:08:40'),
	(48, 'Darina', 'nadezda58@example.org', '+421915637088', '8', 'Modi qui dolores enim est ullam laudantium eligendi. Qui repudiandae voluptas fugiat rerum. Id rerum ea omnis fugit. Eum veritatis in non quos repellendus non iure.', '93.201.85.152', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5320 (KHTML, like Gecko) Chrome/40.0.874.0 Mobile Safari/5320', '2021-07-17 00:39:24'),
	(49, 'Rebeka', 'valentin76@example.net', '+421947196964', '5', 'Ut quae explicabo at. Veniam nisi et neque est iusto tenetur.', '239.43.127.238', 'Opera/8.68 (Windows CE; en-US) Presto/2.9.220 Version/12.00', '2021-04-23 08:09:20'),
	(50, 'Tibor', 'alfonz.dolezal@example.org', '+421918140725', '5', 'Distinctio dolorem numquam sint cupiditate animi dolor. Eos ut placeat tempore quo ut corporis omnis soluta. Quidem eligendi sed exercitationem voluptatum ea sunt eligendi eum. Rerum vero illum iusto eum rem numquam.', '190.83.84.111', 'Mozilla/5.0 (Windows; U; Windows NT 5.2) AppleWebKit/531.7.1 (KHTML, like Gecko) Version/4.0 Safari/531.7.1', '2020-09-14 15:09:08');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Exportování struktury pro tabulka guestbook.regions
CREATE TABLE IF NOT EXISTS `regions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Exportování dat pro tabulku guestbook.regions: ~0 rows (přibližně)
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` (`id`, `region`) VALUES
	(1, 'Bratislavský'),
	(2, 'Trnavský'),
	(3, 'Trenčiansky'),
	(4, 'Nitriansky'),
	(5, 'Žilinský'),
	(6, 'Banskobystrický'),
	(7, 'Prešovský'),
	(8, 'Košický');
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
