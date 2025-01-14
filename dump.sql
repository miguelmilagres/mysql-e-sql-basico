-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.30 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para contactos
DROP DATABASE IF EXISTS `contactos`;
CREATE DATABASE IF NOT EXISTS `contactos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `contactos`;

-- Copiando estrutura para tabela contactos.amigos
DROP TABLE IF EXISTS `amigos`;
CREATE TABLE IF NOT EXISTS `amigos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela contactos.amigos: ~5 rows (aproximadamente)
INSERT INTO `amigos` (`id`, `nome`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Joao', '2022-09-22 23:38:25', '2022-09-22 23:38:26', NULL),
	(2, 'Ana', '2022-09-22 23:38:36', '2022-09-22 23:38:36', NULL),
	(3, 'Carlos', '2022-09-22 23:38:57', '2022-09-22 23:38:58', NULL),
	(4, 'Joaquim', '2022-09-22 23:44:16', '2022-09-22 23:44:16', NULL),
	(5, 'Cristina', '2022-09-22 23:44:21', '2022-09-22 23:44:21', NULL);

-- Copiando estrutura para tabela contactos.telefones
DROP TABLE IF EXISTS `telefones`;
CREATE TABLE IF NOT EXISTS `telefones` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_amigo` int unsigned DEFAULT NULL,
  `numero` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_telefones_amigos` (`id_amigo`),
  CONSTRAINT `FK_telefones_amigos` FOREIGN KEY (`id_amigo`) REFERENCES `amigos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela contactos.telefones: ~9 rows (aproximadamente)
INSERT INTO `telefones` (`id`, `id_amigo`, `numero`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 1, '111', '2022-09-22 23:39:41', '2022-09-22 23:39:42', NULL),
	(2, 1, '112', '2022-09-22 23:39:55', '2022-09-22 23:39:55', NULL),
	(3, 2, '221', '2022-09-22 23:40:05', '2022-09-22 23:40:06', NULL),
	(4, 2, '222', '2022-09-22 23:40:14', '2022-09-22 23:40:14', NULL),
	(5, 3, '331', '2022-09-22 23:40:24', '2022-09-22 23:40:25', NULL),
	(6, 4, '441', '2022-09-22 23:45:08', '2022-09-22 23:45:08', NULL),
	(7, 5, '551', '2022-09-22 23:45:43', '2022-09-22 23:45:43', NULL),
	(8, 5, '552', '2022-09-22 23:45:43', '2022-09-22 23:45:43', NULL),
	(9, 5, '553', '2022-09-22 23:45:43', '2022-09-22 23:45:43', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
