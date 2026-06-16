-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: db_server
-- Erstellungszeit: 15. Jun 2026 um 21:59
-- Server-Version: 9.3.0
-- PHP-Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `mangacourt`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `chapter`
--

CREATE TABLE `chapter` (
  `chapter_id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `published_at` date DEFAULT NULL,
  `manga_manga_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Daten für Tabelle `chapter`
--

INSERT INTO `chapter` (`chapter_id`, `name`, `published_at`, `manga_manga_id`) VALUES
(1, 'Kapitel 1 - Romance Dawn', '1997-07-22', 1),
(2, 'Kapitel 2 - Der Ruderermann', '1997-07-29', 1),
(3, 'Kapitel 3 - Zoro der Piratenjäger', '1997-08-05', 1),
(4, 'Kapitel 4 - Der Schatz des Kapitän Morgan', '1997-08-12', 1),
(5, 'Kapitel 5 - Der Fluch des Teufelsfruchts', '1997-08-19', 1),
(6, 'Kapitel 6 - Der geheimnisvolle Mann', '1997-08-26', 1),
(7, 'Kapitel 7 - Nami', '1997-09-02', 1),
(8, 'Kapitel 8 - Fight', '1997-09-09', 1),
(9, 'Kapitel 9 - Arlong der Fischmensch', '1997-09-16', 1),
(10, 'Kapitel 10 - Der Ozean', '1997-09-23', 1),
(11, 'Kapitel 1 - Uzumaki Naruto', '1999-09-21', 2),
(12, 'Kapitel 2 - Konohamaru', '1999-09-28', 2),
(13, 'Kapitel 3 - Sasuke Uchiha', '1999-10-05', 2),
(14, 'Kapitel 4 - Kakashi Hatake', '1999-10-12', 2),
(15, 'Kapitel 5 - Die Prüfung beginnt', '1999-10-19', 2),
(16, 'Kapitel 6 - Sakura', '1999-10-26', 2),
(17, 'Kapitel 7 - Die erste Mission', '1999-11-02', 2),
(18, 'Kapitel 8 - Zabuza', '1999-11-09', 2),
(19, 'Kapitel 9 - Haku', '1999-11-16', 2),
(20, 'Kapitel 10 - Der Nebel', '1999-11-23', 2),
(21, 'Kapitel 1 - Bulma und Son Goku', '1984-11-20', 3),
(22, 'Kapitel 2 - Die Drachenkugeln', '1984-11-27', 3),
(23, 'Kapitel 3 - Der Grossvater', '1984-12-04', 3),
(24, 'Kapitel 4 - Oolong', '1984-12-11', 3),
(25, 'Kapitel 5 - Yamcha', '1984-12-18', 3),
(26, 'Kapitel 6 - Die Wüste', '1984-12-25', 3),
(27, 'Kapitel 7 - Pilaf', '1985-01-08', 3),
(28, 'Kapitel 8 - Der Wunsch', '1985-01-15', 3),
(29, 'Kapitel 9 - Das Turnier', '1985-01-22', 3),
(30, 'Kapitel 10 - Krillin', '1985-01-29', 3),
(31, 'Kapitel 1 - An diesem Tag', '2009-09-09', 4),
(32, 'Kapitel 2 - Der Tag des Falls', '2009-10-09', 4),
(33, 'Kapitel 3 - Zur Waffe werden', '2009-11-09', 4),
(34, 'Kapitel 4 - Die Nacht des Abschieds', '2009-12-09', 4),
(35, 'Kapitel 5 - Der erste Kampf', '2010-01-09', 4),
(36, 'Kapitel 6 - Der kleine Soldat', '2010-02-09', 4),
(37, 'Kapitel 7 - Kleines Mädchen', '2010-03-09', 4),
(38, 'Kapitel 8 - Roar of Awakening', '2010-04-09', 4),
(39, 'Kapitel 9 - Der Titane', '2010-05-09', 4),
(40, 'Kapitel 10 - Titan vs Titan', '2010-06-09', 4),
(41, 'Kapitel 1 - Death und Strawberry', '2001-08-07', 5),
(42, 'Kapitel 2 - Starter', '2001-08-14', 5),
(43, 'Kapitel 3 - Gefangen in der Menschenwelt', '2001-08-21', 5),
(44, 'Kapitel 4 - Cursed', '2001-08-28', 5),
(45, 'Kapitel 5 - Rightarm of the Giant', '2001-09-04', 5),
(46, 'Kapitel 6 - Elimination', '2001-09-11', 5),
(47, 'Kapitel 7 - Die Quincy', '2001-09-18', 5),
(48, 'Kapitel 8 - Uryu Ishida', '2001-09-25', 5),
(49, 'Kapitel 9 - Die Hollows', '2001-10-02', 5),
(50, 'Kapitel 10 - Orihime', '2001-10-09', 5),
(51, 'Kapitel 1 - Abfahrt', '1998-03-16', 6),
(52, 'Kapitel 2 - Pruefung beginnt', '1998-03-23', 6),
(53, 'Kapitel 3 - Das Ziel', '1998-03-30', 6),
(54, 'Kapitel 4 - Gon und Killua', '1998-04-06', 6),
(55, 'Kapitel 5 - Kurapika', '1998-04-13', 6),
(56, 'Kapitel 6 - Leorio', '1998-04-20', 6),
(57, 'Kapitel 7 - Die Spinne', '1998-04-27', 6),
(58, 'Kapitel 8 - Hisoka', '1998-05-04', 6),
(59, 'Kapitel 9 - Nen', '1998-05-11', 6),
(60, 'Kapitel 10 - Die Pruefung endet', '1998-05-18', 6),
(61, 'Kapitel 1 - Der schwarze Schwertkämpfer', '1989-08-25', 7),
(62, 'Kapitel 2 - Der Schlächter', '1989-09-25', 7),
(63, 'Kapitel 3 - Die Brandmarkung', '1989-10-25', 7),
(64, 'Kapitel 4 - Griffith', '1989-11-25', 7),
(65, 'Kapitel 5 - Die Falken', '1989-12-25', 7),
(66, 'Kapitel 6 - Casca', '1990-01-25', 7),
(67, 'Kapitel 7 - Der Traum', '1990-02-25', 7),
(68, 'Kapitel 8 - Die Finsternis', '1990-03-25', 7),
(69, 'Kapitel 9 - Das Opfer', '1990-04-25', 7),
(70, 'Kapitel 10 - Die Gotthand', '1990-05-25', 7),
(71, 'Kapitel 1 - Herr Dr. Tenma', '1994-12-05', 8),
(72, 'Kapitel 2 - Nur ein Leben', '1994-12-12', 8),
(73, 'Kapitel 3 - Perfekter Selbstmord', '1994-12-19', 8),
(74, 'Kapitel 4 - Johan', '1994-12-26', 8),
(75, 'Kapitel 5 - Die Spur', '1995-01-09', 8),
(76, 'Kapitel 6 - Nina', '1995-01-16', 8),
(77, 'Kapitel 7 - Die Vergangenheit', '1995-01-23', 8),
(78, 'Kapitel 8 - Das Monster', '1995-01-30', 8),
(79, 'Kapitel 9 - Lunge', '1995-02-06', 8),
(80, 'Kapitel 10 - Die Wahrheit', '1995-02-13', 8),
(81, 'Kapitel 1 - Die Heldin', '1996-11-13', 9),
(82, 'Kapitel 2 - Kagomes Wunsch', '1996-11-20', 9),
(83, 'Kapitel 3 - Inuyasha erwacht', '1996-11-27', 9),
(84, 'Kapitel 4 - Die Juwelenscherbe', '1996-12-04', 9),
(85, 'Kapitel 5 - Kaede', '1996-12-11', 9),
(86, 'Kapitel 6 - Kikyo', '1996-12-18', 9),
(87, 'Kapitel 7 - Die Dämonen', '1996-12-25', 9),
(88, 'Kapitel 8 - Miroku', '1997-01-08', 9),
(89, 'Kapitel 9 - Sango', '1997-01-15', 9),
(90, 'Kapitel 10 - Naraku', '1997-01-22', 9),
(91, 'Kapitel 1 - Jonathan Joestar', '1987-01-01', 10),
(92, 'Kapitel 2 - Dio Brando', '1987-01-08', 10),
(93, 'Kapitel 3 - Der Stein der Weisen', '1987-01-15', 10),
(94, 'Kapitel 4 - Der Hamon', '1987-01-22', 10),
(95, 'Kapitel 5 - Zeppeli', '1987-01-29', 10),
(96, 'Kapitel 6 - Die Maske', '1987-02-05', 10),
(97, 'Kapitel 7 - Der Vampir', '1987-02-12', 10),
(98, 'Kapitel 8 - Das Finale', '1987-02-19', 10),
(99, 'Kapitel 9 - Joseph Joestar', '1987-02-26', 10),
(100, 'Kapitel 10 - Die Pillar Men', '1987-03-05', 10),
(101, 'Kapitel 1 - Die Alchemisten', '2001-07-12', 11),
(102, 'Kapitel 2 - Der Preis der Alchemie', '2001-08-12', 11),
(103, 'Kapitel 3 - Der Stein der Weisen', '2001-09-12', 11),
(104, 'Kapitel 4 - Edward und Alphonse', '2001-10-12', 11),
(105, 'Kapitel 5 - Winry', '2001-11-12', 11),
(106, 'Kapitel 6 - Roy Mustang', '2001-12-12', 11),
(107, 'Kapitel 7 - Die Homunculi', '2002-01-12', 11),
(108, 'Kapitel 8 - Lust', '2002-02-12', 11),
(109, 'Kapitel 9 - Gluttony', '2002-03-12', 11),
(110, 'Kapitel 10 - Der Vater', '2002-04-12', 11),
(111, 'Kapitel 1 - Boring', '2003-12-01', 12),
(112, 'Kapitel 2 - L', '2003-12-08', 12),
(113, 'Kapitel 3 - Ziel', '2003-12-15', 12),
(114, 'Kapitel 4 - Pursuit', '2003-12-22', 12),
(115, 'Kapitel 5 - Misora', '2003-12-29', 12),
(116, 'Kapitel 6 - Aktion', '2004-01-05', 12),
(117, 'Kapitel 7 - Misa Misa', '2004-01-12', 12),
(118, 'Kapitel 8 - Zweites Shinigami', '2004-01-19', 12),
(119, 'Kapitel 9 - Falle', '2004-01-26', 12),
(120, 'Kapitel 10 - Verhör', '2004-02-02', 12),
(121, 'Kapitel 1 - Grausamkeit', '2016-02-15', 13),
(122, 'Kapitel 2 - Jemand anderes Blut', '2016-02-22', 13),
(123, 'Kapitel 3 - Sabito und Makomo', '2016-02-29', 13),
(124, 'Kapitel 4 - Endauswahl', '2016-03-07', 13),
(125, 'Kapitel 5 - Zenitsu', '2016-03-14', 13),
(126, 'Kapitel 6 - Inosuke', '2016-03-21', 13),
(127, 'Kapitel 7 - Das Schwert', '2016-03-28', 13),
(128, 'Kapitel 8 - Muzan', '2016-04-04', 13),
(129, 'Kapitel 9 - Die Hashira', '2016-04-11', 13),
(130, 'Kapitel 10 - Das Haus der Spinnen', '2016-04-18', 13),
(131, 'Kapitel 1 - Ghoul', '2011-09-08', 14),
(132, 'Kapitel 2 - Abnormal', '2011-09-15', 14),
(133, 'Kapitel 3 - Hunger', '2011-09-22', 14),
(134, 'Kapitel 4 - Touka', '2011-09-29', 14),
(135, 'Kapitel 5 - Anteiku', '2011-10-06', 14),
(136, 'Kapitel 6 - Maske', '2011-10-13', 14),
(137, 'Kapitel 7 - Ermittler', '2011-10-20', 14),
(138, 'Kapitel 8 - Amon', '2011-10-27', 14),
(139, 'Kapitel 9 - Jason', '2011-11-03', 14),
(140, 'Kapitel 10 - Aogiri', '2011-11-10', 14),
(141, 'Kapitel 1 - Der Beginn', '2009-04-10', 15),
(142, 'Kapitel 2 - Beater', '2009-04-17', 15),
(143, 'Kapitel 3 - Rote Nasenspitze', '2009-04-24', 15),
(144, 'Kapitel 4 - Der schwarze Schwertkämpfer', '2009-05-01', 15),
(145, 'Kapitel 5 - Asuna', '2009-05-08', 15),
(146, 'Kapitel 6 - Das Labyrinth', '2009-05-15', 15),
(147, 'Kapitel 7 - Der Boss', '2009-05-22', 15),
(148, 'Kapitel 8 - Die Gilde', '2009-05-29', 15),
(149, 'Kapitel 9 - Heathcliff', '2009-06-05', 15),
(150, 'Kapitel 10 - Das Ende', '2009-06-12', 15),
(151, 'Kapitel 1 - Izuku Midoriya', '2014-07-07', 16),
(152, 'Kapitel 2 - Mein Held', '2014-07-14', 16),
(153, 'Kapitel 3 - Die Pruefung', '2014-07-21', 16),
(154, 'Kapitel 4 - All Might', '2014-07-28', 16),
(155, 'Kapitel 5 - One For All', '2014-08-04', 16),
(156, 'Kapitel 6 - Die UA Schule', '2014-08-11', 16),
(157, 'Kapitel 7 - Bakugo', '2014-08-18', 16),
(158, 'Kapitel 8 - Der Villain', '2014-08-25', 16),
(159, 'Kapitel 9 - Todoroki', '2014-09-01', 16),
(160, 'Kapitel 10 - Das Sportfest', '2014-09-08', 16),
(161, 'Kapitel 1 - Dänen', '2005-07-13', 17),
(162, 'Kapitel 2 - Askeladd', '2005-07-20', 17),
(163, 'Kapitel 3 - Thorfinn', '2005-07-27', 17),
(164, 'Kapitel 4 - Der Krieg', '2005-08-03', 17),
(165, 'Kapitel 5 - Thors', '2005-08-10', 17),
(166, 'Kapitel 6 - Die Rache', '2005-08-17', 17),
(167, 'Kapitel 7 - England', '2005-08-24', 17),
(168, 'Kapitel 8 - Prinz Canute', '2005-08-31', 17),
(169, 'Kapitel 9 - Die Schlacht', '2005-09-07', 17),
(170, 'Kapitel 10 - Frieden', '2005-09-14', 17),
(171, 'Kapitel 1 - Musashi', '1998-09-03', 18),
(172, 'Kapitel 2 - Takezo', '1998-09-10', 18),
(173, 'Kapitel 3 - Der Weg des Schwertes', '1998-09-17', 18),
(174, 'Kapitel 4 - Otsu', '1998-09-24', 18),
(175, 'Kapitel 5 - Kojiro', '1998-10-01', 18),
(176, 'Kapitel 6 - Das Duell', '1998-10-08', 18),
(177, 'Kapitel 7 - Der Meister', '1998-10-15', 18),
(178, 'Kapitel 8 - Zen', '1998-10-22', 18),
(179, 'Kapitel 9 - Die Reise', '1998-10-29', 18),
(180, 'Kapitel 10 - Erleuchtung', '1998-11-05', 18),
(181, 'Kapitel 1 - Hanamichi Sakuragi', '1990-10-01', 19),
(182, 'Kapitel 2 - Basketball', '1990-10-08', 19),
(183, 'Kapitel 3 - Das Genie', '1990-10-15', 19),
(184, 'Kapitel 4 - Rukawa', '1990-10-22', 19),
(185, 'Kapitel 5 - Akagi', '1990-10-29', 19),
(186, 'Kapitel 6 - Das Training', '1990-11-05', 19),
(187, 'Kapitel 7 - Das Turnier', '1990-11-12', 19),
(188, 'Kapitel 8 - Ryonan', '1990-11-19', 19),
(189, 'Kapitel 9 - Sendoh', '1990-11-26', 19),
(190, 'Kapitel 10 - Das Finale', '1990-12-03', 19),
(191, 'Kapitel 1 - Yusuke stirbt', '1990-12-03', 20),
(192, 'Kapitel 2 - Wiedergeburt', '1990-12-10', 20),
(193, 'Kapitel 3 - Der Detektiv', '1990-12-17', 20),
(194, 'Kapitel 4 - Kuwabara', '1990-12-24', 20),
(195, 'Kapitel 5 - Hiei', '1990-12-31', 20),
(196, 'Kapitel 6 - Kurama', '1991-01-07', 20),
(197, 'Kapitel 7 - Das Turnier', '1991-01-14', 20),
(198, 'Kapitel 8 - Toguro', '1991-01-21', 20),
(199, 'Kapitel 9 - Die Dunkelwelt', '1991-01-28', 20),
(200, 'Kapitel 10 - Das Finale', '1991-02-04', 20);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `comments`
--

CREATE TABLE `comments` (
  `comment_id` int NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `post_post_id` int NOT NULL,
  `user_user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `country`
--

CREATE TABLE `country` (
  `country_id` int NOT NULL,
  `countryname` varchar(30) DEFAULT NULL,
  `shortcut` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Daten für Tabelle `country`
--

INSERT INTO `country` (`country_id`, `countryname`, `shortcut`) VALUES
(1, 'Deutschland', 'DE'),
(2, 'Österreich', 'AT'),
(3, 'Schweiz', 'CH'),
(4, 'United States', 'US'),
(5, 'United Kingdom', 'GB'),
(6, 'Frankreich', 'FR'),
(7, 'Japan', 'JP'),
(8, 'China', 'CN'),
(9, 'Brasilien', 'BR'),
(10, 'Australien', 'AU');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `favmangas`
--

CREATE TABLE `favmangas` (
  `manga_manga_id` int NOT NULL,
  `user_user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `manga`
--

CREATE TABLE `manga` (
  `manga_id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `published_at` date DEFAULT NULL,
  `mangaka_mangaka_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Daten für Tabelle `manga`
--

INSERT INTO `manga` (`manga_id`, `name`, `published_at`, `mangaka_mangaka_id`) VALUES
(1, 'One Piece', '1997-07-22', 1),
(2, 'Naruto', '1999-09-21', 2),
(3, 'Dragon Ball', '1984-11-20', 3),
(4, 'Attack on Titan', '2009-09-09', 4),
(5, 'Bleach', '2001-08-07', 5),
(6, 'Hunter x Hunter', '1998-03-16', 6),
(7, 'Berserk', '1989-08-25', 7),
(8, 'Monster', '1994-12-05', 8),
(9, 'Inuyasha', '1996-11-13', 9),
(10, 'JoJo Bizarre Adventure', '1987-01-01', 10),
(11, 'Fullmetal Alchemist', '2001-07-12', 3),
(12, 'Death Note', '2003-12-01', 2),
(13, 'Demon Slayer', '2016-02-15', 4),
(14, 'Tokyo Ghoul', '2011-09-08', 5),
(15, 'Sword Art Online', '2009-04-10', 6),
(16, 'My Hero Academia', '2014-07-07', 7),
(17, 'Vinland Saga', '2005-07-13', 8),
(18, 'Vagabond', '1998-09-03', 9),
(19, 'Slam Dunk', '1990-10-01', 10),
(20, 'Yu Yu Hakusho', '1990-12-03', 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mangaka`
--

CREATE TABLE `mangaka` (
  `mangaka_id` int NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `biographie` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Daten für Tabelle `mangaka`
--

INSERT INTO `mangaka` (`mangaka_id`, `name`, `birthday`, `biographie`) VALUES
(1, 'Eiichiro Oda', '1975-01-01', 'Autor von One Piece'),
(2, 'Masashi Kishimoto', '1974-11-08', 'Autor von Naruto'),
(3, 'Akira Toriyama', '1955-04-05', 'Autor von Dragon Ball'),
(4, 'Hajime Isayama', '1986-08-29', 'Autor von AoT'),
(5, 'Tite Kubo', '1977-06-26', 'Autor von Bleach'),
(6, 'Yoshihiro Togashi', '1966-04-27', 'Autor von HxH'),
(7, 'Kentaro Miura', '1966-07-11', 'Autor von Berserk'),
(8, 'Naoki Urasawa', '1960-01-02', 'Autor von Monster'),
(9, 'Rumiko Takahashi', '1957-10-10', 'Autorin von Inuyasha'),
(10, 'Hirohiko Araki', '1960-06-07', 'Autor von JoJo');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `post`
--

CREATE TABLE `post` (
  `post_id` int NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `chapter_chapter_id` int NOT NULL,
  `manga_manga_id` int NOT NULL,
  `salutation` varchar(500) DEFAULT NULL,
  `created_by` int NOT NULL,
  `rating` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `country_country_id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `imageName` varchar(255) NOT NULL DEFAULT 'dummy'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`chapter_id`),
  ADD KEY `manga_manga_id` (`manga_manga_id`);

--
-- Indizes für die Tabelle `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `post_post_id` (`post_post_id`),
  ADD KEY `user_user_id` (`user_user_id`);

--
-- Indizes für die Tabelle `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indizes für die Tabelle `favmangas`
--
ALTER TABLE `favmangas`
  ADD PRIMARY KEY (`manga_manga_id`,`user_user_id`),
  ADD KEY `user_user_id` (`user_user_id`);

--
-- Indizes für die Tabelle `manga`
--
ALTER TABLE `manga`
  ADD PRIMARY KEY (`manga_id`),
  ADD KEY `mangaka_mangaka_id` (`mangaka_mangaka_id`);

--
-- Indizes für die Tabelle `mangaka`
--
ALTER TABLE `mangaka`
  ADD PRIMARY KEY (`mangaka_id`);

--
-- Indizes für die Tabelle `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `post_chapter_fk` (`chapter_chapter_id`),
  ADD KEY `post_manga_fk` (`manga_manga_id`),
  ADD KEY `post_user_fk` (`created_by`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `country_country_id` (`country_country_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `comments`
--

--
-- AUTO_INCREMENT für Tabelle `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `manga`
--
ALTER TABLE `manga`
  MODIFY `manga_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT für Tabelle `mangaka`
--
ALTER TABLE `mangaka`
  MODIFY `mangaka_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `chapter`
--
ALTER TABLE `chapter`
  ADD CONSTRAINT `chapter_ibfk_1` FOREIGN KEY (`manga_manga_id`) REFERENCES `manga` (`manga_id`);

--
-- Constraints der Tabelle `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_post_id`) REFERENCES `post` (`post_id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints der Tabelle `favmangas`
--
ALTER TABLE `favmangas`
  ADD CONSTRAINT `favmangas_ibfk_1` FOREIGN KEY (`manga_manga_id`) REFERENCES `manga` (`manga_id`),
  ADD CONSTRAINT `favmangas_ibfk_2` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints der Tabelle `manga`
--
ALTER TABLE `manga`
  ADD CONSTRAINT `manga_ibfk_1` FOREIGN KEY (`mangaka_mangaka_id`) REFERENCES `mangaka` (`mangaka_id`);

--
-- Constraints der Tabelle `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_chapter_fk` FOREIGN KEY (`chapter_chapter_id`) REFERENCES `chapter` (`chapter_id`),
  ADD CONSTRAINT `post_manga_fk` FOREIGN KEY (`manga_manga_id`) REFERENCES `manga` (`manga_id`),
  ADD CONSTRAINT `post_user_fk` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`);

--
-- Constraints der Tabelle `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`country_country_id`) REFERENCES `country` (`country_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
