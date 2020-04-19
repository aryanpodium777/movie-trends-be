-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 19, 2020 at 09:53 AM
-- Server version: 8.0.19
-- PHP Version: 7.2.24-0ubuntu0.18.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_trends`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `gender` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`id`, `name`, `gender`) VALUES
(1, 'Akshay Kumar', 'M'),
(2, 'Sharukh Khan', 'M'),
(3, 'Salman Khan', 'M'),
(4, 'Ranveer Singh', 'M'),
(5, 'Amir Khan', 'M'),
(6, 'Katrina Kaif', 'F'),
(7, 'Deepika', 'F'),
(8, 'Kareena Kapoor', 'F'),
(9, 'Aliya Bhatt', 'F'),
(10, 'Sonakshi Sinha', 'F');

-- --------------------------------------------------------

--
-- Table structure for table `award`
--

CREATE TABLE `award` (
  `id` int NOT NULL,
  `name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

CREATE TABLE `director` (
  `id` int NOT NULL,
  `name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `director`
--

INSERT INTO `director` (`id`, `name`) VALUES
(1, 'Sanjay Leela Bhansali'),
(2, 'Rakumar Irani'),
(3, 'Karan Johar'),
(4, 'Rohit Shetty'),
(5, 'Remo Desuza'),
(6, 'Prabhu Dewa'),
(7, 'Sajid Khan'),
(8, 'Arbaz Khan');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` int NOT NULL,
  `Title` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `Title`) VALUES
(1, 'Action'),
(2, 'Thriller'),
(3, 'Horror'),
(4, 'Comedy'),
(5, 'Drama');

-- --------------------------------------------------------

--
-- Table structure for table `movieinfo`
--

CREATE TABLE `movieinfo` (
  `id` int NOT NULL,
  `Title` text NOT NULL,
  `Year` int NOT NULL,
  `Rated` text NOT NULL,
  `Released` date NOT NULL,
  `Runtime` int NOT NULL,
  `_Genre` text NOT NULL,
  `_Director` text NOT NULL,
  `_Writer` text NOT NULL,
  `_Actor` text NOT NULL,
  `Plot` text NOT NULL,
  `Language` text NOT NULL,
  `Country` text NOT NULL,
  `_Awards` text NOT NULL,
  `Poster` text NOT NULL,
  `rating` int NOT NULL,
  `votes` int NOT NULL,
  `Type` text NOT NULL,
  `BoxOffice` text NOT NULL,
  `Production` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movieinfo`
--

INSERT INTO `movieinfo` (`id`, `Title`, `Year`, `Rated`, `Released`, `Runtime`, `_Genre`, `_Director`, `_Writer`, `_Actor`, `Plot`, `Language`, `Country`, `_Awards`, `Poster`, `rating`, `votes`, `Type`, `BoxOffice`, `Production`) VALUES
(1, 'Holiday', 2014, 'Not Rated', '2020-04-03', 160, '', '', '', '', 'Virat (Akshay Kumar) is among a battalion of military officers that comes to Mumbai on vacation. Virat is also a secret Defence Intelligence Agent who cannot lie low, much to the irritation of his friend and sub inspector. During a bus ride, an attempt to frisk passengers for a lost wallet leads Virat to something much bigger. Within minutes, the bus is blown into pieces and he helps cops nab the carrier of the bomb, who escapes from the hospital only to be caught by Virat again. Using tact, Virat follows one clue at a time hoping to track down the terrorist on whose orders the sleeper cell terrorists plan to cause mayhem in Mumbai', 'Hindi', 'India', '', 'https://m.media-amazon.com/images/M/MV5BMTVkMzljMzUtZmIxMS00YWNlLTlkNDMtYmU0Nzc3MjU3OGUwXkEyXkFqcGdeQXVyODMyODMxNDY@._V1_SX300.jpg', 0, 0, 'movie', '$707,672', 'Reliance Entertainment'),
(3, 'Test3', 0, '', '2020-04-07', 0, '', '', '', '', '', '', '', '', 'https://m.media-amazon.com/images/M/MV5BMTVkMzljMzUtZmIxMS00YWNlLTlkNDMtYmU0Nzc3MjU3OGUwXkEyXkFqcGdeQXVyODMyODMxNDY@._V1_SX300.jpg', 0, 0, '', '', ''),
(4, 'Test4', 0, '', '2020-04-02', 0, '', '', '', '', '', '', '', '', 'https://m.media-amazon.com/images/M/MV5BMTVkMzljMzUtZmIxMS00YWNlLTlkNDMtYmU0Nzc3MjU3OGUwXkEyXkFqcGdeQXVyODMyODMxNDY@._V1_SX300.jpg', 0, 0, '', '', ''),
(2, '3 Idiot', 2014, 'Rated', '2020-04-11', 180, '', '', '', '', 'Two friends are searching for their long lost companion. They revisit their college days and recall the memories of their friend who inspired them to think differently, even as the rest of the world called them \"idiots\".', 'Hindi', 'India', '', 'https://m.media-amazon.com/images/M/MV5BNTkyOGVjMGEtNmQzZi00NzFlLTlhOWQtODYyMDc2ZGJmYzFhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_QL50_SY1000_CR0,0,694,1000_AL_.jpg', 0, 0, '', '400 Crore', 'Irani Production');

-- --------------------------------------------------------

--
-- Table structure for table `movieinfo_actor`
--

CREATE TABLE `movieinfo_actor` (
  `movie_info_id` int NOT NULL,
  `actor_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movieinfo_actor`
--

INSERT INTO `movieinfo_actor` (`movie_info_id`, `actor_id`) VALUES
(1, 1),
(1, 10),
(2, 5),
(2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `movieinfo_award`
--

CREATE TABLE `movieinfo_award` (
  `movie_info_id` int NOT NULL,
  `award_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `movieinfo_director`
--

CREATE TABLE `movieinfo_director` (
  `movie_info_id` int NOT NULL,
  `director_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movieinfo_director`
--

INSERT INTO `movieinfo_director` (`movie_info_id`, `director_id`) VALUES
(1, 3),
(1, 4),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `movieinfo_genre`
--

CREATE TABLE `movieinfo_genre` (
  `movie_info_id` int NOT NULL,
  `genre_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movieinfo_genre`
--

INSERT INTO `movieinfo_genre` (`movie_info_id`, `genre_id`) VALUES
(1, 1),
(1, 2),
(2, 4),
(2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `movieinfo_writer`
--

CREATE TABLE `movieinfo_writer` (
  `movie_info_id` int NOT NULL,
  `writer_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movieinfo_writer`
--

INSERT INTO `movieinfo_writer` (`movie_info_id`, `writer_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int NOT NULL,
  `title` text NOT NULL,
  `remark` text NOT NULL,
  `rating` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `title`, `remark`, `rating`) VALUES
(1, 'Good Movie', 'Good Movie', 4),
(2, 'V Good Movie', 'V Good Movie', 5),
(3, 'Bad Movie', 'Bad Movie', 1),
(4, 'Must Watch', 'Must Watch', 3),
(5, 'Overrated', 'Overrated..', 1),
(6, 'Bad', 'Do not go', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reviewers`
--

CREATE TABLE `reviewers` (
  `id` bigint NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `photoUrl` text NOT NULL,
  `firstName` text NOT NULL,
  `lastName` text NOT NULL,
  `authToken` text NOT NULL,
  `idToken` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviewers`
--

INSERT INTO `reviewers` (`id`, `name`, `email`, `photoUrl`, `firstName`, `lastName`, `authToken`, `idToken`) VALUES
(2147483648, 'aryan gupta', 'aryangupta776@gmail.com', 'https://lh3.googleusercontent.com/a-/AOh14Gih1OzuCCHyYDH4yeQWt1uDdqErNoyYPcRXEaysYw=s96-c', 'aryan', 'gupta', 'ya29.a0Ae4lvC1JqXUkeoy2SVeCTzwC735KOazHW7Yrt95g_aB1Uid3mJ-Dmv1U8eFY80iw5EiY8Rgigm0AtY1sEzu6rDGbI1EMnYbvvKglMRyvB--FIkRrBYhrjlkmonGFmfMCMo7GEylNJdLaLIFQ635hhXTyadVh-V4sUzQD', 'eyJhbGciOiJSUzI1NiIsImtpZCI6ImY5ZDk3YjRjYWU5MGJjZDc2YWViMjAwMjZmNmI3NzBjYWMyMjE3ODMiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXpwIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTE0MjMxNDExMjYwNzI1ODI0ODU2IiwiZW1haWwiOiJhcnlhbmd1cHRhNzc2QGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJhdF9oYXNoIjoiYmJUQXRUTlltRF94akxlNWZDZWtPQSIsIm5hbWUiOiJhcnlhbiBndXB0YSIsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS0vQU9oMTRHaWgxT3p1Q0NIeVlESDR5ZVFXdDF1RGRxRXJOb3lZUGNSWEVheXNZdz1zOTYtYyIsImdpdmVuX25hbWUiOiJhcnlhbiIsImZhbWlseV9uYW1lIjoiZ3VwdGEiLCJsb2NhbGUiOiJlbiIsImlhdCI6MTU4NzI4MjI4NSwiZXhwIjoxNTg3Mjg1ODg1LCJqdGkiOiJjODg2N2Q0MjEyZWUzNjNkZmNmMGJjOTllZGVlY2RiMTBkMWE1OGY4In0.M_LeqGV1caNzmbE3gQiVH6teP6xYxC2PgWPkMNWgs7u5EwKLQMEKeON9iWBLn0jWccj5oS1-yvSq-I4LNP_MvWtiacLIUb1b3is81Dtk4tkKFmrBWwFHeG46tJ1rKgzoYlkceCY05C-SNxPeupWjaBbmQliA9-aEop97nPpsY1DgEPsJcPaXUi0mCLoWD_KBwOgcnHAx2TY_QR3o8rQ6Zg-JC8-UtfcVRTRaZKn-lptNiUkJYMcmomwOCCEDgvEQDGVPzWcRLm7q1gT3pPJWyR_uFmnBiUg5ZtU73pTWZJOrv3ZbWlRwvgMC3esprgUspgUM3XfilCoFxDYOFvwlVA');

-- --------------------------------------------------------

--
-- Table structure for table `reviewers_review_movieinfo`
--

CREATE TABLE `reviewers_review_movieinfo` (
  `movie_info_id` int NOT NULL,
  `reviwer_id` int NOT NULL,
  `review_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviewers_review_movieinfo`
--

INSERT INTO `reviewers_review_movieinfo` (`movie_info_id`, `reviwer_id`, `review_id`) VALUES
(1, 1, 3),
(1, 2, 6),
(2, 1, 1),
(2, 2, 2),
(2, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `writer`
--

CREATE TABLE `writer` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `genre` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `writer`
--

INSERT INTO `writer` (`id`, `name`, `genre`) VALUES
(1, 'javed Akhtar', ''),
(2, 'Salim Khan', ''),
(3, 'Abhijat Joshi', ''),
(4, 'Kiran Kher', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `award`
--
ALTER TABLE `award`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movieinfo`
--
ALTER TABLE `movieinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movieinfo_actor`
--
ALTER TABLE `movieinfo_actor`
  ADD KEY `MovieInfo_Actor_fk0` (`movie_info_id`),
  ADD KEY `MovieInfo_Actor_fk1` (`actor_id`);

--
-- Indexes for table `movieinfo_award`
--
ALTER TABLE `movieinfo_award`
  ADD KEY `MovieInfo_Award_fk0` (`movie_info_id`),
  ADD KEY `MovieInfo_Award_fk1` (`award_id`);

--
-- Indexes for table `movieinfo_director`
--
ALTER TABLE `movieinfo_director`
  ADD KEY `MovieInfo_Director_fk0` (`movie_info_id`),
  ADD KEY `MovieInfo_Director_fk1` (`director_id`);

--
-- Indexes for table `movieinfo_genre`
--
ALTER TABLE `movieinfo_genre`
  ADD KEY `MovieInfo_Genre_fk0` (`movie_info_id`),
  ADD KEY `MovieInfo_Genre_fk1` (`genre_id`);

--
-- Indexes for table `movieinfo_writer`
--
ALTER TABLE `movieinfo_writer`
  ADD KEY `MovieInfo_Writer_fk0` (`movie_info_id`),
  ADD KEY `MovieInfo_Writer_fk1` (`writer_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviewers`
--
ALTER TABLE `reviewers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviewers_review_movieinfo`
--
ALTER TABLE `reviewers_review_movieinfo`
  ADD KEY `Reviwer_Review_MovieInfo_fk0` (`movie_info_id`),
  ADD KEY `Reviwer_Review_MovieInfo_fk1` (`reviwer_id`),
  ADD KEY `Reviwer_Review_MovieInfo_fk2` (`review_id`);

--
-- Indexes for table `writer`
--
ALTER TABLE `writer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actor`
--
ALTER TABLE `actor`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `award`
--
ALTER TABLE `award`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `director`
--
ALTER TABLE `director`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `movieinfo`
--
ALTER TABLE `movieinfo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reviewers`
--
ALTER TABLE `reviewers`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483649;

--
-- AUTO_INCREMENT for table `writer`
--
ALTER TABLE `writer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
