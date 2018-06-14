-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Giu 14, 2018 alle 13:15
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
  `datetime` varchar(14) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `partite`
--

INSERT INTO `partite` (`ID`, `squadra_1`, `squadra_2`, `tipo`, `goal_1`, `goal_2`, `datetime`) VALUES
(1, 1, 2, 0, 0, 0, '20180614170000'),
(2, 3, 4, 0, 0, 0, '20180615160000'),
(3, 5, 6, 0, 0, 0, '20180615170000'),
(4, 7, 8, 0, 0, 0, '20180615200000'),
(5, 9, 10, 0, 0, 0, '20180616120000'),
(6, 11, 12, 0, 0, 0, '20180616150000'),
(7, 13, 14, 0, 0, 0, '20180616180000'),
(8, 15, 16, 0, 0, 0, '20180616200000'),
(9, 17, 18, 0, 0, 0, '20180617150000'),
(10, 19, 20, 0, 0, 0, '20180617170000'),
(11, 21, 22, 0, 0, 0, '20180617200000'),
(12, 23, 24, 0, 0, 0, '20180618140000'),
(13, 25, 26, 0, 0, 0, '20180618170000'),
(14, 27, 28, 0, 0, 0, '20180618200000'),
(15, 29, 30, 0, 0, 0, '20180619140000'),
(16, 31, 32, 0, 0, 0, '20180619170000'),
(17, 4, 1, 0, 0, 0, '20180625170000'),
(18, 2, 3, 0, 0, 0, '20180625160000'),
(19, 8, 5, 0, 0, 0, '20180625190000'),
(20, 6, 7, 0, 0, 0, '20180625200000'),
(21, 10, 13, 0, 0, 0, '20180626160000'),
(22, 14, 9, 0, 0, 0, '20180626160000'),
(23, 16, 11, 0, 0, 0, '20180626200000'),
(24, 12, 15, 0, 0, 0, '20180626200000'),
(25, 24, 19, 0, 0, 0, '20180627160000'),
(26, 20, 23, 0, 0, 0, '20180627180000'),
(27, 18, 21, 0, 0, 0, '20180627200000'),
(28, 22, 17, 0, 0, 0, '20180627200000'),
(29, 30, 31, 0, 0, 0, '20180628160000'),
(30, 32, 29, 0, 0, 0, '20180628170000'),
(31, 26, 27, 0, 0, 0, '20180628200000'),
(32, 28, 25, 0, 0, 0, '20180628190000');

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
(31, 'Poland', 'POL'),
(32, 'To Be Determined', 'TBD');

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT per la tabella `utenti`
--
ALTER TABLE `utenti`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
