-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25/02/2025 às 20:29
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `emprestimo`
--

CREATE TABLE `emprestimo` (
  `ID_Emprestimo` int(11) NOT NULL,
  `ID_Livro` int(11) DEFAULT NULL,
  `ID_Pessoa` int(11) DEFAULT NULL,
  `Data_Emprestimo` date NOT NULL,
  `Data_Devolucao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `emprestimo`
--

INSERT INTO `emprestimo` (`ID_Emprestimo`, `ID_Livro`, `ID_Pessoa`, `Data_Emprestimo`, `Data_Devolucao`) VALUES
(1, 1, 1, '2023-10-01', '2023-10-15'),
(2, 2, 2, '2023-10-02', '2023-10-16'),
(3, 3, 3, '2023-10-03', '2023-10-17'),
(4, 4, 4, '2023-10-04', '2023-10-18'),
(5, 5, 5, '2023-10-05', '2023-10-19'),
(6, 6, 6, '2023-10-10', NULL),
(7, 7, 7, '2023-10-11', NULL),
(8, 8, 8, '2023-10-12', NULL),
(9, 9, 9, '2023-10-13', NULL),
(10, 10, 10, '2023-10-14', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `ID_Funcionario` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Cargo` varchar(50) NOT NULL,
  `Data_Admissao` date NOT NULL,
  `Telefone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionario`
--

INSERT INTO `funcionario` (`ID_Funcionario`, `Nome`, `Cargo`, `Data_Admissao`, `Telefone`) VALUES
(1, 'Ana Silva', 'Bibliotecária', '2020-01-15', '1234-5678'),
(2, 'João Santos', 'Assistente', '2021-03-10', '2345-6789'),
(3, 'Maria Oliveira', 'Gerente', '2019-05-20', '3456-7890'),
(4, 'Pedro Costa', 'Bibliotecário', '2022-07-25', '4567-8901'),
(5, 'Carla Lima', 'Assistente', '2023-02-01', '5678-9012');

-- --------------------------------------------------------

--
-- Estrutura para tabela `genero`
--

CREATE TABLE `genero` (
  `ID_Genero` int(11) NOT NULL,
  `Nome_Genero` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `genero`
--

INSERT INTO `genero` (`ID_Genero`, `Nome_Genero`) VALUES
(10, 'Autoajuda'),
(6, 'Aventura'),
(9, 'Ciência'),
(1, 'Fantasia'),
(2, 'Ficção'),
(8, 'História'),
(5, 'Mistério'),
(3, 'Não-ficção'),
(4, 'Romance'),
(7, 'Terror');

-- --------------------------------------------------------

--
-- Estrutura para tabela `livro`
--

CREATE TABLE `livro` (
  `ID_Livro` int(11) NOT NULL,
  `Titulo` varchar(200) NOT NULL,
  `Autor` varchar(100) NOT NULL,
  `ID_Genero` int(11) DEFAULT NULL,
  `Ano_Publicacao` year(4) NOT NULL,
  `ISBN` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `livro`
--

INSERT INTO `livro` (`ID_Livro`, `Titulo`, `Autor`, `ID_Genero`, `Ano_Publicacao`, `ISBN`) VALUES
(1, 'O Senhor dos Anéis', 'J.R.R. Tolkien', 1, '1954', '978-3-16-148410-0'),
(2, 'A Revolução dos Bichos', 'George Orwell', 2, '1945', '978-0-452-28423-4'),
(3, '1984', 'George Orwell', 2, '1949', '978-0-452-28423-5'),
(4, 'Dom Casmurro', 'Machado de Assis', 4, '0000', '978-85-359-0277-0'),
(5, 'O Código Da Vinci', 'Dan Brown', 3, '2003', '978-0-385-50420-8'),
(6, 'Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 1, '1997', '978-0-7475-3274-2'),
(7, 'O Iluminado', 'Stephen King', 7, '1977', '978-0-385-12167-5'),
(8, 'Sapiens: Uma Breve História da Humanidade', 'Yuval Noah Harari', 3, '2011', '978-85-502-0210-2'),
(9, 'O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 4, '1943', '978-85-359-0278-0'),
(10, 'Como Fazer Amigos e Influenciar Pessoas', 'Dale Carnegie', 10, '1936', '978-85-359-0279-0');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `ID_Pessoa` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Data_Nascimento` date NOT NULL,
  `Telefone` varchar(15) NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pessoa`
--

INSERT INTO `pessoa` (`ID_Pessoa`, `Nome`, `Data_Nascimento`, `Telefone`, `Email`) VALUES
(1, 'Lucas Almeida', '1990-05-15', '9876-5432', 'lucas.almeida@example.com'),
(2, 'Fernanda Souza', '1985-08-20', '8765-4321', 'fernanda.souza@example.com'),
(3, 'Carlos Silva', '1992-12-30', '7654-3210', 'carlos.silva@example.com'),
(4, 'Juliana Costa', '1988-03-25', '6543-2109', 'juliana.costa@example.com'),
(5, 'Roberto Lima', '1995-07-10', '5432-1098', 'roberto.lima@example.com'),
(6, 'Mariana Ferreira', '1993-04-12', '4321-8765', 'mariana.ferreira@example.com'),
(7, 'Thiago Martins', '1987-11-30', '3210-9876', 'thiago.martins@example.com'),
(8, 'Patrícia Gomes', '1990-01-15', '2109-8765', 'patricia.gomes@example.com'),
(9, 'Felipe Rocha', '1995-06-22', '1098-7654', 'felipe.rocha@example.com'),
(10, 'Renata Alves', '1982-09-05', '0987-6543', 'renata.alves@example.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD PRIMARY KEY (`ID_Emprestimo`),
  ADD KEY `ID_Livro` (`ID_Livro`),
  ADD KEY `ID_Pessoa` (`ID_Pessoa`);

--
-- Índices de tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`ID_Funcionario`);

--
-- Índices de tabela `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`ID_Genero`),
  ADD UNIQUE KEY `Nome_Genero` (`Nome_Genero`);

--
-- Índices de tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`ID_Livro`),
  ADD UNIQUE KEY `ISBN` (`ISBN`),
  ADD KEY `ID_Genero` (`ID_Genero`);

--
-- Índices de tabela `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`ID_Pessoa`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  MODIFY `ID_Emprestimo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `ID_Funcionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `genero`
--
ALTER TABLE `genero`
  MODIFY `ID_Genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `ID_Livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `ID_Pessoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD CONSTRAINT `emprestimo_ibfk_1` FOREIGN KEY (`ID_Livro`) REFERENCES `livro` (`ID_Livro`),
  ADD CONSTRAINT `emprestimo_ibfk_2` FOREIGN KEY (`ID_Pessoa`) REFERENCES `pessoa` (`ID_Pessoa`);

--
-- Restrições para tabelas `livro`
--
ALTER TABLE `livro`
  ADD CONSTRAINT `livro_ibfk_1` FOREIGN KEY (`ID_Genero`) REFERENCES `genero` (`ID_Genero`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
