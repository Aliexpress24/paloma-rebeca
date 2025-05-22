-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Maio-2025 às 03:23
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `colecaomusicas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cds`
--

CREATE TABLE `cds` (
  `Codigo` int(11) NOT NULL,
  `Nome_cd` varchar(100) NOT NULL,
  `DataCompra` date DEFAULT NULL,
  `ValorPago` decimal(10,2) DEFAULT NULL,
  `LocalCompra` varchar(100) DEFAULT NULL,
  `Album` enum('Sim','Não') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `cds`
--

INSERT INTO `cds` (`Codigo`, `Nome_cd`, `DataCompra`, `ValorPago`, `LocalCompra`, `Album`) VALUES
(1, 'Reggae Vibes', '2025-05-20', '42.00', 'Amazon', 'Sim'),
(2, 'Clássicos da Bossa Nova', '2025-05-20', '38.00', 'Americanas', 'Sim'),
(3, 'Funk Brasil', '2025-05-20', '30.00', 'Submarino', 'Não'),
(4, 'Rock Nacional', '2025-05-20', '50.00', 'Mercado Livre', 'Sim'),
(5, 'Trap Internacional', '2025-05-20', '55.00', 'Amazon', 'Não');

-- --------------------------------------------------------

--
-- Estrutura da tabela `musicas`
--

CREATE TABLE `musicas` (
  `CodigoCD` int(11) NOT NULL,
  `Numero_musica` int(11) NOT NULL,
  `Nome_musica` varchar(100) NOT NULL,
  `Artista` varchar(100) DEFAULT NULL,
  `Tempo` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `musicas`
--

INSERT INTO `musicas` (`CodigoCD`, `Numero_musica`, `Nome_musica`, `Artista`, `Tempo`) VALUES
(1, 1, 'Three Little Birds', 'Bob Marley', '00:03:00'),
(1, 2, 'Kingston Town', 'UB40', '00:03:44'),
(1, 3, 'Sweat (A La La La La Long)', 'Inner Circle', '00:03:48'),
(2, 1, 'Garota de Ipanema', 'Tom Jobim', '00:02:45'),
(2, 2, 'Desafinado', 'João Gilberto', '00:03:10'),
(2, 3, 'Chega de Saudade', 'Nara Leão', '00:02:40'),
(3, 1, 'Baile de Favela', 'MC João', '00:03:30'),
(3, 2, 'Parado no Bailão', 'MC L da Vinte', '00:03:10'),
(3, 3, 'Amor de Verdade', 'MC Kekel', '00:03:25'),
(4, 1, 'Pro Dia Nascer Feliz', 'Cazuza', '00:04:05'),
(4, 2, 'Tempo Perdido', 'Legião Urbana', '00:04:30'),
(4, 3, 'Exagerado', 'Cazuza', '00:03:20'),
(5, 1, 'Life Goes On', 'Lil Baby', '00:03:28'),
(5, 2, 'The Box', 'Roddy Ricch', '00:03:16'),
(5, 3, 'Goosebumps', 'Travis Scott', '00:04:03');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cds`
--
ALTER TABLE `cds`
  ADD PRIMARY KEY (`Codigo`);

--
-- Índices para tabela `musicas`
--
ALTER TABLE `musicas`
  ADD PRIMARY KEY (`CodigoCD`,`Numero_musica`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cds`
--
ALTER TABLE `cds`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `musicas`
--
ALTER TABLE `musicas`
  ADD CONSTRAINT `musicas_ibfk_1` FOREIGN KEY (`CodigoCD`) REFERENCES `cds` (`Codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
