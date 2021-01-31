CREATE DATABASE  IF NOT EXISTS `recoffee` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `recoffee`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: recoffee
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acessorios`
--

DROP TABLE IF EXISTS `acessorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acessorios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` longtext COLLATE utf8_unicode_ci,
  `categoria` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fabricante` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preco` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `peso_prod` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img1` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img2` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avaliacao` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acessorios`
--

LOCK TABLES `acessorios` WRITE;
/*!40000 ALTER TABLE `acessorios` DISABLE KEYS */;
INSERT INTO `acessorios` VALUES (1,'Suporte para Filtro de Café Hario Mod V60-01 Branco','Projetado em formato cônico \'V\' e um ângulo de 60°, o coador Hario V60 é escolha certeira de baristas e apaixonados por café no mundo todo. Os espirais na parte interna, que facilitam a expansão do pó de café, e uma grande abertura na base do coador, que permite controlar a velocidade do fluxo de água, são dois dos detalhes que o diferencia dos coadores comuns.','Suportes','Hario','38','200','suporte_hario','suporte_hario2',4.5),(2,'Filtro Branco Hario V60-01 com 100 Unidades','Desenhado especificamente para acompanhar o formato cônico \'V\' e ângulo de 60° dos coadores V60, segue os padrões de qualidade Hario. Feito de papel celulósico de alta qualidade, na gramatura ideal, pode ser encontrado nas cores natural e branco. A diferença entre eles é que os filtros brancos passam por processo de branqueamento com oxigênio, sem o uso de alvejantes. O resultado é uma bebida suave, limpa, saborosa e sem resíduos.','Filtros de papel','Hario','39','150','filtro_hario','filtro_hario2',4),(3,'Prensa Francesa Fosca Hario para Preparar Café 300ML','A linha Hario Bright confere um design renovado ao clássico método French Press. As prensas francesas utilizam um filtro de metal que prepara o café ou chá no próprio recipiente e resulta em uma bebida encorpada e aromática. O destaque desta linha de prensas francesas Hario Bright é acabamento em aço inox, que traz um conceito elegante e moderno.','Cafeteiras','Hario','228','600','prensafrancesahario','prensafrancesahario2',3.8);
/*!40000 ALTER TABLE `acessorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cafes`
--

DROP TABLE IF EXISTS `cafes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cafes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` longtext COLLATE utf8_unicode_ci,
  `categoria` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preco` float DEFAULT NULL,
  `peso_pct` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `produtor` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `torra` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classificacao` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `origem` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avaliacao` float DEFAULT NULL,
  `peso_prod` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cafes`
--

LOCK TABLES `cafes` WRITE;
/*!40000 ALTER TABLE `cafes` DISABLE KEYS */;
INSERT INTO `cafes` VALUES (1,'Café Torrado e Moído Tribos Microlote Especial 3 Corações 250g','Criado com o objetivo de promover desenvolvimento sustentável, o Projeto Tribos é fundamentado em três pilares, são eles: protagonismo do indígena, proteção da floresta e produção de cafés especiais. Este raro café especial 85+ pontos é uma seleção fruto do Concurso Tribos e pode-se notar que apresenta consistência de sabores que lembram frutas secas, chá preto, castanhas e chocolate amargo, corpo cremoso a licoroso e baixa acidez que harmoniza a bebida. 3 Corações Microlotes Tribos é mais do que especial, pois cada xícara conta com uma história repleta de significados, proporcionando uma experiência cultural, saborosa e gerando valor a todos os envolvidos.','Projeto Tribos',18,'250','Kaiwoá','Média','Microlote','Rondonia','tribos',4.5,NULL,NULL,NULL),(2,'Café Torrado e Moído Florada Rituais 3 Corações Pacote 250g','Microlotes frutos do Projeto Florada, criado para reconhecer o trabalho de mulheres cafeicultoras de todo o Brasil. O Concurso de café Florada Premiada é uma das iniciativas do Projeto que valoriza os raros Microlotes cultivados por elas. A campanha “Junte-se a elas” é uma iniciativa que convida o consumidor a contribuir com a causa, uma vez que reverte 100% do lucro das vendas dos Microlotes Rituais Florada para produtoras.','Florada Premiada',18,'250','Cooperativa de Mulheres de Produtoras','Média','Microlote','Diversas Regiões','florada',4,NULL,NULL,NULL),(3,'Café Torrado e Moído Microlote Campeão Reserva da Família 250g','Santa Clara Reserva da Família apresenta Microlotes Premiados em Concursos do Brasil. Estes cafés são os melhores da fazenda e resultam da combinação do microclima propício para produção de alta qualidade, junto ao trabalho e capricho de seus produtores. Aqui você poderá conhecer um pouco mais sobre o que está por trás destes cafés premiados que receberam cuidado especial em cada detalhe do pé até a xícara.','Reserva da Família',18,'250','Família Silva','Média','Microlote','Minas Gerais','familia',4.2,NULL,NULL,NULL),(4,'Kit Tribos Microlote Especial 3 Corações','O Projeto Tribos foi criado com o objetivo de promover desenvolvimento sustentável através da convivência harmônica entre o Protagonismo do Indígena, a Proteção da Floresta e a Produção de Café de Qualidade.','Projeto Tribos',18,'250','Kaiowá','Média','Microlote','Rondônia','tribos',4.7,NULL,NULL,NULL),(17,'xcvzx','xcvzxc',NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-31 17:30:20','2021-01-31 17:30:20');
/*!40000 ALTER TABLE `cafes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `celular` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `cpf` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `logradouro` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `numero` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `cep` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `cidade` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `uf` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` text,
  `content` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Faça o melhor café em casa','Aprenda a extrair o melhor do seu café recoffee','Experimente o que o nosso café tem de melhor...','2021-01-21 00:37:05','2021-01-21 00:37:05'),(5,'teste','asdlfasdç fas dfsaldfajçsd','asdlaçsldkjfaçsldkfjasçldkfajsçdsddd ssdfsd ','2021-01-21 03:26:02','2021-01-21 03:26:02'),(6,NULL,NULL,NULL,'2021-01-21 03:32:00','2021-01-21 03:32:00'),(7,NULL,NULL,NULL,'2021-01-21 03:33:22','2021-01-21 03:33:22'),(8,'tsete','tsad','sdfasdfasd','2021-01-21 04:23:13','2021-01-21 04:23:13');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Mário','mario082@gmail.com','123456','2021-01-21 00:48:30','2021-01-21 00:48:30');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-31 16:08:58
