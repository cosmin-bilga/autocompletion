-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : mar. 04 nov. 2025 à 08:28
-- Version du serveur : 11.5.2-MariaDB
-- Version de PHP : 8.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `autocompletion`
--

-- --------------------------------------------------------

--
-- Structure de la table `animaux`
--

DROP TABLE IF EXISTS `animaux`;
CREATE TABLE IF NOT EXISTS `animaux` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `image_url` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `animaux`
--

INSERT INTO `animaux` (`id`, `nom`, `description`, `image_url`) VALUES
(1, 'chat', 'Petit mammifère domestique agile et joueur.', 'https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg'),
(2, 'chien', 'Animal fidèle, souvent considéré comme le meilleur ami de l’homme.', 'https://images.pexels.com/photos/1805164/pexels-photo-1805164.jpeg'),
(3, 'lapin', 'Petit herbivore aux longues oreilles.', 'https://images.pexels.com/photos/326012/pexels-photo-326012.jpeg'),
(4, 'tigre', 'Grand félin carnivore à rayures, symbole de puissance.', 'https://images.pexels.com/photos/792381/pexels-photo-792381.jpeg'),
(5, 'lion', 'Roi de la savane, connu pour sa crinière et sa force.', 'https://images.pexels.com/photos/33045/lion-wild-africa-african.jpg'),
(6, 'elephant', 'Le plus grand mammifère terrestre, doté d’une trompe.', 'https://images.pexels.com/photos/1054655/pexels-photo-1054655.jpeg'),
(7, 'girafe', 'Animal au long cou, mangeant les feuilles des arbres.', 'https://images.pexels.com/photos/1319515/pexels-photo-1319515.jpeg'),
(8, 'zebre', 'Mammifère africain reconnaissable à ses rayures noires et blanches.', 'https://images.pexels.com/photos/247376/pexels-photo-247376.jpeg'),
(9, 'singe', 'Animal intelligent et agile, proche de l’humain.', 'https://images.pexels.com/photos/355669/pexels-photo-355669.jpeg'),
(10, 'ours', 'Grand mammifère omnivore vivant dans les forêts ou montagnes.', 'https://images.pexels.com/photos/1068554/pexels-photo-1068554.jpeg'),
(11, 'renard', 'Petit carnivore rusé à la fourrure rousse.', 'https://images.pexels.com/photos/134058/pexels-photo-134058.jpeg'),
(12, 'loup', 'Canidé sauvage vivant en meute.', 'https://images.pexels.com/photos/682375/pexels-photo-682375.jpeg'),
(13, 'dauphin', 'Mammifère marin sociable et très intelligent.', 'https://images.pexels.com/photos/1986374/pexels-photo-1986374.jpeg'),
(14, 'baleine', 'Le plus grand animal vivant dans les océans.', 'https://images.pexels.com/photos/51964/humpback-whale-natural-spectacle-nature-mammal-51964.jpeg'),
(15, 'pingouin', 'Oiseau marin incapable de voler, excellent nageur.', 'https://images.pexels.com/photos/86405/penguin-funny-blue-water-86405.jpeg'),
(16, 'aigle', 'Rapace majestueux symbole de liberté.', 'https://images.pexels.com/photos/3250638/pexels-photo-3250638.jpeg'),
(17, 'serpent', 'Reptile sans pattes, souvent redouté.', 'https://images.pexels.com/photos/45246/green-tree-python-python-tree-python-green-45246.jpeg'),
(18, 'crocodile', 'Reptile semi-aquatique puissant à la mâchoire redoutable.', 'https://images.pexels.com/photos/60644/nile-crocodile-crocodylus-niloticus-zoo-60644.jpeg'),
(19, 'tortue', 'Reptile à carapace, lent et paisible.', 'https://images.pexels.com/photos/1618606/pexels-photo-1618606.jpeg'),
(20, 'grenouille', 'Amphibien sautant et coassant près des mares.', 'https://images.pexels.com/photos/35669/hyla-meridionalis-the-frog-amphibians.jpg'),
(21, 'cheval', 'Mammifère domestiqué utilisé pour le transport et l’équitation.', 'https://images.pexels.com/photos/1996333/pexels-photo-1996333.jpeg'),
(22, 'vache', 'Animal d’élevage produisant du lait.', 'https://images.pexels.com/photos/457447/pexels-photo-457447.jpeg'),
(23, 'mouton', 'Mammifère à laine, souvent élevé pour sa viande et son lait.', 'https://images.pexels.com/photos/436793/pexels-photo-436793.jpeg'),
(24, 'chevre', 'Animal domestique agile, produisant lait et fromage.', 'https://images.pexels.com/photos/34526668/pexels-photo-34526668.jpeg'),
(25, 'poule', 'Oiseau domestique produisant des œufs.', 'https://images.pexels.com/photos/195226/pexels-photo-195226.jpeg'),
(26, 'canard', 'Oiseau aquatique au bec plat et à la démarche amusante.', 'https://images.pexels.com/photos/322438/pexels-photo-322438.jpeg'),
(27, 'cochon', 'Animal d’élevage intelligent et curieux.', 'https://images.pexels.com/photos/63285/pig-alp-rona-furna-sow-63285.jpeg'),
(28, 'souris', 'Petit rongeur rapide et discret.', 'https://images.pexels.com/photos/51340/rat-pets-eat-51340.jpeg'),
(29, 'panda', 'Ours noir et blanc originaire de Chine, mangeur de bambou.', 'https://images.pexels.com/photos/1123765/pexels-photo-1123765.jpeg'),
(30, 'koala', 'Marsupial australien qui dort jusqu’à 20 heures par jour.', 'https://images.pexels.com/photos/162339/koala-cute-tree-zoo-162339.jpeg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
