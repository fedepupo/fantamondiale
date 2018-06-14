-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Giu 14, 2018 alle 13:45
-- Versione del server: 5.7.14
-- Versione PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fantamondiale`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `giocatori`
--

CREATE TABLE `giocatori` (
  `ID` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `partite`
--

CREATE TABLE `partite` (
  `ID` int(11) NOT NULL,
  `squadra_1` int(11) NOT NULL,
  `squadra_2` int(11) NOT NULL,
  `tipo` int(11) NOT NULL COMMENT '1=gironi, 2=ottavi, 3=quarti, 4=semifinali, 5=finale',
  `goal_1` int(11) NOT NULL,
  `goal_2` int(11) NOT NULL,
  `datetime` varchar(14) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `partite`
--

INSERT INTO `partite` (`ID`, `squadra_1`, `squadra_2`, `tipo`, `goal_1`, `goal_2`, `datetime`, `location`) VALUES
(1, 1, 2, 0, 0, 0, '20180614170000', 'Luzhniki Stadium'),
(2, 3, 4, 0, 0, 0, '20180615160000', 'Ekaterinburg Arena'),
(3, 5, 6, 0, 0, 0, '20180615170000', 'Saint Petersburg Stadium'),
(4, 7, 8, 0, 0, 0, '20180615200000', 'Fisht Stadium'),
(5, 9, 10, 0, 0, 0, '20180616120000', 'Kazan Arena'),
(6, 11, 12, 0, 0, 0, '20180616150000', 'Spartak Stadium'),
(7, 13, 14, 0, 0, 0, '20180616180000', 'Mordovia Arena'),
(8, 15, 16, 0, 0, 0, '20180616200000', 'Kaliningrad Stadium'),
(9, 17, 18, 0, 0, 0, '20180617150000', 'Samara Arena'),
(10, 19, 20, 0, 0, 0, '20180617170000', 'Luzhniki Stadium'),
(11, 21, 22, 0, 0, 0, '20180617200000', 'Rostov Arena'),
(12, 23, 24, 0, 0, 0, '20180618140000', 'Nizhny Novgorod Stadium'),
(13, 25, 26, 0, 0, 0, '20180618170000', 'Fisht Stadium'),
(14, 27, 28, 0, 0, 0, '20180618200000', 'Volgograd Arena'),
(15, 29, 30, 0, 0, 0, '20180619140000', 'Mordovia Arena'),
(16, 31, -1, 0, 0, 0, '20180619170000', 'Spartak Stadium'),
(17, 1, 3, 0, 0, 0, '20180619200000', 'Saint Petersburg Stadium'),
(18, 7, 5, 0, 0, 0, '20180620140000', 'Luzhniki Stadium'),
(19, 4, 2, 0, 0, 0, '20180620170000', 'Rostov Arena'),
(20, 6, 8, 0, 0, 0, '20180620200000', 'Kazan Arena'),
(21, 14, 10, 0, 0, 0, '20180621150000', 'Samara Arena'),
(22, 9, 13, 0, 0, 0, '20180621190000', 'Ekaterinburg Arena'),
(23, 11, 15, 0, 0, 0, '20180621200000', 'Nizhny Novgorod Stadium'),
(24, 21, 17, 0, 0, 0, '20180622140000', 'Saint Petersburg Stadium'),
(25, 16, 12, 0, 0, 0, '20180622170000', 'Volgograd Arena'),
(26, 18, 22, 0, 0, 0, '20180622190000', 'Kaliningrad Stadium'),
(27, 25, 27, 0, 0, 0, '20180623140000', 'Spartak Stadium'),
(28, 24, 20, 0, 0, 0, '20180623170000', 'Rostov Arena'),
(29, 19, 23, 0, 0, 0, '20180623200000', 'Fisht Stadium'),
(30, 28, 26, 0, 0, 0, '20180624140000', 'Nizhny Novgorod Stadium'),
(31, 30, -1, 0, 0, 0, '20180624190000', 'Ekaterinburg Arena'),
(32, 31, 29, 0, 0, 0, '20180624200000', 'Kazan Arena'),
(33, 4, 1, 0, 0, 0, '20180625170000', 'Samara Arena'),
(34, 2, 3, 0, 0, 0, '20180625160000', 'Volgograd Arena'),
(35, 8, 5, 0, 0, 0, '20180625190000', 'Kaliningrad Stadium'),
(36, 6, 7, 0, 0, 0, '20180625200000', 'Mordovia Arena'),
(37, 10, 13, 0, 0, 0, '20180626160000', 'Fisht Stadium'),
(38, 14, 9, 0, 0, 0, '20180626160000', 'Luzhniki Stadium'),
(39, 16, 11, 0, 0, 0, '20180626200000', 'Saint Petersburg Stadium'),
(40, 12, 15, 0, 0, 0, '20180626200000', 'Rostov Arena'),
(41, 24, 19, 0, 0, 0, '20180627160000', 'Kazan Arena'),
(42, 20, 23, 0, 0, 0, '20180627180000', 'Ekaterinburg Arena'),
(43, 18, 21, 0, 0, 0, '20180627200000', 'Spartak Stadium'),
(44, 22, 17, 0, 0, 0, '20180627200000', 'Nizhny Novgorod Stadium'),
(45, 30, 31, 0, 0, 0, '20180628160000', 'Volgograd Arena'),
(46, -1, 29, 0, 0, 0, '20180628170000', 'Samara Arena'),
(47, 26, 27, 0, 0, 0, '20180628200000', 'Mordovia Arena'),
(48, 28, 25, 0, 0, 0, '20180628190000', 'Kaliningrad Stadium'),
(49, -1, -1, 0, 0, 0, '20180630160000', 'Kazan Arena'),
(50, -1, -1, 0, 0, 0, '20180630200000', 'Fisht Stadium'),
(51, -1, -1, 0, 0, 0, '20180701160000', 'Luzhniki Stadium'),
(52, -1, -1, 0, 0, 0, '20180701200000', 'Nizhny Novgorod Stadium'),
(53, -1, -1, 0, 0, 0, '20180702170000', 'Samara Arena'),
(54, -1, -1, 0, 0, 0, '20180702200000', 'Rostov Arena'),
(55, -1, -1, 0, 0, 0, '20180703160000', 'Saint Petersburg Stadium'),
(56, -1, -1, 0, 0, 0, '20180703200000', 'Spartak Stadium'),
(57, -1, -1, 0, 0, 0, '20180706160000', 'Nizhny Novgorod Stadium'),
(58, -1, -1, 0, 0, 0, '20180706200000', 'Kazan Arena'),
(59, -1, -1, 0, 0, 0, '20180707170000', 'Samara Arena'),
(60, -1, -1, 0, 0, 0, '20180707200000', 'Fisht Stadium'),
(61, -1, -1, 0, 0, 0, '20180710200000', 'Saint Petersburg Stadium'),
(62, -1, -1, 0, 0, 0, '20180711200000', 'Luzhniki Stadium'),
(63, -1, -1, 0, 0, 0, '20180714160000', 'Saint Petersburg Stadium'),
(64, -1, -1, 0, 0, 0, '20180715170000', 'Luzhniki Stadium'),
(65, 1, 2, 0, 0, 0, '20180614170000', 'Luzhniki Stadium'),
(66, 3, 4, 0, 0, 0, '20180615160000', 'Ekaterinburg Arena'),
(67, 5, 6, 0, 0, 0, '20180615170000', 'Saint Petersburg Stadium'),
(68, 7, 8, 0, 0, 0, '20180615200000', 'Fisht Stadium'),
(69, 9, 10, 0, 0, 0, '20180616120000', 'Kazan Arena'),
(70, 11, 12, 0, 0, 0, '20180616150000', 'Spartak Stadium'),
(71, 13, 14, 0, 0, 0, '20180616180000', 'Mordovia Arena'),
(72, 15, 16, 0, 0, 0, '20180616200000', 'Kaliningrad Stadium'),
(73, 17, 18, 0, 0, 0, '20180617150000', 'Samara Arena'),
(74, 19, 20, 0, 0, 0, '20180617170000', 'Luzhniki Stadium'),
(75, 21, 22, 0, 0, 0, '20180617200000', 'Rostov Arena'),
(76, 23, 24, 0, 0, 0, '20180618140000', 'Nizhny Novgorod Stadium'),
(77, 25, 26, 0, 0, 0, '20180618170000', 'Fisht Stadium'),
(78, 27, 28, 0, 0, 0, '20180618200000', 'Volgograd Arena'),
(79, 29, 30, 0, 0, 0, '20180619140000', 'Mordovia Arena'),
(80, 31, -1, 0, 0, 0, '20180619170000', 'Spartak Stadium'),
(81, 1, 3, 0, 0, 0, '20180619200000', 'Saint Petersburg Stadium'),
(82, 7, 5, 0, 0, 0, '20180620140000', 'Luzhniki Stadium'),
(83, 4, 2, 0, 0, 0, '20180620170000', 'Rostov Arena'),
(84, 6, 8, 0, 0, 0, '20180620200000', 'Kazan Arena'),
(85, 14, 10, 0, 0, 0, '20180621150000', 'Samara Arena'),
(86, 9, 13, 0, 0, 0, '20180621190000', 'Ekaterinburg Arena'),
(87, 11, 15, 0, 0, 0, '20180621200000', 'Nizhny Novgorod Stadium'),
(88, 21, 17, 0, 0, 0, '20180622140000', 'Saint Petersburg Stadium'),
(89, 16, 12, 0, 0, 0, '20180622170000', 'Volgograd Arena'),
(90, 18, 22, 0, 0, 0, '20180622190000', 'Kaliningrad Stadium'),
(91, 25, 27, 0, 0, 0, '20180623140000', 'Spartak Stadium'),
(92, 24, 20, 0, 0, 0, '20180623170000', 'Rostov Arena'),
(93, 19, 23, 0, 0, 0, '20180623200000', 'Fisht Stadium'),
(94, 28, 26, 0, 0, 0, '20180624140000', 'Nizhny Novgorod Stadium'),
(95, 30, -1, 0, 0, 0, '20180624190000', 'Ekaterinburg Arena'),
(96, 31, 29, 0, 0, 0, '20180624200000', 'Kazan Arena'),
(97, 4, 1, 0, 0, 0, '20180625170000', 'Samara Arena'),
(98, 2, 3, 0, 0, 0, '20180625160000', 'Volgograd Arena'),
(99, 8, 5, 0, 0, 0, '20180625190000', 'Kaliningrad Stadium'),
(100, 6, 7, 0, 0, 0, '20180625200000', 'Mordovia Arena'),
(101, 10, 13, 0, 0, 0, '20180626160000', 'Fisht Stadium'),
(102, 14, 9, 0, 0, 0, '20180626160000', 'Luzhniki Stadium'),
(103, 16, 11, 0, 0, 0, '20180626200000', 'Saint Petersburg Stadium'),
(104, 12, 15, 0, 0, 0, '20180626200000', 'Rostov Arena'),
(105, 24, 19, 0, 0, 0, '20180627160000', 'Kazan Arena'),
(106, 20, 23, 0, 0, 0, '20180627180000', 'Ekaterinburg Arena'),
(107, 18, 21, 0, 0, 0, '20180627200000', 'Spartak Stadium'),
(108, 22, 17, 0, 0, 0, '20180627200000', 'Nizhny Novgorod Stadium'),
(109, 30, 31, 0, 0, 0, '20180628160000', 'Volgograd Arena'),
(110, -1, 29, 0, 0, 0, '20180628170000', 'Samara Arena'),
(111, 26, 27, 0, 0, 0, '20180628200000', 'Mordovia Arena'),
(112, 28, 25, 0, 0, 0, '20180628190000', 'Kaliningrad Stadium'),
(113, -1, -1, 0, 0, 0, '20180630160000', 'Kazan Arena'),
(114, -1, -1, 0, 0, 0, '20180630200000', 'Fisht Stadium'),
(115, -1, -1, 0, 0, 0, '20180701160000', 'Luzhniki Stadium'),
(116, -1, -1, 0, 0, 0, '20180701200000', 'Nizhny Novgorod Stadium'),
(117, -1, -1, 0, 0, 0, '20180702170000', 'Samara Arena'),
(118, -1, -1, 0, 0, 0, '20180702200000', 'Rostov Arena'),
(119, -1, -1, 0, 0, 0, '20180703160000', 'Saint Petersburg Stadium'),
(120, -1, -1, 0, 0, 0, '20180703200000', 'Spartak Stadium'),
(121, -1, -1, 0, 0, 0, '20180706160000', 'Nizhny Novgorod Stadium'),
(122, -1, -1, 0, 0, 0, '20180706200000', 'Kazan Arena'),
(123, -1, -1, 0, 0, 0, '20180707170000', 'Samara Arena'),
(124, -1, -1, 0, 0, 0, '20180707200000', 'Fisht Stadium'),
(125, -1, -1, 0, 0, 0, '20180710200000', 'Saint Petersburg Stadium'),
(126, -1, -1, 0, 0, 0, '20180711200000', 'Luzhniki Stadium'),
(127, -1, -1, 0, 0, 0, '20180714160000', 'Saint Petersburg Stadium'),
(128, -1, -1, 0, 0, 0, '20180715170000', 'Luzhniki Stadium');

-- --------------------------------------------------------

--
-- Struttura della tabella `pronostici_capocannoniere`
--

CREATE TABLE `pronostici_capocannoniere` (
  `ID` int(11) NOT NULL,
  `giocatore` int(11) NOT NULL,
  `reti` int(11) NOT NULL,
  `utente` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `pronostici_classifiche`
--

CREATE TABLE `pronostici_classifiche` (
  `ID` int(11) NOT NULL,
  `squadra` int(11) NOT NULL,
  `posizione` int(11) NOT NULL,
  `utente` int(11) NOT NULL,
  `tipo` int(1) NOT NULL COMMENT '1=girone, 2=finale'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `pronostici_partite`
--

CREATE TABLE `pronostici_partite` (
  `ID` int(11) NOT NULL,
  `partita` int(11) NOT NULL,
  `u_o` varchar(1) NOT NULL,
  `1x2` varchar(1) NOT NULL,
  `goal_1` int(11) NOT NULL,
  `goal_2` int(11) NOT NULL,
  `utente` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `squadre`
--

CREATE TABLE `squadre` (
  `ID` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `sigla` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `squadre`
--

INSERT INTO `squadre` (`ID`, `nome`, `sigla`) VALUES
(1, 'Russia', 'RUS'),
(2, 'Saudi Arabia', 'KSA'),
(3, 'Egypt', 'EGY'),
(4, 'Uruguay', 'URU'),
(5, 'Morocco', 'MAR'),
(6, 'Iran', 'IRN'),
(7, 'Portugal', 'POR'),
(8, 'Spain', 'ESP'),
(9, 'France', 'FRA'),
(10, 'Australia', 'AUS'),
(11, 'Argentina', 'ARG'),
(12, 'Iceland', 'ISL'),
(13, 'Peru', 'PER'),
(14, 'Denmark', 'DEN'),
(15, 'Croatia', 'CRO'),
(16, 'Nigeria', 'NGA'),
(17, 'Costa Rica', 'CRC'),
(18, 'Serbia', 'SRB'),
(19, 'Germany', 'GER'),
(20, 'Mexico', 'MEX'),
(21, 'Brazil', 'BRA'),
(22, 'Switzerland', 'SUI'),
(23, 'Sweden', 'SWE'),
(24, 'Korea Republic', 'KOR'),
(25, 'Belgium', 'BEL'),
(26, 'Panama', 'PAN'),
(27, 'Tunisia', 'TUN'),
(28, 'England', 'ENG'),
(29, 'Columbia', 'COL'),
(30, 'Japan', 'JPN'),
(31, 'Poland', 'POL');

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `ID` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`ID`, `nome`) VALUES
(1, 'fedepupo');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `giocatori`
--
ALTER TABLE `giocatori`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `partite`
--
ALTER TABLE `partite`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `pronostici_capocannoniere`
--
ALTER TABLE `pronostici_capocannoniere`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `pronostici_classifiche`
--
ALTER TABLE `pronostici_classifiche`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `pronostici_partite`
--
ALTER TABLE `pronostici_partite`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `partita` (`partita`,`utente`),
  ADD KEY `utente` (`utente`),
  ADD KEY `partita_2` (`partita`);

--
-- Indici per le tabelle `squadre`
--
ALTER TABLE `squadre`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `giocatori`
--
ALTER TABLE `giocatori`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `partite`
--
ALTER TABLE `partite`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT per la tabella `pronostici_capocannoniere`
--
ALTER TABLE `pronostici_capocannoniere`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `pronostici_classifiche`
--
ALTER TABLE `pronostici_classifiche`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `pronostici_partite`
--
ALTER TABLE `pronostici_partite`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `squadre`
--
ALTER TABLE `squadre`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT per la tabella `utenti`
--
ALTER TABLE `utenti`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
