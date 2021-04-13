-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2021 at 02:18 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newlibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `BookId` int(11) NOT NULL,
  `BookName` char(100) DEFAULT NULL,
  `BookAuthor` char(100) DEFAULT NULL,
  `YearOfPub` year(4) DEFAULT NULL,
  `Price` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`BookId`, `BookName`, `BookAuthor`, `YearOfPub`, `Price`) VALUES
(1, 'Zeitgeist: Moving Forward', 'Ruby Wooddisse', 2007, '€31,23'),
(2, 'Broken Flowers', 'Fae Hacquoil', 2004, '€3,63'),
(3, 'The Confessions of Bernhard Goetz', 'Grethel Kauffman', 2007, '€29,07'),
(4, 'English Patient, The', 'Ivan Allott', 2009, '€38,74'),
(5, 'Follow the Bitch', 'Redd Jellis', 1995, '€29,97'),
(6, 'Funeral, The (Ososhiki)', 'Clovis Geeson', 1997, '€37,67'),
(7, 'Prefab People, The (Panelkapcsolat)', 'Wittie Readwin', 2007, '€1,48'),
(8, 'Amateurs, The (Moguls, The)', 'Alfie Wehden', 2010, '€18,95'),
(9, 'What a Girl Wants', 'Bobinette Devita', 1990, '€29,58'),
(10, 'Adopted', 'Krishna Davidsson', 2006, '€12,75'),
(11, 'President\'s Lady, The', 'Ariel Chelsom', 1998, '€26,49'),
(12, 'All the King\'s Men', 'Katrina Cappleman', 2004, '€20,25'),
(13, 'Summer Wars (Samâ wôzu)', 'Rozina Melbury', 2000, '€5,89'),
(14, 'Hondo', 'Ailbert Geerits', 1995, '€21,73'),
(15, 'Black Pond', 'Drud Neville', 1991, '€39,96'),
(16, 'American Adobo', 'Valentia Kubanek', 1998, '€4,23'),
(17, 'Alice', 'Kristal Canacott', 1973, '€7,07'),
(18, 'I Married a Witch', 'Georgina Dimitriades', 1985, '€32,80'),
(19, 'Twins', 'Leonid Featenby', 1996, '€10,43'),
(20, 'Meeting Evil', 'Marcie Carrigan', 2005, '€8,20');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `PubId` int(11) NOT NULL,
  `PubName` char(100) DEFAULT NULL,
  `PubAddress` char(100) DEFAULT NULL,
  `PubPhone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`PubId`, `PubName`, `PubAddress`, `PubPhone`) VALUES
(1, 'Gibson-Beahan', '9 Shelley Circle', '296-781-7446'),
(2, 'Larson-Funk', '791 Truax Lane', '628-636-6793'),
(3, 'Kunde-Murray', '61 Ridgeway Crossing', '611-590-8552'),
(4, 'Berge, Collins and Steuber', '53735 Village Green Trail', '367-686-0841'),
(5, 'Davis, Lemke and Hackett', '0 Logan Park', '953-423-0191'),
(6, 'Becker, Klein and Romaguera', '65 Roxbury Avenue', '971-909-8711'),
(7, 'Simonis LLC', '95301 Marcy Parkway', '927-554-5058'),
(8, 'Barrows-Beahan', '82 Dryden Circle', '389-216-2221'),
(9, 'Ritchie, Orn and Bode', '67273 Walton Center', '309-926-3363'),
(10, 'Lemke-Schaden', '4 Summer Ridge Trail', '998-224-0708'),
(11, 'Abbott-Schumm', '17289 Maple Wood Place', '407-926-4257'),
(12, 'Maggio LLC', '5 Dakota Terrace', '629-752-8931'),
(13, 'Orn, Walter and Collier', '9 Clyde Gallagher Parkway', '963-730-4053'),
(14, 'Douglas, Pacocha and Runolfsdottir', '108 3rd Court', '394-876-1663'),
(15, 'Wyman, Pouros and Larson', '425 1st Way', '486-362-5287'),
(16, 'Hintz-Koepp', '61802 Oriole Circle', '851-464-9280'),
(17, 'Wehner Inc', '37 Briar Crest Center', '494-358-1220'),
(18, 'Sauer-Medhurst', '9 Northland Drive', '161-254-6497'),
(19, 'Sanford Group', '39 Northland Crossing', '353-894-9955'),
(20, 'Zulauf-Jast', '96 Sunfield Lane', '262-851-0447');

-- --------------------------------------------------------

--
-- Table structure for table `reader`
--

CREATE TABLE `reader` (
  `ReaderId` int(11) NOT NULL,
  `ReaderName` char(100) DEFAULT NULL,
  `ReaderAddress` char(100) DEFAULT NULL,
  `ReaderPhone` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `StoreId` int(11) NOT NULL,
  `StoreName` char(100) DEFAULT NULL,
  `StoreAddress` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`StoreId`, `StoreName`, `StoreAddress`) VALUES
(1, 'Jacobi-Keebler', '244 Little Fleur Hill'),
(2, 'Effertz and Sons', '11828 Sage Lane'),
(3, 'Durgan LLC', '03 Northland Avenue'),
(4, 'Friesen-Parisian', '628 Redwing Drive'),
(5, 'Hauck-Little', '2 Sachtjen Point'),
(6, 'Kunde, Mohr and Ritchie', '7 Northview Avenue'),
(7, 'Oberbrunner, Jakubowski and Yundt', '06616 Parkside Avenue'),
(8, 'Hammes, Turner and Waelchi', '2 Birchwood Pass'),
(9, 'Turcotte, McCullough and Hessel', '82500 Sachs Lane'),
(10, 'Hilll, Kassulke and Stehr', '934 Bay Point'),
(11, 'Oberbrunner-Herzog', '95 Acker Plaza'),
(12, 'Baumbach, Krajcik and Mohr', '76084 La Follette Center'),
(13, 'Adams, Gutkowski and O\'Hara', '5106 Vermont Parkway'),
(14, 'Corwin and Sons', '770 West Avenue'),
(15, 'Oberbrunner, Feil and O\'Connell', '673 Gale Drive'),
(16, 'Spinka and Sons', '15689 Coleman Center'),
(17, 'Cremin Inc', '70090 Kedzie Court'),
(18, 'Schulist Group', '2 Kinsman Terrace'),
(19, 'Zboncak, Veum and Jacobson', '82610 Thackeray Plaza'),
(20, 'Cormier-Schaefer', '3894 Corry Center');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`BookId`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`PubId`);

--
-- Indexes for table `reader`
--
ALTER TABLE `reader`
  ADD PRIMARY KEY (`ReaderId`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`StoreId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`BookId`) REFERENCES `store` (`StoreId`);

--
-- Constraints for table `reader`
--
ALTER TABLE `reader`
  ADD CONSTRAINT `reader_ibfk_1` FOREIGN KEY (`ReaderId`) REFERENCES `store` (`StoreId`),
  ADD CONSTRAINT `reader_ibfk_2` FOREIGN KEY (`ReaderId`) REFERENCES `books` (`BookId`);

--
-- Constraints for table `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `store_ibfk_1` FOREIGN KEY (`StoreId`) REFERENCES `publisher` (`PubId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
