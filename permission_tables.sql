-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.13-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table iris.role_permissions
DROP TABLE IF EXISTS `role_permissions`;
CREATE TABLE IF NOT EXISTS `role_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `perm_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table iris.role_permissions: ~104 rows (approximately)
DELETE FROM `role_permissions`;
/*!40000 ALTER TABLE `role_permissions` DISABLE KEYS */;
INSERT INTO `role_permissions` (`id`, `role_id`, `perm_id`) VALUES
	(1, 7, 89),
	(2, 7, 101),
	(3, 7, 69),
	(4, 7, 97),
	(5, 7, 56),
	(6, 7, 77),
	(7, 7, 60),
	(8, 7, 93),
	(9, 7, 65),
	(10, 7, 36),
	(11, 7, 81),
	(12, 7, 42),
	(13, 7, 73),
	(14, 7, 52),
	(15, 7, 85),
	(16, 7, 13),
	(17, 7, 18),
	(18, 7, 8),
	(19, 7, 88),
	(20, 7, 31),
	(21, 7, 16),
	(22, 7, 10),
	(23, 7, 25),
	(24, 7, 5),
	(26, 7, 103),
	(27, 7, 71),
	(28, 7, 99),
	(29, 7, 58),
	(30, 7, 79),
	(31, 7, 63),
	(32, 7, 95),
	(33, 7, 67),
	(34, 7, 38),
	(35, 7, 83),
	(36, 7, 44),
	(37, 7, 75),
	(38, 7, 54),
	(39, 7, 87),
	(40, 7, 91),
	(41, 7, 29),
	(42, 7, 33),
	(43, 7, 90),
	(44, 7, 102),
	(45, 7, 70),
	(46, 7, 98),
	(47, 7, 57),
	(48, 7, 78),
	(49, 7, 62),
	(50, 7, 94),
	(51, 7, 37),
	(52, 7, 66),
	(53, 7, 82),
	(54, 7, 43),
	(55, 7, 74),
	(56, 7, 53),
	(57, 7, 86),
	(58, 7, 28),
	(59, 7, 23),
	(60, 7, 19),
	(61, 7, 14),
	(62, 7, 100),
	(63, 7, 30),
	(64, 7, 24),
	(65, 7, 15),
	(66, 7, 35),
	(67, 7, 40),
	(68, 7, 12),
	(71, 7, 68),
	(72, 7, 96),
	(73, 7, 48),
	(74, 7, 49),
	(75, 7, 46),
	(77, 7, 45),
	(78, 7, 50),
	(80, 7, 55),
	(81, 7, 32),
	(82, 7, 27),
	(83, 7, 21),
	(84, 7, 22),
	(85, 7, 20),
	(86, 7, 76),
	(87, 7, 7),
	(89, 7, 59),
	(90, 7, 92),
	(91, 7, 34),
	(92, 7, 64),
	(93, 7, 80),
	(94, 7, 39),
	(95, 7, 72),
	(96, 7, 51),
	(97, 7, 26),
	(98, 7, 11),
	(99, 7, 17),
	(100, 7, 61),
	(101, 7, 6),
	(102, 7, 41),
	(103, 7, 84),
	(104, 7, 104),
	(105, 7, 9),
	(106, 7, 1),
	(107, 7, 4),
	(108, 7, 47),
	(109, 7, 2),
	(110, 7, 3);
/*!40000 ALTER TABLE `role_permissions` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
