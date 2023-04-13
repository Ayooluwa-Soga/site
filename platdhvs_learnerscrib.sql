-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 03, 2023 at 08:34 AM
-- Server version: 10.3.38-MariaDB-log-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `platdhvs_learnerscrib`
--

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `Id` int(11) NOT NULL,
  `File_Name` longtext NOT NULL,
  `File_Path` longtext NOT NULL,
  `File_Description` longtext NOT NULL,
  `File_Type` varchar(99) NOT NULL,
  `Course_Code` varchar(99) NOT NULL,
  `Course_Title` longtext NOT NULL,
  `Course_Level` varchar(99) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `Ratings` longtext NOT NULL,
  `Download_Count` bigint(20) NOT NULL DEFAULT 0,
  `View_Count` bigint(20) NOT NULL DEFAULT 0,
  `When_Uploaded` date NOT NULL DEFAULT current_timestamp(),
  `Is_Deleted` int(11) NOT NULL DEFAULT 0,
  `Is_Reported_Count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`Id`, `File_Name`, `File_Path`, `File_Description`, `File_Type`, `Course_Code`, `Course_Title`, `Course_Level`, `User_Id`, `Ratings`, `Download_Count`, `View_Count`, `When_Uploaded`, `Is_Deleted`, `Is_Reported_Count`) VALUES
(1, 'DCI Complete Note', 'DCI_Complete_Note.pdf', 'A complete Note for the course data Communication And Information Theory, a 400 level course in the University of Ilorin', 'pdf', 'CSC 422', 'Data Communication And Information Theory', '400', 1, '[]', 23, 107, '2022-01-22', 0, 0),
(2, 'Data Mining ', 'Data_Mining_.pdf', 'This pdf includes the explanation of the data mining techniques, methods and areas were it can be implemented', 'pdf', 'CSC425', 'Data mining', '400', 6, '[]', 5, 10, '2022-01-23', 0, 0),
(3, 'EDU  412 Summary', 'EDU__412_Summary.pdf', 'Summary of the textbook of Edu 412, principle and practice of instruction.', 'pdf', 'EDU 412', ' Principle And Practice Of Instruction', '400', 1, '[]', 13, 35, '2022-01-26', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `Name` varchar(99) NOT NULL,
  `Username` varchar(99) NOT NULL,
  `Email` varchar(99) NOT NULL,
  `Password` varchar(99) NOT NULL,
  `Is_Deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Name`, `Username`, `Email`, `Password`, `Is_Deleted`) VALUES
(1, 'Luis Nabith', 'Casper', 'divine2nab@gmail.com', '$2y$10$LK4hkPkwqOxQK37NugIOX.F76QOdVqwWSRBN1.9DazU2.O2JyYVw6', 0),
(2, 'Olaboshinde Eniola', 'Eniola', 'olaboshindeeniolafavour@gmail.com', '$2y$10$FI/U.Ms6Zh3puvvq475Uv.tIncwvaPmo7YIKZV4sG..MpgthRzM72', 0),
(3, 'Aremu folajomi', 'Olaf', 'Folajomiaremu@gmail.com', '$2y$10$/jkhWZq5iN.ThDkVL05V/efiVZwuKuq6TJwKunpOPxNpNXHBRLh2C', 0),
(4, 'OLUWAFEMI ADEBAYO', 'adebayocharles7', 'adebayocharles7@gmail.com', '$2y$10$JIPSB.zzdGHX5BRKVwpD/u/mTnCnUolGCJpHskxSsTZuyqHQbKJhC', 0),
(5, 'Abdulazeez Mukadeem', 'Emkay', 'abdulazeezmukadeem1@gmail.com', '$2y$10$ivWjDbamQHEdhv18hIxchuQTa9e4iIjXUGUq2kqDm0/BvzqQGgHN6', 0),
(6, 'Abdullahi Olawale', 'Atlas', 'abdullahiolawale09@gmail.com', '$2y$10$2zylDK08EGaZzojhQ76q4ew7lLEvAPU9Ga/OYc6o/Dc28JRMf7kwq', 0),
(7, 'Jamiu Adeniyi', 'Jaymeks', 'adeniyijamiu628@gmail.com', '$2y$10$RYYDP/TL00/VjOX7VfWvbesrQsViwh7GQJoaD/KaLE4blNLelaTZC', 0),
(8, 'Jamiu Olamilekan Jimoh', 'Jamiu', 'hyperjay55@gmail.com', '$2y$10$KLGq4p6xL6DnKelQYn3lMer1FMvbEb4tG3mWTmTMon7UBy5GAaGIa', 0),
(9, 'Adeniyi Adeyemi Samuel', 'ScholarAdeyemi', 'conqueststat@gmail.com', '$2y$10$0smvuizCkK0tv.0D5JpBl.Z6YU.iufzeXLQ1BWbWwTavxDQWlonFe', 0),
(10, 'Ekwebelem', 'Onyemaechi ', 'fursonmyworld@gmail.com', '$2y$10$6CohP4Mui2r.uNCyPsId2ecPwiXUXpfaLVhRZWAKw3MuKbdnRoEG6', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
