-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 16, 2020 at 02:54 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `movie_trends`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE IF NOT EXISTS `actor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

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

CREATE TABLE IF NOT EXISTS `award` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `award`
--


-- --------------------------------------------------------

--
-- Table structure for table `director`
--

CREATE TABLE IF NOT EXISTS `director` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

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

CREATE TABLE IF NOT EXISTS `genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

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

CREATE TABLE IF NOT EXISTS `movieinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` text NOT NULL,
  `Year` int(11) NOT NULL,
  `Rated` text NOT NULL,
  `Released` date NOT NULL,
  `Runtime` int(11) NOT NULL,
  `_Genre` text NOT NULL,
  `_Director` text NOT NULL,
  `_Writer` text NOT NULL,
  `_Actor` text NOT NULL,
  `Plot` text NOT NULL,
  `Language` text NOT NULL,
  `Country` text NOT NULL,
  `_Awards` text NOT NULL,
  `Poster` text NOT NULL,
  `rating` int(11) NOT NULL,
  `votes` int(11) NOT NULL,
  `Type` text NOT NULL,
  `BoxOffice` text NOT NULL,
  `Production` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `movieinfo`
--

INSERT INTO `movieinfo` (`id`, `Title`, `Year`, `Rated`, `Released`, `Runtime`, `_Genre`, `_Director`, `_Writer`, `_Actor`, `Plot`, `Language`, `Country`, `_Awards`, `Poster`, `rating`, `votes`, `Type`, `BoxOffice`, `Production`) VALUES
(1, 'Holiday', 2014, 'Not Rated', '2020-04-03', 160, '', '', '', '', 'Virat (Akshay Kumar) is among a battalion of military officers that comes to Mumbai on vacation. Virat is also a secret Defence Intelligence Agent who cannot lie low, much to the irritation of his friend and sub inspector. During a bus ride, an attempt to frisk passengers for a lost wallet leads Virat to something much bigger. Within minutes, the bus is blown into pieces and he helps cops nab the carrier of the bomb, who escapes from the hospital only to be caught by Virat again. Using tact, Virat follows one clue at a time hoping to track down the terrorist on whose orders the sleeper cell terrorists plan to cause mayhem in Mumbai', 'Hindi', 'India', '', 'https://m.media-amazon.com/images/M/MV5BMTVkMzljMzUtZmIxMS00YWNlLTlkNDMtYmU0Nzc3MjU3OGUwXkEyXkFqcGdeQXVyODMyODMxNDY@._V1_SX300.jpg', 0, 0, 'movie', '$707,672', 'Reliance Entertainment'),
(3, 'Test3', 0, '', '2020-04-07', 0, '', '', '', '', '', '', '', '', 'https://m.media-amazon.com/images/M/MV5BMTVkMzljMzUtZmIxMS00YWNlLTlkNDMtYmU0Nzc3MjU3OGUwXkEyXkFqcGdeQXVyODMyODMxNDY@._V1_SX300.jpg', 0, 0, '', '', ''),
(4, 'Test4', 0, '', '2020-04-02', 0, '', '', '', '', '', '', '', '', 'https://m.media-amazon.com/images/M/MV5BMTVkMzljMzUtZmIxMS00YWNlLTlkNDMtYmU0Nzc3MjU3OGUwXkEyXkFqcGdeQXVyODMyODMxNDY@._V1_SX300.jpg', 0, 0, '', '', ''),
(2, '3 Idiot', 2014, 'Rated', '2020-04-11', 180, '', '', '', '', 'Two friends are searching for their long lost companion. They revisit their college days and recall the memories of their friend who inspired them to think differently, even as the rest of the world called them "idiots".', 'Hindi', 'India', '', 'https://m.media-amazon.com/images/M/MV5BNTkyOGVjMGEtNmQzZi00NzFlLTlhOWQtODYyMDc2ZGJmYzFhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_QL50_SY1000_CR0,0,694,1000_AL_.jpg', 0, 0, '', '400 Crore', 'Irani Production');

-- --------------------------------------------------------

--
-- Table structure for table `movieinfo_actor`
--

CREATE TABLE IF NOT EXISTS `movieinfo_actor` (
  `movie_info_id` int(11) NOT NULL,
  `actor_id` int(11) NOT NULL,
  KEY `MovieInfo_Actor_fk0` (`movie_info_id`),
  KEY `MovieInfo_Actor_fk1` (`actor_id`)
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

CREATE TABLE IF NOT EXISTS `movieinfo_award` (
  `movie_info_id` int(11) NOT NULL,
  `award_id` int(11) NOT NULL,
  KEY `MovieInfo_Award_fk0` (`movie_info_id`),
  KEY `MovieInfo_Award_fk1` (`award_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movieinfo_award`
--


-- --------------------------------------------------------

--
-- Table structure for table `movieinfo_director`
--

CREATE TABLE IF NOT EXISTS `movieinfo_director` (
  `movie_info_id` int(11) NOT NULL,
  `director_id` int(11) NOT NULL,
  KEY `MovieInfo_Director_fk0` (`movie_info_id`),
  KEY `MovieInfo_Director_fk1` (`director_id`)
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

CREATE TABLE IF NOT EXISTS `movieinfo_genre` (
  `movie_info_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  KEY `MovieInfo_Genre_fk0` (`movie_info_id`),
  KEY `MovieInfo_Genre_fk1` (`genre_id`)
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

CREATE TABLE IF NOT EXISTS `movieinfo_writer` (
  `movie_info_id` int(11) NOT NULL,
  `writer_id` int(11) NOT NULL,
  KEY `MovieInfo_Writer_fk0` (`movie_info_id`),
  KEY `MovieInfo_Writer_fk1` (`writer_id`)
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

CREATE TABLE IF NOT EXISTS `review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `remark` text NOT NULL,
  `rating` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

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

CREATE TABLE IF NOT EXISTS `reviewers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `photoUrl` text NOT NULL,
  `firstName` text NOT NULL,
  `lastName` text NOT NULL,
  `authToken` text NOT NULL,
  `idToken` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2147483648 ;

--
-- Dumping data for table `reviewers`
--

INSERT INTO `reviewers` (`id`, `name`, `email`, `photoUrl`, `firstName`, `lastName`, `authToken`, `idToken`) VALUES
(2147483647, 'saurabh gupta', 'saurabhgupta98989@gmail.com', 'https://lh4.googleusercontent.com/-zQiyM92m0iQ/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJM1EpB6eO4jJ51Nuj2Y-t2WpreV9A/s96-c/photo.jpg', 'saurabh', 'gupta', 'ya29.a0Ae4lvC1j7byku5cusDlJL00ofPcXSdKMLcpY0Zaxf13Zp51zNWJOVUm-PRIWk1nZl3v3sL0YPfa8vZJPPlOTqmNyeazUYqwBLcwV91X_Nc9YKTJ8NOPeh5ER0oOsPM0o11drHs6a3kGBKJBMN_p2TqcAH1ZlRTlSuPM', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjZmY2Y0MTMyMjQ3NjUxNTZiNDg3NjhhNDJmYWMwNjQ5NmEzMGZmNWEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXpwIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTAxNTQ4MjA0NzQ0MzU3MjQ1NTk2IiwiZW1haWwiOiJzYXVyYWJoZ3VwdGE5ODk4OUBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6IjE2YWZ4T01WbnZraC1Ed25reGN0MmciLCJuYW1lIjoic2F1cmFiaCBndXB0YSIsInBpY3R1cmUiOiJodHRwczovL2xoNC5nb29nbGV1c2VyY29udGVudC5jb20vLXpRaXlNOTJtMGlRL0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FBS1dKSk0xRXBCNmVPNGpKNTFOdWoyWS10MldwcmVWOUEvczk2LWMvcGhvdG8uanBnIiwiZ2l2ZW5fbmFtZSI6InNhdXJhYmgiLCJmYW1pbHlfbmFtZSI6Imd1cHRhIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE1ODY2Mjc1MjgsImV4cCI6MTU4NjYzMTEyOCwianRpIjoiYWE4NzdiYmZlZGI5M2M2OTQyMDJkYmJiYzQ0YWI3YmQ4ZDVlNmRlYSJ9.sklez9DjL1u7YAKzOMvy20M_1MazLmczPwpAPymlhYLc-MqRIHdAEig8Etz4RdKsPNEUjtaLsEBcWzbrsCQtlQNY0EJSW2GKTAwTWFFsO2fsC72oyP57_r8StJpv-glGta3Wo04Jl2-H4W8MhBFB_j0I5Na8xyPp2Psi8OrZ_MlCtBKI_11X4kX1X4ncyDr4nOZtJ7KtrZ-b1MNe4TK35eixcHFr3gZH17MFYSUy7r-_YDMD-1Iyc3sm9AU7hUJ1va_mqbhriajovN2aUNnxJiLnDKi-VfPbUrAGJXjvsa_VmbvBXkbPtOwn2-WlTtXISDW6MvSshhXjmV1TWHpGug'),
(1222, 'saurabh gupta', 'saurabhgupta98989@gmail.com', 'https://lh4.googleusercontent.com/-zQiyM92m0iQ/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJM1EpB6eO4jJ51Nuj2Y-t2WpreV9A/s96-c/photo.jpg', 'saurabh', 'gupta', 'ya29.a0Ae4lvC1j7byku5cusDlJL00ofPcXSdKMLcpY0Zaxf13Zp51zNWJOVUm-PRIWk1nZl3v3sL0YPfa8vZJPPlOTqmNyeazUYqwBLcwV91X_Nc9YKTJ8NOPeh5ER0oOsPM0o11drHs6a3kGBKJBMN_p2TqcAH1ZlRTlSuPM', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjZmY2Y0MTMyMjQ3NjUxNTZiNDg3NjhhNDJmYWMwNjQ5NmEzMGZmNWEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXpwIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTAxNTQ4MjA0NzQ0MzU3MjQ1NTk2IiwiZW1haWwiOiJzYXVyYWJoZ3VwdGE5ODk4OUBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6IjE2YWZ4T01WbnZraC1Ed25reGN0MmciLCJuYW1lIjoic2F1cmFiaCBndXB0YSIsInBpY3R1cmUiOiJodHRwczovL2xoNC5nb29nbGV1c2VyY29udGVudC5jb20vLXpRaXlNOTJtMGlRL0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FBS1dKSk0xRXBCNmVPNGpKNTFOdWoyWS10MldwcmVWOUEvczk2LWMvcGhvdG8uanBnIiwiZ2l2ZW5fbmFtZSI6InNhdXJhYmgiLCJmYW1pbHlfbmFtZSI6Imd1cHRhIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE1ODY2Mjc1MjgsImV4cCI6MTU4NjYzMTEyOCwianRpIjoiYWE4NzdiYmZlZGI5M2M2OTQyMDJkYmJiYzQ0YWI3YmQ4ZDVlNmRlYSJ9.sklez9DjL1u7YAKzOMvy20M_1MazLmczPwpAPymlhYLc-MqRIHdAEig8Etz4RdKsPNEUjtaLsEBcWzbrsCQtlQNY0EJSW2GKTAwTWFFsO2fsC72oyP57_r8StJpv-glGta3Wo04Jl2-H4W8MhBFB_j0I5Na8xyPp2Psi8OrZ_MlCtBKI_11X4kX1X4ncyDr4nOZtJ7KtrZ-b1MNe4TK35eixcHFr3gZH17MFYSUy7r-_YDMD-1Iyc3sm9AU7hUJ1va_mqbhriajovN2aUNnxJiLnDKi-VfPbUrAGJXjvsa_VmbvBXkbPtOwn2-WlTtXISDW6MvSshhXjmV1TWHpGug'),
(12222, 'saurabh gupta', 'saurabhgupta98989@gmail.com', 'https://lh4.googleusercontent.com/-zQiyM92m0iQ/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJM1EpB6eO4jJ51Nuj2Y-t2WpreV9A/s96-c/photo.jpg', 'saurabh', 'gupta', 'ya29.a0Ae4lvC1j7byku5cusDlJL00ofPcXSdKMLcpY0Zaxf13Zp51zNWJOVUm-PRIWk1nZl3v3sL0YPfa8vZJPPlOTqmNyeazUYqwBLcwV91X_Nc9YKTJ8NOPeh5ER0oOsPM0o11drHs6a3kGBKJBMN_p2TqcAH1ZlRTlSuPM', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjZmY2Y0MTMyMjQ3NjUxNTZiNDg3NjhhNDJmYWMwNjQ5NmEzMGZmNWEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXpwIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTAxNTQ4MjA0NzQ0MzU3MjQ1NTk2IiwiZW1haWwiOiJzYXVyYWJoZ3VwdGE5ODk4OUBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6IjE2YWZ4T01WbnZraC1Ed25reGN0MmciLCJuYW1lIjoic2F1cmFiaCBndXB0YSIsInBpY3R1cmUiOiJodHRwczovL2xoNC5nb29nbGV1c2VyY29udGVudC5jb20vLXpRaXlNOTJtMGlRL0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FBS1dKSk0xRXBCNmVPNGpKNTFOdWoyWS10MldwcmVWOUEvczk2LWMvcGhvdG8uanBnIiwiZ2l2ZW5fbmFtZSI6InNhdXJhYmgiLCJmYW1pbHlfbmFtZSI6Imd1cHRhIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE1ODY2Mjc1MjgsImV4cCI6MTU4NjYzMTEyOCwianRpIjoiYWE4NzdiYmZlZGI5M2M2OTQyMDJkYmJiYzQ0YWI3YmQ4ZDVlNmRlYSJ9.sklez9DjL1u7YAKzOMvy20M_1MazLmczPwpAPymlhYLc-MqRIHdAEig8Etz4RdKsPNEUjtaLsEBcWzbrsCQtlQNY0EJSW2GKTAwTWFFsO2fsC72oyP57_r8StJpv-glGta3Wo04Jl2-H4W8MhBFB_j0I5Na8xyPp2Psi8OrZ_MlCtBKI_11X4kX1X4ncyDr4nOZtJ7KtrZ-b1MNe4TK35eixcHFr3gZH17MFYSUy7r-_YDMD-1Iyc3sm9AU7hUJ1va_mqbhriajovN2aUNnxJiLnDKi-VfPbUrAGJXjvsa_VmbvBXkbPtOwn2-WlTtXISDW6MvSshhXjmV1TWHpGug'),
(2222, 'saurabh gupta', 'saurabhgupta98989@gmail.com', 'https://lh4.googleusercontent.com/-zQiyM92m0iQ/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJM1EpB6eO4jJ51Nuj2Y-t2WpreV9A/s96-c/photo.jpg', 'saurabh', 'gupta', 'ya29.a0Ae4lvC1j7byku5cusDlJL00ofPcXSdKMLcpY0Zaxf13Zp51zNWJOVUm-PRIWk1nZl3v3sL0YPfa8vZJPPlOTqmNyeazUYqwBLcwV91X_Nc9YKTJ8NOPeh5ER0oOsPM0o11drHs6a3kGBKJBMN_p2TqcAH1ZlRTlSuPM', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjZmY2Y0MTMyMjQ3NjUxNTZiNDg3NjhhNDJmYWMwNjQ5NmEzMGZmNWEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXpwIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTAxNTQ4MjA0NzQ0MzU3MjQ1NTk2IiwiZW1haWwiOiJzYXVyYWJoZ3VwdGE5ODk4OUBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6IjE2YWZ4T01WbnZraC1Ed25reGN0MmciLCJuYW1lIjoic2F1cmFiaCBndXB0YSIsInBpY3R1cmUiOiJodHRwczovL2xoNC5nb29nbGV1c2VyY29udGVudC5jb20vLXpRaXlNOTJtMGlRL0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FBS1dKSk0xRXBCNmVPNGpKNTFOdWoyWS10MldwcmVWOUEvczk2LWMvcGhvdG8uanBnIiwiZ2l2ZW5fbmFtZSI6InNhdXJhYmgiLCJmYW1pbHlfbmFtZSI6Imd1cHRhIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE1ODY2Mjc1MjgsImV4cCI6MTU4NjYzMTEyOCwianRpIjoiYWE4NzdiYmZlZGI5M2M2OTQyMDJkYmJiYzQ0YWI3YmQ4ZDVlNmRlYSJ9.sklez9DjL1u7YAKzOMvy20M_1MazLmczPwpAPymlhYLc-MqRIHdAEig8Etz4RdKsPNEUjtaLsEBcWzbrsCQtlQNY0EJSW2GKTAwTWFFsO2fsC72oyP57_r8StJpv-glGta3Wo04Jl2-H4W8MhBFB_j0I5Na8xyPp2Psi8OrZ_MlCtBKI_11X4kX1X4ncyDr4nOZtJ7KtrZ-b1MNe4TK35eixcHFr3gZH17MFYSUy7r-_YDMD-1Iyc3sm9AU7hUJ1va_mqbhriajovN2aUNnxJiLnDKi-VfPbUrAGJXjvsa_VmbvBXkbPtOwn2-WlTtXISDW6MvSshhXjmV1TWHpGug'),
(122222, 'saurabh gupta', 'saurabhgupta98989@gmail.com', 'https://lh4.googleusercontent.com/-zQiyM92m0iQ/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJM1EpB6eO4jJ51Nuj2Y-t2WpreV9A/s96-c/photo.jpg', 'saurabh', 'gupta', 'ya29.a0Ae4lvC1j7byku5cusDlJL00ofPcXSdKMLcpY0Zaxf13Zp51zNWJOVUm-PRIWk1nZl3v3sL0YPfa8vZJPPlOTqmNyeazUYqwBLcwV91X_Nc9YKTJ8NOPeh5ER0oOsPM0o11drHs6a3kGBKJBMN_p2TqcAH1ZlRTlSuPM', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjZmY2Y0MTMyMjQ3NjUxNTZiNDg3NjhhNDJmYWMwNjQ5NmEzMGZmNWEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXpwIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTAxNTQ4MjA0NzQ0MzU3MjQ1NTk2IiwiZW1haWwiOiJzYXVyYWJoZ3VwdGE5ODk4OUBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6IjE2YWZ4T01WbnZraC1Ed25reGN0MmciLCJuYW1lIjoic2F1cmFiaCBndXB0YSIsInBpY3R1cmUiOiJodHRwczovL2xoNC5nb29nbGV1c2VyY29udGVudC5jb20vLXpRaXlNOTJtMGlRL0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FBS1dKSk0xRXBCNmVPNGpKNTFOdWoyWS10MldwcmVWOUEvczk2LWMvcGhvdG8uanBnIiwiZ2l2ZW5fbmFtZSI6InNhdXJhYmgiLCJmYW1pbHlfbmFtZSI6Imd1cHRhIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE1ODY2Mjc1MjgsImV4cCI6MTU4NjYzMTEyOCwianRpIjoiYWE4NzdiYmZlZGI5M2M2OTQyMDJkYmJiYzQ0YWI3YmQ4ZDVlNmRlYSJ9.sklez9DjL1u7YAKzOMvy20M_1MazLmczPwpAPymlhYLc-MqRIHdAEig8Etz4RdKsPNEUjtaLsEBcWzbrsCQtlQNY0EJSW2GKTAwTWFFsO2fsC72oyP57_r8StJpv-glGta3Wo04Jl2-H4W8MhBFB_j0I5Na8xyPp2Psi8OrZ_MlCtBKI_11X4kX1X4ncyDr4nOZtJ7KtrZ-b1MNe4TK35eixcHFr3gZH17MFYSUy7r-_YDMD-1Iyc3sm9AU7hUJ1va_mqbhriajovN2aUNnxJiLnDKi-VfPbUrAGJXjvsa_VmbvBXkbPtOwn2-WlTtXISDW6MvSshhXjmV1TWHpGug'),
(122223, 'saurabh gupta', 'saurabhgupta98989@gmail.com', 'https://lh4.googleusercontent.com/-zQiyM92m0iQ/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJM1EpB6eO4jJ51Nuj2Y-t2WpreV9A/s96-c/photo.jpg', 'saurabh', 'gupta', 'ya29.a0Ae4lvC1j7byku5cusDlJL00ofPcXSdKMLcpY0Zaxf13Zp51zNWJOVUm-PRIWk1nZl3v3sL0YPfa8vZJPPlOTqmNyeazUYqwBLcwV91X_Nc9YKTJ8NOPeh5ER0oOsPM0o11drHs6a3kGBKJBMN_p2TqcAH1ZlRTlSuPM', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjZmY2Y0MTMyMjQ3NjUxNTZiNDg3NjhhNDJmYWMwNjQ5NmEzMGZmNWEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXpwIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTAxNTQ4MjA0NzQ0MzU3MjQ1NTk2IiwiZW1haWwiOiJzYXVyYWJoZ3VwdGE5ODk4OUBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6IjE2YWZ4T01WbnZraC1Ed25reGN0MmciLCJuYW1lIjoic2F1cmFiaCBndXB0YSIsInBpY3R1cmUiOiJodHRwczovL2xoNC5nb29nbGV1c2VyY29udGVudC5jb20vLXpRaXlNOTJtMGlRL0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FBS1dKSk0xRXBCNmVPNGpKNTFOdWoyWS10MldwcmVWOUEvczk2LWMvcGhvdG8uanBnIiwiZ2l2ZW5fbmFtZSI6InNhdXJhYmgiLCJmYW1pbHlfbmFtZSI6Imd1cHRhIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE1ODY2Mjc1MjgsImV4cCI6MTU4NjYzMTEyOCwianRpIjoiYWE4NzdiYmZlZGI5M2M2OTQyMDJkYmJiYzQ0YWI3YmQ4ZDVlNmRlYSJ9.sklez9DjL1u7YAKzOMvy20M_1MazLmczPwpAPymlhYLc-MqRIHdAEig8Etz4RdKsPNEUjtaLsEBcWzbrsCQtlQNY0EJSW2GKTAwTWFFsO2fsC72oyP57_r8StJpv-glGta3Wo04Jl2-H4W8MhBFB_j0I5Na8xyPp2Psi8OrZ_MlCtBKI_11X4kX1X4ncyDr4nOZtJ7KtrZ-b1MNe4TK35eixcHFr3gZH17MFYSUy7r-_YDMD-1Iyc3sm9AU7hUJ1va_mqbhriajovN2aUNnxJiLnDKi-VfPbUrAGJXjvsa_VmbvBXkbPtOwn2-WlTtXISDW6MvSshhXjmV1TWHpGug'),
(122224, 'aryan gupta', 'aryangupta98989@gmail.com', 'https://lh4.googleusercontent.com/-zQiyM92m0iQ/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJM1EpB6eO4jJ51Nuj2Y-t2WpreV9A/s96-c/photo.jpg', 'aryan', 'gupta', 'ya29.a0Ae4lvC1j7byku5cusDlJL00ofPcXSdKMLcpY0Zaxf13Zp51zNWJOVUm-PRIWk1nZl3v3sL0YPfa8vZJPPlOTqmNyeazUYqwBLcwV91X_Nc9YKTJ8NOPeh5ER0oOsPM0o11drHs6a3kGBKJBMN_p2TqcAH1ZlRTlSuPM', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjZmY2Y0MTMyMjQ3NjUxNTZiNDg3NjhhNDJmYWMwNjQ5NmEzMGZmNWEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXpwIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTAxNTQ4MjA0NzQ0MzU3MjQ1NTk2IiwiZW1haWwiOiJzYXVyYWJoZ3VwdGE5ODk4OUBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6IjE2YWZ4T01WbnZraC1Ed25reGN0MmciLCJuYW1lIjoic2F1cmFiaCBndXB0YSIsInBpY3R1cmUiOiJodHRwczovL2xoNC5nb29nbGV1c2VyY29udGVudC5jb20vLXpRaXlNOTJtMGlRL0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FBS1dKSk0xRXBCNmVPNGpKNTFOdWoyWS10MldwcmVWOUEvczk2LWMvcGhvdG8uanBnIiwiZ2l2ZW5fbmFtZSI6InNhdXJhYmgiLCJmYW1pbHlfbmFtZSI6Imd1cHRhIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE1ODY2Mjc1MjgsImV4cCI6MTU4NjYzMTEyOCwianRpIjoiYWE4NzdiYmZlZGI5M2M2OTQyMDJkYmJiYzQ0YWI3YmQ4ZDVlNmRlYSJ9.sklez9DjL1u7YAKzOMvy20M_1MazLmczPwpAPymlhYLc-MqRIHdAEig8Etz4RdKsPNEUjtaLsEBcWzbrsCQtlQNY0EJSW2GKTAwTWFFsO2fsC72oyP57_r8StJpv-glGta3Wo04Jl2-H4W8MhBFB_j0I5Na8xyPp2Psi8OrZ_MlCtBKI_11X4kX1X4ncyDr4nOZtJ7KtrZ-b1MNe4TK35eixcHFr3gZH17MFYSUy7r-_YDMD-1Iyc3sm9AU7hUJ1va_mqbhriajovN2aUNnxJiLnDKi-VfPbUrAGJXjvsa_VmbvBXkbPtOwn2-WlTtXISDW6MvSshhXjmV1TWHpGug'),
(1222245, 'shubham gupta', 'shubhamgupta98989@gmail.com', 'https://lh4.googleusercontent.com/-zQiyM92m0iQ/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJM1EpB6eO4jJ51Nuj2Y-t2WpreV9A/s96-c/photo.jpg', 'shubham', 'gupta', 'ya29.a0Ae4lvC1j7byku5cusDlJL00ofPcXSdKMLcpY0Zaxf13Zp51zNWJOVUm-PRIWk1nZl3v3sL0YPfa8vZJPPlOTqmNyeazUYqwBLcwV91X_Nc9YKTJ8NOPeh5ER0oOsPM0o11drHs6a3kGBKJBMN_p2TqcAH1ZlRTlSuPM', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjZmY2Y0MTMyMjQ3NjUxNTZiNDg3NjhhNDJmYWMwNjQ5NmEzMGZmNWEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXpwIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTAxNTQ4MjA0NzQ0MzU3MjQ1NTk2IiwiZW1haWwiOiJzYXVyYWJoZ3VwdGE5ODk4OUBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6IjE2YWZ4T01WbnZraC1Ed25reGN0MmciLCJuYW1lIjoic2F1cmFiaCBndXB0YSIsInBpY3R1cmUiOiJodHRwczovL2xoNC5nb29nbGV1c2VyY29udGVudC5jb20vLXpRaXlNOTJtMGlRL0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FBS1dKSk0xRXBCNmVPNGpKNTFOdWoyWS10MldwcmVWOUEvczk2LWMvcGhvdG8uanBnIiwiZ2l2ZW5fbmFtZSI6InNhdXJhYmgiLCJmYW1pbHlfbmFtZSI6Imd1cHRhIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE1ODY2Mjc1MjgsImV4cCI6MTU4NjYzMTEyOCwianRpIjoiYWE4NzdiYmZlZGI5M2M2OTQyMDJkYmJiYzQ0YWI3YmQ4ZDVlNmRlYSJ9.sklez9DjL1u7YAKzOMvy20M_1MazLmczPwpAPymlhYLc-MqRIHdAEig8Etz4RdKsPNEUjtaLsEBcWzbrsCQtlQNY0EJSW2GKTAwTWFFsO2fsC72oyP57_r8StJpv-glGta3Wo04Jl2-H4W8MhBFB_j0I5Na8xyPp2Psi8OrZ_MlCtBKI_11X4kX1X4ncyDr4nOZtJ7KtrZ-b1MNe4TK35eixcHFr3gZH17MFYSUy7r-_YDMD-1Iyc3sm9AU7hUJ1va_mqbhriajovN2aUNnxJiLnDKi-VfPbUrAGJXjvsa_VmbvBXkbPtOwn2-WlTtXISDW6MvSshhXjmV1TWHpGug'),
(112222, 'shubham gupta', 'shubhamgupta98989@gmail.com', 'https://lh4.googleusercontent.com/-zQiyM92m0iQ/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJM1EpB6eO4jJ51Nuj2Y-t2WpreV9A/s96-c/photo.jpg', 'shubham', 'gupta', 'ya29.a0Ae4lvC1j7byku5cusDlJL00ofPcXSdKMLcpY0Zaxf13Zp51zNWJOVUm-PRIWk1nZl3v3sL0YPfa8vZJPPlOTqmNyeazUYqwBLcwV91X_Nc9YKTJ8NOPeh5ER0oOsPM0o11drHs6a3kGBKJBMN_p2TqcAH1ZlRTlSuPM', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjZmY2Y0MTMyMjQ3NjUxNTZiNDg3NjhhNDJmYWMwNjQ5NmEzMGZmNWEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXpwIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTAxNTQ4MjA0NzQ0MzU3MjQ1NTk2IiwiZW1haWwiOiJzYXVyYWJoZ3VwdGE5ODk4OUBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6IjE2YWZ4T01WbnZraC1Ed25reGN0MmciLCJuYW1lIjoic2F1cmFiaCBndXB0YSIsInBpY3R1cmUiOiJodHRwczovL2xoNC5nb29nbGV1c2VyY29udGVudC5jb20vLXpRaXlNOTJtMGlRL0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FBS1dKSk0xRXBCNmVPNGpKNTFOdWoyWS10MldwcmVWOUEvczk2LWMvcGhvdG8uanBnIiwiZ2l2ZW5fbmFtZSI6InNhdXJhYmgiLCJmYW1pbHlfbmFtZSI6Imd1cHRhIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE1ODY2Mjc1MjgsImV4cCI6MTU4NjYzMTEyOCwianRpIjoiYWE4NzdiYmZlZGI5M2M2OTQyMDJkYmJiYzQ0YWI3YmQ4ZDVlNmRlYSJ9.sklez9DjL1u7YAKzOMvy20M_1MazLmczPwpAPymlhYLc-MqRIHdAEig8Etz4RdKsPNEUjtaLsEBcWzbrsCQtlQNY0EJSW2GKTAwTWFFsO2fsC72oyP57_r8StJpv-glGta3Wo04Jl2-H4W8MhBFB_j0I5Na8xyPp2Psi8OrZ_MlCtBKI_11X4kX1X4ncyDr4nOZtJ7KtrZ-b1MNe4TK35eixcHFr3gZH17MFYSUy7r-_YDMD-1Iyc3sm9AU7hUJ1va_mqbhriajovN2aUNnxJiLnDKi-VfPbUrAGJXjvsa_VmbvBXkbPtOwn2-WlTtXISDW6MvSshhXjmV1TWHpGug'),
(1112222, 'shubham gupta', 'shubhamgupta98989@gmail.com', 'https://lh4.googleusercontent.com/-zQiyM92m0iQ/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJM1EpB6eO4jJ51Nuj2Y-t2WpreV9A/s96-c/photo.jpg', 'shubham', 'gupta', 'ya29.a0Ae4lvC1j7byku5cusDlJL00ofPcXSdKMLcpY0Zaxf13Zp51zNWJOVUm-PRIWk1nZl3v3sL0YPfa8vZJPPlOTqmNyeazUYqwBLcwV91X_Nc9YKTJ8NOPeh5ER0oOsPM0o11drHs6a3kGBKJBMN_p2TqcAH1ZlRTlSuPM', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjZmY2Y0MTMyMjQ3NjUxNTZiNDg3NjhhNDJmYWMwNjQ5NmEzMGZmNWEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXpwIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTAxNTQ4MjA0NzQ0MzU3MjQ1NTk2IiwiZW1haWwiOiJzYXVyYWJoZ3VwdGE5ODk4OUBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6IjE2YWZ4T01WbnZraC1Ed25reGN0MmciLCJuYW1lIjoic2F1cmFiaCBndXB0YSIsInBpY3R1cmUiOiJodHRwczovL2xoNC5nb29nbGV1c2VyY29udGVudC5jb20vLXpRaXlNOTJtMGlRL0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FBS1dKSk0xRXBCNmVPNGpKNTFOdWoyWS10MldwcmVWOUEvczk2LWMvcGhvdG8uanBnIiwiZ2l2ZW5fbmFtZSI6InNhdXJhYmgiLCJmYW1pbHlfbmFtZSI6Imd1cHRhIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE1ODY2Mjc1MjgsImV4cCI6MTU4NjYzMTEyOCwianRpIjoiYWE4NzdiYmZlZGI5M2M2OTQyMDJkYmJiYzQ0YWI3YmQ4ZDVlNmRlYSJ9.sklez9DjL1u7YAKzOMvy20M_1MazLmczPwpAPymlhYLc-MqRIHdAEig8Etz4RdKsPNEUjtaLsEBcWzbrsCQtlQNY0EJSW2GKTAwTWFFsO2fsC72oyP57_r8StJpv-glGta3Wo04Jl2-H4W8MhBFB_j0I5Na8xyPp2Psi8OrZ_MlCtBKI_11X4kX1X4ncyDr4nOZtJ7KtrZ-b1MNe4TK35eixcHFr3gZH17MFYSUy7r-_YDMD-1Iyc3sm9AU7hUJ1va_mqbhriajovN2aUNnxJiLnDKi-VfPbUrAGJXjvsa_VmbvBXkbPtOwn2-WlTtXISDW6MvSshhXjmV1TWHpGug'),
(11112222, 'shubham gupta', 'shubhamgupta98989@gmail.com', 'https://lh4.googleusercontent.com/-zQiyM92m0iQ/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJM1EpB6eO4jJ51Nuj2Y-t2WpreV9A/s96-c/photo.jpg', 'shubham', 'gupta', 'ya29.a0Ae4lvC1j7byku5cusDlJL00ofPcXSdKMLcpY0Zaxf13Zp51zNWJOVUm-PRIWk1nZl3v3sL0YPfa8vZJPPlOTqmNyeazUYqwBLcwV91X_Nc9YKTJ8NOPeh5ER0oOsPM0o11drHs6a3kGBKJBMN_p2TqcAH1ZlRTlSuPM', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjZmY2Y0MTMyMjQ3NjUxNTZiNDg3NjhhNDJmYWMwNjQ5NmEzMGZmNWEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXpwIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTAxNTQ4MjA0NzQ0MzU3MjQ1NTk2IiwiZW1haWwiOiJzYXVyYWJoZ3VwdGE5ODk4OUBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6IjE2YWZ4T01WbnZraC1Ed25reGN0MmciLCJuYW1lIjoic2F1cmFiaCBndXB0YSIsInBpY3R1cmUiOiJodHRwczovL2xoNC5nb29nbGV1c2VyY29udGVudC5jb20vLXpRaXlNOTJtMGlRL0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FBS1dKSk0xRXBCNmVPNGpKNTFOdWoyWS10MldwcmVWOUEvczk2LWMvcGhvdG8uanBnIiwiZ2l2ZW5fbmFtZSI6InNhdXJhYmgiLCJmYW1pbHlfbmFtZSI6Imd1cHRhIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE1ODY2Mjc1MjgsImV4cCI6MTU4NjYzMTEyOCwianRpIjoiYWE4NzdiYmZlZGI5M2M2OTQyMDJkYmJiYzQ0YWI3YmQ4ZDVlNmRlYSJ9.sklez9DjL1u7YAKzOMvy20M_1MazLmczPwpAPymlhYLc-MqRIHdAEig8Etz4RdKsPNEUjtaLsEBcWzbrsCQtlQNY0EJSW2GKTAwTWFFsO2fsC72oyP57_r8StJpv-glGta3Wo04Jl2-H4W8MhBFB_j0I5Na8xyPp2Psi8OrZ_MlCtBKI_11X4kX1X4ncyDr4nOZtJ7KtrZ-b1MNe4TK35eixcHFr3gZH17MFYSUy7r-_YDMD-1Iyc3sm9AU7hUJ1va_mqbhriajovN2aUNnxJiLnDKi-VfPbUrAGJXjvsa_VmbvBXkbPtOwn2-WlTtXISDW6MvSshhXjmV1TWHpGug'),
(111192222, 'shubham gupta', 'shubhamgupta98989@gmail.com', 'https://lh4.googleusercontent.com/-zQiyM92m0iQ/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJM1EpB6eO4jJ51Nuj2Y-t2WpreV9A/s96-c/photo.jpg', 'shubham', 'gupta', 'ya29.a0Ae4lvC1j7byku5cusDlJL00ofPcXSdKMLcpY0Zaxf13Zp51zNWJOVUm-PRIWk1nZl3v3sL0YPfa8vZJPPlOTqmNyeazUYqwBLcwV91X_Nc9YKTJ8NOPeh5ER0oOsPM0o11drHs6a3kGBKJBMN_p2TqcAH1ZlRTlSuPM', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjZmY2Y0MTMyMjQ3NjUxNTZiNDg3NjhhNDJmYWMwNjQ5NmEzMGZmNWEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXpwIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTAxNTQ4MjA0NzQ0MzU3MjQ1NTk2IiwiZW1haWwiOiJzYXVyYWJoZ3VwdGE5ODk4OUBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6IjE2YWZ4T01WbnZraC1Ed25reGN0MmciLCJuYW1lIjoic2F1cmFiaCBndXB0YSIsInBpY3R1cmUiOiJodHRwczovL2xoNC5nb29nbGV1c2VyY29udGVudC5jb20vLXpRaXlNOTJtMGlRL0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FBS1dKSk0xRXBCNmVPNGpKNTFOdWoyWS10MldwcmVWOUEvczk2LWMvcGhvdG8uanBnIiwiZ2l2ZW5fbmFtZSI6InNhdXJhYmgiLCJmYW1pbHlfbmFtZSI6Imd1cHRhIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE1ODY2Mjc1MjgsImV4cCI6MTU4NjYzMTEyOCwianRpIjoiYWE4NzdiYmZlZGI5M2M2OTQyMDJkYmJiYzQ0YWI3YmQ4ZDVlNmRlYSJ9.sklez9DjL1u7YAKzOMvy20M_1MazLmczPwpAPymlhYLc-MqRIHdAEig8Etz4RdKsPNEUjtaLsEBcWzbrsCQtlQNY0EJSW2GKTAwTWFFsO2fsC72oyP57_r8StJpv-glGta3Wo04Jl2-H4W8MhBFB_j0I5Na8xyPp2Psi8OrZ_MlCtBKI_11X4kX1X4ncyDr4nOZtJ7KtrZ-b1MNe4TK35eixcHFr3gZH17MFYSUy7r-_YDMD-1Iyc3sm9AU7hUJ1va_mqbhriajovN2aUNnxJiLnDKi-VfPbUrAGJXjvsa_VmbvBXkbPtOwn2-WlTtXISDW6MvSshhXjmV1TWHpGug'),
(1111982222, 'shubham gupta', 'shubhamgupta98989@gmail.com', 'https://lh4.googleusercontent.com/-zQiyM92m0iQ/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJM1EpB6eO4jJ51Nuj2Y-t2WpreV9A/s96-c/photo.jpg', 'shubham', 'gupta', 'ya29.a0Ae4lvC1j7byku5cusDlJL00ofPcXSdKMLcpY0Zaxf13Zp51zNWJOVUm-PRIWk1nZl3v3sL0YPfa8vZJPPlOTqmNyeazUYqwBLcwV91X_Nc9YKTJ8NOPeh5ER0oOsPM0o11drHs6a3kGBKJBMN_p2TqcAH1ZlRTlSuPM', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjZmY2Y0MTMyMjQ3NjUxNTZiNDg3NjhhNDJmYWMwNjQ5NmEzMGZmNWEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXpwIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiMTA0ODQ5MTcxNjM3LWNlOWFqZm8yZzZ1bGVpYzZkNGxhb2ZjYTZhMWdvdmlsLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTAxNTQ4MjA0NzQ0MzU3MjQ1NTk2IiwiZW1haWwiOiJzYXVyYWJoZ3VwdGE5ODk4OUBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6IjE2YWZ4T01WbnZraC1Ed25reGN0MmciLCJuYW1lIjoic2F1cmFiaCBndXB0YSIsInBpY3R1cmUiOiJodHRwczovL2xoNC5nb29nbGV1c2VyY29udGVudC5jb20vLXpRaXlNOTJtMGlRL0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FBS1dKSk0xRXBCNmVPNGpKNTFOdWoyWS10MldwcmVWOUEvczk2LWMvcGhvdG8uanBnIiwiZ2l2ZW5fbmFtZSI6InNhdXJhYmgiLCJmYW1pbHlfbmFtZSI6Imd1cHRhIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE1ODY2Mjc1MjgsImV4cCI6MTU4NjYzMTEyOCwianRpIjoiYWE4NzdiYmZlZGI5M2M2OTQyMDJkYmJiYzQ0YWI3YmQ4ZDVlNmRlYSJ9.sklez9DjL1u7YAKzOMvy20M_1MazLmczPwpAPymlhYLc-MqRIHdAEig8Etz4RdKsPNEUjtaLsEBcWzbrsCQtlQNY0EJSW2GKTAwTWFFsO2fsC72oyP57_r8StJpv-glGta3Wo04Jl2-H4W8MhBFB_j0I5Na8xyPp2Psi8OrZ_MlCtBKI_11X4kX1X4ncyDr4nOZtJ7KtrZ-b1MNe4TK35eixcHFr3gZH17MFYSUy7r-_YDMD-1Iyc3sm9AU7hUJ1va_mqbhriajovN2aUNnxJiLnDKi-VfPbUrAGJXjvsa_VmbvBXkbPtOwn2-WlTtXISDW6MvSshhXjmV1TWHpGug');

-- --------------------------------------------------------

--
-- Table structure for table `reviwer_review_movieinfo`
--

CREATE TABLE IF NOT EXISTS `reviwer_review_movieinfo` (
  `movie_info_id` int(11) NOT NULL,
  `reviwer_id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL,
  KEY `Reviwer_Review_MovieInfo_fk0` (`movie_info_id`),
  KEY `Reviwer_Review_MovieInfo_fk1` (`reviwer_id`),
  KEY `Reviwer_Review_MovieInfo_fk2` (`review_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviwer_review_movieinfo`
--

INSERT INTO `reviwer_review_movieinfo` (`movie_info_id`, `reviwer_id`, `review_id`) VALUES
(1, 1, 3),
(1, 2, 6),
(2, 1, 1),
(2, 2, 2),
(2, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `writer`
--

CREATE TABLE IF NOT EXISTS `writer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `genre` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `writer`
--

INSERT INTO `writer` (`id`, `name`, `genre`) VALUES
(1, 'javed Akhtar', ''),
(2, 'Salim Khan', ''),
(3, 'Abhijat Joshi', ''),
(4, 'Kiran Kher', '');
