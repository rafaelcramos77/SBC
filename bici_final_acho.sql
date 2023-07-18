-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: bici2
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `endereço`
--

DROP TABLE IF EXISTS `endereço`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereço` (
  `id_Endereço` int NOT NULL,
  `Rua` varchar(100) NOT NULL,
  `Numero` int NOT NULL,
  `CEP` varchar(45) NOT NULL,
  `Cidade` varchar(100) NOT NULL,
  `Estado` varchar(100) NOT NULL,
  `funcionario_id_Funcionario` int NOT NULL,
  PRIMARY KEY (`id_Endereço`,`funcionario_id_Funcionario`),
  KEY `fk_Endereço_funcionario_idx` (`funcionario_id_Funcionario`),
  CONSTRAINT `fk_Endereço_funcionario` FOREIGN KEY (`funcionario_id_Funcionario`) REFERENCES `bici`.`funcionario` (`id_Funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereço`
--

LOCK TABLES `endereço` WRITE;
/*!40000 ALTER TABLE `endereço` DISABLE KEYS */;
/*!40000 ALTER TABLE `endereço` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico_compras`
--

DROP TABLE IF EXISTS `historico_compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico_compras` (
  `id_Historico_Compras` int NOT NULL,
  `cliente_pessoa_id_Pessoa` int NOT NULL,
  `plano_id_Plano` int NOT NULL,
  PRIMARY KEY (`id_Historico_Compras`,`cliente_pessoa_id_Pessoa`,`plano_id_Plano`),
  KEY `fk_Historico_Compras_cliente1_idx` (`cliente_pessoa_id_Pessoa`),
  KEY `fk_Historico_Compras_plano1_idx` (`plano_id_Plano`),
  CONSTRAINT `fk_Historico_Compras_cliente1` FOREIGN KEY (`cliente_pessoa_id_Pessoa`) REFERENCES `bici`.`cliente` (`pessoa_id_Pessoa`),
  CONSTRAINT `fk_Historico_Compras_plano1` FOREIGN KEY (`plano_id_Plano`) REFERENCES `bici`.`plano` (`id_Plano`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_compras`
--

LOCK TABLES `historico_compras` WRITE;
/*!40000 ALTER TABLE `historico_compras` DISABLE KEYS */;
/*!40000 ALTER TABLE `historico_compras` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-17 21:14:06
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: bici
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `area_estacao`
--

DROP TABLE IF EXISTS `area_estacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area_estacao` (
  `idarea_estacao` int NOT NULL,
  `poligono` varchar(45) NOT NULL,
  `estacao_idestacao` int NOT NULL,
  PRIMARY KEY (`idarea_estacao`,`estacao_idestacao`),
  KEY `fk_area_estacao_estacao1_idx` (`estacao_idestacao`),
  CONSTRAINT `fk_area_estacao_estacao1` FOREIGN KEY (`estacao_idestacao`) REFERENCES `estacao` (`idestacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area_estacao`
--

LOCK TABLES `area_estacao` WRITE;
/*!40000 ALTER TABLE `area_estacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `area_estacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avaliacao`
--

DROP TABLE IF EXISTS `avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avaliacao` (
  `id_Avalia` int NOT NULL,
  `Data_Hora_Avalia` datetime NOT NULL,
  `Nota` varchar(45) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `Comentario` varchar(100) CHARACTER SET armscii8 COLLATE armscii8_general_ci DEFAULT NULL,
  `cliente_pessoa_id_Pessoa` int NOT NULL,
  `viagem_id_Viagem` int NOT NULL,
  PRIMARY KEY (`id_Avalia`,`cliente_pessoa_id_Pessoa`,`viagem_id_Viagem`),
  KEY `fk_avaliacao_cliente1_idx` (`cliente_pessoa_id_Pessoa`),
  KEY `fk_avaliacao_viagem1_idx` (`viagem_id_Viagem`),
  CONSTRAINT `fk_avaliacao_cliente1` FOREIGN KEY (`cliente_pessoa_id_Pessoa`) REFERENCES `cliente` (`pessoa_id_Pessoa`),
  CONSTRAINT `fk_avaliacao_viagem1` FOREIGN KEY (`viagem_id_Viagem`) REFERENCES `viagem` (`id_Viagem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacao`
--

LOCK TABLES `avaliacao` WRITE;
/*!40000 ALTER TABLE `avaliacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bicicleta`
--

DROP TABLE IF EXISTS `bicicleta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bicicleta` (
  `id_Bicicleta` int NOT NULL,
  `N_Serie_Bicicleta` varchar(45) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `tipo_bicicleta` tinytext NOT NULL,
  PRIMARY KEY (`id_Bicicleta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bicicleta`
--

LOCK TABLES `bicicleta` WRITE;
/*!40000 ALTER TABLE `bicicleta` DISABLE KEYS */;
/*!40000 ALTER TABLE `bicicleta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_Cliente` int NOT NULL,
  `pessoa_id_Pessoa` int NOT NULL,
  `plano_id_Plano` int NOT NULL,
  PRIMARY KEY (`id_Cliente`,`pessoa_id_Pessoa`),
  KEY `fk_cliente_pessoa_idx` (`pessoa_id_Pessoa`),
  KEY `fk_cliente_plano1_idx` (`plano_id_Plano`),
  CONSTRAINT `fk_cliente_pessoa` FOREIGN KEY (`pessoa_id_Pessoa`) REFERENCES `pessoa` (`id_Pessoa`),
  CONSTRAINT `fk_cliente_plano1` FOREIGN KEY (`plano_id_Plano`) REFERENCES `plano` (`id_Plano`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estacao`
--

DROP TABLE IF EXISTS `estacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estacao` (
  `idestacao` int NOT NULL,
  `Nome` varchar(45) NOT NULL,
  `Latitude` decimal(45,0) NOT NULL,
  `Longitude` decimal(45,0) NOT NULL,
  `Vagas` int NOT NULL,
  PRIMARY KEY (`idestacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estacao`
--

LOCK TABLES `estacao` WRITE;
/*!40000 ALTER TABLE `estacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `estacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `id_Funcionario` int NOT NULL,
  `Funcao` varchar(45) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `pessoa_id_Pessoa` int NOT NULL,
  PRIMARY KEY (`id_Funcionario`,`pessoa_id_Pessoa`),
  KEY `fk_funcionario_pessoa1_idx` (`pessoa_id_Pessoa`),
  CONSTRAINT `fk_funcionario_pessoa1` FOREIGN KEY (`pessoa_id_Pessoa`) REFERENCES `pessoa` (`id_Pessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manutencao`
--

DROP TABLE IF EXISTS `manutencao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manutencao` (
  `id_Manu` int NOT NULL,
  `Data_Hora_Entrada` datetime NOT NULL,
  `Data_Hora_Saida` datetime NOT NULL,
  `bicicleta_id_Bicicleta` int NOT NULL,
  `estacao_idestacao` int NOT NULL,
  PRIMARY KEY (`id_Manu`),
  KEY `fk_manutencao_bicicleta1_idx` (`bicicleta_id_Bicicleta`),
  KEY `fk_manutencao_estacao1_idx` (`estacao_idestacao`),
  CONSTRAINT `fk_manutencao_bicicleta1` FOREIGN KEY (`bicicleta_id_Bicicleta`) REFERENCES `bicicleta` (`id_Bicicleta`),
  CONSTRAINT `fk_manutencao_estacao1` FOREIGN KEY (`estacao_idestacao`) REFERENCES `estacao` (`idestacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manutencao`
--

LOCK TABLES `manutencao` WRITE;
/*!40000 ALTER TABLE `manutencao` DISABLE KEYS */;
/*!40000 ALTER TABLE `manutencao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manutencao_has_funcionario`
--

DROP TABLE IF EXISTS `manutencao_has_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manutencao_has_funcionario` (
  `manutencao_id_Manu` int NOT NULL,
  `funcionario_pessoa_id_Pessoa` int NOT NULL,
  PRIMARY KEY (`manutencao_id_Manu`,`funcionario_pessoa_id_Pessoa`),
  KEY `fk_manutencao_has_funcionario_funcionario1_idx` (`funcionario_pessoa_id_Pessoa`),
  KEY `fk_manutencao_has_funcionario_manutencao1_idx` (`manutencao_id_Manu`),
  CONSTRAINT `fk_manutencao_has_funcionario_funcionario1` FOREIGN KEY (`funcionario_pessoa_id_Pessoa`) REFERENCES `funcionario` (`pessoa_id_Pessoa`),
  CONSTRAINT `fk_manutencao_has_funcionario_manutencao1` FOREIGN KEY (`manutencao_id_Manu`) REFERENCES `manutencao` (`id_Manu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manutencao_has_funcionario`
--

LOCK TABLES `manutencao_has_funcionario` WRITE;
/*!40000 ALTER TABLE `manutencao_has_funcionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `manutencao_has_funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `id_Pessoa` int NOT NULL,
  `Nome` varchar(100) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `CPF` varchar(45) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `Celular` varchar(45) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `E-mail` varchar(100) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `data_nascimento` date NOT NULL,
  PRIMARY KEY (`id_Pessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plano`
--

DROP TABLE IF EXISTS `plano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plano` (
  `id_Plano` int NOT NULL,
  `Nome` varchar(45) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `Valor` decimal(45,0) NOT NULL,
  `Contrato` varchar(100) NOT NULL,
  `Duração` varchar(100) NOT NULL,
  PRIMARY KEY (`id_Plano`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plano`
--

LOCK TABLES `plano` WRITE;
/*!40000 ALTER TABLE `plano` DISABLE KEYS */;
/*!40000 ALTER TABLE `plano` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viagem`
--

DROP TABLE IF EXISTS `viagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viagem` (
  `id_Viagem` int NOT NULL,
  `Momento_Final` datetime NOT NULL,
  `Momento_Inicial` datetime NOT NULL,
  `cliente_pessoa_id_Pessoa` int NOT NULL,
  `bicicleta_id_Bicicleta` int NOT NULL,
  `estacao_idestacao` int NOT NULL,
  `estacao_idestacao1` int NOT NULL,
  PRIMARY KEY (`id_Viagem`),
  KEY `fk_viagem_cliente1_idx` (`cliente_pessoa_id_Pessoa`),
  KEY `fk_viagem_bicicleta1_idx` (`bicicleta_id_Bicicleta`),
  KEY `fk_viagem_estacao1_idx` (`estacao_idestacao`),
  KEY `fk_viagem_estacao2_idx` (`estacao_idestacao1`),
  CONSTRAINT `fk_viagem_bicicleta1` FOREIGN KEY (`bicicleta_id_Bicicleta`) REFERENCES `bicicleta` (`id_Bicicleta`),
  CONSTRAINT `fk_viagem_cliente1` FOREIGN KEY (`cliente_pessoa_id_Pessoa`) REFERENCES `cliente` (`pessoa_id_Pessoa`),
  CONSTRAINT `fk_viagem_estacao1` FOREIGN KEY (`estacao_idestacao`) REFERENCES `estacao` (`idestacao`),
  CONSTRAINT `fk_viagem_estacao2` FOREIGN KEY (`estacao_idestacao1`) REFERENCES `estacao` (`idestacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viagem`
--

LOCK TABLES `viagem` WRITE;
/*!40000 ALTER TABLE `viagem` DISABLE KEYS */;
/*!40000 ALTER TABLE `viagem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-17 21:14:07
