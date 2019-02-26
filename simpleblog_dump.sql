-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 15 Février 2019 à 13:55
-- Version du serveur :  10.1.8-MariaDB
-- Version de PHP :  5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `simpleblog`
--
CREATE DATABASE IF NOT EXISTS `simpleblog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `simpleblog`;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`) VALUES
(1, 'article 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed congue justo. Aliquam ac risus vel leo accumsan commodo vitae eget arcu. Cras sapien mauris, feugiat eget velit vel, tincidunt hendrerit ante. Suspendisse pulvinar, neque quis eleifend eleifend, enim metus faucibus lectus, eu fringilla velit arcu ac ipsum. Curabitur malesuada risus ac euismod pulvinar. Maecenas eu efficitur magna. Proin bibendum ut ex quis placerat. In tincidunt interdum purus eget tincidunt. Integer bibendum semper diam, eget porta erat tincidunt sit amet. Sed rhoncus, risus non bibendum porta, massa tortor sollicitudin dolor, eu auctor felis dui ac nunc. Morbi at porta mauris, et elementum ex.', '2019-02-15'),
(2, 'article 2', 'Etiam id placerat odio. Nunc eget accumsan nibh, eu ornare metus. Proin a orci non turpis pellentesque vestibulum. Donec vel molestie augue, et eleifend nunc. Nam quis porttitor urna. Pellentesque sed nibh arcu. Proin in viverra nibh. Integer porta vitae nulla et volutpat. Ut a justo et diam rutrum aliquet. Etiam venenatis commodo quam, a volutpat purus elementum a. Aliquam lacinia arcu eu lorem cursus volutpat.', '2019-02-13');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
