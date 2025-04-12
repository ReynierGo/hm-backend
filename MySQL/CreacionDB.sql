-- --------------------------------------------------------
-- Host:                         172.27.224.1
-- Versión del servidor:         8.4.4 - MySQL Community Server - GPL
-- SO del servidor:              Linux
-- HeidiSQL Versión:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para DLX_HM_DB
CREATE DATABASE IF NOT EXISTS `DLX_HM_DB` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `DLX_HM_DB`;

-- Volcando estructura para tabla DLX_HM_DB.POKEMON
CREATE TABLE IF NOT EXISTS `POKEMON` (
  `id` bigint DEFAULT NULL,
  `name` text,
  `height` bigint DEFAULT NULL,
  `weight` bigint DEFAULT NULL,
  `types` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla DLX_HM_DB.POKEMON: ~50 rows (aproximadamente)
DELETE FROM `POKEMON`;
INSERT INTO `POKEMON` (`id`, `name`, `height`, `weight`, `types`) VALUES
	(1, 'bulbasaur', 7, 69, 'grass, poison'),
	(2, 'ivysaur', 10, 130, 'grass, poison'),
	(3, 'venusaur', 20, 1000, 'grass, poison'),
	(4, 'charmander', 6, 85, 'fire'),
	(5, 'charmeleon', 11, 190, 'fire'),
	(6, 'charizard', 17, 905, 'fire, flying'),
	(7, 'squirtle', 5, 90, 'water'),
	(8, 'wartortle', 10, 225, 'water'),
	(9, 'blastoise', 16, 855, 'water'),
	(10, 'caterpie', 3, 29, 'bug'),
	(11, 'metapod', 7, 99, 'bug'),
	(12, 'butterfree', 11, 320, 'bug, flying'),
	(13, 'weedle', 3, 32, 'bug, poison'),
	(14, 'kakuna', 6, 100, 'bug, poison'),
	(15, 'beedrill', 10, 295, 'bug, poison'),
	(16, 'pidgey', 3, 18, 'normal, flying'),
	(17, 'pidgeotto', 11, 300, 'normal, flying'),
	(18, 'pidgeot', 15, 395, 'normal, flying'),
	(19, 'rattata', 3, 35, 'normal'),
	(20, 'raticate', 7, 185, 'normal'),
	(21, 'spearow', 3, 20, 'normal, flying'),
	(22, 'fearow', 12, 380, 'normal, flying'),
	(23, 'ekans', 20, 69, 'poison'),
	(24, 'arbok', 35, 650, 'poison'),
	(25, 'pikachu', 4, 60, 'electric'),
	(26, 'raichu', 8, 300, 'electric'),
	(27, 'sandshrew', 6, 120, 'ground'),
	(28, 'sandslash', 10, 295, 'ground'),
	(29, 'nidoran-f', 4, 70, 'poison'),
	(30, 'nidorina', 8, 200, 'poison'),
	(31, 'nidoqueen', 13, 600, 'poison, ground'),
	(32, 'nidoran-m', 5, 90, 'poison'),
	(33, 'nidorino', 9, 195, 'poison'),
	(34, 'nidoking', 14, 620, 'poison, ground'),
	(35, 'clefairy', 6, 75, 'fairy'),
	(36, 'clefable', 13, 400, 'fairy'),
	(37, 'vulpix', 6, 99, 'fire'),
	(38, 'ninetales', 11, 199, 'fire'),
	(39, 'jigglypuff', 5, 55, 'normal, fairy'),
	(40, 'wigglytuff', 10, 120, 'normal, fairy'),
	(41, 'zubat', 8, 75, 'poison, flying'),
	(42, 'golbat', 16, 550, 'poison, flying'),
	(43, 'oddish', 5, 54, 'grass, poison'),
	(44, 'gloom', 8, 86, 'grass, poison'),
	(45, 'vileplume', 12, 186, 'grass, poison'),
	(46, 'paras', 3, 54, 'bug, grass'),
	(47, 'parasect', 10, 295, 'bug, grass'),
	(48, 'venonat', 10, 300, 'bug, poison'),
	(49, 'venomoth', 15, 125, 'bug, poison'),
	(50, 'diglett', 2, 8, 'ground');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
