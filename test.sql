-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- Client :  localhost
-- Généré le :  Sam 25 Août 2018 à 15:39
-- Version du serveur :  10.0.34-MariaDB
-- Version de PHP :  5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `minichat`
--

CREATE TABLE `minichat` (
  `ID` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date_message` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `minichat`
--

INSERT INTO `minichat` (`ID`, `pseudo`, `message`, `date_message`) VALUES
(1, 'Ric', 'coucou', '0000-00-00 00:00:00'),
(2, 'Jul', 'salut', '0000-00-00 00:00:00'),
(3, 'Manue', 'test lecture', '0000-00-00 00:00:00'),
(4, 'Toto', 'Moi c est toto', '2018-08-23 12:03:00'),
(5, 'Titi', 'Et moi Titi', '0000-00-00 00:00:00'),
(6, 'Mon_pseudo', '', '0000-00-00 00:00:00'),
(7, 'Mon_pseudo', '', '0000-00-00 00:00:00'),
(8, 'Mon_pseudo', '', '0000-00-00 00:00:00'),
(9, 'Mon_pseudo', '', '0000-00-00 00:00:00'),
(10, 'Mon_pseudo', '', '0000-00-00 00:00:00'),
(11, 'Mon_pseudo', 'test ok', '0000-00-00 00:00:00'),
(12, 'Ric', 'Dans la place', '0000-00-00 00:00:00'),
(13, '', '', '0000-00-00 00:00:00'),
(14, 'Ric', 'test date', '2018-08-25 11:51:50');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `minichat`
--
ALTER TABLE `minichat`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `minichat`
--
ALTER TABLE `minichat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
