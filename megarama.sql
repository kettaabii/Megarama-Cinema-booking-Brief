-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 27 avr. 2024 à 21:22
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `megarama`
--

-- --------------------------------------------------------

--
-- Structure de la table `movies`
--

CREATE TABLE `movies` (
  `filmId` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` text DEFAULT NULL,
  `releaseDate` date DEFAULT NULL,
  `Duration` int(11) DEFAULT NULL,
  `Genre` varchar(50) DEFAULT NULL,
  `Director` varchar(100) DEFAULT NULL,
  `Cover` varchar(255) DEFAULT NULL,
  `MegaCover` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `movies`
--

INSERT INTO `movies` (`filmId`, `Title`, `Description`, `releaseDate`, `Duration`, `Genre`, `Director`, `Cover`, `MegaCover`) VALUES
(6, 'Puppy Love', 'Après un premier rendez-vous catastrophique, Nicole, une rebelle dans l’âme, et Max, un introverti anxieux, jurent de perdre leurs numéros de téléphone respectifs. Ça, c’est jusqu’à ce qu’ils apprennent que ', '2023-08-17', 142, 'Romance', '\nNicholas Fabiano', 'https://media.themoviedb.org/t/p/w300_and_h450_bestv2/oTc03izWZ9UdD3y0HegVV2M0s0J.jpg', 'https://media.themoviedb.org/t/p/w300_and_h450_bestv2/oTc03izWZ9UdD3y0HegVV2M0s0J.jpg'),
(11, 'The Killer', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', '2022-07-13', 142, 'Crime', 'Choi Jae-hoon', 'https://media.themoviedb.org/t/p/w300_and_h450_bestv2/5IQqdtTq1wH5YJynx86Ysi4sDVt.jpg', 'https://media.themoviedb.org/t/p/w533_and_h300_bestv2/cBKEtKtTwXtRNbVQS1nxuO8ToJw.jpg'),
(15, 'Bleach', 'Adolescent de quinze ans, Ichigo Kurosaki possède un don particulier : celui de voir les esprits. Un jour, il croise la route d\'une belle Shinigami (un être spirituel) en train de pourchasser une \"âme perdue\", un esprit maléfique qui hante notre monde et n\'arrive pas à trouver ', '2024-03-29', 142, 'Animation', 'Masakazu Morita', 'https://media.themoviedb.org/t/p/w300_and_h450_bestv2/2EewmxXe72ogD0EaWM8gqa0ccIw.jpg', 'https://media.themoviedb.org/t/p/w300_and_h450_bestv2/2EewmxXe72ogD0EaWM8gqa0ccIw.jpg'),
(2, ' Dune: Part Two', 'Paul Atreides unites with Chani and the Fremen while seeking revenge against the conspirators who destroyed his family.', '2024-04-26', 155, 'Adventure', 'Denis Villeneuve', 'https://deadline.com/wp-content/uploads/2024/02/Dune-Part-Two-Dolby-Poster.jpg', 'https://wallpapercave.com/wp/wp9741240.jpg'),
(3, 'Joker: Folie à Deux', 'Suite du film \"Joker\" de 2019.', '2024-04-26', 180, 'Drama', ' Todd Phillips', 'https://cdn.kinocheck.com/i/n3c48ddut6.jpg', 'https://imgsrc.cineserie.com/2023/12/joker-joaquin-phoenix-joker.jpeg?ver=1');

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

CREATE TABLE `reservations` (
  `reservationId` int(11) NOT NULL,
  `viewer` varchar(100) NOT NULL,
  `filmTitle` varchar(100) DEFAULT NULL,
  `reservationDate` datetime DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `seat` int(11) DEFAULT NULL,
  `userName` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`reservationId`, `viewer`, `filmTitle`, `reservationDate`, `price`, `seat`, `userName`) VALUES
(1, '145', 'HAJAR', '2024-04-25 17:45:38', 145, 1, 'user');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `privilege` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`userId`, `userName`, `password`, `privilege`, `email`) VALUES
(1, 'admin', 'admin123', 'admin', 'admin123@gmail.com'),
(2, 'user', 'user123', 'user', 'user123@gmail.com');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`filmId`);

--
-- Index pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservationId`),
  ADD KEY `filmTitle` (`filmTitle`),
  ADD KEY `userName` (`userName`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `movies`
--
ALTER TABLE `movies`
  MODIFY `filmId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
