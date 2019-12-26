-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 24, 2019 at 03:55 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vivify_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `Id` int(11) NOT NULL,
  `Author` varchar(20) COLLATE utf8_bin NOT NULL,
  `Text` text COLLATE utf8_bin NOT NULL,
  `Post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`Id`, `Author`, `Text`, `Post_id`) VALUES
(1, 'Thanos Bananos', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1),
(2, 'Gvozdjoman', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 2),
(3, 'Kanana Banana Lisam', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 3),
(4, 'Spuder Man', 'Test', 3),
(5, 'Trosnjoman', 'Full metal Tros!', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `Title` text COLLATE utf8_bin NOT NULL,
  `Body` text COLLATE utf8_bin NOT NULL,
  `User_Id` int(11) NOT NULL,
  `Created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `Title`, `Body`, `User_Id`, `Created_at`) VALUES
(1, 'First Post Title', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n            consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n            cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n            proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, '2019-12-24'),
(2, 'Second Post Title', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n            consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n            cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n            proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 2, '2019-12-23'),
(3, 'Third Post Title', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n            consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n            cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n            proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 3, '2019-10-16'),
(4, 'La Cucaracha', 'la cucaracha, la cucaracha\r\nya no puede caminar\r\npor que no tiene\r\nporque le faltan\r\nlas dos patitas de atrÃ¡s\r\nuna vez la cucaracha\r\nse metiÃ³ en un hormiguero\r\ny las picaras hormigas\r\nlas patitas le comieron\r\npobrecita cucharacha\r\nanda renga y afligida\r\ncaminando a paso lento\r\nescondiendose de dia\r\nla cucaracha, la cucaracha\r\nya no puede caminar\r\npor que no tiene\r\nporque le faltan\r\nlas dos patitas de atras\r\nla seÃ±ora cucaracha\r\nse ha comprado una bombacha\r\ntoda llena de botones\r\ny adornada con hilachas\r\nque bombacha mamarracha\r\nle dijeron los ratones\r\npero a doÃ±a cucaracha\r\nno le importan opiniones\r\nla cucaracha, la cucaracha\r\nya no puede caminar\r\npor que no tiene\r\nporque le faltan\r\nlas dos patitas de atrÃ¡s.', 4, '2019-12-24'),
(5, 'Metro', 'Artjom wurde, kurz bevor die Atombomben fielen, in der Station Timiryazevskaya unter der Erde geboren. Dort lebte er bis sie von einer riesigen Horde Ratten Ã¼berrannt wurde. Seitdem lebt er mit seinem Adoptivvater  Sukhoi  in VDNKh . Als er jÃ¼nger war, Ã¶ffneten Artjom und seine Freunde Eugine und Vitali die hermetische TÃ¼r einer Station nÃ¶rdlich von VDNKh mit dem Namen Botanicheskiy sad. Das geÃ¶ffnete Tor erlaubte es den Schwarzen ein paar Jahre spÃ¤ter, nach innen zu gelangen und aufgrund der Ereignisse, die zu dieser Zeit stattfanden, wurde er als \"AuÃŸerwÃ¤hlter\" bezeichnet, um die Vereinigung der beiden Arten zu unterstÃ¼tzen. Viele Jahre spÃ¤ter, als Hunter die Dunklen und ihre potenzielle Bedrohung fÃ¼r die WDNCh Station und den Rest des U-Bahn-Systems erkennt, gibt er Artjjom die Verantwortung, ins Zentrum der U-Bahn zu reisen, um den Rest der U-Bahn vor der Gefahr zu warnen.', 5, '2019-12-24'),
(6, 'Otadzbina', 'I ovaj kamen zemlje Srbije,\r\nÅ to preteÄ‡ suncu dere kroz oblak,\r\nSumornog Äela mraÄnim borama,\r\nO vekoveÄnosti priÄa dalekoj,\r\nPokazujuÄ‡i nemom mimikom\r\nObraza svoga brazde duboke.\r\n\r\nVekova tavnih to su tragovi,\r\nTe crne bore, mraÄne peÄ‡ine;\r\nA kamen ovaj, ko piramida\r\nÅ to se iz praha diÅ¾e u nebo,\r\nKostiju krÅ¡nih to je gomila\r\nÅ to su u borbi protiv duÅ¡mana\r\nDedovi tvoji voljno slagali,\r\nLepeÄ‡i krvlju srca roÄ‘enog\r\nMiÅ¡ica svojih kosti slomljene, -\r\nDa unucima spreme busiju,\r\nOklen Ä‡e nekad smelo preziruÄ‡\r\nDuÅ¡mana Äekat Äete grabljive.\r\n\r\nI samo dotle, do tog kamena,\r\nDo tog bedema -\r\nNogom Ä‡eÅ¡ stupit moÅ¾da, poganom!\r\nDrzneÅ¡ li dalje? ... ÄŒuÄ‡eÅ¡ gromove\r\nKako tiÅ¡inu zemlje slobodne\r\nSa grmljavinom straÅ¡nom kidaju;\r\nRazumeÄ‡eÅ¡ ih srcem straÅ¡ljivim\r\nÅ ta ti sa smelim glasom govore,\r\nPa Ä‡eÅ¡ o stenja tvrdom kamenu\r\nBrijane glave teme Ä‡elavo\r\nU zanosnome strahu lupati!\r\nAl jedan izraz, jednu misao,\r\nÄŒuÄ‡eÅ¡ u borbe straÅ¡noj lomljavi:\r\n\"OtadÅ¾bina je ovo Srbina!\"', 6, '2019-12-24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `First_Name` text COLLATE utf8_bin NOT NULL,
  `Last_Name` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `First_Name`, `Last_Name`) VALUES
(1, 'Thanos', 'Bananos'),
(2, 'Gvozdjoman', ''),
(3, 'Kanana', 'Banana Lisam'),
(4, 'El', 'Truco'),
(5, 'Artjom Alekseyevic ', 'Chyorny'),
(6, 'Djuro', 'Jaksic'),
(7, 'adwada', 'dwada'),
(8, 'adawd', 'wadEAfge'),
(9, 'adadawd', 'awdawdwad'),
(10, 'adwadaw', 'dawdwadwad'),
(11, 'adwadwad', 'wadwadawdwa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `User_Id` (`User_Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`User_Id`) REFERENCES `users` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
