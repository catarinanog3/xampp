-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Jul-2023 às 17:59
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `aquarela`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aniversarios`
--

CREATE TABLE `aniversarios` (
  `id` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `horario` varchar(100) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `sexo` varchar(100) NOT NULL,
  `morada` varchar(100) NOT NULL,
  `num_telefone` int(15) NOT NULL,
  `participantes` int(15) NOT NULL,
  `nome_aniversariante` varchar(100) NOT NULL,
  `idade_aniversariante` int(15) NOT NULL,
  `atividade` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `aniversarios`
--

INSERT INTO `aniversarios` (`id`, `email`, `horario`, `nome`, `sexo`, `morada`, `num_telefone`, `participantes`, `nome_aniversariante`, `idade_aniversariante`, `atividade`) VALUES
(2, 'catarina@gmail.com', 'Manha', 'Catarina', 'masculino', 'Coimbra', 12321123, 4, 'Catarina', 3, 'O ciclo do azeite'),
(3, 'goncalo@gmail.com', 'Manha', 'Gonçalo', 'masculino', 'Coimbra', 213123, 10, 'Catarina', 2, 'O ciclo do mel'),
(4, 'catarina@gmail.com', 'Manha', 'Catarina', 'feminino', 'Coimbra', 213123, 5, 'Gonçalo', 4, 'O ciclo do leite');

-- --------------------------------------------------------

--
-- Estrutura da tabela `atividades`
--

CREATE TABLE `atividades` (
  `id` int(10) NOT NULL,
  `titulo` text NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `atividades`
--

INSERT INTO `atividades` (`id`, `titulo`, `descricao`) VALUES
(2, 'O PÃO NA ALDEIA\r\n', 'Durante a atividade \"O Pão na Aldeia\" descobrimos os diferentes ingredientes necessários à receita de pão e utilizámos um forno a lenha na aldeia. Conhecemos também os diferentes espaços e utensílios tradicionais utilizados nesta prática.\r\n'),
(3, 'O CICLO DO MEL\r\n', 'Vamos conhecer o ciclo do mel, o trabalho do apicultor e descobrir a importância da abelha enquanto inseto polinizador.\r\n'),
(4, 'A RIBEIRA E O TREMOÇO\r\n', 'Durante esta atividade, vamos conhecer a ribeira de Vilar e descobrir a sua importância para a população da aldeia e para a biodiversidade local. Vamos conhecer o ciclo do tremoço e prepará-lo na água corrente da ribeira.\r\n'),
(5, 'O CICLO DO LEITE\r\n', 'Durante esta atividade, a criança terá a oportunidade de contactar com os animais da aldeia, descobrir os utensílios utilizados na confecção tradicional e manual de queijo e preparar um queijo que poderá levar para casa.\r\n'),
(6, 'O PAPEL\r\n', 'Durante esta atividade, conhecemos a origem do papel bem como os diferentes materiais e técnicas usados na sua transformação. Criámos o nosso próprio papel, numa perspectiva de sensibilização para a reutilização de materiais e para a utilização de materiais naturais no decorrer desta experiência.\r\n'),
(7, 'OS LAVADOUROS\r\n', 'Durante esta atividade, a criança ficará a conhecer os utensílios antigos relacionados com a prática de lavar roupa à mão, bem como todos os detalhes desta tradição. Terá também a oportunidade de percorrer trajada as ruas da aldeia até aos lavadouros comunitários onde poderá participar na divertida tarefa de lavar uma peça de roupa.\r\n'),
(8, 'A DESFOLHADA\r\n', 'Durante esta atividade, a criança participará numa das principais colheitas do ano, a apanha do milho e ficará a conhecer todas as etapas do ciclo deste cereal até à sua transformação em farinha. Terá também a oportunidade de construir uma boneca com capas de milho.\r\n'),
(9, 'A VINDIMA\r\n', 'Durante esta atividade, a criança participará na vindima e ficará a conhecer os espaços característicos da aldeia, utensílios antigos, bem como todos os detalhes desta tradição. A criança terá também a oportunidade de provar os diferentes derivados deste fruto.\r\n'),
(10, 'A CASTANHA\r\n', 'Depois da colheita da castanha, vamos preparar e provar este fruto de Outono, revivendo a tradição local.\r\n'),
(11, 'O CICLO DO AZEITE\r\n', 'Durante esta atividade, vamos participar na colheita da azeitona e descobrir o processo da sua transformação em azeite.\r\n'),
(14, 'OFICINA DO BRINQUEDO', 'Durante esta atividade, conhecemos alguns exemplos de brinquedos tradicionais explorando os materiais e a forma como são construídos. No decorrer deste ateliê, construímos brinquedos tradicionais partindo de materiais naturais recolhidos da Natureza e participamos na realização de alguns jogos tradicionais.\r\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `formularios`
--

CREATE TABLE `formularios` (
  `id` int(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `horario` varchar(100) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `sexo` varchar(100) NOT NULL,
  `morada` varchar(100) NOT NULL,
  `num_telefone` int(15) NOT NULL,
  `acompanhantes` int(15) NOT NULL,
  `nome_crianca` varchar(100) NOT NULL,
  `idade_crianca` int(15) NOT NULL,
  `cuid_medicos` varchar(100) NOT NULL,
  `nif` int(15) NOT NULL,
  `atividade` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `formularios`
--

INSERT INTO `formularios` (`id`, `email`, `horario`, `nome`, `sexo`, `morada`, `num_telefone`, `acompanhantes`, `nome_crianca`, `idade_crianca`, `cuid_medicos`, `nif`, `atividade`) VALUES
(8, 'catarina@gmail.com', 'Manha', 'Catarina', 'feminino', 'Coimbra', 9100000, 0, 'Exemplo 1', 1, 'Exemplo 1', 2131435, ''),
(9, 'goncalo@gmail.com', 'Tarde', 'Gonçalo', 'masculino', 'Coimbra', 9100000, 2, 'Exemplo 2', 10, 'Nenhum', 1231245, ''),
(10, 'goncalo@gmail.com', 'Manha', 'Gonçalo', 'masculino', 'Coimbra', 12321123, 3, 'Exemplo 3', 2, 'Exemplo 3', 1243215, ''),
(44, 'catarina@gmail.com', 'Manha', 'Catarina', 'masculino', 'Coimbra', 9100000, 2, 'Exemplo 1', 2, '2', 1231245, 'O Papel');

-- --------------------------------------------------------

--
-- Estrutura da tabela `utilizadores`
--

CREATE TABLE `utilizadores` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `utilizadores`
--

INSERT INTO `utilizadores` (`id`, `email`, `password`) VALUES
(1, 'catarina@gmail.com', '1234'),
(2, 'goncalo@gmail.com', '1234');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aniversarios`
--
ALTER TABLE `aniversarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `atividades`
--
ALTER TABLE `atividades`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `formularios`
--
ALTER TABLE `formularios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `utilizadores`
--
ALTER TABLE `utilizadores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aniversarios`
--
ALTER TABLE `aniversarios`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `atividades`
--
ALTER TABLE `atividades`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `formularios`
--
ALTER TABLE `formularios`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de tabela `utilizadores`
--
ALTER TABLE `utilizadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
