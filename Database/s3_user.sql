-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2018 at 01:44 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s3_user`
--

-- --------------------------------------------------------

--
-- Table structure for table `userbase`
--

CREATE TABLE `userbase` (
  `ID_Base` int(11) NOT NULL,
  `ID_User` int(11) NOT NULL,
  `BaseNumber` int(11) DEFAULT NULL,
  `Farm` double NOT NULL,
  `Wood` double NOT NULL,
  `Stone` double NOT NULL,
  `Metal` double NOT NULL,
  `UpgradeWait` text,
  `UpgradeTimeInt` int(11) DEFAULT NULL,
  `UpgradeTimeText` text,
  `UnitTransferType` int(11) DEFAULT NULL,
  `UnitTransferQuality` int(11) DEFAULT NULL,
  `UnitTranferTimeInt` int(11) DEFAULT NULL,
  `UnitTransferTimeText` text,
  `UnitTransfer_ID_Base` int(11) DEFAULT NULL,
  `TrainingUnitType` int(11) DEFAULT NULL,
  `TrainingUnit_int` int(11) DEFAULT NULL,
  `TrainningUnit_text` text,
  `TrainingQuality` int(11) DEFAULT NULL,
  `SumUnitQuality` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID_User` int(11) NOT NULL,
  `UserName` text NOT NULL,
  `Password` text NOT NULL,
  `Email` text NOT NULL,
  `NameInGame` text,
  `TimeLogIn` int(11) DEFAULT '0',
  `TimeLogOut` int(11) DEFAULT '0',
  `DateCreate` text,
  `DateCreate_int` int(11) NOT NULL DEFAULT '0',
  `Model_Device` int(11) DEFAULT '0',
  `Ram_Device` int(11) DEFAULT '0',
  `BlockedTime` int(11) DEFAULT '0',
  `BlockedForever` tinyint(1) DEFAULT '0',
  `Password_Recover_Key` text,
  `Password_Recover_Time` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID_User`, `UserName`, `Password`, `Email`, `NameInGame`, `TimeLogIn`, `TimeLogOut`, `DateCreate`, `DateCreate_int`, `Model_Device`, `Ram_Device`, `BlockedTime`, `BlockedForever`, `Password_Recover_Key`, `Password_Recover_Time`) VALUES
(3, 'manhquan', '', '', NULL, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `userbase`
--
ALTER TABLE `userbase`
  ADD PRIMARY KEY (`ID_Base`),
  ADD KEY `ID` (`ID_User`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID_User`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `userbase`
--
ALTER TABLE `userbase`
  MODIFY `ID_Base` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID_User` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `userbase`
--
ALTER TABLE `userbase`
  ADD CONSTRAINT `userbase_ibfk_1` FOREIGN KEY (`ID_User`) REFERENCES `users` (`ID_User`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
