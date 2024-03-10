-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2023 at 04:32 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_db`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `recent_movies` ()   BEGIN
    select m.title,m.release_year,a.available_on
    from movie m,avail a
    where m.movie_id=a.movie_id and m.release_year>2019;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `selectAvailNo` ()   BEGIN
  select available_on, count(*)as count from avail group by(available_on);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `actor_id` varchar(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `birth_year` int(10) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`actor_id`, `name`, `gender`, `birth_year`, `image`) VALUES
('a01', 'Rishabh shetty', 'Male', 1983, 'images/rishabh.jpg'),
('a02', 'Prabhas', 'Male', 1979, 'images/prabhas.jpg'),
('a03', 'Adavi shesh', 'Male', 1985, 'images/adavi.jpg'),
('a04', 'sapthami gowda', 'Female', 1996, 'images/sapthami-gowda.jpg'),
('a05', 'kishore', 'Male', 1974, 'images/kishor.jpg'),
('a06', 'Rana Daggubati', 'Male', 1984, 'images/rana.jfif'),
('a07', 'Meenakshi Chaudhary', 'Female', 1997, 'images/meena.jpg'),
('a08', 'Paul Rudd', 'Male', 1969, 'images/paul.jpg'),
('a09', 'Evangeline Lily', 'Female', 1979, 'images/lily.jpg'),
('a10', 'Naveen Kumar Gowda', 'Male', 1986, 'images/yash.jpg'),
('a11', 'Ramachandra Raju', 'Male', 1980, 'images/raju.jpg'),
('a12', 'Rachana Inder', 'Female', 1999, 'images/aunty.jpg'),
('a13', 'Darling Krishna', 'Male', 1985, 'images/dkl.jpg'),
('a14', 'Jhonny Depp', 'Male', 1963, 'images/depp.jpg'),
('a15', 'Bill Nighy', 'Male', 1949, 'images/bill.jpg'),
('a16', 'Pruthvi Ambaar', 'Male', 1988, 'images/prutvi.jpg'),
('a17', 'Kushee Ravi', 'Female', 1993, 'images/ravi.jpg'),
('a18', 'Mathew McConnaughey', 'Male', 1969, 'images/math.jpg'),
('a19', 'Anne Hathaway', 'Female', 1982, 'images/anne.jpg'),
('a20', 'Ananth Nah', 'Male', 1948, 'images/ananth.jpg'),
('a21', 'Pramod Shetty', 'Male', 1983, 'images/pramod.jpg'),
('a22', 'Samuel Henry John Worthington', 'Male', 1976, 'images/sam.jpg'),
('a23', 'Zoe Saldana', 'Female', 1978, 'images/zoe.jpg'),
('a24', 'Stephen Lang', 'Male', 1952, 'images/stephen.jpg'),
('a25', 'Michelle Rodriguez', 'Female', 1978, 'images/mitchelle.jpg');

--
-- Triggers `actor`
--
DELIMITER $$
CREATE TRIGGER `actor_insertion` AFTER INSERT ON `actor` FOR EACH ROW insert into logs values('New actor inserted',NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `admin_name` varchar(20) NOT NULL,
  `a_id` varchar(10) NOT NULL,
  `a_password` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`admin_name`, `a_id`, `a_password`) VALUES
('abhi', 'admin@123', 'admin');

--
-- Triggers `admin_details`
--
DELIMITER $$
CREATE TRIGGER `backup` AFTER INSERT ON `admin_details` FOR EACH ROW begin
insert into admin_details_backup value(new.admin_name,new.a_id,new.a_password);
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin_details_backup`
--

CREATE TABLE `admin_details_backup` (
  `admin_name` varchar(20) NOT NULL,
  `a_id` varchar(10) NOT NULL,
  `a_password` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_details_backup`
--

INSERT INTO `admin_details_backup` (`admin_name`, `a_id`, `a_password`) VALUES
('pranav', 'ad01', 'admin'),
('abhi', 'admin@123', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `avail`
--

CREATE TABLE `avail` (
  `movie_id` varchar(5) NOT NULL,
  `movie_title` varchar(100) NOT NULL,
  `available_from` date NOT NULL,
  `available_until` date NOT NULL,
  `available_on` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `avail`
--

INSERT INTO `avail` (`movie_id`, `movie_title`, `available_from`, `available_until`, `available_on`) VALUES
('m01', 'Kantara', '2022-09-30', '2025-09-30', 'Prime video'),
('m02', 'Bahubali', '2015-06-17', '2025-01-30', 'Hotstar'),
('m03', 'Hit 2', '2022-12-03', '2026-01-31', 'Prime video'),
('m04', 'Ant-man', '2015-07-24', '2015-08-31', 'Hotstar'),
('m05', 'Baahubali 2: The Conclusion', '2017-04-28', '2017-08-10', 'Hotstar'),
('m06', 'K.G.F: Chapter 1', '2018-12-21', '2019-03-21', 'Prime video'),
('m07', 'K.G.F: Chapter 2', '2022-04-14', '2022-06-01', 'Prime video'),
('m08', 'Love Mocktail', '2020-01-31', '2020-02-29', 'Prime video'),
('m09', 'Love Mocktail 2', '2022-02-11', '2022-03-31', 'Prime video'),
('m10', 'Pirates of the Caribbean: At World\'s End', '2013-06-01', '2013-07-31', 'Prime video'),
('m11', 'Dia', '2020-02-02', '2020-04-02', 'Hotstar'),
('m12', 'Interstellar', '2014-10-14', '2015-01-01', 'Netflix'),
('m13', 'Sarkari Hi. Pra. Shaale, Kasaragodu, Koduge: Ramanna Rai', '2018-08-24', '2023-10-20', 'Sun NXT'),
('m14', 'Avatar', '2009-12-10', '2025-12-31', 'Prime video'),
('m15', 'Avatar: The Way of Water', '2022-12-16', '2023-06-30', 'Currently in theatre');

-- --------------------------------------------------------

--
-- Table structure for table `cast`
--

CREATE TABLE `cast` (
  `movie_id` varchar(5) NOT NULL,
  `actor_id` varchar(5) NOT NULL,
  `character_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cast`
--

INSERT INTO `cast` (`movie_id`, `actor_id`, `character_name`) VALUES
('m01', 'a01', 'Hero'),
('m01', 'a04', 'heorine'),
('m01', 'a05', 'support'),
('m02', 'a02', 'Hero'),
('m02', 'a06', 'villan'),
('m03', 'a03', 'Hero'),
('m03', 'a07', 'heroine'),
('m04', 'a08', 'Hero'),
('m04', 'a09', 'Heroine'),
('m05', 'a06', 'villan'),
('m06', 'a10', 'Hero'),
('m06', 'a11', 'villan'),
('m07', 'a10', 'Hero'),
('m07', 'a11', 'Villan'),
('m08', 'a12', 'Actress'),
('m08', 'a13', 'Hero'),
('m09', 'a12', 'Actress'),
('m09', 'a13', 'Hero'),
('m10', 'a14', 'Hero'),
('m10', 'a15', 'Villan'),
('m11', 'a16', 'Hero'),
('m11', 'a17', 'heroine'),
('m12', 'a18', 'Hero'),
('m12', 'a19', 'Actress'),
('m13', 'a20', 'Lead actor'),
('m13', 'a21', 'Co actor'),
('m14', 'a22', 'Lead actor'),
('m14', 'a23', 'Lead actress'),
('m14', 'a24', 'Lead actor'),
('m14', 'a25', 'Lead actress'),
('m15', 'a22', 'Lead actor'),
('m15', 'a23', 'actress'),
('m15', 'a24', 'Actor'),
('m15', 'a25', 'Actress');

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

CREATE TABLE `director` (
  `director_id` varchar(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `birth_year` varchar(10) NOT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `director`
--

INSERT INTO `director` (`director_id`, `name`, `phone`, `birth_year`, `img`) VALUES
('d01', 'Sailesh kolanu', '9987575475', '1987', 'images/sailesh.jpg'),
('d02', 'S S Rajmouli', '0098976979', '1986', 'images/rajmouli.jpg'),
('d03', 'Rishabh shetty', '8897585887', '1983', 'images/rishabh.jpg'),
('d04', 'Peyton Reed', '9089786756', '1964', 'images/reed.jpg'),
('d05', 'Prashanth Neel', '9078563412', '1980', 'images/prash.jpg'),
('d06', 'Darling Krishna', '9056347823', '1985', 'images/dkl.jpg'),
('d07', 'Gore Verbinski', '5468756679', '1964', 'images/gore.jpg'),
('d08', 'K S Ashoka', '9481281864', '1982', 'images/ashok.jpg'),
('d09', 'Christopher Nolan', '8765544332', '1970', 'images/chris.jpg'),
('d10', 'James Cameron', '09283947', '1954', 'images/james.jpg');

--
-- Triggers `director`
--
DELIMITER $$
CREATE TRIGGER `director_insertion` AFTER INSERT ON `director` FOR EACH ROW insert into logs values('New director inserted',NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `director_rat`
-- (See below for the actual view)
--
CREATE TABLE `director_rat` (
`name` varchar(255)
,`count(movie)` bigint(21)
,`average_rating` decimal(9,5)
);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `action_performed` varchar(200) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`action_performed`, `time`) VALUES
('New movie inserted', '2023-01-22 22:17:24'),
('New actor inserted', '2023-01-22 22:37:06'),
('New actor inserted', '2023-01-22 22:38:23'),
('New actor inserted', '2023-01-22 22:52:12'),
('New actor inserted', '2023-01-22 23:03:47'),
('New actor inserted', '2023-01-28 11:56:57'),
('New director inserted', '2023-01-28 12:00:03'),
('New movie inserted', '2023-01-28 12:02:36'),
('New actor inserted', '2023-02-01 11:22:31'),
('New director inserted', '2023-02-01 11:26:46'),
('New movie inserted', '2023-02-01 11:28:10'),
('New actor inserted', '2023-02-01 11:32:28'),
('New actor inserted', '2023-02-01 11:35:05'),
('New actor inserted', '2023-02-02 21:18:16'),
('New actor inserted', '2023-02-02 21:19:23'),
('New movie inserted', '2023-02-02 21:22:18'),
('New actor inserted', '2023-02-05 11:23:32'),
('New actor inserted', '2023-02-05 11:24:43'),
('New actor inserted', '2023-02-05 11:25:43'),
('New actor inserted', '2023-02-05 11:26:28'),
('New director inserted', '2023-02-05 11:28:03'),
('New movie inserted', '2023-02-05 11:29:53'),
('New movie inserted', '2023-02-05 11:44:06');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `movie_id` varchar(5) NOT NULL,
  `title` varchar(255) NOT NULL,
  `release_year` varchar(11) NOT NULL,
  `duration` varchar(11) NOT NULL,
  `m_language` varchar(255) NOT NULL,
  `type` varchar(30) NOT NULL,
  `director_id` varchar(5) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`movie_id`, `title`, `release_year`, `duration`, `m_language`, `type`, `director_id`, `img`) VALUES
('m01', 'Kantara', '2022', '2.30', 'Kannada', 'Action', 'd03', 'images/kantara.jpg'),
('m02', 'Bahubali', '2015', '2.45', 'Telugu', 'Drama', 'd02', 'images/bahu.jpg'),
('m03', 'Hit 2', '2022', '2.40', 'Telugu', 'Action', 'd01', 'images/hit2.jpg'),
('m04', 'Ant-man', '2015', '1.57', 'English', 'comedy', 'd04', 'images/ant.jpg'),
('m05', 'Baahubali 2: The Conclusion', '2017', '2.47', 'Kannada', 'action', 'd02', 'images/bahu2.jpg'),
('m06', 'K.G.F: Chapter 1', '2018', '2.45', 'Kannada', 'Action', 'd05', 'images/kgf.jpg'),
('m07', 'K.G.F: Chapter 2', '2022', '2.48', 'Kannada', 'Action', 'd05', 'images/kgf2.jpg'),
('m08', 'Love Mocktail', '2020', '2.27', 'Kannada', 'Romance', 'd06', 'images/l1.jpg'),
('m09', 'Love Mocktail 2', '2022', '2.20', 'Kannada', 'Romance', 'd06', 'images/j2.jpg'),
('m10', 'Pirates of the Caribbean: At World\'s End', '2007', '249', 'English', 'Adventure', 'd07', 'images/p1.jpg'),
('m11', 'Dia', '2020', '2.16', 'Kannada', 'Romance', 'd08', 'images/dia.jpg'),
('m12', 'Interstellar', '2014', '2.49', 'English', 'Action', 'd09', 'images/inter.jpg'),
('m13', 'Sarkari Hi. Pra. Shaale, Kasaragodu, Koduge: Ramanna Rai', '2018', '2.27', 'Kannada', 'Drama', 'd03', 'images/kasargod.jpg'),
('m14', 'Avatar', '2009', '3.12', 'English', 'Science Fiction', 'd10', 'images/avatar.jpg'),
('m15', 'Avatar: The Way of Water', '2022', '3.12', 'English', 'Science Fiction', 'd10', 'images/avatar2.jpg');

--
-- Triggers `movie`
--
DELIMITER $$
CREATE TRIGGER `movie_inserted` AFTER INSERT ON `movie` FOR EACH ROW insert into logs values('New movie inserted',NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rating_id` varchar(5) NOT NULL,
  `movie_id` varchar(5) NOT NULL,
  `movie_title` varchar(300) NOT NULL,
  `rating` decimal(5,1) NOT NULL,
  `review` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rating_id`, `movie_id`, `movie_title`, `rating`, `review`) VALUES
('r01', 'm01', 'Kantara', '4.8', 'Very nice movie'),
('r02', 'm02', 'Bahubali', '4.3', 'good visualization'),
('r03', 'm03', 'Hit 2', '4.5', 'action thriller movie'),
('r04', 'm04', 'Ant-man', '3.5', 'decent acting, nice comedy'),
('r05', 'm05', 'Baahubali 2: The Conclusion', '4.0', 'a decent conclusion to the baahubali series'),
('r06', 'm06', 'K.G.F: Chapter 1', '3.5', 'nice '),
('r07', 'm07', 'K.G.F: Chapter 2', '4.0', 'expands on the story from chapter 1 nicely'),
('r08', 'm08', 'Love Mocktail', '3.8', 'a decent romance story '),
('r09', 'm09', 'Love Mocktail 2', '4.0', 'better than the last one'),
('r10', 'm10', 'Pirates of the Caribbean: At World\'s End', '4.7', 'Best movie of all time'),
('r11', 'm11', 'Dia ', '3.8', 'nice romance'),
('r12', 'm12', 'Interstellar', '4.5', 'nice'),
('r13', 'm13', 'Sarkari Hi. Pra. Shaale, Kasaragodu, Koduge: Ramanna Rai	', '4.3', 'Kannada movie with such a pretty storytelling and songs that shows emotions'),
('r14', 'm14', 'Avatar', '4.0', 'a good science fiction movie with plenty of actions and good picturization'),
('r15', 'm15', 'Avatar: The Way of Water', '4.2', 'A good movie sequel with excellent graphics');

-- --------------------------------------------------------

--
-- Stand-in structure for view `recommended`
-- (See below for the actual view)
--
CREATE TABLE `recommended` (
`movie_title` varchar(300)
,`name` varchar(255)
,`rating` decimal(5,1)
);

-- --------------------------------------------------------

--
-- Structure for view `director_rat`
--
DROP TABLE IF EXISTS `director_rat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `director_rat`  AS SELECT `d`.`name` AS `name`, count(0) AS `count(movie)`, avg(`r`.`rating`) AS `average_rating` FROM ((`director` `d` join `movie` `m` on(`d`.`director_id` = `m`.`director_id`)) join `rating` `r` on(`m`.`movie_id` = `r`.`movie_id`)) GROUP BY `d`.`name` ORDER BY `r`.`rating` AS `DESCdesc` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `recommended`
--
DROP TABLE IF EXISTS `recommended`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `recommended`  AS SELECT `r`.`movie_title` AS `movie_title`, `a`.`name` AS `name`, `r`.`rating` AS `rating` FROM (((`movie` `m` join `cast` `c` on(`c`.`movie_id` = `m`.`movie_id`)) join `actor` `a` on(`a`.`actor_id` = `c`.`actor_id`)) join `rating` `r` on(`r`.`movie_id` = `m`.`movie_id`)) WHERE `m`.`m_language` = 'Kannada' AND `r`.`rating` = (select max(`rating`.`rating`) from `rating` where `m`.`m_language` = 'Kannada')  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`actor_id`);

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `admin_details_backup`
--
ALTER TABLE `admin_details_backup`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `avail`
--
ALTER TABLE `avail`
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `cast`
--
ALTER TABLE `cast`
  ADD PRIMARY KEY (`movie_id`,`actor_id`),
  ADD KEY `actor_id` (`actor_id`);

--
-- Indexes for table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`director_id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movie_id`),
  ADD KEY `director_id` (`director_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `avail`
--
ALTER TABLE `avail`
  ADD CONSTRAINT `avail_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE;

--
-- Constraints for table `cast`
--
ALTER TABLE `cast`
  ADD CONSTRAINT `cast_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cast_ibfk_2` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`actor_id`) ON DELETE CASCADE;

--
-- Constraints for table `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`director_id`) REFERENCES `director` (`director_id`) ON DELETE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
