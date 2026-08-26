-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2026 at 04:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `samp`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `pID` int(11) NOT NULL,
  `pName` varchar(32) CHARACTER SET cp1251 COLLATE cp1251_bin NOT NULL,
  `pPassword` varchar(32) CHARACTER SET cp1251 COLLATE cp1251_bin NOT NULL,
  `pass_salt` varchar(6) NOT NULL,
  `pKeyIp` varchar(16) CHARACTER SET cp1251 COLLATE cp1251_bin NOT NULL DEFAULT '',
  `pMail` varchar(32) CHARACTER SET cp1251 COLLATE cp1251_bin NOT NULL DEFAULT '',
  `pIpReg` varchar(16) CHARACTER SET cp1251 COLLATE cp1251_bin NOT NULL,
  `pIp` varchar(32) CHARACTER SET cp1251 COLLATE cp1251_bin NOT NULL,
  `pOnline` varchar(32) CHARACTER SET cp1251 COLLATE cp1251_bin NOT NULL,
  `pDataReg` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pReferal` int(11) NOT NULL DEFAULT 0,
  `pLogin` int(11) NOT NULL,
  `pSex` int(11) NOT NULL,
  `pHP` float NOT NULL DEFAULT 100,
  `pSatiety` float NOT NULL DEFAULT 100,
  `pSkin` int(11) NOT NULL DEFAULT -1,
  `pCash` int(11) NOT NULL DEFAULT 250000,
  `pBank` int(11) NOT NULL DEFAULT 0,
  `pLevel` int(11) NOT NULL DEFAULT 1,
  `pExp` int(11) NOT NULL DEFAULT 1,
  `u_setspawn` int(3) NOT NULL DEFAULT 0,
  `pMember` int(11) NOT NULL DEFAULT 0,
  `pRank` int(11) NOT NULL DEFAULT 0,
  `pLeader` int(11) NOT NULL DEFAULT 0,
  `pJob` int(11) NOT NULL DEFAULT 0,
  `pDrugs` int(11) NOT NULL DEFAULT 0,
  `pPatron` int(11) NOT NULL DEFAULT 0,
  `pMetall` int(11) NOT NULL DEFAULT 0,
  `pUseCar` int(11) NOT NULL DEFAULT 0,
  `pDonatechet` int(11) NOT NULL DEFAULT 0,
  `pProducts` varchar(16) NOT NULL DEFAULT '0,0,0',
  `pNumber` int(11) DEFAULT NULL,
  `pSummaNumber` int(11) DEFAULT NULL,
  `pSatietyBarActive` int(11) NOT NULL DEFAULT 100,
  `pZakon` int(11) NOT NULL DEFAULT 0,
  `pWarn` int(11) NOT NULL DEFAULT 0,
  `pfWarn` int(11) NOT NULL DEFAULT 0,
  `pWanted` int(11) NOT NULL DEFAULT 0,
  `pMuted` int(11) NOT NULL DEFAULT 0,
  `pPayCheck` int(11) NOT NULL DEFAULT 0,
  `pUpdPlayer` varchar(12) NOT NULL DEFAULT '0,0,0,0,0',
  `pMaxSchet` int(11) NOT NULL DEFAULT 0,
  `pPodtvMail` int(11) NOT NULL DEFAULT 0,
  `pCheckIp` int(11) NOT NULL DEFAULT 0,
  `pCheckGoogle` int(11) NOT NULL DEFAULT 0,
  `pCodeGoogle` varchar(17) NOT NULL DEFAULT '',
  `pPrison` int(11) NOT NULL DEFAULT 0,
  `pMestoPrison` int(11) NOT NULL DEFAULT 0,
  `pGun` varchar(64) NOT NULL DEFAULT '0,0,0,0,0,0,0,0,0,0,0,0,0',
  `pAmmo` varchar(64) NOT NULL DEFAULT '0,0,0,0,0,0,0,0,0,0,0,0,0',
  `pBolnica` int(11) NOT NULL DEFAULT 0,
  `pFrSkin` int(11) NOT NULL DEFAULT 0,
  `pLicenses` varchar(32) NOT NULL DEFAULT '',
  `pGunSkill` varchar(64) NOT NULL DEFAULT '',
  `pText` int(11) NOT NULL DEFAULT 0,
  `pHeals` int(11) NOT NULL DEFAULT 0,
  `pRouble` int(11) NOT NULL DEFAULT 0,
  `pVip` int(11) NOT NULL DEFAULT 0,
  `pVipTime` int(11) NOT NULL DEFAULT 0,
  `pRobleCheck` int(11) NOT NULL DEFAULT 0,
  `cModel` varchar(32) NOT NULL DEFAULT '0,0,0',
  `cColor1` varchar(32) NOT NULL DEFAULT '0,0,0',
  `cColor2` varchar(32) NOT NULL DEFAULT '0,0,0',
  `cNumber` varchar(46) NOT NULL DEFAULT 'None,None,None',
  `cLock` varchar(16) NOT NULL DEFAULT '0,0,0',
  `cFuel` varchar(32) NOT NULL DEFAULT '100.0,100.0,100.0',
  `cCost` varchar(46) NOT NULL DEFAULT '0,0,0',
  `cProbeg` varchar(46) NOT NULL DEFAULT '0.0,0.0,0.0',
  `cHeal` varchar(46) NOT NULL DEFAULT '1000.0,1000.0,1000.0',
  `cDamagePanel` varchar(32) NOT NULL DEFAULT '0,0,0',
  `cDamageDoors` varchar(32) NOT NULL DEFAULT '0,0,0',
  `cDamageLights` varchar(32) NOT NULL DEFAULT '0,0,0',
  `cDamageTires` varchar(32) NOT NULL DEFAULT '0,0,0',
  `cWheels` varchar(32) NOT NULL DEFAULT '0,0,0',
  `cSpoiler` varchar(32) NOT NULL DEFAULT '0,0,0',
  `cBumper1` varchar(32) NOT NULL DEFAULT '0,0,0',
  `cBumper2` varchar(32) NOT NULL DEFAULT '0,0,0',
  `cNitro` varchar(32) NOT NULL DEFAULT '0,0,0',
  `cHydrawlic` varchar(32) NOT NULL DEFAULT '0,0,0',
  `cHood` varchar(32) NOT NULL DEFAULT '0,0,0',
  `cRoof` varchar(32) NOT NULL DEFAULT '0,0,0',
  `cSideskirt` varchar(32) NOT NULL DEFAULT '0,0,0',
  `cLamps` varchar(32) NOT NULL DEFAULT '0,0,0',
  `cExhaust` varchar(32) NOT NULL DEFAULT '0,0,0',
  `cStereo` varchar(32) NOT NULL DEFAULT '0,0,0',
  `cVentRight` varchar(32) NOT NULL DEFAULT '0,0,0',
  `cVentLeft` varchar(32) NOT NULL DEFAULT '0,0,0',
  `cSost` varchar(32) NOT NULL DEFAULT '100,100,100',
  `cPaintJobs` varchar(32) NOT NULL DEFAULT '255,255,255',
  `engine_tune` varchar(64) NOT NULL DEFAULT '0,0,0,0,0|0,0,0,0,0|0,0,0,0,0',
  `brake_tune` varchar(64) NOT NULL DEFAULT '0,0,0,0,0|0,0,0,0,0|0,0,0,0,0',
  `pHotel` int(11) NOT NULL DEFAULT -1,
  `pDrugMarkAmount` int(11) NOT NULL DEFAULT 0,
  `pDrugMarkID` int(11) NOT NULL DEFAULT 0,
  `warehouse_quest_id` int(11) NOT NULL DEFAULT 0,
  `warehouse_quest_status` int(11) NOT NULL DEFAULT 0,
  `warehouse_quest_progress` int(11) NOT NULL DEFAULT 0,
  `warehouse_quest_block` int(11) NOT NULL DEFAULT 0,
  `car_park` varchar(64) NOT NULL DEFAULT '0.0,0.0,0.0,0.0|0.0,0.0,0.0,0.0|0.0,0.0,0.0,0.0',
  `pMask` int(11) NOT NULL DEFAULT 0,
  `pClip` int(11) NOT NULL DEFAULT 0,
  `b_quest_id` int(11) NOT NULL DEFAULT 0,
  `b_quest_status` int(11) NOT NULL DEFAULT 0,
  `b_quest_progress` int(11) NOT NULL DEFAULT 0,
  `pInfSatiety` int(11) NOT NULL DEFAULT 100,
  `pRepairKit` int(11) NOT NULL DEFAULT 0,
  `pElecVote` int(11) NOT NULL DEFAULT 0,
  `pInGameSeconds` int(11) NOT NULL DEFAULT 0,
  `pInGameAFKSeconds` int(11) NOT NULL DEFAULT 0,
  `pInGameHourSeconds` int(11) NOT NULL DEFAULT 0,
  `pClock` int(11) NOT NULL DEFAULT 1,
  `pFreeRoulet` int(11) NOT NULL DEFAULT 0,
  `last_curdate` int(11) NOT NULL DEFAULT 0,
  `last_hour` int(11) NOT NULL DEFAULT 0,
  `pDrugDep` int(11) NOT NULL DEFAULT 0,
  `pMoneyCase` int(11) NOT NULL DEFAULT 1,
  `pVkId` int(11) NOT NULL DEFAULT 0,
  `e_player` varchar(64) NOT NULL DEFAULT '0.0,0.0,0.0,0,0,0',
  `promo` int(3) NOT NULL DEFAULT 0,
  `u_family` int(6) NOT NULL DEFAULT 0,
  `u_family_rank` int(6) NOT NULL DEFAULT 0,
  `u_family_mute` int(6) NOT NULL DEFAULT 0,
  `u_family_date` date DEFAULT NULL,
  `u_accessories` varchar(68) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0',
  `u_accessories_used` varchar(68) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0',
  `pHungry` int(11) NOT NULL DEFAULT 0,
  `pWater` int(11) NOT NULL DEFAULT 0,
  `pAutoLogin` int(11) NOT NULL DEFAULT 0,
  `pHoster` int(5) NOT NULL DEFAULT 0,
  `pAddiction` int(11) NOT NULL DEFAULT 0,
  `pLaw` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`pID`, `pName`, `pPassword`, `pass_salt`, `pKeyIp`, `pMail`, `pIpReg`, `pIp`, `pOnline`, `pDataReg`, `pReferal`, `pLogin`, `pSex`, `pHP`, `pSatiety`, `pSkin`, `pCash`, `pBank`, `pLevel`, `pExp`, `u_setspawn`, `pMember`, `pRank`, `pLeader`, `pJob`, `pDrugs`, `pPatron`, `pMetall`, `pUseCar`, `pDonatechet`, `pProducts`, `pNumber`, `pSummaNumber`, `pSatietyBarActive`, `pZakon`, `pWarn`, `pfWarn`, `pWanted`, `pMuted`, `pPayCheck`, `pUpdPlayer`, `pMaxSchet`, `pPodtvMail`, `pCheckIp`, `pCheckGoogle`, `pCodeGoogle`, `pPrison`, `pMestoPrison`, `pGun`, `pAmmo`, `pBolnica`, `pFrSkin`, `pLicenses`, `pGunSkill`, `pText`, `pHeals`, `pRouble`, `pVip`, `pVipTime`, `pRobleCheck`, `cModel`, `cColor1`, `cColor2`, `cNumber`, `cLock`, `cFuel`, `cCost`, `cProbeg`, `cHeal`, `cDamagePanel`, `cDamageDoors`, `cDamageLights`, `cDamageTires`, `cWheels`, `cSpoiler`, `cBumper1`, `cBumper2`, `cNitro`, `cHydrawlic`, `cHood`, `cRoof`, `cSideskirt`, `cLamps`, `cExhaust`, `cStereo`, `cVentRight`, `cVentLeft`, `cSost`, `cPaintJobs`, `engine_tune`, `brake_tune`, `pHotel`, `pDrugMarkAmount`, `pDrugMarkID`, `warehouse_quest_id`, `warehouse_quest_status`, `warehouse_quest_progress`, `warehouse_quest_block`, `car_park`, `pMask`, `pClip`, `b_quest_id`, `b_quest_status`, `b_quest_progress`, `pInfSatiety`, `pRepairKit`, `pElecVote`, `pInGameSeconds`, `pInGameAFKSeconds`, `pInGameHourSeconds`, `pClock`, `pFreeRoulet`, `last_curdate`, `last_hour`, `pDrugDep`, `pMoneyCase`, `pVkId`, `e_player`, `promo`, `u_family`, `u_family_rank`, `u_family_mute`, `u_family_date`, `u_accessories`, `u_accessories_used`, `pHungry`, `pWater`, `pAutoLogin`, `pHoster`, `pAddiction`, `pLaw`) VALUES
(10, 'Mjen_King', '2c28d591714ecf6e02c78f6cb512d7fa', 'Kd9DW', '', 'MJEN@BHM.COM', '192.168.43.1', '192.168.43.1', '2000.01.01', '2000.01.01', 1, 0, 1, 1000, 100, 85, 10000000, 0, 100, 0, 2, 0, 0, 0, 0, 10, 20, 30, 0, 1900000, '1,1,0', 123456, 40, 100, 11, 0, 0, 0, 0, 0, '0,0,0,0,0', 0, 50, 0, 0, '', 0, 0, '0,0,24,25,29,31,34,38,39,41,0,46,0', '0,0,600,323,1300,710,32,15,39,794,0,1,0', 80, 84, '1,1,1,1', '100,100,100,100,100,100', 0, 2, 1000000000, 0, 0, 0, '559,550,522', '6,233,147', '1,0,220', ',,', '0,0,0', '968.869628,986.887207,811.496093', '0,0,0', '6.990107,2.439531,41.913135', '0.000000,812.801513,1000.000000	', '0,3145728,0', '67372036,0,0', '0,0,0', '4,5,4', '1079,1078,1077', '1158,1003,0', '1160,0,0', '1159,0,0', '0,0,0', '0,0,0', '0,1004,0', '0,0,0', '1068,0,0', '0,0,0', '1066,1020,0', '0,0,0', '0,1144,0', '0,1145,0', '94,0,0', '1,0,0', '0,0,0,0,0|0,0,0,0,0|0,0,0,0,0|0,0,0,0,0', '0,0,0,0,0|0,0,0,0,0|0,0,0,0,0|0,0,0,0,0', 0, 0, 0, 0, 0, 0, 0, '1169.3,-1754.3,13.1,346.4|1169.0,-1757.3,13.1,62.0|1167.8,-1752.', 1, 12, 13, 14, 15, 16, 17, 18, 9824, 3283, 1978, 19, 10, 266, 20, 11, 19, 20, '-648.526489,-912.786987,1436.173583,8,6,1663953199', 1234, 0, 0, 0, '0000-00-00', '0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0', 0, 0, 1, 10, 0, 0),
(1006, 'Amir_Baazi', '244b2d1433e7eda46cbb84f097a5743b', 'Gk8iv', '', '', '192.168.1.72', '192.168.1.72', '2024.09.29', '2024.09.27', 0, 0, 1, 100, 100, 33, 1330607666, 1926, 12, 24, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, '1,0,0', 111111, 0, 100, 11, 0, 0, 0, 0, 0, '1,1,1,0,0', 0, 0, 0, 0, '', 0, 0, '0,0,0,0,0,31,0,0,0,41,0,0,0', '0,0,0,0,0,0,0,0,0,0,0,0,0', 0, 0, '1,1,1,1', '100,100,100,100,100,100', 0, 2, 1793782273, 3, 1730093145, 0, '541,411,508', '1,0,0', '126,3,3', ',,', '0,0,0', '94.640190,92.620285,0.000000', '1800000,0,0', '0.743797,2.434493,0.000000', '939.207519,774.036560,1000.000000	', '17825792,36896803,0', '512,33686020,0', '0,5,0', '0,0,0', '0,0,0', '0,0,0', '0,0,0', '0,0,0', '0,0,0', '0,0,0', '0,0,0', '0,0,0', '0,0,0', '0,0,0', '0,0,0', '0,0,0', '0,0,0', '0,0,0', '100,87,0', '255,255,0', '1,1,1,1,1|1,1,1,1,1|0,0,0,0,0', '1,1,1,1,1|1,1,1,1,1|0,0,0,0,0', -1, 0, 0, 0, 0, 0, 0, '1154.3,-1746.4,13.1,4.0|1152.3,-1205.4,19.0,356.2|1153.3,-1744.3', 1, 0, 0, 0, 0, 1, 0, 0, 150, 7, 150, 1, 0, 273, 5, 0, 0, 0, '67.260749,-1543.873046,5.059318,0,0,1727576465', 0, 1, 3, 0, '2024-09-28', '0|0|19590|0|00|0|0|0', '0|0|0|0|00|0|0|0', 39, 0, 0, 0, 0, 11);

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `aID` int(11) NOT NULL,
  `aModel` int(11) NOT NULL,
  `aVirtualWorld` int(11) NOT NULL,
  `aColor` int(11) NOT NULL,
  `aStatus` int(11) NOT NULL,
  `aPosX` float NOT NULL,
  `aPosY` float NOT NULL,
  `aPosZ` float NOT NULL,
  `aPosA` float NOT NULL,
  `aName` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_ci;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`aID`, `aModel`, `aVirtualWorld`, `aColor`, `aStatus`, `aPosX`, `aPosY`, `aPosZ`, `aPosA`, `aName`) VALUES
(1, 1, 1, 0, 0, 1, 1, 1, 1, 'What? -_-');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Name` varchar(32) CHARACTER SET cp1251 COLLATE cp1251_bin NOT NULL,
  `pAdmin` int(11) NOT NULL,
  `pAdminKey` varchar(32) CHARACTER SET cp1251 COLLATE cp1251_bin NOT NULL,
  `pAdmRep` int(11) NOT NULL,
  `pAdmRepDay` int(11) NOT NULL,
  `pAdmKick` int(11) NOT NULL,
  `pAdmBan` int(11) NOT NULL,
  `pAdmWarn` int(11) NOT NULL,
  `pAdmPrison` int(11) NOT NULL,
  `pAdmMute` int(11) NOT NULL,
  `pDataNaz` varchar(32) NOT NULL,
  `invite_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Name`, `pAdmin`, `pAdminKey`, `pAdmRep`, `pAdmRepDay`, `pAdmKick`, `pAdmBan`, `pAdmWarn`, `pAdmPrison`, `pAdmMute`, `pDataNaz`, `invite_date`) VALUES
('Amir_Baazi', 8, '123', 1, 0, 2, 1, 1, 1, 1, '', '2024-09-28 05:23:01');

-- --------------------------------------------------------

--
-- Table structure for table `admin_log`
--

CREATE TABLE `admin_log` (
  `user_id` int(11) NOT NULL,
  `action` varchar(188) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `anticheats`
--

CREATE TABLE `anticheats` (
  `chID` int(11) NOT NULL,
  `cheatname` varchar(64) CHARACTER SET cp1251 COLLATE cp1251_bin NOT NULL,
  `cheatvalue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `anticheats`
--

INSERT INTO `anticheats` (`chID`, `cheatname`, `cheatvalue`) VALUES
(31, 'Бег CJ', 1),
(32, 'Car Shot', 1),
(33, 'Антивыкидывание из транспорта', 2),
(34, 'Антифриз', 1),
(35, 'Ghost Hack', 1),
(36, 'Silent Aim', 1),
(37, 'Ракбот', 1),
(38, 'Быстрый реконнект', 1),
(39, 'Высокий пинг', 2),
(40, 'Подмена диалога', 1),
(41, 'Песочница', 1),
(42, 'Неверная версия', 1),
(43, 'Ркон авторизация', 1),
(44, 'Тюнинг крашер', 1),
(45, 'Крашер неверной посадки', 1),
(46, 'Дилог крашер', 1),
(47, 'Attach крашер', 1),
(48, 'Weapon крашер', 1),
(49, 'Подключение в 1 слот', 0),
(50, 'Флуд функциями', 1),
(51, 'Флуд смен позиции', 1),
(52, 'DDoS', 2),
(53, 'Игнорирование функции', 0);

-- --------------------------------------------------------

--
-- Table structure for table `anticheat_settings`
--

CREATE TABLE `anticheat_settings` (
  `ac_code` int(2) NOT NULL,
  `ac_code_trigger_type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `anticheat_settings`
--

INSERT INTO `anticheat_settings` (`ac_code`, `ac_code_trigger_type`) VALUES
(0, 2),
(1, 0),
(2, 2),
(3, 0),
(4, 0),
(5, 2),
(6, 2),
(7, 2),
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 2),
(14, 2),
(15, 2),
(16, 0),
(17, 0),
(18, 0),
(19, 1),
(20, 1),
(21, 2),
(22, 2),
(23, 2),
(24, 1),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 1),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 1),
(36, 2),
(37, 2),
(38, 1),
(39, 0),
(40, 2),
(41, 0),
(42, 2),
(43, 0),
(44, 2),
(45, 2),
(46, 2),
(47, 0),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2);

-- --------------------------------------------------------

--
-- Table structure for table `atms`
--

CREATE TABLE `atms` (
  `aID` int(11) NOT NULL,
  `aActive` int(11) NOT NULL,
  `aMoney` int(11) NOT NULL,
  `aObjectPosX` float NOT NULL,
  `aObjectPosY` float NOT NULL,
  `aObjectPosZ` float NOT NULL,
  `aObjectPosA` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_ci;

--
-- Dumping data for table `atms`
--

INSERT INTO `atms` (`aID`, `aActive`, `aMoney`, `aObjectPosX`, `aObjectPosY`, `aObjectPosZ`, `aObjectPosA`) VALUES
(1, 1, 250000, 1919.78, -1766.22, 13.449, 270),
(2, 1, 250000, 2236.16, -1665.8, 15.2798, 344),
(3, 1, 250000, 1367.56, -1290.14, 13.449, 0),
(4, 1, 250000, 1142.44, -1763.93, 13.5982, 180),
(5, 1, 250000, 557.328, -1294.28, 17.2499, 270),
(6, 1, 250000, 847.581, -1799.19, 13.7195, 354),
(7, 1, 250000, -78.7428, -1171.65, 1.95329, 336),
(8, 1, 250000, -1551.54, -2737.34, 48.6456, 146),
(9, 1, 250000, 661.713, -576.218, 16.2543, 0),
(10, 1, 250000, 208.031, 1874.76, 12.947, 89.8),
(11, 1, 250000, 2437.36, 1028.58, 10.6703, 0),
(12, 1, 250000, 2159.8, 940.133, 10.4903, 0),
(13, 1, 250000, -2421.45, 958.355, 45.1863, 88),
(14, 1, 250000, 2364.93, 2373.64, 10.5903, 0),
(15, 1, 250000, 1458.21, -1752.34, 13.3969, 0),
(16, 1, 250000, -1282.38, 2715.19, 50.1684, 28),
(17, 1, 250000, 91.9211, 1180.57, 18.5662, 90),
(18, 1, 250000, -818.552, 1567.64, 27.0193, 178),
(19, 1, 250000, 2174.2, 1402.93, 10.9646, 0),
(20, 1, 250000, 1587.31, 2218.35, 10.9646, 88),
(21, 1, 250000, 2187.36, 2478.89, 11.1443, 180),
(22, 1, 250000, 1226.47, -1811.72, 16.4684, 90);

-- --------------------------------------------------------

--
-- Table structure for table `banips`
--

CREATE TABLE `banips` (
  `id` int(11) NOT NULL,
  `ipadress` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reason` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `admin` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` int(11) NOT NULL,
  `unbandate` int(11) NOT NULL,
  `lockstate` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banlog`
--

CREATE TABLE `banlog` (
  `id` int(11) NOT NULL,
  `nameplayer` varchar(32) CHARACTER SET cp1251 COLLATE cp1251_bin NOT NULL,
  `nameadmin` varchar(32) CHARACTER SET cp1251 COLLATE cp1251_bin NOT NULL,
  `reason` varchar(32) CHARACTER SET cp1251 COLLATE cp1251_bin NOT NULL,
  `date` int(11) NOT NULL,
  `unbandate` int(11) NOT NULL,
  `lockstate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bizz`
--

CREATE TABLE `bizz` (
  `bID` int(11) NOT NULL,
  `bOwned` int(11) NOT NULL,
  `bOwner` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bMessage` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bEntranceX` float NOT NULL,
  `bEntranceY` float NOT NULL,
  `bEntranceZ` float NOT NULL,
  `bExitX` float NOT NULL,
  `bExitY` float NOT NULL,
  `bExitZ` float NOT NULL,
  `bBuyPrice` int(11) NOT NULL,
  `bEntranceCost` int(11) NOT NULL,
  `bMoney` int(11) NOT NULL,
  `bRaschet` int(11) NOT NULL,
  `bLocked` int(11) NOT NULL,
  `bInterior` int(11) NOT NULL,
  `bProducts` int(11) NOT NULL,
  `bPrice` int(11) NOT NULL,
  `bBarX` float NOT NULL,
  `bBarY` float NOT NULL,
  `bBarZ` float NOT NULL,
  `bMafia` int(11) NOT NULL,
  `bType` int(11) NOT NULL,
  `bVirtualWorld` int(11) NOT NULL,
  `bOplata` int(11) NOT NULL,
  `bSlet` int(11) NOT NULL,
  `bArenda` int(11) NOT NULL,
  `bUpdMusic` int(11) NOT NULL,
  `bUpdHeal` int(11) NOT NULL,
  `bUpdSub` int(11) NOT NULL,
  `bSotrud` int(11) NOT NULL,
  `bSklad` int(11) NOT NULL,
  `bPhone` int(11) NOT NULL,
  `bProcent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_ci;

--
-- Dumping data for table `bizz`
--

INSERT INTO `bizz` (`bID`, `bOwned`, `bOwner`, `bMessage`, `bEntranceX`, `bEntranceY`, `bEntranceZ`, `bExitX`, `bExitY`, `bExitZ`, `bBuyPrice`, `bEntranceCost`, `bMoney`, `bRaschet`, `bLocked`, `bInterior`, `bProducts`, `bPrice`, `bBarX`, `bBarY`, `bBarZ`, `bMafia`, `bType`, `bVirtualWorld`, `bOplata`, `bSlet`, `bArenda`, `bUpdMusic`, `bUpdHeal`, `bUpdSub`, `bSotrud`, `bSklad`, `bPhone`, `bProcent`) VALUES
(0, 0, 'None', 'Alhambra', 1836.51, -1682.58, 13.345, 493.431, -24.908, 1000.67, 800000, 0, 0, 0, 0, 17, 20000, 50, 499.673, -20.6195, 1000.68, 17, 1, 1, 15, 0, 600, 0, 0, 0, 0, 1000, 0, 0),
(1, 0, 'None', 'PigPen', 2421.59, -1219.51, 25.5444, 1204.72, -13.8504, 1000.92, 600000, 0, 0, 0, 0, 2, 20000, 50, 1215.29, -13.2987, 1000.92, 17, 1, 2, 15, 0, 400, 0, 0, 0, 0, 1000, 0, 0),
(2, 0, 'None', 'Misty Club', 2455.02, 1500.09, 11.6174, -2636.75, 1402.63, 906.461, 450000, 0, 0, 0, 0, 3, 20000, 50, -2652.82, 1410.16, 906.273, 17, 1, 3, 15, 0, 350, 0, 0, 0, 0, 1000, 0, 0),
(3, 0, 'None', 'Grove Street Bar', 2309.95, -1643.42, 14.8269, 501.918, -67.5654, 998.758, 1500000, 0, 0, 0, 0, 11, 20000, 50, 497.353, -76.0409, 998.758, 17, 1, 4, 15, 0, 500, 0, 0, 0, 0, 1000, 0, 0),
(4, 0, 'None', 'Sobrino de Botin', 2269.86, -74.1605, 26.7723, -794.995, 489.28, 1376.2, 500000, 0, 0, 0, 0, 1, 20000, 50, -785.496, 500.074, 1371.74, 17, 2, 5, 15, 0, 300, 0, 0, 0, 0, 1000, 0, 0),
(5, 0, 'None', 'Vinewood Burger', 1199.18, -918.168, 43.1236, 362.817, -75.1131, 1001.51, 1500000, 0, 32640, 24960, 0, 10, 20000, 50, 377.075, -67.4374, 1001.51, 17, 2, 6, 5, 0, 500, 0, 0, 0, 0, 1000, 0, 0),
(6, 0, 'None', 'Marina Burger', 810.492, -1616.15, 13.5468, 460.543, -88.6363, 999.555, 950000, 0, 21120, 0, 0, 4, 20000, 50, 450.445, -83.6521, 999.555, 17, 2, 7, 17, 0, 650, 0, 0, 0, 0, 1000, 0, 0),
(7, 0, 'None', 'Idlewood Pizza', 2105.48, -1806.37, 13.5546, 372.268, -133.525, 1001.49, 1550000, 0, 0, 0, 0, 5, 20000, 50, 375.888, -118.817, 1001.5, 17, 2, 8, 15, 0, 500, 0, 0, 0, 0, 1000, 0, 0),
(8, 0, 'None', 'Las Venturas Cluck', 2101.89, 2228.79, 11.0234, 364.977, -11.8434, 1001.85, 300000, 0, 0, 0, 0, 9, 20000, 50, 369.924, -6.01969, 1001.86, 17, 2, 9, 15, 0, 300, 0, 0, 0, 0, 1000, 0, 0),
(9, 0, 'None', 'Marina Cluc', 928.914, -1352.79, 13.3437, 377.132, -193.303, 1000.63, 750000, 5000, 13440, 0, 0, 17, 20000, 200, 379.239, -187.858, 1000.63, 17, 2, 10, 1, 0, 700, 0, 0, 0, 0, 1000, 0, 0),
(10, 0, 'None', 'Idelwood 24/7', 1928.6, -1776.17, 13.5468, -25.9341, -141.561, 1003.55, 1500000, 2000, 2880, 0, 0, 16, 20000, 50, -22.1168, -138.629, 1003.55, 16, 3, 11, 5, 0, 950, 0, 0, 0, 0, 1000, 0, 0),
(11, 0, 'None', 'Flint 24/7', -78.436, -1170.03, 2.1354, -25.9049, -188.253, 1003.55, 1600000, 0, 0, 0, 0, 17, 20000, 50, -29.0314, -185.128, 1003.55, 17, 3, 12, 15, 0, 700, 0, 0, 0, 0, 1000, 0, 0),
(12, 0, 'None', 'Redsands West 24/7', 1599.12, 2221.87, 11.0625, -27.3915, -31.765, 1003.56, 500000, 0, 0, 0, 0, 4, 20000, 50, -31.0013, -29.0204, 1003.56, 17, 3, 13, 15, 0, 300, 0, 0, 0, 0, 1000, 0, 0),
(13, 0, 'None', 'Jizzy', 2507.34, 1242.25, 10.827, -2636.72, 1402.46, 906.461, 500000, 0, 0, 0, 0, 3, 200, 50, -2654.02, 1407.91, 906.277, 17, 1, 14, 15, 0, 500, 0, 0, 0, 0, 1000, 0, 0),
(14, 0, 'None', 'Lil\"Probe\"inn', -89.6103, 1378.24, 10.4697, -229.295, 1401.24, 27.7656, 500000, 0, 0, 0, 0, 18, 20000, 50, -224.781, 1404.44, 27.7734, 10, 1, 15, 15, 0, 700, 0, 0, 0, 0, 1000, 0, 0),
(15, 0, 'None', 'Ghetto Shop', 2424.24, -1742.78, 13.5459, -27.4063, -31.765, 1003.56, 2500000, 5000, 24672, 0, 0, 4, 20000, 50, -30.8279, -29.0117, 1003.56, 17, 3, 16, 14, 0, 2000, 0, 0, 0, 0, 1000, 0, 0),
(16, 0, 'None', 'Whestone Shops', -1562.59, -2733, 48.7435, -27.4605, -58.2737, 1003.55, 350000, 0, 0, 0, 0, 6, 20000, 50, -23.6394, -55.6176, 1003.55, 17, 3, 17, 15, 0, 150, 0, 0, 0, 0, 1000, 0, 0),
(17, 0, 'None', 'AngelPine Shop', -2231.49, -2558.32, 31.9219, -25.9075, -141.559, 1003.55, 330000, 0, 0, 0, 0, 16, 20000, 50, -22.1999, -138.628, 1003.55, 17, 3, 18, 15, 0, 170, 0, 0, 0, 0, 1000, 0, 0),
(18, 0, 'None', 'Central Store Los Santos', 1352.3, -1759.25, 13.5078, -27.4605, -58.2737, 1003.55, 1200000, 2000, 5376, 0, 0, 6, 20000, 100, -23.6394, -55.6176, 1003.55, 17, 3, 19, 19, 0, 1000, 0, 0, 0, 0, 1000, 0, 0),
(19, 0, 'None', 'Mullholand 24/7', 1000.58, -919.897, 42.3281, -27.4452, -58.2749, 1003.55, 1250000, 500, 34760, 1536, 0, 6, 20000, 50, -23.497, -55.6312, 1003.55, 17, 3, 20, 16, 0, 800, 0, 0, 0, 0, 1000, 0, 0),
(20, 0, 'None', 'Furniture Shop', 802.163, -574, 16.3359, -25.9017, -188.253, 1003.55, 400000, 0, 0, 0, 0, 17, 200, 50, -29.135, -185.129, 1003.55, 17, 3, 21, 15, 0, 450, 0, 0, 0, 0, 1000, 0, 0),
(21, 0, 'None', 'Grover Shop 24/7', 2637.25, 1129.68, 11.1797, -27.3895, -58.2674, 1003.55, 650000, 0, 0, 0, 0, 6, 20000, 50, -23.6291, -55.6169, 1003.55, 17, 3, 22, 15, 0, 860, 0, 0, 0, 0, 1000, 0, 0),
(22, 0, 'None', 'Fort Carson Fich Mart', -145.851, 1172.39, 19.75, -25.9983, -188.259, 1003.55, 520000, 0, 0, 0, 0, 17, 20000, 50, -29.2351, -185.128, 1003.55, 17, 3, 23, 15, 0, 320, 0, 0, 0, 0, 1000, 0, 0),
(23, 0, 'None', 'Store Milk Shop 24/7', -19.1895, 1175.23, 19.5634, 6.0027, -31.7641, 1003.55, 600000, 0, 0, 0, 0, 10, 20000, 50, 2.0994, -29.0118, 1003.55, 17, 3, 24, 15, 0, 410, 0, 0, 0, 0, 1000, 0, 0),
(24, 0, 'None', 'South store 24/7 \"Four Dragons\"', 2117.47, 896.776, 11.1797, -27.4698, -58.2724, 1003.55, 1950000, 0, 0, 0, 0, 6, 20000, 50, -23.5414, -55.6248, 1003.55, 17, 3, 25, 15, 0, 840, 0, 0, 0, 0, 1000, 0, 0),
(25, 0, 'None', 'Montgomery 24/7', 1383.31, 465.533, 20.1919, 6.0438, -31.7673, 1003.55, 650000, 0, 0, 0, 0, 10, 20000, 50, 1.9501, -29.014, 1003.55, 17, 3, 26, 15, 0, 280, 0, 0, 0, 0, 1000, 0, 0),
(26, 0, 'None', 'Verona 24/7', 1081.24, -1696.78, 13.5469, -27.4478, -58.2751, 1003.55, 2750000, 0, 9312, 0, 0, 6, 20000, 50, -23.564, -55.6275, 1003.55, 17, 3, 27, 1, 0, 680, 0, 0, 0, 0, 1000, 0, 0),
(27, 0, 'None', 'Santa Maria Shop', 388.039, -1897.16, 7.83594, -27.4621, -58.2743, 1003.55, 720000, 0, 0, 0, 0, 6, 20000, 50, -23.652, -55.6224, 1003.55, 16, 3, 28, 15, 0, 310, 0, 0, 0, 0, 1000, 0, 0),
(28, 0, 'None', 'Burger Lang', 173.057, 1177.14, 14.7578, 372.315, -133.524, 1001.49, 680000, 0, 0, 0, 0, 5, 20000, 50, 374.719, -119.589, 1001.5, 16, 2, 29, 15, 0, 480, 0, 0, 0, 0, 1000, 0, 0),
(29, 0, 'None', 'Nude Strippers Daily', 2543.24, 1025.24, 10.8203, -229.293, 1401.27, 27.7656, 600000, 0, 0, 0, 0, 18, 20000, 50, -224.783, 1403.98, 27.7734, 16, 1, 30, 15, 0, 300, 0, 0, 0, 0, 1000, 0, 0),
(30, 0, 'None', 'Central Club of Los Santos', 1333.43, -1864.38, 13.5469, -2636.72, 1402.46, 906.461, 950000, 0, 0, 0, 0, 3, 20000, 50, -2652.83, 1410.4, 906.273, 16, 1, 31, 15, 0, 800, 0, 0, 0, 0, 1000, 0, 0),
(31, 0, 'None', 'Official \"Vagos\" Shop', 2850.95, -1532.52, 11.0991, -25.971, -188.259, 1003.55, 1300000, 5000, 0, 0, 0, 17, 20000, 50, -29.2412, -185.126, 1003.55, 16, 3, 32, 19, 0, 600, 0, 0, 0, 0, 1000, 0, 0),
(32, 0, 'None', 'Central Burger Los Santos', 1377.81, -1753.12, 14.1406, 377.055, -193.306, 1000.63, 1350000, 0, 0, 0, 0, 17, 20000, 50, 379.154, -186.603, 1000.63, 16, 2, 33, 15, 0, 1800, 0, 0, 0, 0, 1000, 0, 0),
(33, 0, 'None', 'The Well Stacked Pizza', 2331.81, 75.0025, 26.621, 372.32, -133.523, 1001.49, 450000, 0, 0, 0, 0, 5, 20000, 50, 373.675, -118.803, 1001.49, 16, 2, 34, 15, 0, 250, 0, 0, 0, 0, 1000, 0, 0),
(34, 0, 'None', 'East Las Venturas Store', 2194.94, 1991.08, 12.2969, -27.3208, -58.266, 1003.55, 500000, 0, 0, 0, 0, 6, 20000, 50, -23.5454, -55.6282, 1003.55, 16, 3, 35, 15, 0, 300, 0, 0, 0, 0, 1000, 0, 0),
(35, 0, 'None', 'Shop Near The Station 24/7', 1078.84, -1861.91, 13.5469, -27.3327, -58.2671, 1003.55, 850000, 2000, 21216, 5856, 0, 6, 20000, 100, -23.4752, -55.6324, 1003.55, 16, 3, 36, 1, 0, 700, 0, 0, 0, 0, 1000, 0, 0),
(36, 0, 'None', 'Luxury Gangster Club', 2057.52, -1897.21, 13.5538, 1204.72, -13.8504, 1000.92, 800000, 0, 0, 0, 0, 2, 20000, 50, 1214.96, -13.1083, 1000.92, 16, 1, 37, 15, 0, 500, 0, 0, 0, 0, 1000, 0, 0),
(37, 0, 'None', 'Liqor Mart 24/7', 1848.33, -1871.68, 13.5781, -25.8997, -141.559, 1003.55, 1800000, 0, 0, 0, 0, 16, 20000, 50, -22.2596, -138.627, 1003.55, 16, 3, 38, 15, 0, 800, 0, 0, 0, 0, 1000, 0, 0),
(38, 0, 'None', 'Burger Shot LV', 1872.25, 2071.74, 11.0625, 362.882, -75.1792, 1001.51, 500000, 0, 0, 0, 0, 10, 20000, 50, 375.568, -67.4347, 1001.51, 16, 2, 39, 15, 0, 200, 0, 0, 0, 0, 1000, 0, 0),
(39, 0, 'None', 'Dillimore 24/7', 671.063, -519.263, 16.3359, -25.9357, -141.564, 1003.55, 600000, 0, 0, 0, 0, 16, 20000, 50, -22.0575, -138.628, 1003.55, 16, 3, 40, 20, 0, 300, 0, 0, 0, 0, 1000, 0, 0),
(40, 0, 'None', 'Dillimore Cluck', 694.982, -500.134, 16.3359, 364.977, -11.8438, 1001.85, 740000, 0, 0, 0, 0, 9, 20000, 50, 369.583, -6.4147, 1001.86, 16, 2, 41, 15, 0, 350, 0, 0, 0, 0, 1000, 0, 0),
(41, 0, 'None', 'Military Duty 24/7', 663.082, 1716.31, 7.1875, -27.4435, -58.2726, 1003.55, 1300000, 0, 576, 0, 0, 6, 20000, 50, -23.725, -55.6174, 1003.55, 10, 3, 42, 18, 0, 800, 0, 0, 0, 0, 1000, 0, 0),
(42, 0, 'None', 'Heartland 24/7', 2292.28, -1722.69, 13.5469, -27.3243, -58.2672, 1003.55, 850000, 5000, 18760, 0, 0, 6, 20000, 50, -23.6151, -55.625, 1003.55, 16, 3, 43, 17, 0, 1600, 0, 0, 0, 0, 1000, 0, 0),
(43, 0, 'None', 'Central District Eatery', 2397.89, -1899.2, 13.5469, 460.555, -88.5648, 999.555, 1200000, 0, 0, 0, 0, 4, 20000, 50, 452.424, -83.6513, 999.555, 16, 2, 44, 15, 0, 1200, 0, 0, 0, 0, 1000, 0, 0),
(44, 0, 'None', 'Lavanderia 24/7', 2473.08, -1922.14, 13.5312, -31.0191, -92.0107, 1003.55, 950000, 0, 0, 0, 0, 18, 20000, 50, -28.2579, -89.9556, 1003.55, 16, 3, 45, 15, 0, 800, 0, 0, 0, 0, 1000, 0, 0),
(45, 0, 'None', 'Vinewood Shop 24/7', 470.813, -1163.54, 67.218, -25.9404, -141.564, 1003.55, 1100000, 0, 0, 0, 0, 16, 20000, 50, -22.2396, -138.626, 1003.55, 16, 3, 46, 15, 0, 700, 0, 0, 0, 0, 1000, 0, 0),
(46, 0, 'None', 'Grover Shop 24/7', 1315.55, -897.683, 39.5781, -27.4148, -58.1739, 1003.55, 950000, 3000, 1440, 1440, 0, 6, 20000, 50, -23.5147, -55.6299, 1003.55, 16, 3, 47, 3, 0, 900, 0, 0, 0, 0, 1000, 0, 0),
(47, 0, 'None', 'SuperMarket 24/7', -311.292, 1303.55, 53.6643, -25.9178, -141.561, 1003.55, 400000, 0, 0, 0, 0, 16, 20000, 50, -22.3609, -138.624, 1003.55, 16, 3, 48, 15, 0, 500, 0, 0, 0, 0, 1000, 0, 0),
(48, 0, 'None', 'Barber Shop', 2724.46, -2026.53, 13.5547, -25.9493, -188.259, 1003.55, 900000, 0, 576, 0, 0, 17, 20000, 50, -29.0949, -185.13, 1003.55, 16, 3, 49, 2, 0, 750, 0, 0, 0, 0, 1000, 0, 0),
(49, 0, 'None', 'City Shop 24/7', 1286.8, -1329.26, 13.5549, -25.8652, -141.549, 1003.55, 900000, 5000, 20928, 0, 0, 16, 19992, 50, -22.1813, -138.626, 1003.55, 16, 3, 50, 1, 0, 1400, 0, 0, 0, 0, 1000, 0, 0),
(50, 0, 'None', 'Cluck Trucker 24/7', 2169.42, 2795.91, 10.8203, 362.87, -75.1677, 1001.51, 320000, 0, 0, 0, 0, 10, 20000, 50, 376.59, -67.435, 1001.51, 16, 2, 51, 15, 0, 400, 0, 0, 0, 0, 1000, 0, 0),
(51, 0, 'None', 'Shop Truck 24/7', 2150.7, 2733.87, 11.1763, -27.4633, -58.2745, 1003.55, 650000, 0, 0, 0, 0, 6, 20000, 50, -23.5517, -55.6251, 1003.55, 10, 3, 52, 15, 0, 400, 0, 0, 0, 0, 1000, 0, 0),
(52, 0, 'None', 'Dangerous area 24/7', 1836.51, -1445.01, 13.5962, -30.9961, -92.01, 1003.55, 950000, 0, 0, 0, 0, 18, 20000, 50, -28.1617, -89.9534, 1003.55, 16, 3, 53, 15, 0, 900, 0, 0, 0, 0, 1000, 0, 0),
(53, 0, 'None', 'Hude Shop 24/7', 1940, -2115.97, 13.6953, -31.0632, -92.0109, 1003.55, 700000, 0, 0, 0, 0, 18, 20000, 50, -28.1209, -89.9526, 1003.55, 16, 3, 54, 15, 0, 500, 0, 0, 0, 0, 1000, 0, 0),
(54, 0, 'None', 'Club Farior', 1951.45, -2041.29, 13.5469, 501.96, -67.5628, 998.758, 500000, 0, 0, 0, 0, 11, 19978, 50, 498.392, -76.0398, 998.758, 10, 1, 55, 15, 0, 300, 0, 0, 0, 0, 1000, 0, 0),
(55, 0, 'None', 'Central Ghetto Cluck', 2101.2, -1359.52, 23.9844, 372.296, -133.525, 1001.49, 700000, 0, 0, 0, 0, 5, 20000, 50, 373.79, -118.802, 1001.49, 10, 2, 56, 15, 0, 600, 0, 0, 0, 0, 1000, 0, 0),
(56, 0, 'None', 'Grocery store 24/7', 2751.89, -1438.24, 30.4531, -31.0225, -92.0113, 1003.55, 700000, 0, 0, 0, 0, 18, 20000, 50, -28.2215, -89.9542, 1003.55, 10, 3, 57, 15, 0, 1000, 0, 0, 0, 0, 1000, 0, 0),
(57, 0, 'None', 'Club 51 LV', 1157.92, 2072.28, 11.0625, 362.876, -75.1722, 1001.51, 300000, 0, 0, 0, 0, 10, 20000, 50, 376.551, -67.4343, 1001.51, 10, 2, 59, 15, 0, 600, 0, 0, 0, 0, 1000, 0, 0),
(58, 0, 'None', 'Amnesia', 693.688, 1967.68, 5.53906, 1204.75, -13.8516, 1000.92, 450000, 0, 0, 0, 0, 2, 20000, 50, 1215.81, -13.351, 1000.92, 0, 1, 60, 15, 0, 300, 0, 0, 0, 0, 1000, 0, 0),
(59, 0, 'None', 'Aztek Eat MC', 2723.67, -2033.87, 13.5472, 460.556, -88.6183, 999.555, 1500000, 0, 0, 0, 0, 4, 20000, 50, 450.518, -83.6512, 999.555, 0, 2, 62, 15, 0, 300, 0, 0, 0, 0, 1000, 0, 0),
(60, 0, 'None', 'Ballas Chicken', 1852.31, -1145.16, 23.8336, 2080.52, 1224.79, 1019.08, 850000, 1, 400000, 400000, 0, 4, 20000, 50, 2080.49, 1234.85, 1019.1, 10, 6, 63, 19, 0, 300, 0, 0, 0, 0, 1000, 0, 0),
(61, 0, 'None', 'Ghetto Clothes Binco', 2244.33, -1665.55, 15.4766, 2080.52, 1224.79, 1019.08, 6000000, 999, 400000, 480864, 0, 15, 20000, 50, 2080.49, 1234.85, 1019.1, 10, 6, 67, 20, 0, 300, 0, 0, 0, 0, 1000, 0, 0),
(62, 0, 'None', 'Central Clothes Binco', 461.699, -1500.76, 31.0457, 2080.52, 1224.79, 1019.08, 3000000, 0, 0, 0, 0, 5, 20000, 50, 2080.49, 1234.85, 1019.1, 10, 6, 68, 15, 0, 300, 0, 0, 0, 0, 1000, 0, 0),
(63, 0, 'None', 'Clothes Binco LV', 2090.53, 2224.7, 11.0234, 2080.52, 1224.79, 1019.08, 750000, 0, 0, 0, 0, 18, 20000, 50, 2080.49, 1234.85, 1019.1, 0, 6, 69, 15, 0, 300, 0, 0, 0, 0, 1000, 0, 0),
(64, 0, 'None', 'Clothes Binco LV', 2435.28, 1655.44, 10.8203, 2080.52, 1224.79, 1019.08, 750000, 0, 0, 0, 0, 14, 20000, 50, 2080.49, 1234.85, 1019.1, 0, 6, 70, 2, 0, 300, 0, 0, 0, 0, 1000, 0, 0),
(65, 0, 'None', 'Центральный Отель', 1310.16, -1366.8, 13.5065, 1665.46, -158.895, 1208.62, 10000000, 2000, 4512, 672, 0, 15, 20000, 50, 2217.37, -1146.41, 1025.8, 0, 13, 0, 1, 0, 300, 0, 0, 0, 0, 1000, 0, 0),
(66, 0, 'None', 'Автосалон', 561.961, -1293.72, 17.2482, 1450.99, 702.625, 1087.9, 5000000, 0, 11904, 0, 0, 82, 20000, 50, 2217.37, -1146.41, 1025.8, 10, 9, -1, 10, 0, 300, 0, 0, 0, 0, 1000, 0, 0),
(67, 0, 'None', 'Мотосалон', 2131.82, -1151.32, 24.06, 1450.99, 702.625, 1087.9, 5000000, 5000, 639780, 9600, 0, 82, 20000, 50, 2217.37, -1146.41, 1025.8, 10, 9, -1, 15, 0, 300, 0, 0, 0, 0, 1000, 0, 0),
(68, 0, 'None', 'Автосалон', -1957.34, 297.945, 35.4688, 1450.99, 702.625, 1087.9, 5000000, 4999, 14704, 0, 0, 82, 20000, 50, 2217.37, -1146.41, 1025.8, 10, 9, -1, 17, 0, 300, 0, 0, 0, 0, 1000, 0, 0),
(69, 0, 'None', 'Автосалон', 1658.47, 2200.35, 10.8203, 1450.99, 702.625, 1087.9, 6000000, 0, 800000, 384000, 0, 82, 20000, 50, 2217.37, -1146.41, 1025.8, 10, 9, -1, 3, 0, 300, 0, 0, 0, 0, 1000, 0, 0),
(70, 0, 'None', '116', 1111.92, -1795.58, 16.5938, 2160.85, 1602.51, 999.982, 7000000, 0, 0, 0, 0, 1, 20000, 50, 2165.28, 1600.1, 999.976, 0, 5, 1, 15, 0, 300, 0, 0, 0, 0, 1000, 0, 0),
(71, 0, 'None', 'Таксопарк SF', -2442.7, 755.418, 35.1719, 2160.85, 1602.51, 999.982, 7000000, 0, 0, 0, 0, 1, 20000, 50, 2165.28, 1600.1, 999.976, 0, 5, 2, 15, 0, 300, 0, 0, 0, 0, 1000, 0, 0),
(72, 0, 'None', '66', 1629.27, 972.099, 10.8203, 2160.85, 1602.51, 999.982, 7000000, 0, 0, 0, 0, 1, 20000, 50, 2165.28, 1600.1, 999.976, 0, 5, 3, 15, 0, 300, 0, 0, 0, 0, 1000, 0, 0),
(73, 1, 'Amir_Baazi', 'Ammo LS', 1368.09, -1279.82, 13.5469, -234.906, -183.79, -25.481, 6000000, 0, 192, 192, 0, 7, 200, 50, -230.99, -171.7, -25.481, 10, 8, 1, 20, 0, 300, 0, 0, 0, 0, 1000, 0, 0),
(74, 0, 'None', 'Ammo SF', -2626.67, 209.323, 4.5955, -234.906, -183.79, -25.481, 6000000, 0, 0, 0, 0, 7, 20000, 50, -230.99, -171.7, -25.481, 0, 8, 2, 15, 0, 300, 0, 0, 0, 0, 1000, 0, 0),
(75, 0, 'None', 'Ammo LV', 2158.99, 943.112, 10.8203, -234.906, -183.79, -25.481, 6000000, 3000, 45920, 7200, 0, 7, 20000, 300, -230.99, -171.7, -25.481, 10, 8, 3, 16, 0, 300, 0, 0, 0, 0, 1000, 0, 0),
(76, 0, 'None', 'Paint Ball', -2089.11, 84.261, 35.3134, -2170.33, 635.587, 1052.38, 10000000, 0, 0, 0, 0, 1, 20000, 50, -2158.92, 640.459, 1052.38, 10, 23, 1, 15, 0, 300, 0, 0, 0, 0, 1000, 0, 0),
(77, 0, 'None', 'Казино \'Four Dragons\'', 2019.32, 1007.77, 10.8203, 1394.24, -30.5665, 1000.93, 25000000, 5000, 71312, 0, 0, 5, 20000, 50, 1377.1, -31.3236, 1000.93, 10, 1, 5, 10, 0, 300, 0, 0, 0, 0, 1000, 0, 0),
(78, 0, 'None', 'Perfomance Tune', 2177.68, -1770.22, 13.55, 2023.32, 1166.77, 996.875, 10000000, 0, 800000, 28800, 0, 10, 20000, 50, 1957.88, 1168.16, 992.469, 10, 14, 1, 11, 0, 300, 0, 0, 0, 0, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bizz_astats`
--

CREATE TABLE `bizz_astats` (
  `id` int(11) NOT NULL,
  `aID` int(11) NOT NULL,
  `aData` varchar(32) NOT NULL,
  `aSumma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_ci;

--
-- Dumping data for table `bizz_astats`
--

INSERT INTO `bizz_astats` (`id`, `aID`, `aData`, `aSumma`) VALUES
(1, 1, '23/2/2020', 0),
(2, 2, '23/2/2020', 0),
(3, 3, '23/2/2020', 0),
(4, 4, '23/2/2020', 0),
(5, 5, '23/2/2020', 0),
(6, 6, '23/2/2020', 0),
(7, 7, '23/2/2020', 0),
(8, 9, '23/2/2020', 0),
(9, 10, '23/2/2020', 0),
(10, 11, '23/2/2020', 0),
(11, 12, '23/2/2020', 0),
(12, 13, '23/2/2020', 0),
(13, 14, '23/2/2020', 0),
(14, 1, '24/2/2020', 0),
(15, 2, '24/2/2020', 0),
(16, 3, '24/2/2020', 0),
(17, 4, '24/2/2020', 0),
(18, 5, '24/2/2020', 0),
(19, 6, '24/2/2020', 0),
(20, 7, '24/2/2020', 0),
(21, 9, '24/2/2020', 0),
(22, 10, '24/2/2020', 0),
(23, 11, '24/2/2020', 0),
(24, 12, '24/2/2020', 0),
(25, 13, '24/2/2020', 0),
(26, 14, '24/2/2020', 0),
(27, 1, '25/2/2020', 0),
(28, 2, '25/2/2020', 0),
(29, 3, '25/2/2020', 0),
(30, 4, '25/2/2020', 0),
(31, 5, '25/2/2020', 0),
(32, 6, '25/2/2020', 0),
(33, 7, '25/2/2020', 0),
(34, 9, '25/2/2020', 0),
(35, 10, '25/2/2020', 0),
(36, 11, '25/2/2020', 0),
(37, 12, '25/2/2020', 0),
(38, 13, '25/2/2020', 0),
(39, 14, '25/2/2020', 0),
(40, 1, '27/2/2020', 0),
(41, 2, '27/2/2020', 0),
(42, 3, '27/2/2020', 0),
(43, 4, '27/2/2020', 0),
(44, 5, '27/2/2020', 0),
(45, 6, '27/2/2020', 0),
(46, 9, '27/2/2020', 0),
(47, 10, '27/2/2020', 0),
(48, 11, '27/2/2020', 0),
(49, 12, '27/2/2020', 0),
(50, 13, '27/2/2020', 0),
(51, 14, '27/2/2020', 0),
(52, 1, '1/3/2020', 0),
(53, 4, '1/3/2020', 0),
(54, 5, '1/3/2020', 0),
(55, 6, '1/3/2020', 3850),
(56, 8, '1/3/2020', 0),
(57, 9, '1/3/2020', 0),
(58, 10, '1/3/2020', 0),
(59, 11, '1/3/2020', 0),
(60, 12, '1/3/2020', 0),
(61, 13, '1/3/2020', 0),
(62, 14, '1/3/2020', 3100),
(63, 4, '2/3/2020', 0),
(64, 5, '2/3/2020', 0),
(65, 6, '2/3/2020', 0),
(66, 8, '2/3/2020', 0),
(67, 9, '2/3/2020', 0),
(68, 10, '2/3/2020', 0),
(69, 11, '2/3/2020', 0),
(70, 12, '2/3/2020', 0),
(71, 13, '2/3/2020', 0),
(72, 14, '2/3/2020', 0),
(73, 4, '4/3/2020', 0),
(74, 5, '4/3/2020', 0),
(75, 6, '4/3/2020', 0),
(76, 8, '4/3/2020', 0),
(77, 9, '4/3/2020', 0),
(78, 10, '4/3/2020', 0),
(79, 11, '4/3/2020', 0),
(80, 12, '4/3/2020', 0),
(81, 13, '4/3/2020', 0),
(82, 14, '4/3/2020', 0),
(83, 13, '6/3/2020', 3500),
(84, 6, '7/3/2020', 2000),
(85, 13, '7/3/2020', 16550),
(86, 14, '7/3/2020', 500),
(87, 6, '8/3/2020', 2300),
(88, 8, '8/3/2020', 0),
(89, 11, '8/3/2020', 1500),
(90, 13, '8/3/2020', 14900),
(91, 14, '8/3/2020', 3000),
(92, 6, '9/3/2020', 5600),
(93, 8, '9/3/2020', 2730),
(94, 9, '9/3/2020', 0),
(95, 10, '9/3/2020', 0),
(96, 11, '9/3/2020', 0),
(97, 12, '9/3/2020', 3300),
(98, 13, '9/3/2020', 19350),
(99, 14, '9/3/2020', 0),
(100, 8, '10/3/2020', 5465),
(101, 10, '10/3/2020', 0),
(102, 11, '10/3/2020', 0),
(103, 12, '10/3/2020', 11500),
(104, 13, '10/3/2020', 0),
(105, 3, '11/3/2020', 6000),
(106, 8, '11/3/2020', 1160),
(107, 10, '11/3/2020', 3450),
(108, 11, '11/3/2020', 0),
(109, 12, '11/3/2020', 0),
(110, 13, '11/3/2020', 10500),
(111, 14, '11/3/2020', 4294),
(112, 8, '12/3/2020', 0),
(113, 10, '12/3/2020', 0),
(114, 11, '12/3/2020', 0),
(115, 12, '12/3/2020', 0),
(116, 13, '12/3/2020', 0),
(117, 14, '12/3/2020', 0),
(118, 8, '13/3/2020', 2440),
(119, 10, '13/3/2020', 2500),
(120, 11, '13/3/2020', 0),
(121, 13, '13/3/2020', 22200),
(122, 14, '13/3/2020', 3500),
(123, 6, '14/3/2020', 15500),
(124, 8, '14/3/2020', 17200),
(125, 10, '14/3/2020', 4750),
(126, 11, '14/3/2020', 0),
(127, 13, '14/3/2020', 22600),
(128, 14, '14/3/2020', 4410),
(129, 8, '14/3/2020', 0),
(130, 10, '14/3/2020', 0),
(131, 11, '14/3/2020', 0),
(132, 12, '14/3/2020', 0),
(133, 13, '14/3/2020', 0),
(134, 8, '15/3/2020', 9300),
(135, 9, '15/3/2020', 9800),
(136, 10, '15/3/2020', 0),
(137, 11, '15/3/2020', 0),
(138, 13, '15/3/2020', 0),
(139, 8, '15/3/2020', 0),
(140, 10, '15/3/2020', 0),
(141, 11, '15/3/2020', 0),
(142, 12, '15/3/2020', 0),
(143, 13, '15/3/2020', 0),
(144, 8, '13/7/2020', 0),
(145, 10, '13/7/2020', 0),
(146, 11, '13/7/2020', 0),
(147, 12, '13/7/2020', 0),
(148, 13, '13/7/2020', 0),
(149, 8, '14/7/2020', 0),
(150, 10, '14/7/2020', 0),
(151, 11, '14/7/2020', 0),
(152, 12, '14/7/2020', 0),
(153, 13, '14/7/2020', 0),
(154, 8, '15/7/2020', 0),
(155, 10, '15/7/2020', 0),
(156, 11, '15/7/2020', 0),
(157, 12, '15/7/2020', 0),
(158, 13, '15/7/2020', 0),
(159, 8, '16/7/2020', 0),
(160, 10, '16/7/2020', 0),
(161, 11, '16/7/2020', 0),
(162, 12, '16/7/2020', 0),
(163, 13, '16/7/2020', 0),
(164, 8, '17/7/2020', 0),
(165, 10, '17/7/2020', 0),
(166, 11, '17/7/2020', 0),
(167, 12, '17/7/2020', 0),
(168, 13, '17/7/2020', 0),
(169, 8, '18/7/2020', 0),
(170, 10, '18/7/2020', 0),
(171, 11, '18/7/2020', 0),
(172, 12, '18/7/2020', 0),
(173, 13, '18/7/2020', 0),
(174, 8, '19/7/2020', 0),
(175, 10, '19/7/2020', 0),
(176, 11, '19/7/2020', 0),
(177, 12, '19/7/2020', 0),
(178, 13, '19/7/2020', 0),
(179, 8, '20/7/2020', 0),
(180, 10, '20/7/2020', 0),
(181, 11, '20/7/2020', 0),
(182, 12, '20/7/2020', 0),
(183, 13, '20/7/2020', 0),
(184, 10, '21/7/2020', 0),
(185, 11, '21/7/2020', 0),
(186, 12, '21/7/2020', 0),
(187, 13, '21/7/2020', 0),
(188, 11, '22/7/2020', 0),
(189, 12, '22/7/2020', 0),
(190, 13, '22/7/2020', 0),
(191, 11, '23/7/2020', 0),
(192, 12, '23/7/2020', 0),
(193, 13, '23/7/2020', 0),
(194, 11, '24/7/2020', 0),
(195, 12, '24/7/2020', 0),
(196, 13, '24/7/2020', 0),
(197, 11, '25/7/2020', 0),
(198, 12, '25/7/2020', 0),
(199, 11, '26/7/2020', 0),
(200, 12, '26/7/2020', 0),
(201, 12, '27/7/2020', 0),
(202, 2, '5/8/2020', 0),
(203, 3, '5/8/2020', 0),
(204, 6, '5/8/2020', 16150),
(205, 7, '5/8/2020', 0),
(206, 8, '5/8/2020', 0),
(207, 9, '5/8/2020', 0),
(208, 10, '5/8/2020', 3000),
(209, 13, '5/8/2020', 0),
(210, 14, '5/8/2020', 0),
(211, 2, '6/8/2020', 0),
(212, 3, '6/8/2020', 0),
(213, 5, '6/8/2020', 2500),
(214, 6, '6/8/2020', 10480),
(215, 7, '6/8/2020', 0),
(216, 8, '6/8/2020', 0),
(217, 9, '6/8/2020', 0),
(218, 10, '6/8/2020', 3000),
(219, 13, '6/8/2020', 0),
(220, 14, '6/8/2020', 0),
(221, 6, '5/3/2021', 2500),
(222, 13, '5/3/2021', 0),
(223, 14, '5/3/2021', 200),
(224, 6, '6/3/2021', 1250),
(225, 13, '6/3/2021', 0),
(226, 6, '7/3/2021', 440),
(227, 10, '7/3/2021', 0),
(228, 13, '7/3/2021', 0),
(229, 6, '8/3/2021', 1200),
(230, 13, '8/3/2021', 0),
(231, 6, '9/3/2021', 0),
(232, 13, '9/3/2021', 0),
(233, 6, '10/3/2021', 0),
(234, 13, '10/3/2021', 0),
(235, 6, '11/3/2021', 0),
(236, 13, '11/3/2021', 600),
(237, 6, '12/3/2021', 3200),
(238, 13, '12/3/2021', 0),
(239, 6, '13/3/2021', 6280),
(240, 9, '13/3/2021', 0),
(241, 13, '13/3/2021', 0),
(242, 6, '14/3/2021', 10000),
(243, 9, '14/3/2021', 0),
(244, 13, '14/3/2021', 0),
(245, 6, '15/3/2021', 0),
(246, 9, '15/3/2021', 0),
(247, 13, '15/3/2021', 0),
(248, 6, '16/3/2021', 0),
(249, 9, '16/3/2021', 0),
(250, 13, '16/3/2021', 0),
(251, 6, '17/3/2021', 0),
(252, 9, '17/3/2021', 0),
(253, 13, '17/3/2021', 0),
(254, 14, '17/3/2021', 0),
(255, 6, '18/3/2021', 2000),
(256, 9, '18/3/2021', 0),
(257, 10, '18/3/2021', 0),
(258, 13, '18/3/2021', 0),
(259, 14, '18/3/2021', 2500),
(260, 6, '26/3/2021', 1200),
(261, 7, '26/3/2021', 0),
(262, 9, '26/3/2021', 0),
(263, 13, '26/3/2021', 3000),
(264, 14, '26/3/2021', 750),
(265, 6, '27/3/2021', 4000),
(266, 7, '27/3/2021', 0),
(267, 9, '27/3/2021', 0),
(268, 13, '27/3/2021', 0),
(269, 14, '27/3/2021', 0),
(270, 6, '28/3/2021', 6960),
(271, 7, '28/3/2021', 0),
(272, 9, '28/3/2021', 0),
(273, 13, '28/3/2021', 0),
(274, 6, '29/3/2021', 4000),
(275, 7, '29/3/2021', 0),
(276, 9, '29/3/2021', 0),
(277, 13, '29/3/2021', 0),
(278, 6, '30/3/2021', 0),
(279, 7, '30/3/2021', 5000),
(280, 9, '30/3/2021', 0),
(281, 13, '30/3/2021', 11250),
(282, 3, '31/3/2021', 0),
(283, 6, '31/3/2021', 3200),
(284, 7, '31/3/2021', 0),
(285, 9, '31/3/2021', 0),
(286, 13, '31/3/2021', 9250),
(287, 3, '1/4/2021', 0),
(288, 6, '1/4/2021', 0),
(289, 7, '1/4/2021', 0),
(290, 9, '1/4/2021', 0),
(291, 13, '1/4/2021', 0),
(292, 3, '2/4/2021', 0),
(293, 6, '2/4/2021', 0),
(294, 7, '2/4/2021', 0),
(295, 9, '2/4/2021', 0),
(296, 13, '2/4/2021', 1450),
(297, 3, '3/4/2021', 0),
(298, 6, '3/4/2021', 1480),
(299, 7, '3/4/2021', 0),
(300, 9, '3/4/2021', 0),
(301, 13, '3/4/2021', 2500),
(302, 14, '3/4/2021', 0),
(303, 3, '4/4/2021', 0),
(304, 4, '4/4/2021', 0),
(305, 6, '4/4/2021', 0),
(306, 7, '4/4/2021', 0),
(307, 9, '4/4/2021', 0),
(308, 13, '4/4/2021', 5950),
(309, 14, '4/4/2021', 700),
(310, 3, '5/4/2021', 0),
(311, 4, '5/4/2021', 0),
(312, 6, '5/4/2021', 0),
(313, 7, '5/4/2021', 0),
(314, 9, '5/4/2021', 0),
(315, 13, '5/4/2021', 2500),
(316, 14, '5/4/2021', 650),
(317, 3, '6/4/2021', 0),
(318, 4, '6/4/2021', 0),
(319, 6, '6/4/2021', 4880),
(320, 7, '6/4/2021', 0),
(321, 9, '6/4/2021', 0),
(322, 13, '6/4/2021', 0),
(323, 14, '6/4/2021', 0),
(324, 4, '8/4/2021', 0),
(325, 6, '8/4/2021', 4640),
(326, 7, '8/4/2021', 0),
(327, 9, '8/4/2021', 0),
(328, 13, '8/4/2021', 6500),
(329, 14, '8/4/2021', 0),
(330, 4, '9/4/2021', 0),
(331, 6, '9/4/2021', 0),
(332, 7, '9/4/2021', 0),
(333, 9, '9/4/2021', 0),
(334, 13, '9/4/2021', 1900),
(335, 14, '9/4/2021', 1000),
(336, 6, '10/4/2021', 4500),
(337, 13, '10/4/2021', 0),
(338, 14, '10/4/2021', 0),
(339, 6, '12/4/2021', 2800),
(340, 7, '12/4/2021', 100),
(341, 13, '12/4/2021', 9300),
(342, 14, '12/4/2021', 500),
(343, 6, '13/4/2021', 16750),
(344, 7, '13/4/2021', 0),
(345, 13, '13/4/2021', 4550),
(346, 14, '13/4/2021', 3500),
(347, 6, '14/4/2021', 9600),
(348, 7, '14/4/2021', 0),
(349, 13, '14/4/2021', 6500),
(350, 14, '14/4/2021', 0),
(351, 6, '15/4/2021', 0),
(352, 7, '15/4/2021', 0),
(353, 13, '15/4/2021', 0),
(354, 14, '15/4/2021', 0),
(355, 7, '16/4/2021', 0),
(356, 13, '16/4/2021', 6250),
(357, 14, '16/4/2021', 0),
(358, 7, '17/4/2021', 0),
(359, 13, '17/4/2021', 0),
(360, 14, '17/4/2021', 2500),
(361, 6, '10/7/2021', 0),
(362, 7, '10/7/2021', 0),
(363, 10, '10/7/2021', 0),
(364, 13, '10/7/2021', 2500),
(365, 14, '10/7/2021', 0),
(366, 6, '11/7/2021', 0),
(367, 7, '11/7/2021', 0),
(368, 10, '11/7/2021', 0),
(369, 13, '11/7/2021', 0),
(370, 14, '11/7/2021', 0),
(371, 6, '12/7/2021', 0),
(372, 7, '12/7/2021', 0),
(373, 10, '12/7/2021', 0),
(374, 13, '12/7/2021', 0),
(375, 14, '12/7/2021', 0),
(376, 6, '13/7/2021', 0),
(377, 7, '13/7/2021', 0),
(378, 10, '13/7/2021', 0),
(379, 13, '13/7/2021', 0),
(380, 14, '13/7/2021', 0),
(381, 6, '14/7/2021', 0),
(382, 7, '14/7/2021', 0),
(383, 10, '14/7/2021', 0),
(384, 13, '14/7/2021', 0),
(385, 14, '14/7/2021', 0),
(386, 6, '15/7/2021', 0),
(387, 7, '15/7/2021', 0),
(388, 10, '15/7/2021', 0),
(389, 13, '15/7/2021', 0),
(390, 14, '15/7/2021', 0),
(391, 6, '16/7/2021', 0),
(392, 7, '16/7/2021', 0),
(393, 10, '16/7/2021', 0),
(394, 13, '16/7/2021', 0),
(395, 14, '16/7/2021', 0),
(396, 6, '17/7/2021', 0),
(397, 7, '17/7/2021', 0),
(398, 10, '17/7/2021', 0),
(399, 13, '17/7/2021', 0),
(400, 14, '17/7/2021', 0),
(401, 6, '18/7/2021', 0),
(402, 7, '18/7/2021', 0),
(403, 10, '18/7/2021', 0),
(404, 13, '18/7/2021', 0),
(405, 14, '18/7/2021', 0),
(406, 6, '19/7/2021', 0),
(407, 7, '19/7/2021', 0),
(408, 9, '19/7/2021', 0),
(409, 10, '19/7/2021', 0),
(410, 13, '19/7/2021', 0),
(411, 14, '19/7/2021', 0),
(412, 6, '20/7/2021', 0),
(413, 7, '20/7/2021', 0),
(414, 10, '20/7/2021', 0),
(415, 13, '20/7/2021', 0),
(416, 14, '20/7/2021', 0),
(417, 6, '22/7/2021', 0),
(418, 7, '22/7/2021', 0),
(419, 10, '22/7/2021', 0),
(420, 13, '22/7/2021', 0),
(421, 14, '22/7/2021', 0),
(422, 6, '23/7/2021', 0),
(423, 7, '23/7/2021', 0),
(424, 10, '23/7/2021', 0),
(425, 13, '23/7/2021', 0),
(426, 14, '23/7/2021', 0),
(427, 6, '24/7/2021', 0),
(428, 7, '24/7/2021', 0),
(429, 10, '24/7/2021', 0),
(430, 14, '24/7/2021', 0),
(431, 6, '25/7/2021', 0),
(432, 10, '25/7/2021', 0),
(433, 6, '26/7/2021', 0),
(434, 10, '26/7/2021', 2500),
(435, 6, '28/7/2021', 0),
(436, 10, '28/7/2021', 0),
(437, 6, '29/7/2021', 0),
(438, 10, '29/7/2021', 0),
(439, 6, '2/8/2021', 0),
(440, 10, '2/8/2021', 0),
(441, 13, '2/8/2021', 12000),
(442, 6, '3/8/2021', 0),
(443, 10, '3/8/2021', 0),
(444, 13, '6/8/2021', 7000),
(445, 13, '9/8/2021', 5000),
(446, 13, '10/8/2021', 0),
(447, 13, '11/8/2021', 23300),
(448, 13, '13/8/2021', 9150),
(449, 13, '14/8/2021', 5400),
(450, 13, '15/8/2021', 6750),
(451, 13, '16/8/2021', 0),
(452, 13, '16/8/2021', 2500),
(453, 7, '17/8/2021', 1900),
(454, 13, '17/8/2021', 6500),
(455, 6, '18/8/2021', 3900),
(456, 7, '18/8/2021', 0),
(457, 13, '18/8/2021', 5000),
(458, 6, '19/8/2021', 0),
(459, 7, '19/8/2021', 0),
(460, 13, '19/8/2021', 4100),
(461, 6, '22/6/2022', 4000),
(462, 7, '22/6/2022', 0),
(463, 13, '22/6/2022', 1475),
(464, 14, '22/6/2022', 500),
(465, 6, '23/6/2022', 0),
(466, 7, '23/6/2022', 0),
(467, 8, '23/6/2022', 0),
(468, 13, '23/6/2022', 3475),
(469, 14, '23/6/2022', 815),
(470, 6, '24/6/2022', 0),
(471, 7, '24/6/2022', 0),
(472, 8, '24/6/2022', 0),
(473, 13, '24/6/2022', 3750),
(474, 14, '24/6/2022', 750);

-- --------------------------------------------------------

--
-- Table structure for table `bizz_fuel`
--

CREATE TABLE `bizz_fuel` (
  `aID` int(11) NOT NULL,
  `aOwned` int(11) NOT NULL,
  `aOwner` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `aMessage` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `aAreaFillX` float NOT NULL,
  `aAreaFillY` float NOT NULL,
  `aAreaFillZ` float NOT NULL,
  `aBuyPrice` int(11) NOT NULL,
  `aMoney` int(11) NOT NULL,
  `aRaschet` int(11) NOT NULL,
  `aSklad` int(11) NOT NULL,
  `aLocked` int(11) NOT NULL,
  `aProducts` int(11) NOT NULL,
  `aPrice` int(11) NOT NULL,
  `aMafia` int(11) NOT NULL,
  `aArenda` int(11) NOT NULL,
  `aOplata` int(11) NOT NULL,
  `aSlet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_ci;

--
-- Dumping data for table `bizz_fuel`
--

INSERT INTO `bizz_fuel` (`aID`, `aOwned`, `aOwner`, `aMessage`, `aAreaFillX`, `aAreaFillY`, `aAreaFillZ`, `aBuyPrice`, `aMoney`, `aRaschet`, `aSklad`, `aLocked`, `aProducts`, `aPrice`, `aMafia`, `aArenda`, `aOplata`, `aSlet`) VALUES
(1, 0, 'None', 'AngelPine Gas', -2244.6, -2561.4, 31.9219, 1000000, 0, 0, 1000, 0, 20000, 50, 6, 1400, 0, 0),
(2, 0, 'None', 'North Station LV Truc', 2148.32, 2748.43, 10.8203, 1500000, 0, 0, 1000, 0, 20000, 50, 6, 1200, 18, 0),
(3, 0, 'None', 'North Station LV', 2202.01, 2475.05, 10.8203, 1500000, 0, 0, 1000, 0, 20000, 50, 6, 1500, 0, 0),
(4, 0, 'None', 'Las Barrancas Station Gas', -1471.6, 1864.23, 32.2576, 1000000, 0, 0, 1000, 0, 20000, 50, 6, 900, 0, 0),
(5, 0, 'None', 'Grover Station Gas', 2638.33, 1106.34, 10.8203, 2000000, 2500, 0, 10000, 0, 20000, 50, 6, 1800, 18, 0),
(6, 0, 'None', 'Mullholand Gas', 1004.02, -937.539, 42.3281, 3000000, 15240, 9350, 10000, 0, 416, 50, 6, 3500, 15, 0),
(7, 0, 'None', 'Suburban Refueling LS', 655.706, -565.3, 16.3359, 1000000, 31890, 0, 10000, 0, 488, 30, 6, 1800, 17, 0),
(8, 0, 'None', 'Petrol Station \"Area 51\"', 615.592, 1690.42, 6.56827, 2500000, 0, 0, 1000, 0, 500, 50, 6, 2200, 18, 0),
(9, 0, 'None', 'Las Venturas Station', 2115.3, 919.902, 10.8203, 2500000, 0, 0, 1000, 0, 20000, 50, 6, 3800, 0, 0),
(10, 0, 'None', 'Station Maintenance 24/7', 1596.32, 2199.17, 10.8203, 1500000, 0, 0, 1000, 0, 19988, 50, 6, 1600, 0, 0),
(11, 0, 'None', 'Rapid Charging', -1606.37, -2713.68, 48.5335, 750000, 0, 0, 1000, 0, 20000, 50, 6, 1200, 0, 0),
(12, 0, 'None', 'Fort Carson Gas Station', 70.428, 1218.92, 18.8119, 1300000, 0, 0, 1000, 0, 20000, 50, 6, 2400, 0, 0),
(13, 0, 'None', 'Idelwood Gas', 1940.93, -1772.94, 13.6406, 3500000, 13300, 0, 10000, 0, -7, 25, 6, 7200, 15, 0),
(14, 0, 'None', 'Intercity Station LS', -91.2647, -1169.9, 2.41887, 2700000, 12065, 0, 1000, 0, 400, 5, 6, 5800, 17, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bizz_stats`
--

CREATE TABLE `bizz_stats` (
  `id` int(11) NOT NULL,
  `bID` int(11) NOT NULL,
  `bData` varchar(32) NOT NULL,
  `bSumma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_ci;

--
-- Dumping data for table `bizz_stats`
--

INSERT INTO `bizz_stats` (`id`, `bID`, `bData`, `bSumma`) VALUES
(59, 64, '23/2/2020', 0),
(126, 64, '24/2/2020', 0),
(152, 39, '6/8/2020', 0),
(909, 67, '17/7/2021', 4800),
(927, 67, '18/7/2021', 14784),
(929, 69, '18/7/2021', 0),
(947, 67, '19/7/2021', 4800),
(949, 69, '19/7/2021', 384000),
(964, 67, '22/7/2021', 4800),
(966, 69, '22/7/2021', 211200),
(968, 77, '22/7/2021', 5184),
(984, 67, '23/7/2021', 9600),
(985, 69, '23/7/2021', 0),
(987, 77, '23/7/2021', 0),
(999, 67, '24/7/2021', 4800),
(1000, 69, '24/7/2021', 0),
(1002, 77, '24/7/2021', 5088),
(1013, 67, '25/7/2021', 0),
(1014, 69, '25/7/2021', 0),
(1016, 77, '25/7/2021', 0),
(1024, 67, '26/7/2021', 0),
(1025, 69, '26/7/2021', 0),
(1027, 77, '26/7/2021', 0),
(1035, 67, '28/7/2021', 4800),
(1036, 69, '28/7/2021', 172800),
(1038, 77, '28/7/2021', 0),
(1046, 67, '29/7/2021', 0),
(1047, 69, '29/7/2021', 0),
(1049, 77, '29/7/2021', 0),
(1057, 67, '31/7/2021', 46848),
(1058, 69, '31/7/2021', 0),
(1060, 77, '31/7/2021', 0),
(1068, 67, '2/8/2021', 487776),
(1069, 69, '2/8/2021', 800000),
(1071, 77, '2/8/2021', 0),
(1079, 67, '3/8/2021', 292800),
(1080, 69, '3/8/2021', 0),
(1082, 77, '3/8/2021', 9600),
(1088, 67, '4/8/2021', 9600),
(1089, 69, '4/8/2021', 64320),
(1091, 77, '4/8/2021', 0),
(1097, 66, '5/8/2021', 0),
(1098, 67, '5/8/2021', 4800),
(1099, 69, '5/8/2021', 76800),
(1101, 77, '5/8/2021', 4800),
(1107, 66, '5/8/2021', 0),
(1108, 67, '5/8/2021', 4800),
(1109, 69, '5/8/2021', 76800),
(1111, 77, '5/8/2021', 4800),
(1116, 66, '6/8/2021', 0),
(1117, 67, '6/8/2021', 14400),
(1118, 69, '6/8/2021', 530400),
(1120, 77, '6/8/2021', 0),
(1125, 66, '8/8/2021', 0),
(1126, 67, '8/8/2021', 2880),
(1127, 69, '8/8/2021', 384000),
(1129, 77, '8/8/2021', 4800),
(1135, 66, '9/8/2021', 0),
(1136, 67, '9/8/2021', 4800),
(1137, 69, '9/8/2021', 0),
(1139, 77, '9/8/2021', 0),
(1145, 66, '10/8/2021', 0),
(1146, 67, '10/8/2021', 276480),
(1147, 69, '10/8/2021', 76800),
(1149, 77, '10/8/2021', 0),
(1155, 42, '11/8/2021', 8448),
(1157, 66, '11/8/2021', 0),
(1158, 67, '11/8/2021', 37920),
(1159, 69, '11/8/2021', 0),
(1161, 77, '11/8/2021', 0),
(1165, 42, '13/8/2021', 192),
(1167, 66, '13/8/2021', 0),
(1168, 67, '13/8/2021', 0),
(1169, 69, '13/8/2021', 0),
(1171, 77, '13/8/2021', 4800),
(1175, 42, '14/8/2021', 4800),
(1176, 66, '14/8/2021', 0),
(1177, 67, '14/8/2021', 0),
(1178, 69, '14/8/2021', 0),
(1180, 77, '14/8/2021', 0),
(1181, 78, '14/8/2021', 719040),
(1184, 42, '15/8/2021', 5184),
(1185, 66, '15/8/2021', 0),
(1186, 67, '15/8/2021', 0),
(1187, 69, '15/8/2021', 172800),
(1188, 77, '15/8/2021', 0),
(1189, 78, '15/8/2021', 151680),
(1193, 42, '16/8/2021', 0),
(1194, 66, '16/8/2021', 0),
(1195, 67, '16/8/2021', 0),
(1196, 69, '16/8/2021', 0),
(1198, 77, '16/8/2021', 0),
(1199, 78, '16/8/2021', 0),
(1202, 19, '17/8/2021', 4224),
(1204, 42, '17/8/2021', 5856),
(1205, 66, '17/8/2021', 0),
(1206, 67, '17/8/2021', 68256),
(1207, 69, '17/8/2021', 242880),
(1209, 77, '17/8/2021', 0),
(1210, 78, '17/8/2021', 177600),
(1214, 19, '18/8/2021', 0),
(1215, 42, '18/8/2021', 672),
(1216, 66, '18/8/2021', 0),
(1217, 67, '18/8/2021', 14400),
(1218, 69, '18/8/2021', 153600),
(1220, 77, '18/8/2021', 0),
(1221, 78, '18/8/2021', 2880),
(1222, 19, '19/8/2021', 0),
(1223, 42, '19/8/2021', 192),
(1224, 66, '19/8/2021', 0),
(1225, 67, '19/8/2021', 419040),
(1226, 69, '19/8/2021', 172800),
(1228, 75, '19/8/2021', 0),
(1229, 77, '19/8/2021', 0),
(1230, 78, '19/8/2021', 2880),
(1231, 5, '22/6/2022', 0),
(1232, 6, '22/6/2022', 0),
(1233, 10, '22/6/2022', 0),
(1235, 19, '22/6/2022', 0),
(1237, 42, '22/6/2022', 5088),
(1239, 60, '22/6/2022', 0),
(1240, 66, '22/6/2022', 9120),
(1241, 67, '22/6/2022', 105984),
(1242, 68, '22/6/2022', 0),
(1243, 69, '22/6/2022', 211200),
(1245, 75, '22/6/2022', 198720),
(1246, 77, '22/6/2022', 0),
(1247, 78, '22/6/2022', 800000),
(1248, 5, '23/6/2022', 7680),
(1249, 6, '23/6/2022', 11520),
(1250, 9, '23/6/2022', 13440),
(1251, 10, '23/6/2022', 2880),
(1253, 15, '23/6/2022', 4896),
(1254, 19, '23/6/2022', 0),
(1255, 26, '23/6/2022', 2208),
(1256, 31, '23/6/2022', 0),
(1257, 35, '23/6/2022', 15360),
(1258, 41, '23/6/2022', 576),
(1259, 42, '23/6/2022', 11328),
(1260, 49, '23/6/2022', 20928),
(1261, 60, '23/6/2022', 400000),
(1262, 61, '23/6/2022', 480000),
(1263, 65, '23/6/2022', 0),
(1264, 66, '23/6/2022', 0),
(1265, 67, '23/6/2022', 49920),
(1266, 68, '23/6/2022', 4704),
(1267, 69, '23/6/2022', 800000),
(1268, 73, '23/6/2022', 460800),
(1269, 75, '23/6/2022', 0),
(1270, 77, '23/6/2022', 71040),
(1271, 78, '23/6/2022', 28800),
(1272, 5, '24/6/2022', 0),
(1273, 6, '24/6/2022', 9600),
(1274, 9, '24/6/2022', 0),
(1275, 10, '24/6/2022', 0),
(1277, 15, '24/6/2022', 19776),
(1278, 18, '24/6/2022', 5376),
(1279, 19, '24/6/2022', 0),
(1280, 26, '24/6/2022', 7104),
(1281, 31, '24/6/2022', 0),
(1282, 35, '24/6/2022', 0),
(1283, 41, '24/6/2022', 0),
(1284, 42, '24/6/2022', 0),
(1285, 48, '24/6/2022', 576),
(1286, 49, '24/6/2022', 0),
(1287, 60, '24/6/2022', 400000),
(1288, 61, '24/6/2022', 28800),
(1289, 65, '24/6/2022', 3840),
(1290, 66, '24/6/2022', 2784),
(1291, 67, '24/6/2022', 45600),
(1292, 68, '24/6/2022', 0),
(1293, 69, '24/6/2022', 172800),
(1294, 73, '24/6/2022', 336000),
(1295, 75, '24/6/2022', 0),
(1296, 77, '24/6/2022', 0),
(1297, 78, '24/6/2022', 0);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `nID` int(11) NOT NULL,
  `plID` int(11) NOT NULL,
  `nName` varchar(64) CHARACTER SET cp1251 COLLATE cp1251_general_ci NOT NULL,
  `nNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `car_settings`
--

CREATE TABLE `car_settings` (
  `car_id` int(3) NOT NULL,
  `car_model` int(3) NOT NULL,
  `car_name` varchar(35) NOT NULL,
  `car_price` int(8) NOT NULL,
  `car_prods` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COLLATE=cp1251_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `car_settings`
--

INSERT INTO `car_settings` (`car_id`, `car_model`, `car_name`, `car_price`, `car_prods`) VALUES
(1, 400, 'Landstalker', 80000, 425),
(2, 401, 'Bravura', 25000, 176),
(3, 402, 'Buffalo', 500000, 1025),
(4, 403, 'Linerunner', 250000, 0),
(5, 404, 'Perenniel', 13000, 75),
(6, 405, 'Sentinel', 60000, 404),
(7, 406, 'Dumper', 0, 0),
(8, 407, 'Firetruck', 0, 0),
(9, 408, 'Trashmaster', 0, 0),
(10, 409, 'Stretch', 400000, 0),
(11, 410, 'Manana', 27000, 118),
(12, 411, 'Infernus', 5000000, 3450),
(13, 412, 'Voodoo', 17000, 347),
(14, 413, 'Pony', 133125, 350),
(15, 414, 'Mule', 0, 0),
(16, 415, 'Cheetah', 2200000, 1650),
(17, 416, 'Ambulance', 0, 0),
(18, 417, 'Leviathan', 0, 0),
(19, 418, 'Moonbeam', 140000, 0),
(20, 419, 'Esperanto', 70000, 251),
(21, 420, 'Taxi', 0, 0),
(22, 421, 'Washington', 90000, 361),
(23, 422, 'Bobcat', 65000, 170),
(24, 423, 'Mr Whoopee', 0, 0),
(25, 424, 'BF Injection', 800000, 0),
(26, 425, 'Hunter', 0, 0),
(27, 426, 'Premier', 150000, 425),
(28, 427, 'Enforcer', 0, 0),
(29, 428, 'Securicar', 0, 0),
(30, 429, 'Banshee Banger', 1500000, 1050),
(31, 430, 'Predator', 0, 0),
(32, 431, 'Bus', 0, 0),
(33, 432, 'Rhino', 0, 0),
(34, 433, 'Barracks', 0, 0),
(35, 434, 'Hotknife', 1025000, 920),
(36, 435, 'Article Trailer', 0, 0),
(37, 436, 'Previon', 22500, 0),
(38, 437, 'Coach', 0, 0),
(39, 438, 'Cabbie', 90000, 0),
(40, 439, 'Stallion', 108750, 285),
(41, 440, 'Rumpo', 0, 0),
(42, 441, 'RC Bandit', 0, 0),
(43, 442, 'Romero', 140000, 0),
(44, 443, 'Packer', 0, 0),
(45, 587, 'Euros', 470000, 0),
(46, 487, 'Maverick', 2000000, 276),
(47, 446, 'Squallo', 0, 0),
(48, 447, 'Seasparrow', 0, 0),
(49, 448, 'Pizzaboy', 0, 0),
(50, 449, 'Tram', 0, 0),
(51, 450, 'Article Trailer 2', 0, 0),
(52, 451, 'Turismo', 2200000, 0),
(53, 452, 'Speeder', 0, 2010),
(54, 453, 'Reefer', 0, 0),
(55, 454, 'Tropic', 0, 0),
(56, 455, 'Flatbed', 0, 0),
(57, 456, 'Yankee', 0, 0),
(58, 457, 'Caddy', 30000, 0),
(59, 458, 'Solair', 120000, 0),
(60, 459, 'Topfun', 400000, 0),
(61, 460, 'Skimmer', 0, 0),
(62, 461, 'PCJ-600', 250000, 406),
(63, 462, 'Faggio', 10000, 160),
(64, 463, 'Freeway', 150000, 250),
(65, 464, 'RC Baron', 0, 0),
(66, 465, 'RC Raider', 0, 0),
(67, 466, 'Glendale', 22700, 213),
(68, 467, 'Oceanic', 62500, 164),
(69, 468, 'Sanchez', 110000, 200),
(70, 469, 'Sparrow', 0, 0),
(71, 470, 'Patriot', 1200000, 0),
(72, 471, 'Quad', 80000, 260),
(73, 472, 'Coastguard', 0, 0),
(74, 473, 'Dinghy', 0, 0),
(75, 474, 'Hermes', 68750, 180),
(76, 475, 'Sabre', 42000, 191),
(77, 476, 'Rustler', 0, 0),
(78, 477, 'ZR-350', 800000, 820),
(79, 478, 'Walton', 500000, 0),
(80, 479, 'Regina', 22000, 143),
(81, 424, 'BF', 7250000, 690),
(82, 481, 'BMX', 4000, 50),
(83, 482, 'Burrito', 27000, 0),
(84, 483, 'Camper', 31000, 0),
(85, 484, 'Marquis', 0, 0),
(86, 485, 'Baggage', 0, 0),
(87, 486, 'Dozer', 0, 0),
(88, 445, 'Admiral', 130000, 0),
(89, 488, 'San News Maverick', 0, 0),
(90, 489, 'Rancher', 140000, 0),
(91, 490, 'FBI Rancher', 1200000, 0),
(92, 491, 'Virgo', 25000, 250),
(93, 492, 'Greenwood', 30000, 246),
(94, 493, 'Jetmax', 0, 0),
(95, 494, 'Hotring Racer', 4500000, 0),
(96, 495, 'Sandking', 4000000, 0),
(97, 496, 'Blista Compact', 140000, 496),
(98, 497, 'Police Maverick', 0, 0),
(99, 498, 'Boxville', 0, 0),
(100, 499, 'Benson', 0, 0),
(101, 500, 'Mesa', 105000, 457),
(102, 501, 'RC Goblin', 0, 0),
(103, 502, 'Hotring Racer', 1000000, 0),
(104, 503, 'Hotring Racer', 1000000, 0),
(105, 504, 'Bloodring Banger', 1000000, 0),
(106, 505, 'Rancher', 80000, 446),
(107, 506, 'Super GT', 1900000, 700),
(108, 507, 'Elegant', 130000, 308),
(109, 508, 'Camper', 350000, 0),
(110, 509, 'Bike', 3000, 50),
(111, 510, 'Mountain Bike', 6000, 100),
(112, 511, 'Beagle', 0, 0),
(113, 512, 'Cropduster', 0, 0),
(114, 513, 'Stuntplane', 0, 0),
(115, 514, 'Petrol Tanker', 400000, 0),
(116, 515, 'Roadtrain', 600000, 0),
(117, 516, 'Nebula', 25000, 0),
(118, 517, 'Majestic', 121250, 318),
(119, 518, 'Buccaneer', 29000, 0),
(120, 519, 'Shamal', 0, 0),
(121, 520, 'Hydra', 0, 0),
(122, 521, 'FCR-900', 325000, 525),
(123, 522, 'NRG-500', 2850000, 2800),
(124, 523, 'Cop Bike HPV1000', 0, 0),
(125, 524, 'Cement Truck', 0, 0),
(126, 525, 'Towtruck', 0, 0),
(127, 526, 'Fortune', 24000, 340),
(128, 527, 'Cadrona', 16000, 297),
(129, 528, 'FBI Truck', 1200000, 0),
(130, 529, 'Willard', 19800, 0),
(131, 530, 'Forklift', 0, 0),
(132, 531, 'Tractor', 600000, 0),
(133, 532, 'Combine Harvester', 0, 0),
(134, 533, 'Feltzer', 115000, 500),
(135, 534, 'Remington', 100000, 637),
(136, 535, 'Slamvan', 20000, 191),
(137, 536, 'Blade', 120000, 0),
(138, 537, 'Freight (Train)', 0, 0),
(139, 538, 'Brownstreak (Train)', 0, 0),
(140, 539, 'Vortex', 2400000, 0),
(141, 540, 'Vincent', 28000, 0),
(142, 541, 'Bullet', 1800000, 1600),
(143, 542, 'Clover', 40400, 141),
(144, 543, 'Sadler', 27000, 65),
(145, 544, 'Firetruck', 0, 0),
(146, 545, 'Hustler', 91000, 239),
(147, 546, 'Intruder', 100000, 0),
(148, 547, 'Primo', 23500, 0),
(149, 548, 'Cargobob', 0, 0),
(150, 549, 'Tampa', 39000, 102),
(151, 550, 'Sunrise', 38100, 0),
(152, 551, 'Merit', 25200, 287),
(153, 552, 'Utility Van', 0, 0),
(154, 553, 'Nevada', 0, 0),
(155, 554, 'Yosemite', 200000, 425),
(156, 555, 'Windsor', 700000, 382),
(157, 556, 'Monster \"A\"', 2000000, 0),
(158, 557, 'Monster \"B\"', 2000000, 0),
(159, 558, 'Uranus', 32900, 680),
(160, 559, 'Jester', 730000, 700),
(161, 560, 'Sultan', 670000, 800),
(162, 561, 'Stratum', 20000, 446),
(163, 562, 'Elegy', 550000, 700),
(164, 563, 'Raindance', 0, 0),
(165, 564, 'RC Tiger', 0, 0),
(166, 565, 'Flash', 100000, 0),
(167, 566, 'Tahoma', 220000, 467),
(168, 567, 'Savanna', 250000, 531),
(169, 568, 'Bandito', 1600000, 0),
(170, 569, 'Flat Trailer (Train)', 0, 0),
(171, 570, 'Streak Trailer (Train)', 0, 0),
(172, 571, 'Kart', 1400000, 0),
(173, 572, 'Mower', 0, 0),
(174, 573, 'Dune', 1800000, 0),
(175, 574, 'Sweeper', 0, 0),
(176, 575, 'Broadway', 80000, 210),
(177, 576, 'Tornado', 119450, 331),
(178, 577, 'AT400', 0, 0),
(179, 578, 'DFT-30', 1800000, 0),
(180, 579, 'Huntley', 145000, 728),
(181, 580, 'Stafford', 287500, 611),
(182, 581, 'BF-400', 600000, 0),
(183, 582, 'Newsvan', 0, 0),
(184, 583, 'Tug', 0, 0),
(185, 584, 'Petrol Trailer', 0, 0),
(186, 585, 'Emperor', 72500, 190),
(187, 586, 'Wayfarer', 110000, 200),
(188, 444, 'Monster', 2000000, 470),
(189, 588, 'Hotdog', 0, 0),
(190, 589, 'Club', 33000, 786),
(191, 590, 'Box Trailer (Train)', 0, 0),
(192, 591, 'Article Trailer 3', 0, 0),
(193, 592, 'Andromada', 0, 0),
(194, 593, 'Dodo', 0, 0),
(195, 594, 'RC Cam', 0, 0),
(196, 595, 'Launch', 0, 0),
(197, 596, 'Police Car (LSPD)', 0, 0),
(198, 597, 'Police Car (SFPD)', 0, 0),
(199, 598, 'Police Car (LVPD)', 0, 0),
(200, 599, 'Ranger', 1200000, 0),
(201, 600, 'Picador', 31250, 82),
(202, 601, 'S.W.A.T.', 2400000, 0),
(203, 602, 'Alpha', 300000, 350),
(204, 603, 'Phoenix', 990000, 876),
(205, 604, 'Glendale Shit', 0, 0),
(206, 605, 'Sadler Shit', 0, 0),
(207, 606, 'Baggage Trailer \"A\"', 0, 0),
(208, 607, 'Baggage Trailer \"B\"', 0, 0),
(209, 608, 'Tug Stairs Trailer', 0, 0),
(210, 609, 'Boxburg', 0, 0),
(211, 610, 'Farm Trailer', 0, 0),
(212, 611, 'Utility Trailer', 0, 0),
(213, 3883, 'bhmcar', 1, 425);

-- --------------------------------------------------------

--
-- Table structure for table `donate_log`
--

CREATE TABLE `donate_log` (
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `elecations`
--

CREATE TABLE `elecations` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `owner` varchar(64) NOT NULL,
  `votes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `elecations`
--

INSERT INTO `elecations` (`id`, `name`, `owner`, `votes`) VALUES
(0, '', '', 0),
(1, '', '', 0),
(2, '', '', 0),
(3, '', '', 0),
(4, '', '', 0),
(5, '', '', 0),
(6, '', '', 0),
(7, '', '', 0),
(8, '', '', 0),
(9, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `enters`
--

CREATE TABLE `enters` (
  `pickID` int(11) NOT NULL,
  `pickX` float NOT NULL,
  `pickY` float NOT NULL,
  `pickZ` float NOT NULL,
  `pickM` int(11) NOT NULL,
  `pickT` int(11) NOT NULL,
  `pickI` int(11) NOT NULL,
  `pickV` int(11) NOT NULL,
  `pickPosX` float NOT NULL,
  `pickPosY` float NOT NULL,
  `pickPosZ` float NOT NULL,
  `pickPosA` float NOT NULL,
  `pickPosI` int(11) NOT NULL,
  `pickPosV` int(11) NOT NULL,
  `pickName` varchar(32) NOT NULL,
  `IconIDM` int(11) NOT NULL,
  `pickColor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_ci;

--
-- Dumping data for table `enters`
--

INSERT INTO `enters` (`pickID`, `pickX`, `pickY`, `pickZ`, `pickM`, `pickT`, `pickI`, `pickV`, `pickPosX`, `pickPosY`, `pickPosZ`, `pickPosA`, `pickPosI`, `pickPosV`, `pickName`, `IconIDM`, `pickColor`) VALUES
(1, 1411.55, -1699.55, 13.5395, 1318, 0, 0, 0, 2307.07, -15.7672, 26.7496, 275.07, 0, 1, 'Центральный банк', 52, 0),
(2, 2304.71, -16.1303, 26.7422, 1318, 0, 0, 1, 1413.62, -1701.27, 13.5395, 226.203, 0, 0, 'Выход', 0, 0),
(3, 1481.02, -1772.31, 18.7958, 1318, 0, 0, 0, 1557.75, -1567.7, 1001.1, 268.645, 3, 2, 'Администрация Президента', 19, 0),
(4, 1556.13, -1567.7, 1001.1, 1318, 0, 3, 2, 1480.96, -1769.23, 18.7958, 0.94, 0, 0, 'Выход', 0, 0),
(5, 2308.78, -13.2485, 26.7422, 1274, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'Оплата недвижимости', 0, 1),
(6, 2316.62, -9.9545, 26.7422, 1274, 0, 0, 1, 0, 0, 0, 0, 0, 0, '/bank', 0, 1),
(7, 1172.08, -1323.36, 15.403, 1318, 0, 0, 0, -643.034, -899.383, 1436.17, 181.046, 8, 6, 'Больница', 22, 0),
(8, -642.77, -897.983, 1436.17, 1318, 0, 8, 6, 1174.46, -1323.4, 14.7891, 268.506, 0, 0, 'Выход', 0, 0),
(9, -49.8211, -269.363, 6.6332, 1239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Развозчик продуктов', 51, 1),
(10, 1555.5, -1675.65, 16.1953, 1318, 0, 0, 0, 246.761, 64.7947, 1003.64, 359.172, 6, 1, 'LSPD', 30, 0),
(11, 246.79, 62.3242, 1003.64, 1318, 0, 6, 1, 1553.32, -1675.62, 16.1953, 90.1314, 0, 0, 'Выход', 0, 0),
(12, 1568.67, -1689.97, 6.2188, 1318, 0, 0, 1, 246.36, 86.0497, 1003.64, 179.004, 6, 1, 'LSPD', 0, 0),
(13, 246.418, 88.0093, 1003.64, 1318, 0, 6, 1, 1568.6, -1693.12, 5.8906, 180.012, 0, 0, 'Выход в гараж', 0, 0),
(14, 1564.75, -1667, 28.3956, 1318, 0, 0, 0, 245.001, 66.4437, 1003.64, 271.125, 6, 1, 'LSPD', 0, 0),
(15, 242.249, 66.3348, 1003.64, 1318, 0, 6, 1, 1564.9, -1663.09, 28.3956, 358.927, 0, 0, 'Выход на крышу', 0, 0),
(16, 1123, -2036.91, 70.19, 1318, 0, 0, 0, 288.798, 170.164, 1007.18, 358.162, 3, 2, 'FBI', 30, 0),
(17, 288.721, 167.067, 1007.17, 1318, 0, 3, 2, 1126, -2036.91, 70.19, 91.7745, 0, 0, 'Выход', 0, 0),
(18, 345.582, 1945.31, 21.8837, 1318, 0, 0, 0, 316.387, -168.238, 999.594, 359.836, 6, 3, 'Главный склад', 6, 0),
(19, 316.39, -170.298, 999.594, 1318, 0, 6, 3, 343.31, 1945.3, 21.8837, 89.4492, 0, 0, 'Выход', 0, 0),
(20, 0, 0, 0, 2358, 0, 6, 3, 0, 0, 0, 0, 0, 0, 'Боеприпасы для погрузки', 0, 1),
(21, 1524.48, -1677.84, 6.2188, 1318, 0, 0, 0, 316.387, -168.238, 999.594, 359.836, 6, 1, 'Главный склад', 0, 0),
(22, 316.39, -170.298, 999.594, 1318, 0, 6, 1, 1527.32, -1677.8, 5.8906, 269.331, 0, 0, 'Выход', 0, 0),
(23, 312.158, -165.451, 999.601, 2044, 0, 6, 1, 0, 0, 0, 0, 0, 0, 'Боеприпасы', 0, 1),
(24, 1699.65, -1667.92, 20.2057, 1318, 0, 0, 0, 162.323, -123.86, 1071.38, 182.487, 6, 1, 'Радиоцентр', 48, 0),
(25, 162.327, -121.849, 1071.38, 1318, 0, 6, 1, 1696.42, -1668.11, 20.196, 90.31, 0, 0, 'Выход', 0, 0),
(26, 681.579, -473.346, 16.5363, 1318, 0, 0, 0, 502.04, -70.1103, 998.758, 181.275, 11, 1, 'Байкеры', 26, 0),
(27, 501.915, -67.5634, 998.758, 1318, 0, 11, 1, 681.536, -476.638, 16.3359, 181.546, 0, 0, 'Выход', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `family`
--

CREATE TABLE `family` (
  `fam_id` int(11) NOT NULL,
  `fam_name` varchar(68) NOT NULL,
  `fam_creator` varchar(24) NOT NULL,
  `fam_chat_color` varchar(16) NOT NULL DEFAULT 'FFFFFF',
  `fam_nationality` int(4) NOT NULL DEFAULT 0,
  `fam_ranks` varchar(368) NOT NULL DEFAULT 'Participant|Deputy|Creator|none|none|none|none|none|none|none|none|none',
  `fam_settings` varchar(64) NOT NULL DEFAULT '3|3|3|3|3|3|3|3',
  `fam_date` date NOT NULL,
  `fam_bank` int(11) NOT NULL DEFAULT 0,
  `fam_house` int(11) NOT NULL DEFAULT 0,
  `fam_drugs` int(9) NOT NULL DEFAULT 0,
  `fam_materials` int(9) NOT NULL DEFAULT 0,
  `fam_guns` int(9) NOT NULL DEFAULT 0,
  `fam_dorm_status` int(6) NOT NULL DEFAULT 0,
  `fam_dorm` varchar(56) NOT NULL DEFAULT '0.0|0.0|0.0|0|0',
  `fam_members` int(11) NOT NULL DEFAULT 0,
  `fam_rating` int(11) NOT NULL DEFAULT 0,
  `fam_ticket` int(11) NOT NULL DEFAULT 0,
  `fam_max_car` int(3) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `family`
--

INSERT INTO `family` (`fam_id`, `fam_name`, `fam_creator`, `fam_chat_color`, `fam_nationality`, `fam_ranks`, `fam_settings`, `fam_date`, `fam_bank`, `fam_house`, `fam_drugs`, `fam_materials`, `fam_guns`, `fam_dorm_status`, `fam_dorm`, `fam_members`, `fam_rating`, `fam_ticket`, `fam_max_car`) VALUES
(1, 'The Zodiac', 'Amir_Baazi', '54FF9F', 5, 'Participant|Deputy|Creator|none|none|none|none|none|none|none|none|none', '3|3|3|3|3|3|3', '2024-09-28', 100000, 272, 0, 0, 0, 0, '1842.609863|2175.510253|2011.010742|15|272', 1, 0, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fraction`
--

CREATE TABLE `fraction` (
  `fID` int(11) NOT NULL,
  `fSpawnX` float NOT NULL,
  `fSpawnY` float NOT NULL,
  `fSpawnZ` float NOT NULL,
  `fSpawnFA` float NOT NULL,
  `fInt` int(11) NOT NULL,
  `fVw` int(11) NOT NULL,
  `fName` varchar(32) NOT NULL,
  `fSkin1` int(11) NOT NULL,
  `fSkin2` int(11) NOT NULL,
  `fSkin3` int(11) NOT NULL,
  `fSkin4` int(11) NOT NULL,
  `fSkin5` int(11) NOT NULL,
  `fSkin6` int(11) NOT NULL,
  `fSkin7` int(11) NOT NULL,
  `fSkin8` int(11) NOT NULL,
  `fSkin9` int(11) NOT NULL,
  `fSkinKolvo` int(11) NOT NULL,
  `fRankMax` int(11) NOT NULL,
  `fLevel` int(11) NOT NULL,
  `fMesto0` float NOT NULL,
  `fMesto1` float NOT NULL,
  `fMesto2` float NOT NULL,
  `fBank0` int(11) NOT NULL,
  `fBank1` int(11) NOT NULL,
  `fBank2` int(11) NOT NULL,
  `fTag` varchar(16) NOT NULL,
  `fRankName` varchar(600) NOT NULL DEFAULT '-,-,-,-,-,-,-,-,-,-,-,-,-,-,-',
  `fSalary` varchar(244) NOT NULL DEFAULT '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0',
  `fFreeze` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_ci;

--
-- Dumping data for table `fraction`
--

INSERT INTO `fraction` (`fID`, `fSpawnX`, `fSpawnY`, `fSpawnZ`, `fSpawnFA`, `fInt`, `fVw`, `fName`, `fSkin1`, `fSkin2`, `fSkin3`, `fSkin4`, `fSkin5`, `fSkin6`, `fSkin7`, `fSkin8`, `fSkin9`, `fSkinKolvo`, `fRankMax`, `fLevel`, `fMesto0`, `fMesto1`, `fMesto2`, `fBank0`, `fBank1`, `fBank2`, `fTag`, `fRankName`, `fSalary`, `fFreeze`) VALUES
(1, 237.011, 78.0775, 1005.04, 0, 6, 1, 'Police Ls', 306, 300, 284, 281, 285, 302, 288, 307, 303, 9, 14, 2, 1528.51, -1677.67, 5.8906, 3750, 5000, 0, 'LSPD', '-,Курсант,Офицер I,Офицер II,Офицер III,Ст.Офицер,Сержант I,Сержант II,Детектив I,Детектив II,Лейтенант,Капитан,Майор,Зам.Шефа,Шеф,', '0,1000,1500,2000,2500,3000,3500,4000,4500,5000,5500,6000,6500,10000,15000,0', 0),
(2, 252.558, 190.762, 1008.17, 269.321, 3, 2, 'FBI', 141, 115, 166, 163, 285, 286, 12, 0, 10, 9, 15, 2, -371.859, 1577, 76.0423, 1250, 5500, 0, 'FBI', '-,FBI Trainee,Junior Agent,OPR Agent,Senior Agent,Special Agent,Agent Governor,Inspector,Senior Inspector,Agent of National Security,Deputy Head,Head of group,Manager HRT,Secretary of Chief,Deputy of Chief,Chief of Federal', '0,2000,2500,5000,6500,8000,10000,10000,12000,17000,20000,0,0,0,0,0', 0),
(3, 242.142, 1870.06, 11.4609, 1.0492, 0, 0, 'Ground Army', 91, 73, 255, 287, 61, 179, 191, 0, 0, 7, 14, 1, 336.521, 1927.34, 17.6406, 1000000, 1000000, 0, 'СВ', '-,Рекрут,Рядовой,Капрал,Сержант,Ст.Сержант,Штаб-Сержант,Мл.Лейтенант,Лейтенант,Ст.Лейтенант,Капитан,Майор,Подполковник,Полковник,Генерал,', '0,500,700,1000,1500,2000,3000,3500,4000,4500,5000,6000,7000,8000,10000,0', 0),
(4, 1591.85, -1567.51, 1004.63, 90.6017, 3, 2, 'Mayor', 17, 228, 59, 98, 164, 76, 187, 141, 150, 9, 13, 2, 357.786, 193.968, 1023.99, 0, 0, 0, 'АП', '-,Охранник,Мл.Агент USSS,Агент USSS,Адвокат ,Начальник USSS,Агент SSC,Директор SSC,Министр Здравоохранение,Министр Обороны,Министр Юстиции,Губернатор Штата,Вице-Президент,Президент Федерации,-,', '0,1000,1700,2500,3500,5000,6500,8000,10000,10000,10000,12000,15000,20000,0,0', 0),
(5, -648.689, -918.774, 1436.22, 348.28, 8, 6, 'Medic Ls', 274, 275, 276, 308, 70, 0, 0, 0, 0, 5, 10, 2, 0, 0, 0, 0, 0, 0, 'MCLS', '-,Санитар,Мл.Мед.персонал,Ст.Мед.персонал,Врач-Участковый,Анастазиолог,Мл.Хирург,Хирург,Профессор,Заведующий отделением,Глав Врач,-,-,-,-,', '0,600,1300,2000,3500,5000,6500,7000,8000,9000,10000,0,0,0,0,0', 0),
(6, 162.307, -116.807, 1076.59, 178.327, 6, 1, 'Radio Center', 60, 233, 211, 150, 188, 170, 186, 187, 0, 8, 10, 2, 170.01, -123.223, 1080.63, 0, 0, 0, 'NEWS', '-,Стажёр,Звукооператор,Звукорежиссёр,Репортёр,Ведущий,Редактор,Гл.Редактор,Тех.Директор,Программный директор,Генеральный директор,-,-,-,-,', '0,650,1300,1700,2300,3000,3500,5000,6000,7000,9000,0,0,0,0,0', 0),
(7, 508.485, -85.5319, 998.961, 1.3339, 11, 1, 'Bandidos MC', 181, 247, 248, 64, 152, 0, 0, 0, 0, 5, 7, 2, 170.01, -123.223, 1080.63, 0, 0, 0, '', '-,Prospect,Member,Road Capitan,Sergeant,Treasurer,Vice-President,President,-,-,-,-,-,-,-,', '0,600,1000,2000,3000,4000,6000,8000,0,0,0,0,0,0,0,0', 0),
(8, 2225.29, 669.328, 1018.31, 359.886, 2, 850, 'East Side Ballas', 102, 103, 104, 195, 296, 29, 0, 0, 0, 6, 10, 2, 0, 0, 0, 1000, 1000, 1000, '', '-,Blood,Dogg,Cracker,Bro,Nigga,Big Nigga,Ganster,Defender,Star,Big Villi,-,-,-,-,', '0,500,1200,1700,2000,2300,2700,3000,4500,5500,7000,0,0,0,0,0', 1),
(9, 2225.17, 669.198, 1018.4, 0.8263, 4, 5, 'Los Santos Vagos', 108, 109, 110, 56, 0, 0, 0, 0, 0, 4, 10, 2, 0, 0, 0, 1000, 1000, 1000, '', '-,Novato ,Ordinario,Amigo,Verificado,Empresa ,Aproximado ,Invasor,Assesino,Padrino ,Padre,-,-,-,-,', '0,500,1200,1700,2000,2300,2700,3000,4500,5500,7000,0,0,0,0,0', 1),
(14, -1348.37, 493.612, 11.1953, 0.2144, 0, 0, 'Sea Army', 253, 287, 73, 191, 179, 191, 61, 0, 0, 7, 14, 1, 336.521, 1927.34, 17.6406, 1000000, 1000000, 0, 'ВМФ', '-,Рекрут,Рядовой,Капрал,Сержант,Ст.Сержант,Штаб-Сержант,Мл.Лейтенант,Лейтенант,Ст.Лейтенант,Капитан,Майор,Подполковник,Полковник,Генерал,', '0,500,700,1000,1500,2000,3000,3500,4000,4500,5000,6000,7000,8000,10000,0', 0),
(12, 2225.26, 669.208, 1018.29, 359.26, 1, 6, 'Varrios Los Aztecas', 114, 115, 116, 226, 293, 119, 292, 0, 0, 7, 10, 2, 0, 0, 0, 1000, 1000, 0, '', '-, Ladron,Novato,Tirador,Compiche,Nesto,Sablo,Invasor,Tesorerro,Vicarium,Padre,-,-,-,-,', '0,500,1200,1700,2000,2400,2700,3000,4500,5500,7000,0,0,0,0,0', 1),
(13, 2225.22, 669.196, 1018.4, 0.8263, 4, 8, 'Rifa Gang', 173, 174, 175, 41, 0, 0, 0, 0, 0, 4, 10, 2, 0, 0, 0, 1000, 1000, 1000, '', '-,Ladron,Novato,Amigo ,Мачо,Джуниор,Эрмано,Бандидо,Ауторидид,Аджунто,Padre,-,-,-,-,', '0,500,1200,1700,2000,2300,2700,3000,4500,5500,7000,0,0,0,0,0', 1),
(16, -1984.45, 1191.99, 113.518, 123.862, 1, 1, 'Yakuza Mafia', 117, 118, 120, 169, 123, 122, 0, 0, 0, 6, 10, 2, 0, 0, 0, 1000, 1000, 1000, '', '-,Вакасю,Сятэй,Сятейгасира,Вакагасира,Со-хобунтё,Камбу,Оядзи,Сайко-комон,Оябун-кобун,Кумите,-,-,-,-,', '0,3000,4000,5000,6000,7000,8000,9000,10000,11000,12000,0,0,0,0,0', 0),
(17, -1984.45, 1191.99, 113.518, 123.862, 1, 2, 'Columbian Mafia', 124, 125, 126, 127, 216, 46, 0, 0, 0, 6, 10, 2, 0, 0, 0, 1000, 1000, 1000, '', '-,Mafia,Legado,Probado,Luchador,Comerciante ,Asesino,Capitano,Asesor,Autoridad,Diputato,-,-,-,-,', '0,3000,4000,5000,6000,7000,8000,9000,10000,11000,12000,0,0,0,0,0', 0),
(10, -1984.45, 1191.99, 113.518, 123.862, 1, 3, 'Russian Mafia', 111, 112, 113, 12, 0, 0, 0, 0, 0, 4, 10, 2, 0, 0, 0, 1000, 1000, 1000, '', '-,Шнырь,Фраер,Бык,Барыга,Блатной,Свояк,Браток,Вор,Вор в законе,Авторитет,-,-,-,-,', '0,3000,4000,5000,6000,7000,8000,9000,10000,11000,12000,0,0,0,0,0', 0),
(15, 214.783, 2462.51, 16.4844, 356.867, 0, 0, 'Air Army', 255, 73, 287, 191, 0, 0, 0, 0, 0, 4, 14, 1, 336.521, 1927.34, 17.6406, 1000000, 1000000, 0, 'ВВС', '-,Рекурт,Рядовой,Капрал,Сержант,Ст.Сержант,Штаб-Сержант,Мл.Лейтенант,Лейтенант,Ст.Лейтенант,Капитан,Майор,Подполковник,Полковник,Генерал,', '0,500,700,1000,1500,2000,3000,3500,4000,4500,5000,6000,7000,8000,10000,0', 0),
(0, 0, 0, -500, 0, 333, 333, 'Нет', 114, 115, 116, 292, 193, 0, 0, 0, 0, 5, 10, 2, 0, 0, 0, 1000, 1000, 0, '', '-,-,-,-,-,-,-,-,-,-,-,-,-,-,-', '0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 0),
(11, 2225.34, 669.169, 1018.33, 358.32, 3, 891, 'Grove Gang', 106, 105, 107, 65, 86, 270, 269, 293, 271, 9, 10, 2, 0, 0, 0, 1000, 1000, 0, '', '-,Плейя,Хастла,Килла,Юонг Г ,Гангста ,О.Г,Mobsta,Де Кинг,Легенд ,Мэд Дог,-,-,-,-,', '0,500,1200,1700,2000,2300,2700,3000,4500,5500,7000,0,0,0,0,0', 1),
(20, -648.689, -918.774, 1436.22, 348.28, 8, 8, 'Medic Sf', 274, 275, 276, 308, 70, 0, 0, 0, 0, 5, 10, 2, 0, 0, 0, 0, 0, 0, 'MCSF', '-,Санитар,Мл.Мед.Персонал,Ст.Мед.Персонал,Врач-Участковый,Анастазиолог,Мл.Хирург,Хирург,Профессор,Заведующий отделением,Глав Врач,-,-,-,-,', '0,600,1300,2000,3500,5000,6500,7000,8000,9000,10000,0,0,0,0,0', 0),
(18, 221.134, 108.306, 1010.22, 274.977, 10, 2, 'Police SF', 306, 300, 284, 281, 285, 302, 288, 307, 0, 8, 14, 2, 1528.51, -1677.67, 5.8906, 3750, 5000, 0, 'SFPD', '-,Курсант ,Офицер I ,Офицер II,Офицер III,Ст.Офицер,Сержант I,Сержант II,Детектив I,Детектив II,Лейтенант ,Капитан ,Майор ,Зам.Шефа,Шеф,', '0,1000,1500,2000,2500,3000,3500,4000,4500,5000,5500,6000,6500,10000,15000,0', 0),
(19, 252.558, 190.762, 1008.17, 269.321, 3, 8, 'Police LV', 306, 300, 284, 281, 285, 302, 288, 307, 300, 8, 14, 2, 1528.51, -1677.67, 5.8906, 3750, 5000, 0, 'LVPD', '-,Курсант ,Офицер I,Офицер II,Офицер III,Ст.Офицер,Сержант I,Сержант II,Детектив I,Детектив II,Лейтенант ,Капитан ,Майор ,Зам.Шефа,Шеф,', '0,1000,1500,2000,2500,3000,3500,4000,4500,5000,5500,6000,6500,10000,15000,0', 0),
(21, -648.689, -918.774, 1436.22, 348.28, 8, 9, 'Medic Lv', 274, 275, 276, 308, 70, 0, 0, 0, 0, 5, 10, 2, 0, 0, 0, 0, 0, 0, 'MCLV', '-,Санитар,Мл.Мед.персонал,Ст.Мед.персонал,Врач-Участковый,Анастазиолог,Мл.Хирург,Хирург,Профессор,Заведующий отделением,Глав Врач,-,-,-,-,', '0,600,1300,2000,3500,5000,6500,7000,8000,9000,10000,0,0,0,0,0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fraction_wh`
--

CREATE TABLE `fraction_wh` (
  `id` int(11) NOT NULL,
  `weapon` int(11) NOT NULL,
  `ammo` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `drugs` int(11) NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `fraction_wh`
--

INSERT INTO `fraction_wh` (`id`, `weapon`, `ammo`, `money`, `drugs`, `state`) VALUES
(0, 33645, 29400, 70, 495, 0),
(1, 34679, 28479, 9487, 1168, 0),
(2, 32492, 28540, 702430, 1189, 0),
(3, 28268, 24973, 9, 0, 1),
(4, 29408, 25905, 110813, 0, 1),
(5, 30470, 29299, 39125, 1, 1),
(6, 30080, 29476, 27856, 0, 1),
(7, 30000, 30000, 1304394, 1000, 1),
(8, 26570, 25452, 0, 1000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gangzone`
--

CREATE TABLE `gangzone` (
  `ginfo1` float NOT NULL,
  `ginfo2` float NOT NULL,
  `ginfo3` float NOT NULL,
  `ginfo4` float NOT NULL,
  `fraction` int(3) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `gangzone`
--

INSERT INTO `gangzone` (`ginfo1`, `ginfo2`, `ginfo3`, `ginfo4`, `fraction`, `id`) VALUES
(2069.42, -1108.97, 2175.53, -945.297, 8, 0),
(2175.53, -1108.97, 2279.01, -945.297, 8, 1),
(2279.01, -1047.78, 2475.31, -945.297, 8, 2),
(2475.31, -1047.78, 2642.82, -945.297, 9, 3),
(1849.38, -1054.26, 2069.42, -945.297, 8, 4),
(2730.12, -1047.78, 2949.64, -945.297, 9, 5),
(1849.38, -1135.68, 2069.42, -1054.26, 8, 6),
(2069.42, -1220.78, 2175.53, -1108.97, 8, 7),
(2175.53, -1220.78, 2279.01, -1108.97, 8, 8),
(2279.01, -1154.09, 2400.24, -1047.78, 8, 9),
(2400.24, -1154.09, 2571.05, -1047.78, 8, 10),
(2571.05, -1154.09, 2642.82, -1047.78, 9, 11),
(2642.82, -1154.09, 2730.12, -1047.78, 9, 12),
(2642.82, -1256.51, 2730.12, -1154.09, 9, 13),
(2730.12, -1154.09, 2949.64, -1047.78, 9, 14),
(1849.38, -1260.84, 2069.42, -1135.68, 8, 15),
(2511.73, -1444.21, 2570.92, -1256.51, 11, 16),
(1849.38, -1340.92, 1964.6, -1260.84, 11, 17),
(1964.6, -1340.92, 2069.42, -1260.84, 11, 18),
(2166.32, -1300.78, 2279.01, -1220.78, 8, 19),
(2069.42, -1300.78, 2166.32, -1220.78, 11, 20),
(2279.01, -1300.78, 2370.93, -1154.09, 8, 21),
(2370.93, -1256.51, 2451.43, -1154.09, 8, 22),
(2570.92, -1256.51, 2642.82, -1154.09, 9, 23),
(2730.12, -1256.51, 2949.64, -1154.09, 9, 24),
(1849.38, -1463.11, 1986.98, -1340.92, 11, 25),
(1986.98, -1384.26, 2069.42, -1340.92, 11, 26),
(1986.98, -1463.11, 2122.54, -1384.26, 11, 27),
(2069.42, -1384.26, 2166.32, -1300.78, 11, 28),
(2166.32, -1384.26, 2279.01, -1300.78, 11, 29),
(2279.01, -1384.26, 2370.93, -1300.78, 11, 30),
(2370.93, -1326.63, 2451.43, -1256.51, 11, 31),
(2370.93, -1384.26, 2451.43, -1326.63, 11, 32),
(2451.43, -1369.43, 2511.73, -1256.51, 11, 33),
(2451.43, -1444.21, 2511.73, -1369.43, 11, 34),
(2570.92, -1350.79, 2642.82, -1256.51, 9, 35),
(2570.92, -1444.21, 2642.82, -1350.79, 9, 36),
(2642.82, -1394.48, 2730.12, -1256.51, 9, 37),
(2730.12, -1386.31, 2796.89, -1256.51, 9, 38),
(2796.89, -1386.31, 2949.64, -1256.51, 9, 39),
(1849.38, -1612.16, 1986.98, -1463.11, 11, 40),
(1986.98, -1612.16, 2122.54, -1463.11, 11, 41),
(2122.54, -1497.61, 2212.53, -1384.26, 11, 42),
(2122.54, -1612.16, 2212.53, -1497.61, 11, 43),
(2212.53, -1484.21, 2279.01, -1384.26, 11, 44),
(2279.01, -1484.21, 2342.62, -1384.26, 11, 45),
(2212.53, -1565.32, 2342.62, -1484.21, 11, 46),
(2342.62, -1444.21, 2451.43, -1384.26, 11, 47),
(2342.62, -1524.54, 2431.05, -1444.21, 11, 48),
(2431.05, -1504.31, 2550.81, -1444.21, 11, 49),
(2550.81, -1504.31, 2642.82, -1444.21, 9, 50),
(2451.43, -1256.51, 2570.92, -1154.09, 8, 51),
(2642.82, -1504.31, 2730.12, -1394.48, 9, 52),
(2730.12, -1488.44, 2823.17, -1386.31, 9, 53),
(2823.17, -1488.44, 2949.64, -1386.31, 9, 54),
(1821.64, -1752.25, 1941.63, -1612.16, 12, 55),
(1941.63, -1752.25, 2001.66, -1612.16, 12, 56),
(2001.66, -1672.23, 2081.62, -1612.16, 12, 57),
(2001.66, -1752.25, 2081.62, -1672.23, 12, 58),
(2081.62, -1752.25, 2212.53, -1612.16, 12, 59),
(2212.53, -1658.93, 2342.62, -1565.32, 11, 60),
(2212.53, -1737.49, 2342.62, -1658.93, 12, 61),
(2342.62, -1658.93, 2431.05, -1524.54, 11, 62),
(2342.62, -1737.49, 2431.05, -1658.93, 13, 63),
(2431.05, -1611.85, 2550.81, -1504.31, 11, 64),
(2550.81, -1611.85, 2642.82, -1504.31, 9, 65),
(2431.05, -1737.49, 2627.42, -1611.85, 13, 66),
(2642.82, -1611.85, 2730.12, -1504.31, 9, 67),
(2730.12, -1657.33, 2823.17, -1488.44, 9, 68),
(2823.17, -1657.33, 2949.64, -1488.44, 9, 69),
(2627.42, -1657.33, 2730.12, -1611.85, 13, 70),
(1849.38, -1856.7, 1961.68, -1752.25, 12, 71),
(1961.68, -1812.3, 2081.62, -1752.25, 12, 72),
(2081.62, -1894.43, 2212.53, -1752.25, 12, 73),
(2212.53, -1852.79, 2326.1, -1737.49, 12, 74),
(2326.1, -1852.79, 2413.77, -1737.49, 13, 75),
(2413.77, -1852.79, 2511.8, -1737.49, 13, 76),
(2511.8, -1852.79, 2627.42, -1737.49, 13, 77),
(2627.42, -1890.68, 2885.92, -1657.33, 13, 78),
(1849.38, -1932.34, 1961.68, -1856.7, 12, 79),
(1961.68, -1932.34, 2081.62, -1812.3, 12, 80),
(2081.62, -1932.34, 2212.53, -1894.43, 12, 81),
(2212.53, -1894.43, 2313.76, -1852.79, 12, 82),
(2212.53, -1972.35, 2313.76, -1894.43, 12, 83),
(2313.76, -1972.35, 2413.77, -1852.79, 13, 84),
(2413.77, -1932.24, 2511.8, -1852.79, 13, 85),
(2511.8, -1932.24, 2627.42, -1852.79, 13, 86),
(2627.42, -1932.24, 2714.18, -1890.68, 13, 87),
(2714.18, -1994.44, 2769.47, -1890.68, 13, 88),
(2769.47, -1994.44, 2885.92, -1890.68, 13, 89),
(1659.26, -2086.84, 1821.64, -2021.07, 12, 90),
(1821.64, -2049.24, 1882.4, -1932.34, 12, 91),
(1882.4, -2049.24, 1961.68, -1932.34, 12, 92),
(1961.68, -2049.24, 2212.53, -1998.97, 12, 93),
(2212.53, -2049.24, 2413.77, -1972.35, 13, 94),
(2413.77, -2049.24, 2583.17, -1932.24, 13, 95),
(2583.17, -2049.24, 2714.18, -1932.24, 13, 96),
(2714.18, -2049.24, 2885.92, -1994.44, 13, 97),
(1659.26, -2166.55, 1821.64, -2086.84, 12, 98),
(1821.64, -2166.55, 1961.68, -2049.24, 12, 99),
(1961.68, -2109.95, 2092.95, -2049.24, 12, 100),
(1961.68, -2166.55, 2092.95, -2109.95, 12, 101),
(1961.68, -1998.97, 2212.53, -1932.34, 12, 102),
(2642.82, -1047.78, 2730.12, -945.297, 9, 103),
(885.982, 806.787, 1554.46, 1165.03, 108, 104),
(885.982, 1182.28, 1194.3, 1815, 500, 105),
(885.982, 1831.06, 1194.3, 2426.91, 500, 106),
(885.982, 2452.74, 1763.69, 2887.53, 50, 107),
(1581.67, 806.787, 2027.45, 1165.03, 500, 108),
(2380.89, 2237.54, 2755.75, 2887.53, 5, 109),
(1230.37, 1182.28, 1763.69, 1815, 500, 110),
(1230.37, 1831.06, 1763.69, 2426.91, 10, 111),
(2152, 1767, 2476, 2214, 5, 112),
(1795.34, 1182.28, 2027.45, 1747.54, 5, 113),
(1795.34, 1767.51, 2122, 2214.34, 5, 114),
(2056, 806.787, 2755.75, 1165.03, 500, 115),
(1795.34, 2237.54, 2356, 2887.53, 5, 116),
(2056, 1182.28, 2476.72, 1747.54, 5, 117),
(2495.87, 1182.28, 2755.75, 2212.99, 5, 118);

-- --------------------------------------------------------

--
-- Table structure for table `graffiti`
--

CREATE TABLE `graffiti` (
  `id` int(11) NOT NULL,
  `owner_frac` int(11) NOT NULL,
  `color_owner` varchar(32) NOT NULL DEFAULT 'null',
  `block` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `graffiti`
--

INSERT INTO `graffiti` (`id`, `owner_frac`, `color_owner`, `block`) VALUES
(0, 12, 'null', 1618521256),
(1, 9, 'null', 1616178733),
(2, 12, 'null', 1618521308),
(3, 8, 'null', 1617356653),
(4, 12, 'null', 1618521347),
(5, 13, 'nulle', 1616155054),
(6, 9, 'null', 1628423942),
(7, 11, 'null', 1618818233),
(8, 12, 'null', 1618521579),
(9, 12, 'null', 1618521433),
(10, 13, 'nulle', 1616156971),
(11, 13, 'nulle', 1616157032),
(12, 12, 'null', 1618521661),
(13, 13, 'nulle', 1616155134),
(14, 13, 'nulle', 1616157160),
(15, 13, 'nulle', 1616167101),
(16, 13, 'nulle', 1616157364),
(17, 13, 'nulle', 1616157572),
(18, 8, 'null', 1616178427),
(19, 13, 'nulle', 1616159042),
(20, 13, 'nulle', 1616162006),
(21, 13, 'nulle', 1616159274),
(22, 9, 'null', 1616178950),
(23, 13, 'nulle', 1616159402),
(24, 13, 'nulle', 1616159460),
(25, 13, 'nulle', 1616161800),
(26, 13, 'nulle', 1616161689),
(27, 13, 'nulle', 1616159577),
(28, 13, 'nulle', 1616159648),
(29, 13, 'nulle', 1616159752),
(30, 13, 'nulle', 1616159849),
(31, 13, 'nulle', 1616160043),
(32, 13, 'nulle', 1616160156),
(33, 13, 'nulle', 1616160222),
(34, 13, 'nulle', 1616160416),
(35, 13, 'nulle', 1616178288),
(36, 13, 'nulle', 1616160537),
(37, 13, 'nulle', 1616160586),
(38, 13, 'nulle', 1616161482),
(39, 8, 'null', 0),
(40, 8, 'null', 0),
(41, 8, 'null', 0),
(42, 8, 'null', 0),
(43, 8, 'null', 0),
(44, 8, 'null', 0);

-- --------------------------------------------------------

--
-- Table structure for table `history_name`
--

CREATE TABLE `history_name` (
  `user_id` int(6) NOT NULL,
  `old_nick` varchar(24) CHARACTER SET cp1251 COLLATE cp1251_bin NOT NULL,
  `new_nick` varchar(24) CHARACTER SET cp1251 COLLATE cp1251_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(11) NOT NULL,
  `hOwned` int(11) NOT NULL,
  `hOwner` varchar(32) NOT NULL DEFAULT 'null',
  `hRentTime` int(11) NOT NULL,
  `hLock` int(11) NOT NULL,
  `hPrice` int(11) NOT NULL DEFAULT 50000
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `hOwned`, `hOwner`, `hRentTime`, `hLock`, `hPrice`) VALUES
(0, 0, 'null', 0, 0, 700),
(1, 0, 'null', 0, 0, 700),
(2, 0, 'null', 0, 0, 700),
(3, 0, 'null', 0, 0, 700),
(4, 0, 'null', 0, 0, 700),
(5, 0, 'null', 0, 0, 700),
(6, 0, 'null', 0, 0, 700),
(7, 0, 'null', 0, 0, 700),
(8, 0, 'null', 0, 0, 700),
(9, 0, 'null', 0, 0, 700),
(10, 0, 'null', 0, 0, 700),
(11, 0, 'null', 0, 0, 700),
(12, 0, 'null', 0, 0, 700),
(13, 0, 'null', 0, 0, 700),
(14, 0, 'null', 0, 0, 700),
(15, 0, 'null', 0, 0, 700),
(16, 0, 'null', 0, 0, 700),
(17, 0, 'null', 0, 0, 700),
(18, 0, 'null', 0, 0, 700),
(19, 0, 'null', 0, 0, 700),
(20, 0, 'null', 0, 0, 700),
(21, 0, 'null', 0, 0, 700),
(22, 0, 'null', 0, 0, 700),
(23, 0, 'null', 0, 0, 700),
(24, 0, 'null', 0, 0, 700),
(25, 0, 'null', 0, 0, 700),
(26, 0, 'null', 0, 0, 700),
(27, 0, 'null', 0, 0, 700),
(28, 0, 'null', 0, 0, 700),
(29, 0, 'null', 0, 0, 700),
(30, 0, 'null', 0, 0, 700),
(31, 0, 'null', 0, 0, 700),
(32, 0, 'null', 0, 0, 700),
(33, 0, 'null', 0, 0, 700),
(34, 0, 'null', 0, 0, 700),
(35, 0, 'null', 0, 0, 700),
(36, 0, 'null', 0, 0, 700),
(37, 0, 'null', 0, 0, 700),
(38, 0, 'null', 0, 0, 700),
(39, 0, 'null', 0, 0, 700),
(40, 0, 'null', 0, 0, 700),
(41, 0, 'null', 0, 0, 700),
(42, 0, 'null', 0, 0, 700),
(43, 0, 'null', 0, 0, 700),
(44, 0, 'null', 0, 0, 700),
(45, 0, 'null', 0, 0, 700),
(46, 0, 'null', 0, 0, 700),
(47, 0, 'null', 0, 0, 700),
(48, 0, 'null', 0, 0, 700),
(49, 0, 'null', 0, 0, 700),
(50, 0, 'null', 0, 0, 700),
(51, 0, 'null', 0, 0, 700),
(52, 0, 'null', 0, 0, 700),
(53, 0, 'null', 0, 0, 700),
(54, 0, 'null', 0, 0, 700),
(55, 0, 'null', 0, 0, 700),
(56, 0, 'null', 0, 0, 700),
(57, 0, 'null', 0, 0, 700),
(58, 0, 'null', 0, 0, 700),
(59, 0, 'null', 0, 0, 700),
(60, 0, 'null', 0, 0, 700),
(61, 0, 'null', 0, 0, 700),
(62, 0, 'null', 0, 0, 700),
(63, 0, 'null', 0, 0, 700),
(64, 0, 'null', 0, 0, 700),
(65, 0, 'null', 0, 0, 700),
(66, 0, 'null', 0, 0, 700),
(67, 0, 'null', 0, 0, 700),
(68, 0, 'null', 0, 0, 700),
(69, 0, 'null', 0, 0, 700),
(70, 0, 'null', 0, 0, 700),
(71, 0, 'null', 0, 0, 700);

-- --------------------------------------------------------

--
-- Table structure for table `house`
--

CREATE TABLE `house` (
  `hID` int(11) NOT NULL,
  `hEntrancex` float NOT NULL,
  `hEntrancey` float NOT NULL,
  `hEntrancez` float NOT NULL,
  `hCarx` float NOT NULL,
  `hCary` float NOT NULL,
  `hCarz` float NOT NULL,
  `hCarc` float NOT NULL,
  `hOwner` varchar(40) DEFAULT 'The State',
  `hValue` int(11) NOT NULL,
  `hHel` int(11) NOT NULL,
  `hInt` int(11) NOT NULL,
  `hLock` int(11) NOT NULL,
  `hOwned` int(11) NOT NULL,
  `hKlass` int(11) NOT NULL,
  `hUpdAD` int(11) NOT NULL,
  `hUpdHel` int(11) NOT NULL,
  `hUpdSub` int(11) NOT NULL,
  `hUpdWkaf` int(11) NOT NULL,
  `hHealpickX` float NOT NULL,
  `hHealpickY` float NOT NULL,
  `hHealpickZ` float NOT NULL,
  `hWkafX` float NOT NULL,
  `hWkafY` float NOT NULL,
  `hWkafZ` float NOT NULL,
  `hWkafX1` float NOT NULL,
  `hWkafY1` float NOT NULL,
  `hWkafZ1` float NOT NULL,
  `hWkafDrugs` int(11) NOT NULL,
  `hWkafMoney` int(11) NOT NULL,
  `hWkafPatr` int(11) NOT NULL,
  `hWkafMetall` int(11) NOT NULL,
  `hWkafSDPistol` int(11) NOT NULL,
  `hWkafDeagle` int(11) NOT NULL,
  `hWkafShotGun` int(11) NOT NULL,
  `hWkafMP5` int(11) NOT NULL,
  `hWkafAK47` int(11) NOT NULL,
  `hWkafM4` int(11) NOT NULL,
  `hSlet` int(11) NOT NULL,
  `hTakings` int(11) NOT NULL,
  `hOplata` int(11) NOT NULL,
  `hLodgers` varchar(96) NOT NULL DEFAULT 'null,null,null',
  `hUpdStore` int(11) NOT NULL,
  `hUpdStorePos` varchar(32) NOT NULL DEFAULT '0.0,0.0,0.0',
  `hWeaponID` varchar(32) NOT NULL DEFAULT '0,0,0',
  `hAmmo` varchar(48) NOT NULL DEFAULT '0,0,0',
  `hDrugs` int(11) NOT NULL,
  `hGaragex` float NOT NULL,
  `hGaragey` float NOT NULL,
  `hGaragez` float NOT NULL,
  `hGarage` int(11) NOT NULL,
  `hAttic` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_ci PACK_KEYS=0 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `house`
--

INSERT INTO `house` (`hID`, `hEntrancex`, `hEntrancey`, `hEntrancez`, `hCarx`, `hCary`, `hCarz`, `hCarc`, `hOwner`, `hValue`, `hHel`, `hInt`, `hLock`, `hOwned`, `hKlass`, `hUpdAD`, `hUpdHel`, `hUpdSub`, `hUpdWkaf`, `hHealpickX`, `hHealpickY`, `hHealpickZ`, `hWkafX`, `hWkafY`, `hWkafZ`, `hWkafX1`, `hWkafY1`, `hWkafZ1`, `hWkafDrugs`, `hWkafMoney`, `hWkafPatr`, `hWkafMetall`, `hWkafSDPistol`, `hWkafDeagle`, `hWkafShotGun`, `hWkafMP5`, `hWkafAK47`, `hWkafM4`, `hSlet`, `hTakings`, `hOplata`, `hLodgers`, `hUpdStore`, `hUpdStorePos`, `hWeaponID`, `hAmmo`, `hDrugs`, `hGaragex`, `hGaragey`, `hGaragez`, `hGarage`, `hAttic`) VALUES
(0, 981.468, -2152.95, 13.7202, 1894.05, -1926.01, 13.0604, 90.62, 'None', 1000, 0, 1, 0, 0, 2, 1, 1, 1, 0, 0, 0, 0, 227.077, 1288.7, 1081.12, 0, 0, -90.9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 13, 'null,null,null', 1, '1561.6,-1269.1,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(1, 969.019, -1357.52, 13.3502, 1919.87, -1925.83, 13.0635, 88.9739, 'None', 233000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1559.1,-1264.4,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(2, 977.302, -771.713, 112.203, 959.405, -765.172, 109.203, 86.2712, 'None', 1800000, 0, 5, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1836.3,2169.9,2011.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(3, 1895.66, -2068.9, 15.6688, 1891.03, -2058.94, 13.0631, 271.609, 'None', 100000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(4, 1873.38, -2070.73, 15.497, 1866.01, -2059.31, 13.0598, 268.527, 'None', 100000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 1565.4, -1259.61, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(5, 1851.83, -2070.45, 15.4812, 1845.96, -2059.43, 13.0544, 269.017, 'None', 100000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 1572.2, -1261.58, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1554.9,-1268.4,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(6, 1851.76, -2134.85, 15.3882, 1847.94, -2146.94, 13.0636, 179.035, 'None', 90000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(7, 1893.88, -2133.22, 15.4663, 1890.81, -2145.51, 13.0633, 177.133, 'None', 90000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(8, 1801.8, -2098.94, 14.021, 1805.85, -2105.46, 13.0624, 90.1106, 'None', 80000, 0, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(9, 1781.26, -2101.28, 14.0566, 1787.12, -2106.37, 13.0634, 93.8749, 'None', 90000, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(10, 1762.33, -2102, 13.8569, 1772.92, -2098.94, 13.0636, 182.449, 'None', 85000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1388.4,959.6,940.6', '0,0,0', '0,0,0', 0, 1761.16, -2106.6, 13.5469, 0, 0),
(11, 1734, -2098, 14.0366, 1747.97, -2097.49, 13.0629, 179.965, 'None', 82000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(12, 1449.5, -2287.03, 13.55, 1724.81, -2098.93, 13.063, 183.521, 'None', 25000000, 0, 2, 0, 0, 2, 1, 1, 1, 0, 1829.11, 2173.93, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 14, 'null,null,null', 1, '1841.1,2176.1,2011.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(13, 0, -2098.16, 13.8343, 1698.44, -2084.05, 13.0624, 185.605, 'None', 130000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(14, 0, -2106.95, 14.0722, 1672.16, -2111.22, 13.0589, 274.951, 'None', 110000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(15, 1673.65, -2122.41, 14.146, 1671.82, -2115.46, 13.0605, 271.117, 'None', 95000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(16, 823.082, -1102.89, 25.7966, 1690.65, -2120.03, 13.0629, 267.075, 'None', 90000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 1400.23, 957.625, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 2, '-,null,null', 0, '1407.1,955.2,940.6', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(17, 1715.17, -2125.43, 14.0566, 2090.59, -1763.42, 13.1048, 349.902, 'None', 88000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(18, 1734.69, -2130.34, 14.021, 1725.12, -2126.61, 13.0708, 1.162, 'None', 79000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1387.45, 965.288, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1395.3,962.7,940.6', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(19, 1761.25, -2125.43, 14.0566, 1745.15, -2126.22, 13.0639, 0.0989, 'None', 91000, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(20, 1782.05, -2126.5, 14.0678, 1772.5, -2126.41, 13.0636, 0.3851, 'None', 90000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(21, 1804.21, -2124.9, 13.9423, 1793.28, -2126.74, 13.0626, 1.5936, 'None', 92000, 0, 9, 0, 0, 0, 0, 0, 0, 0, 1407.14, 951.367, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, '-,null,null', 0, '1399.8,956.4,940.6', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(22, 1980.39, -1718.84, 17.0302, 1980.32, -1727.71, 15.4835, 272.688, 'None', 350000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 1556.84, -1270.67, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, '-,null,null', 0, '1554.9,-1268.6,1278.1', '30,0,0', '67,0,0', 0, 0, 0, 0, 0, 0),
(23, 851.443, -2103.56, 13.5996, 1981.77, -1674.75, 15.4759, 273.566, 'None', 350000, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '1568.3,-1263.1,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(24, 2015.33, -1732.54, 14.2343, 2013.32, -1737.55, 13.0684, 93.0954, 'None', 190000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 1561.51, -1270.32, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,Dima_Sadykov,null', 0, '1557.2,-1265.9,1278.1', '32,0,0', '899,0,0', 0, 0, 0, 0, 0, 0),
(25, 2016.2, -1716.93, 14.125, 2008.97, -1720.13, 13.063, 0, 'None', 90000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(26, 2018.23, -1703.16, 14.2343, 2015.43, -1707.55, 13.0612, 87.7855, 'None', 190000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1557.1,-1263.3,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(27, 2013.57, -1656.25, 14.1363, 2008.97, -1657.2, 13.0632, 5.7553, 'None', 170000, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(28, 2016.54, -1641.55, 14.1128, 2016.27, -1648.47, 13.0644, 86.6319, 'None', 169000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(29, 2018.04, -1629.83, 14.0425, 2009.08, -1627.74, 13.0612, 1.192, 'None', 160000, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(30, 2067.71, -1628.83, 14.2066, 2074.06, -1626.49, 13.0644, 179.77, 'None', 150000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(31, 2067.58, -1643.63, 14.1363, 2066.89, -1636.65, 13.06, 269.177, 'None', 143000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1406.93, 951.681, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(32, 2066.76, -1656.36, 14.1328, 2073.99, -1654.3, 13.0572, 177.677, 'None', 100000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, '-,null,null', 0, '1399.0,956.9,940.6', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(33, 2065.12, -1703.61, 14.1484, 2067.24, -1694.86, 13.0639, 269.989, 'None', 210000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1559.41, -1261.43, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, '-,null,null', 0, '1575.2,-1257.3,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(34, 2066.25, -1716.91, 14.1363, 2074.41, -1713.5, 13.0628, 180.7, 'None', 90000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 1387.75, 965.52, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, '-,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(35, 2067.09, -1731.56, 14.2066, 2067.41, -1739.09, 13.0624, 268.689, 'None', 90000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'Artem_Top,Homet_Kyralikov,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(36, 2244.4, -1637.59, 16.2378, 2237.75, -1634.09, 15.1878, 158.721, 'None', 80000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(37, 2257.28, -1643.97, 15.8081, 2261.67, -1651.85, 14.9537, 82.8163, 'None', 79000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(38, 2282.28, -1641.22, 15.8897, 2271.28, -1643.08, 14.881, 175.648, 'None', 80000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'Ruslan_Sergeevich,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(39, 2306.95, -1679.19, 14.3316, 2308, -1670.91, 13.847, 2.8832, 'None', 80000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1387.1,959.5,940.6', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(40, 2326.91, -1682.1, 14.9296, 2328.74, -1677.1, 13.941, 273.04, 'None', 150000, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1386.16, 965.108, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '1386.1,959.7,940.6', '24,31,0', '100,4600,0', 0, 0, 0, 0, 0, 0),
(41, 2326.93, -1716.71, 14.2378, 2319.13, -1719.11, 13.062, 180, 'None', 78000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(42, 2308.93, -1714.34, 14.98, 2312.29, -1725.56, 13.061, 85.1999, 'None', 90000, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(43, 2385.52, -1711.66, 14.2421, 2390.18, -1715.69, 13.127, 178.965, 'None', 140000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(44, 2368.44, -1675.34, 14.1681, 2361.46, -1672.04, 13.0633, 358.988, 'None', 98000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(45, 2384.7, -1675.83, 15.2456, 2393.13, -1674.53, 13.5606, 359.111, 'None', 110000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(46, 2409.14, -1674.92, 14.375, 2405.05, -1665.76, 13.0602, 269.382, 'None', 89000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(47, 2459.46, -1691.65, 13.5457, 2473.58, -1693.16, 13.0292, 0.7035, 'None', 97000, 1, 10, 0, 0, 0, 1, 1, 1, 0, 1387.19, 959.449, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 11, '-,null,null', 1, '1387.3,964.9,940.6', '0,0,0', '0,0,0', 38, 2459.42, -1687.27, 13.5374, 0, 1318926965),
(48, 2486.46, -1645.12, 14.0772, 2484.4, -1653.18, 13.4671, 90.2891, 'None', 400000, 0, 15, 0, 0, 1, 0, 0, 0, 0, 1561.76, -1269.93, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 3, 'null,null,null', 0, '1554.9,-1268.7,1278.1', '24,32,0', '2700,4000,0', 0, 0, 0, 0, 0, 0),
(49, 2514.38, -1691.52, 14.046, 2507.44, -1680.59, 13.0603, 321.248, 'None', 90000, 0, 8, 0, 0, 0, 0, 0, 0, 0, 1386.43, 965.031, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 3, 'null,null,null', 0, '1399.2,964.5,940.6', '30,30,24', '9000,3000,2187', 100, 2512.05, -1688.62, 13.5566, 0, 1318926965),
(50, 2523.25, -1679.46, 15.4969, 2515.56, -1671.35, 13.2473, 63.4089, 'None', 110000, 0, 5, 0, 0, 0, 1, 1, 1, 0, 1387.3, 959.974, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 9, 'null,null,null', 1, '1387.4,965.1,940.6', '31,24,31', '10000,8000,10000', 0, 2517.5, -1672.96, 14.0835, 0, 0),
(51, 2524.7, -1658.65, 15.824, 2516.38, -1666, 13.3815, 87.2926, 'None', 99000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 1400.68, 964.441, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 6, 'null,null,null', 0, '1398.7,961.7,940.6', '24,0,41', '6520,0,7000', 0, 0, 0, 0, 0, 0),
(52, 2513.69, -1650.24, 14.3556, 2504.75, -1653.32, 13.1089, 141.874, 'None', 70000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 1394.69, 962.565, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, '-,null,Erfsn_Pikaso', 0, '1399.4,962.5,940.6', '30,30,30', '8700,10000,10000', 7, 0, 0, 0, 0, 0),
(53, 2498.61, -1642.26, 14.113, 2498.7, -1649.69, 13.0717, 164.162, 'None', 91000, 0, 15, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 9, 'null,null,null', 0, '1401.1,959.9,940.6', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(54, 2469.35, -1646.37, 13.78, 2469.95, -1651.91, 12.9857, 99.0093, 'None', 90000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 1386.36, 959.842, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 3, 'null,null,null', 0, '1387.8,959.6,940.6', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(55, 2451.81, -1641.41, 14.0662, 2442.96, -1642.7, 12.9741, 173.689, 'None', 69000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1388.14, 965.217, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1391.5,965.8,940.6', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(56, 2413.9, -1646.8, 14.0119, 2419.36, -1651.95, 13.0639, 91.0156, 'None', 78000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 1388.49, 960.174, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1399.7,956.4,940.6', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(57, 2393.04, -1646.05, 13.905, 2398.34, -1652.51, 13.0445, 90.6015, 'None', 90000, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 11, '-,null,null', 0, '1389.9,958.6,940.6', '30,24,0', '500,500,0', 0, 0, 0, 0, 0, 0),
(58, 2362.98, -1643.16, 14.3515, 2367.19, -1651.72, 13.0617, 89.8037, 'None', 60000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'Mia_Filthy,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(59, 2437.95, -2020.83, 13.9025, 2434.34, -2015.78, 13.0628, 265.448, 'None', 110000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(60, 2465.4, -2020.78, 14.1241, 2458.71, -2016.53, 13.0619, 269.285, 'None', 100000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, '-,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(61, 2486.38, -2021.55, 13.9988, 2480.04, -2016.8, 13.0636, 269.286, 'None', 115000, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '1405.2,961.0,940.6', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(62, 2507.97, -2021.03, 14.2101, 2497.88, -2023.53, 13.0639, 2.3804, 'None', 111000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(63, 2522.8, -2018.93, 14.0744, 2527.38, -2011.69, 13.071, 92.3857, 'None', 112000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(64, 2524.33, -1998.3, 14.113, 2526.64, -2006.17, 13.0618, 92.1824, 'None', 102000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(65, 2508.42, -1998.37, 13.9025, 2514.18, -2002.74, 13.0636, 96.8459, 'None', 110000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(66, 2483.44, -1995.35, 13.8343, 2490.34, -2002.46, 13.0576, 87.9591, 'None', 116000, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(67, 2464.95, -1995.77, 14.0193, 2468.9, -2002.96, 13.0583, 92.4123, 'None', 103000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(68, 2696.41, -1990.38, 14.2228, 2700.39, -1996.71, 13.0683, 92.3608, 'None', 120000, 0, 1, 0, 0, 0, 1, 1, 1, 0, 1404.7, 953.586, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 6, 'null,null,null', 1, '1398.4,962.6,940.6', '31,24,30', '7750,9956,7810', 0, 0, 0, 0, 0, 1318926965),
(69, 2672.63, -1989.48, 14.324, 2671.04, -1996.85, 13.0676, 88.3151, 'None', 113000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1400.65, 958.938, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 1316880384),
(70, 2652.82, -1989.44, 13.9988, 2659.35, -1996.64, 13.0685, 89.6358, 'None', 130000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1402.1,959.2,940.6', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(71, 2637.1, -1991.68, 14.324, 2644.87, -1991.9, 13.0687, 179.764, 'None', 113000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1392.01, 962.523, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1398.3,962.2,940.6', '31,31,24', '10000,10000,10000', 100, 0, 0, 0, 0, 0),
(72, 2635.46, -2012.69, 14.1443, 2640.07, -2006.43, 13.07, 266.858, 'None', 113000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 1405.16, 953.594, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1401.4,958.3,940.6', '24,24,31', '350,1000,8700', 50, 0, 0, 0, 0, 1318926965),
(73, 0, 0, 0, 2644.73, -2023.97, 13.0636, 2.5046, 'None', 115000, 0, 9, 0, 0, 0, 0, 0, 0, 0, 1402.29, 951.391, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '1407.1,954.6,940.6', '24,31,0', '9500,10000,0', 0, 0, 0, 0, 0, 0),
(74, 2673.18, -2020.27, 14.1681, 2669.95, -2011.63, 13.0699, 273.456, 'None', 117000, 7, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(75, 2695.22, -2020.53, 14.0222, 2684.92, -2016.8, 13.0656, 359.308, 'None', 140000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(76, 2851.89, -1365.91, 14.1708, 2857.31, -1355.47, 10.5865, 276.525, 'None', 550000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 1556.31, -1264.66, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1555.4,-1269.0,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(77, 2809.53, -1281.2, 43.8896, 2804.16, -1289.28, 41.6977, 4.2759, 'None', 130000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1402.94, 962.18, 941.394, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1398.8,956.4,940.6', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(78, 2782.16, -1281.1, 44.3698, 2790.15, -1289.17, 41.6946, 175.022, 'None', 130000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(79, 2809.52, -1303.02, 38.9196, 2804.09, -1311.21, 36.4036, 357.534, 'None', 130000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(80, 2782.16, -1306.36, 38.8805, 2789.36, -1302.77, 38.4528, 176.729, 'None', 130000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(81, 2797.52, -1245.39, 47.3797, 2805.14, -1244.41, 45.4209, 180.924, 'None', 190000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(82, 2775.92, -1245.39, 49.5711, 2783.29, -1244.2, 47.4033, 178.39, 'None', 190000, 0, 9, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(83, 2750.38, -1238.57, 61.5245, 2745.36, -1243.59, 60.0139, 0.02, 'None', 183000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 1556.86, -1269.91, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, '-,null,null', 0, '1561.3,-1268.1,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(84, 2750.38, -1222.29, 64.6015, 2745.36, -1218.56, 64.4511, 0.02, 'None', 182000, 1, 9, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(85, 2750.37, -1205.62, 67.4843, 2745.37, -1200.13, 67.7903, 0.8698, 'None', 181000, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1565.68, -1260.72, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 1, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(86, 2625.96, -1112.52, 67.9953, 2635.84, -1116.97, 66.9274, 179.567, 'None', 260000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 1558.15, -1260.16, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1561.9,-1267.6,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(87, 2625.94, -1098.75, 69.3566, 2636.28, -1101.57, 68.5969, 179.112, 'None', 160000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 1561.62, -1270.67, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(88, 2627.66, -1085.33, 69.7155, 2635.8, -1077.12, 69.1406, 184.122, 'None', 178000, 0, 6, 1, 0, 1, 1, 1, 0, 0, 1570.19, -1257.96, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(89, 2628.11, -1067.94, 69.7155, 2635.33, -1065.93, 69.1414, 179.492, 'None', 177000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(90, 2579.55, -1033.21, 69.5797, 2586.06, -1040.36, 69.0899, 91.0647, 'None', 120000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(91, 2562.09, -1034.25, 69.8692, 2563.09, -1040.79, 69.0923, 91.065, 'None', 130000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(92, 2549.22, -1032.3, 69.5789, 2549.61, -1041.04, 69.0885, 91.0717, 'None', 120000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(93, 2526.82, -1033.55, 69.5792, 2528.14, -1040.47, 69.0289, 89.4776, 'None', 119999, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(94, 2512.74, -1027.17, 70.0859, 2503.06, -1027.75, 69.6012, 176.126, 'None', 140000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,Benjamin_Log,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(95, 2479.65, -1064.01, 66.9982, 2476.26, -1055.65, 66.0111, 342.351, 'None', 110000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1399.25, 962.066, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'Vladymir_Pashkov,null,null', 0, '1404.8,961.5,940.6', '24,30,0', '150,180,0', 0, 0, 0, 0, 0, 0),
(96, 568.324, -1925.48, 2.73861, 2499.69, -1053.68, 68.4779, 264.262, 'None', 110000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(97, 32.0136, 1542.43, 13.5895, 2524.55, -1054.84, 69.0854, 264.354, 'None', 111000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 3, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(98, 2534.46, -1063.29, 69.5655, 2538.89, -1054.92, 69.0978, 271.189, 'None', 111000, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(99, 2.66243, 1548.26, 13.7776, 2567.92, -1065.23, 68.8993, 344.199, 'None', 150000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1386.16, 959.701, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '1386.1,965.0,940.6', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(100, 2572.27, -1091.87, 67.2257, 2565.12, -1096.25, 65.7592, 46.4412, 'None', 150000, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(101, 2519.04, -1113.01, 56.5925, 2528.02, -1107.85, 56.9535, 355.403, 'None', 170000, 0, 5, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(102, 2470.59, -1105.3, 44.4878, 2471.78, -1095.16, 44.2896, 84.293, 'None', 140000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(103, 2456.87, -1102.48, 43.8671, 2452.58, -1099.59, 42.6354, 357.841, 'None', 138000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(104, 2438.62, -1105.78, 43.0816, 2433.72, -1093.48, 41.8254, 266.299, 'None', 135000, 0, 12, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(105, 2407.82, -1106.95, 40.2957, 2411.4, -1095.53, 39.4731, 98.4914, 'None', 177000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 1560.03, -1261.65, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(106, 2373.96, -1138.93, 29.0587, 2369.67, -1146.99, 27.1352, 90.9103, 'None', 140000, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'SPIDER_MAN,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(107, 2394.96, -1133.56, 30.7187, 2399.71, -1137.05, 29.6036, 187.988, 'None', 150000, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'Sanya_Chernov,Tommy_Walder,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(108, 2427.22, -1135.79, 34.7109, 2423.03, -1144.64, 31.2523, 95.0722, 'None', 120000, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'Dima_Bakumenko,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(109, 2488.25, -1135.25, 39.5859, 2493.1, -1142.92, 38.006, 87.8263, 'None', 130000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(110, 2510.57, -1132.48, 41.6206, 2502.19, -1134.56, 38.7482, 158.832, 'None', 166661, 0, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(111, 2491.45, -1012.1, 65.3984, 2482.92, -1019.94, 64.5548, 149.978, 'None', 100000, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'Jimm_Cerri,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(112, 2462.53, -1011.14, 60.1136, 2454.11, -1016.15, 59.2819, 177.211, 'None', 100000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(113, 2439.68, -1010.08, 54.3437, 2430.37, -1021.43, 53.6861, 192.309, 'None', 100000, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(114, 2457.74, -1054.66, 59.9591, 2452.83, -1049.17, 59.0569, 354.011, 'None', 100000, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(115, 2440.56, -1057.33, 54.7386, 2431.86, -1048.9, 53.5113, 2.9696, 'None', 100000, 0, 6, 0, 0, 0, 0, 0, 0, 0, 1406.19, 953.992, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(116, 2389.29, -1037.02, 53.5472, 2398.09, -1040.97, 51.4932, 138.176, 'None', 70000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(117, 2370.1, -1034.56, 54.4105, 2378.46, -1034.64, 53.4846, 134.314, 'None', 60000, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(118, 2335.19, -1045.99, 52.5529, 2339.34, -1044.24, 52.1029, 185.208, 'None', 70000, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(119, 2297.61, -1053.03, 49.9339, 2306.89, -1056.73, 49.5756, 118.331, 'None', 70000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 1395.2, 962.505, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(120, 2284.14, -1046.07, 49.8871, 2271.04, -1043.54, 49.8701, 133.056, 'None', 70000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(121, 2454.18, -964.9, 80.0731, 2451.48, -969.769, 79.5831, 272.076, 'None', 100000, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(122, 2472.33, -962.046, 80.5254, 2476.95, -959.731, 79.718, 182.099, 'None', 120000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(123, 2492.1, -965.621, 82.5489, 2491.66, -970.944, 81.5893, 92.5286, 'None', 110000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(124, 2517.87, -965.322, 82.3283, 2515.83, -969.553, 81.52, 267.489, 'None', 100000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(125, 2552.04, -958.326, 82.6178, 2551.28, -966.191, 81.9687, 279.797, 'None', 95000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(126, 2582.94, -952.929, 81.3881, 2592.49, -948.925, 80.9025, 189.727, 'None', 100000, 0, 1, 0, 0, 0, 1, 1, 0, 0, 1406.26, 952.267, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(127, 2581.51, -969.332, 81.3646, 2574.72, -970.718, 81.047, 13.0121, 'None', 110000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(128, 2499.41, -947.009, 82.4707, 2504.27, -945.076, 81.8825, 174.129, 'None', 100000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(129, 2459.41, -947.705, 80.0827, 2469.5, -945.616, 79.6164, 168.859, 'None', 100000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(130, 2388.41, -1279.67, 25.1291, 2378.23, -1280.04, 23.5157, 0, 'None', 150000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(131, 2387.86, -1328.49, 25.1241, 2378.01, -1334.51, 23.5108, 359.492, 'None', 150000, 8, 2, 0, 0, 0, 1, 1, 1, 0, 1386.17, 965.116, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 1, '1386.1,959.8,940.6', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(132, 2389.72, -1346.05, 25.0769, 2377.86, -1352.13, 23.5164, 359.492, 'None', 200000, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(133, 2383.53, -1366.18, 24.4913, 2378.06, -1370.58, 23.5051, 358.523, 'None', 150000, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(134, 2439.6, -1357.12, 24.1004, 2443.8, -1364.21, 23.5167, 180, 'None', 200000, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(135, 2439.6, -1338.88, 24.1015, 2443.8, -1344.11, 23.5121, 180, 'None', 220000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(136, 2433.94, -1320.66, 25.3234, 2443.71, -1323.18, 23.5134, 179.171, 'None', 220000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(137, 2433.97, -1303.38, 25.3234, 2444.32, -1305.91, 23.506, 180.246, 'None', 220000, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(138, 2434.81, -1289.28, 25.3478, 2444.25, -1289.72, 23.5144, 182.792, 'None', 140000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(139, 2433.62, -1275.09, 24.7566, 2443.91, -1271.05, 23.4988, 175.266, 'None', 145000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(140, 2469.18, -1278.15, 30.3663, 2458.15, -1280.47, 23.5166, 176.235, 'None', 160000, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 1, '1566.7,-1259.8,1278.1', '0,0,0', '0,0,0', 30, 0, 0, 0, 0, 0),
(141, 2470.35, -1295.51, 30.2332, 2458.45, -1293.23, 23.5126, 181.391, 'None', 162000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(142, 2472.9, -1238.15, 32.5694, 2474.94, -1249.63, 27.3163, 84.6564, 'None', 140000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(143, 2492, -1239, 37.9054, 2499.49, -1249.14, 33.976, 88.6371, 'None', 140000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(144, 2550.87, -1233.8, 49.3318, 2548.07, -1249.71, 41.9112, 90.7151, 'None', 150000, 0, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(145, 2483.95, -1280.22, 30.4692, 2491.37, -1275.33, 31.7853, 256.772, 'None', 160000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(146, 2482.77, -1293.31, 30.1799, 2490.07, -1297.83, 31.4778, 272.957, 'None', 160000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(147, 2484.46, -28.3926, 28.4416, 2479.87, -21.5118, 26.5061, 4.2992, 'None', 192000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(148, 2148.93, -1484.88, 26.624, 2136.38, -1484.54, 23.4984, 2.6514, 'None', 370000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1556.0,-1264.1,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(149, 2146.78, -1470.51, 26.0425, 2136.21, -1472.84, 23.4633, 0.8783, 'None', 140000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, '-,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(150, 2152.21, -1446.58, 26.105, 2146.05, -1454.32, 24.3629, 90.6154, 'None', 140000, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(151, 2149.84, -1433.84, 26.0703, 2141.05, -1438.1, 23.9256, 75.8124, 'None', 130000, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(152, 2150.92, -1419.24, 25.9218, 2149.74, -1423.33, 25.0556, 86.3894, 'None', 150000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(153, 2151.17, -1400.55, 26.1285, 2149.92, -1408.3, 24.6696, 95.8285, 'None', 140000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(154, 2129.5, -1361.69, 26.1363, 2136.23, -1357.81, 25.0562, 181.711, 'None', 120000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(155, 2147.67, -1366.13, 25.9722, 2138.77, -1367.98, 24.322, 180.188, 'None', 150000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(156, 2185.08, -1363.72, 26.1597, 2188.14, -1377.17, 23.5079, 90.8385, 'None', 135000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(157, 2202.85, -1363.7, 26.191, 2204.17, -1367.85, 25.1961, 92.0239, 'None', 135000, 0, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(158, 2196.23, -1403.99, 25.9488, 2205.49, -1401.31, 23.4986, 179.662, 'None', 130000, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'Don_Asala,-,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(159, 2191.13, -1455.77, 26, 2198.64, -1452.04, 24.4887, 271.536, 'None', 130000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(160, 2190.45, -1470.41, 25.914, 2190.54, -1466, 25.0555, 266.127, 'None', 130000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(161, 2230.46, -1397.23, 24.5738, 2229.19, -1391.63, 23.5063, 271.977, 'None', 130000, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(162, 2243.43, -1397.22, 24.5738, 2242.01, -1391.28, 23.5055, 271.22, 'None', 130000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(163, 2256.54, -1397.23, 24.5738, 2254.36, -1391.44, 23.5058, 267.794, 'None', 130000, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(164, 2232.5, -1469.37, 24.5816, 2231.23, -1475.27, 23.3378, 265.283, 'None', 130000, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(165, 2247.61, -1469.35, 24.48, 2246.9, -1475.88, 22.9296, 270.961, 'None', 130000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(166, 2263.84, -1469.34, 24.3706, 2264.14, -1475.59, 22.4277, 270.953, 'None', 130000, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(167, 2249.95, -1238.91, 25.8984, 2242.34, -1236.31, 24.2676, 0.4823, 'None', 150000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1405.83, 953.879, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1399.4,956.4,940.6', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(168, 2229.81, -1241.61, 25.6562, 2223.61, -1236.6, 24.2054, 1.749, 'None', 150000, 0, 9, 0, 0, 0, 0, 0, 0, 0, 1403.31, 959.075, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(169, 2209.72, -1240.23, 24.48, 2213.29, -1228.14, 23.481, 87.5424, 'None', 130000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(170, 2191.81, -1239.23, 24.4878, 2196.56, -1228.03, 23.4808, 89.6235, 'None', 140000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(171, 2153.8, -1243.8, 25.3671, 2148.51, -1241.56, 24.1454, 2.0762, 'None', 150000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(172, 2133.32, -1232.99, 24.4218, 2128.54, -1227.7, 23.4902, 270.5, 'None', 130000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(173, 2110.89, -1244.39, 25.8515, 2105.75, -1242.88, 24.5465, 356.916, 'None', 140000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(174, 2090.66, -1235.17, 26.0191, 2093.92, -1227.59, 23.4931, 273.933, 'None', 140000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(175, 2090.78, -1277.84, 26.1796, 2095.62, -1283.67, 24.6502, 180.248, 'None', 180000, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(176, 2111.2, -1278.99, 25.8359, 2103.04, -1279.47, 24.9546, 178.276, 'None', 160000, 0, 9, 0, 0, 1, 0, 0, 0, 0, 1570.38, -1266.35, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '1566.5,-1266.9,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(177, 2132.12, -1280.06, 25.8906, 2137.95, -1282.87, 24.4006, 180.809, 'None', 170000, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(178, 2150.1, -1285.04, 24.5269, 2150.41, -1293.25, 23.4918, 90.8552, 'None', 150000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(179, 2148.64, -1320.07, 26.0738, 2141.1, -1319, 24.4003, 358.762, 'None', 150000, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(180, 2126.58, -1320.85, 26.6239, 2135.98, -1318.21, 24.316, 359.56, 'None', 350000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(181, 2100.84, -1321.87, 25.9531, 2096.38, -1322.75, 24.923, 0.9728, 'None', 140000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'Bogdan_Kobelev,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(182, 2093.97, -1122.67, 27.6898, 2088.88, -1140.39, 25.0621, 88.4161, 'None', 140000, 0, 6, 0, 0, 0, 0, 0, 0, 0, 1404.42, 962.077, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 7, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(183, 2095.35, -1145.19, 26.5929, 2089.46, -1140.75, 25.101, 87.4262, 'None', 170000, 0, 15, 0, 0, 1, 0, 0, 0, 0, 1557.16, -1263.82, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '1562.2,-1271.2,1278.7', '24,31,0', '10000,10000,0', 0, 0, 0, 0, 0, 0),
(184, 2092.23, -1166.27, 26.5859, 2086.01, -1170.2, 24.4571, 82.4599, 'None', 170000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 2, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(185, 2091.6, -1184.3, 27.057, 2079.44, -1188.64, 23.3344, 3.034, 'None', 150000, 0, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(186, 2045.43, -1116.64, 26.3617, 2051.91, -1119.27, 24.3197, 176.918, 'None', 150000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'Nico_Bloods,null,null', 0, '1401.4,960.8,940.6', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(187, 2022.79, -1120.28, 26.421, 2029.89, -1128.44, 24.1767, 86.9939, 'None', 170000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1564.69, -1266.64, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1566.9,-1263.2,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(188, 1955.13, -1115.4, 27.8304, 1951.85, -1128.75, 25.2908, 87.8502, 'None', 140000, 0, 6, 0, 0, 0, 0, 0, 0, 0, 1387.72, 965.121, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'Ninja_Hernandez,HOSEN_KING_IQ,null', 0, '1401.2,964.2,940.6', '24,31,31', '8458,6700,9600', 100, 0, 0, 0, 0, 0);
INSERT INTO `house` (`hID`, `hEntrancex`, `hEntrancey`, `hEntrancez`, `hCarx`, `hCary`, `hCarz`, `hCarc`, `hOwner`, `hValue`, `hHel`, `hInt`, `hLock`, `hOwned`, `hKlass`, `hUpdAD`, `hUpdHel`, `hUpdSub`, `hUpdWkaf`, `hHealpickX`, `hHealpickY`, `hHealpickZ`, `hWkafX`, `hWkafY`, `hWkafZ`, `hWkafX1`, `hWkafY1`, `hWkafZ1`, `hWkafDrugs`, `hWkafMoney`, `hWkafPatr`, `hWkafMetall`, `hWkafSDPistol`, `hWkafDeagle`, `hWkafShotGun`, `hWkafMP5`, `hWkafAK47`, `hWkafM4`, `hSlet`, `hTakings`, `hOplata`, `hLodgers`, `hUpdStore`, `hUpdStorePos`, `hWeaponID`, `hAmmo`, `hDrugs`, `hGaragex`, `hGaragey`, `hGaragez`, `hGarage`, `hAttic`) VALUES
(189, 1939.29, -1114.5, 27.4522, 1934.18, -1121.67, 25.93, 178.66, 'None', 180000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(190, 1921.31, -1115.28, 27.0883, 1923.39, -1129.03, 24.5748, 91.7198, 'None', 150000, 0, 8, 0, 0, 0, 0, 0, 0, 0, 1397.64, 965.127, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(191, 1906.1, -1112.94, 26.664, 1910.46, -1119.83, 25.3329, 180.92, 'None', 170000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(192, 1885.89, -1113.62, 26.2758, 1889.81, -1128.81, 23.7337, 93.4452, 'None', 150000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1398.7,958.2,940.6', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(193, 2287.51, -1081.05, 48.2419, 2294.94, -1082.66, 47.281, 258.445, 'None', 190000, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(194, 2259.42, -1019.12, 59.2971, 2246.02, -1030.91, 55.6305, 37.4173, 'None', 160000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(195, 2218.72, -1031.68, 60.2656, 2216.06, -1027.59, 59.8846, 63.9945, 'None', 160000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(196, 2186.33, -997.316, 66.4687, 2177.82, -1000.09, 62.4647, 83.0153, 'None', 170000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(197, 2108.85, -1000.76, 60.5078, 2119.47, -1000.16, 57.3361, 252.044, 'None', 160000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(198, 2045.16, -965.83, 44.5435, 2031.68, -968.635, 40.5213, 181.215, 'None', 150000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1394.4,958.3,940.6', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(199, 2073.36, -965.16, 49.3826, 2070.16, -972.208, 47.9671, 258.655, 'None', 150000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(200, 2023.02, -1052.95, 25.5961, 2019.55, -1058.88, 24.16, 238.907, 'None', 140000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(201, 2035.83, -1059.35, 25.6508, 2035.55, -1067.03, 24.2683, 242.957, 'None', 140000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(202, 2050.78, -1065.68, 25.7836, 2047.74, -1072.41, 24.3487, 246.151, 'None', 140000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(203, 1440.84, -926.171, 39.6476, 1432.33, -929.623, 36.4239, 169.739, 'None', 400000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 1572.54, -1257.96, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1554.9,-1268.5,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(204, 1409.9, -920.688, 38.4218, 1417.16, -925.909, 35.506, 171.899, 'None', 390000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1557.0,-1257.7,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(205, 1421.9, -886.218, 50.6859, 1430.14, -881.524, 50.3853, 1.006, 'None', 650000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(206, 1468.71, -906.175, 54.8359, 1458.67, -900.958, 54.3207, 358.873, 'None', 600000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1573, -1257.35, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,Kirll_Bobin,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(207, 1540.44, -851.304, 64.336, 1534.51, -841.011, 64.4861, 89.2254, 'None', 1400000, 0, 10, 0, 0, 2, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 2, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(208, 1535.02, -800.262, 72.8494, 1529.48, -813.637, 71.4089, 91.259, 'None', 770000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'Teror_Joker,null,null', 0, '1555.3,-1268.6,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(209, 1527.88, -772.661, 80.5781, 1513.98, -768.663, 79.9214, 136.803, 'None', 777000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 1570.24, -1257.5, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1568.5,-1262.3,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(210, 1496.95, -687.903, 95.5633, 1514.19, -694.623, 94.2648, 89.1321, 'None', 2850000, 0, 1, 0, 0, 2, 1, 0, 1, 0, 1837.55, 2175.82, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 3, 'null,null,null', 1, '1837.6,2167.6,2011.0', '46,0,0', '1,0,0', 0, 1514.58, -694.137, 94.75, 0, 0),
(211, 1442.52, -628.854, 95.7185, 1460.21, -635.358, 95.5871, 179.963, 'None', 1700000, 0, 10, 0, 0, 2, 0, 0, 0, 0, 1837.31, 2167.64, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1836.2,2168.6,2011.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(212, 993.628, -1059.02, 33.6995, 1004.62, -1052.66, 30.6266, 357.078, 'None', 1480000, 0, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(213, 1050.92, -1059.28, 34.7966, 1040.84, -1052.01, 31.2202, 358.74, 'None', 1480000, 0, 10, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(214, 2513.34, -28.3808, 28.4416, 2521.18, -21.719, 26.5487, 357.868, 'None', 193000, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(215, 2551.22, 57.3172, 27.6756, 2556.22, 72.1275, 25.9929, 88.8717, 'None', 184000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(216, 2551.21, -5.5562, 27.6756, 2553.08, 2.2533, 25.9919, 88.3927, 'None', 190000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(217, 2549.22, 25.1872, 27.6756, 2550.2, 13.5396, 26.5229, 91.249, 'None', 190000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(218, 983.981, 1930.84, 11.4687, 990.234, 1938.8, 10.9115, 271.76, 'None', 430000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(219, 985.417, 1901.27, 11.4609, 984.175, 1894.06, 11.188, 269.97, 'None', 430000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(220, 983.982, 1878.9, 11.4682, 992.732, 1886.34, 10.6908, 270.001, 'None', 510000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(221, 1332.04, -633.523, 109.135, 1352.5, -623.633, 108.861, 17.9104, 'None', 1600000, 0, 1, 0, 0, 2, 1, 1, 1, 0, 1832.17, 2182.87, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 13, 'null,-,null', 1, '1830.9,2169.6,2011.0', '24,0,0', '5000,0,0', 1, 0, 0, 0, 0, 0),
(222, 1298.23, -797.983, 84.1406, 1243.25, -804.746, 83.651, 181.647, 'None', 5050000, 0, 1, 0, 0, 2, 0, 0, 0, 0, 1832.2, 2167.63, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 7, '-,-,null', 0, '1840.7,2171.1,2011.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(223, 1112.63, -742.055, 100.133, 1106.8, -732.067, 100.268, 88.8203, 'None', 1450000, 0, 10, 0, 0, 2, 0, 0, 0, 0, 1838.05, 2167.66, 2011.02, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1841.5,2167.6,2011.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(224, 1094.17, -807.097, 107.418, 1103.03, -820.634, 86.5645, 94.2996, 'None', 1600000, 0, 10, 0, 0, 2, 0, 0, 0, 0, 1832.88, 2165.36, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 3, 'null,null,null', 0, '1829.3,2175.9,2011.0', '24,31,31', '10000,10000,10000', 20, 0, 0, 0, 0, 1318926965),
(225, 1034.65, -813.225, 101.852, 1028.82, -809.654, 101.362, 20.845, 'None', 1250000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1575.77, -1257.05, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1556.4,-1257.8,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(226, 989.677, -828.717, 95.4685, 978.477, -829.155, 95.4023, 27.9372, 'None', 1320000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 1574.78, -1261.33, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1570.1,-1267.4,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(227, 938.011, -848.626, 93.58, 943.279, -839.246, 94.0029, 33.513, 'None', 1125000, 0, 2, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 13, 'null,null,null', 1, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 1318926965),
(228, 923.912, -853.377, 93.4565, 929.736, -854.488, 93.0051, 28.8805, 'None', 1360000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1555.9,-1268.7,1278.1', '29,30,33', '170,74,90', 0, 0, 0, 0, 0, 0),
(229, 1489.07, -1719.66, 8.24074, 833.015, -889.287, 68.2899, 326.514, 'None', 2200000, 0, 2, 0, 0, 2, 0, 0, 0, 0, 1830.8, 2165.91, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 2, 'null,null,null', 0, '1837.5,2167.6,2011.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(230, 827.722, -858.021, 70.3308, 831.117, -855.492, 69.4372, 196.399, 'None', 1220000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '1570.2,-1260.8,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(231, 724.732, -999.381, 52.7343, 725.773, -992.693, 52.1564, 65.0006, 'None', 2000000, 0, 10, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(232, 700.25, -1060.32, 49.4216, 687.618, -1073.86, 48.9984, 59.8339, 'None', 1650000, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(233, 534.683, -1174.19, 58.8097, 531.08, -1169.43, 57.0178, 115.119, 'None', 2250000, 0, 6, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(234, 416.583, -1154.03, 76.6876, 406.339, -1153.3, 76.6787, 147.422, 'None', 1600000, 0, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(235, 352.37, -1197.96, 76.5156, 347.302, -1197.82, 76.0319, 35.2765, 'None', 1350000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(236, 300.332, -1154.56, 81.3853, 284.392, -1161.67, 80.4266, 230.626, 'None', 2666000, 0, 2, 0, 0, 2, 0, 0, 0, 0, 1832.92, 2179.58, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, '-,-,null', 0, '1841.8,2176.2,2011.0', '27,38,32', '9998,9997,9998', 855, 0, 0, 0, 0, 0),
(237, 251.511, -1220.17, 76.1023, 258.673, -1222.32, 74.1785, 195.402, 'None', 2455500, 0, 5, 0, 0, 2, 1, 1, 1, 0, 1831.59, 2165.5, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 8, '-,null,null', 1, '1842.0,2175.1,2011.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 1318926965),
(238, 253.113, -1270.03, 74.4165, 244.938, -1264.31, 68.5467, 312.576, 'None', 2400000, 0, 1, 0, 0, 2, 1, 1, 0, 0, 1831.93, 2166.44, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 1, '-,null,null', 1, '1841.5,2172.2,2011.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(239, 219.134, -1249.9, 78.3369, 225.063, -1263.73, 65.9122, 144.087, 'None', 1900000, 0, 10, 0, 0, 2, 0, 0, 0, 0, 1831.92, 2164.53, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1841.4,2173.5,2011.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(240, 189.637, -1308.23, 70.2493, 199.697, -1320.72, 69.6102, 168.974, 'None', 2680000, 0, 9, 0, 0, 2, 1, 1, 0, 0, 1841.79, 2172.17, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 2, 'null,null,null', 1, '1841.9,2176.5,2011.0', '8,24,29', '10000,10000,10000', 400, 192.012, -1309.29, 70.3049, 0, 1318926965),
(241, 432.226, -1253.88, 51.5809, 421.839, -1261.3, 51.0974, 23.0584, 'None', 700000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(242, 398.096, -1271.39, 50.0197, 406.159, -1262.87, 50.211, 27.5675, 'None', 1300000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(243, 355.371, -1281.02, 53.7036, 356.965, -1275.6, 53.3436, 112.889, 'None', 600000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(244, 298.86, -1338.48, 53.4415, 290.748, -1334.19, 52.9547, 25.6675, 'None', 2500000, 0, 1, 0, 0, 2, 0, 0, 0, 0, 1836.93, 2168.51, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '1832.4,2179.5,2011.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(245, 254.356, -1367.08, 53.1093, 253.03, -1358.7, 52.6245, 304.704, 'None', 2408000, 0, 8, 0, 0, 2, 0, 0, 0, 0, 1842.33, 2168.39, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 3, 'Alex_Fox,Misha_Volker,null', 1, '1830.8,2165.2,2011.0', '24,0,0', '500,0,0', 0, 0, 0, 0, 0, 0),
(246, 228.073, -1405.5, 51.6093, 231.1, -1402.09, 51.1101, 54.3213, 'None', 900000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1566.56, -1262.7, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 4, 'null,null,null', 1, '1560.0,-1266.2,1278.1', '24,0,0', '700,0,0', 0, 0, 0, 0, 0, 0),
(247, 808.297, -759.437, 76.5313, 814.282, -767.528, 76.3436, 290.562, 'None', 2050000, 0, 5, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(248, 848.106, -745.622, 94.9692, 852.088, -742.219, 94.485, 218.498, 'None', 1100000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(249, 867.745, -717.691, 105.68, 865.968, -711.283, 105.196, 329.782, 'None', 1690000, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1844.5,2179.0,2011.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(250, 897.684, -677.51, 116.89, 910.98, -664.058, 116.441, 236.433, 'None', 1600000, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(251, 946.3, -710.682, 122.62, 941.112, -710.376, 121.728, 29.3, 'None', 1200000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 1575.18, -1257.25, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1556.8,-1270.6,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(252, 980.683, -677.123, 121.976, 965.191, -674.737, 120.659, 301.991, 'None', 1711000, 0, 10, 0, 0, 2, 1, 1, 1, 0, 1838.22, 2176.05, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 14, 'null,null,null', 1, '1831.5,2173.0,2011.0', '30,24,0', '8000,10000,0', 0, 1012.23, -660.71, 121.139, 0, 1316880384),
(253, 1045.14, -642.927, 120.117, 1039, -640.222, 119.633, 7.5845, 'None', 1888000, 0, 1, 0, 0, 2, 0, 0, 0, 0, 1832.42, 2179.23, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'Kasra_Sparta,null,null', 0, '1832.8,2167.2,2011.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(254, 1094.96, -647.888, 113.648, 1090.38, -641.485, 112.581, 268.038, 'None', 2000000, 0, 10, 0, 0, 2, 1, 1, 1, 0, 1841.23, 2171.04, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 10, 'null,null,null', 1, '1832.4,2165.5,2011.0', '0,0,0', '0,0,0', 0, 1088.43, -639.135, 113.113, 0, 1318926965),
(255, 559.401, -1076.22, 72.9219, 566.281, -1067.86, 72.8004, 28.4943, 'None', 1899000, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(256, 497.556, -1095.07, 82.3591, 479.886, -1090.88, 81.9158, 356.105, 'None', 1800000, 0, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(257, 315.85, -1769.43, 4.6223, 322.589, -1766.15, 4.1289, 180.751, 'None', 1500000, 0, 1, 0, 0, 2, 1, 1, 1, 0, 1832.6, 2164.99, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 5, 'null,null,null', 1, '1831.8,2179.3,2011.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(258, 280.645, -1767.08, 4.5468, 280.959, -1775.96, 3.7911, 262.112, 'None', 1200000, 0, 6, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(259, 207, -1769, 4.3697, 206.93, -1775.83, 3.2689, 267.405, 'None', 1410000, 0, 3, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(260, 226.464, -1806.19, 5.30405, 168.268, -1774.51, 3.6863, 270.639, 'None', 1570000, 0, 2, 0, 0, 2, 0, 0, 0, 0, 1831.56, 2165.28, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 2, 'null,null,null', 0, '1831.9,2178.5,2011.0', '0,0,0', '0,0,0', 191, 0, 0, 0, 0, 0),
(261, 655.972, -1635.87, 15.8617, 646.08, -1635.93, 14.607, 179.559, 'None', 755000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(262, 657.207, -1652.66, 15.4062, 652.656, -1656.87, 14.1851, 82.6233, 'None', 765000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(263, 1030.8, 1928.27, 11.4682, 1021.07, 1920.57, 10.6269, 91.0464, 'None', 480000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(264, 697.294, -1626.98, 3.7491, 705.359, -1622.52, 2.9521, 179.408, 'None', 845000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(265, 693.776, -1645.9, 4.0937, 706.593, -1643.93, 2.9449, 175.177, 'None', 845000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(266, 694.816, -1690.72, 4.3461, 698.308, -1679.44, 11.9155, 270.094, 'None', 740000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(267, 693.548, -1705.75, 3.8194, 694.29, -1740.48, 12.951, 79.892, 'None', 740000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(268, 921.894, -1803.88, 13.8376, 924.115, -1794.76, 13.1093, 265.661, 'None', 550000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(269, 957.995, -1809.15, 13.8817, 958.09, -1801.32, 13.843, 258.007, 'None', 550000, 0, 9, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '1559.5,-1265.8,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(270, 437.523, -1920.35, 2.4473, 892.314, -1657.57, 13.1718, 180.107, 'None', 520000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 1557.15, -1258.72, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '1557.4,-1261.2,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(271, 865.147, -1633.85, 14.9296, 870.161, -1657.98, 13.1719, 179.145, 'None', 520000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(272, 903.431, -1512.97, 14.3634, 906.052, -1504.9, 12.8815, 269.912, 'Amir_Baazi', 1650000, 0, 15, 0, 1, 2, 1, 1, 1, 0, 1833.61, 2164.52, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 14, 'null,null,null', 1, '1841.1,2168.3,2011.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 1318926965),
(273, 898.403, -1472.83, 14.3414, 900.285, -1478.38, 13.2558, 270.342, 'None', 1600000, 0, 5, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(274, 900.225, -1447.46, 14.3706, 903.673, -1454.87, 12.7247, 270.725, 'None', 1590000, 0, 3, 0, 0, 2, 0, 0, 0, 0, 1841.72, 2168.04, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 1, 'null,null,null', 0, '1836.3,2169.8,2011.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(275, 841.229, -1471.36, 14.3089, 833.483, -1475.8, 12.8852, 178.721, 'None', 1500000, 0, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(276, 813.708, -1456.25, 14.2107, 810.062, -1448.49, 12.8568, 86.0503, 'None', 1500000, 0, 8, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(277, 852.152, -1423.25, 14.1369, 859.975, -1420.06, 12.4743, 358.768, 'None', 1450000, 0, 6, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '1834.6,2178.0,2011.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(278, 1030.8, 1848.27, 11.4682, 1034.58, 1840.23, 11.0933, 88.5094, 'None', 459000, 0, 10, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(279, 822.256, -1505.5, 14.398, 815.205, -1500.76, 12.8204, 356.159, 'None', 1510000, 0, 6, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(280, 849.617, -1519.93, 14.3482, 853.724, -1527.9, 12.7278, 264.577, 'None', 1630000, 0, 12, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(281, -2662.21, 876.695, 79.7737, -2680.41, 868.809, 76.1149, 2.7823, 'None', 1500000, 0, 5, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(282, -2641.14, 935.708, 71.9531, -2635.78, 933.285, 71.6005, 182.57, 'None', 1500000, 0, 9, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(283, 1118.13, -1021.19, 34.9921, 1108.62, -1024.85, 31.6323, 180.94, 'None', 1450000, 0, 3, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '1832.8,2173.9,2011.0', '30,0,0', '25,0,0', 0, 0, 0, 0, 0, 0),
(284, 1127.94, -1021.2, 34.9921, 1138.3, -1024.49, 31.6245, 179.322, 'None', 1455000, 0, 4, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(285, 1068.43, -1081.43, 27.5145, 1076.88, -1082.78, 26.3846, 180.021, 'None', 450000, 4, 2, 0, 0, 1, 1, 1, 1, 0, 1556.53, -1257.93, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 1, '1554.9,-1268.7,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(286, 2415.45, -52.2616, 28.1535, 2424.18, -54.7599, 27.0519, 359.179, 'None', 170000, 0, 12, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(287, 2438.79, -54.951, 28.1535, 2444.03, -50.6105, 27.1278, 359.606, 'None', 169000, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(288, 985.726, -1094.4, 27.604, 974.578, -1091.55, 23.7991, 90.3303, 'None', 450000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(289, 1326.27, -1089.51, 27.9765, 1330.34, -1081.18, 24.9149, 271.531, 'None', 450000, 0, 6, 0, 0, 1, 1, 1, 1, 0, 1557.45, -1260.03, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 14, 'null,null,null', 1, '1569.2,-1262.0,1278.1', '24,29,0', '400,300,0', 100, 0, 0, 0, 0, 0),
(290, 1325.95, -1069.14, 31.5546, 1330.08, -1062.44, 28.4019, 267.946, 'None', 450000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 1561.9, -1270.52, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 1, 'null,null,null', 0, '1556.7,-1270.6,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(291, 951.137, -909.212, 45.7656, 972.273, -913.642, 45.4927, 93.3379, 'None', 2500000, 1, 15, 0, 0, 2, 1, 1, 1, 0, 1833.01, 2168.36, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 1, 'null,null,null', 1, '1833.6,2166.1,2011.0', '0,0,0', '0,0,0', 0, 949.674, -916.119, 45.3332, 0, 1318926965),
(292, 954.099, -909.018, 45.7656, 974.885, -925.13, 45.4986, 94.7668, 'None', 2500000, 0, 4, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'Mash_gorgali,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(293, 1382.13, -1088.55, 28.1909, 1369.2, -1088.57, 24.3572, 349.947, 'None', 3355000, 10, 5, 0, 0, 2, 1, 1, 1, 0, 1842.49, 2168.43, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 5, 'null,null,null', 1, '1836.9,2168.4,2011.0', '31,29,24', '2500,2500,2500', 3250, 0, 0, 0, 0, 0),
(294, -2028, -40.6336, 38.8046, -2020.6, -43.9689, 35.0483, 181.013, 'None', 450000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(295, -2515.38, -189.402, 25.0498, -2513.18, -193.928, 25.0102, 270.497, 'None', 625000, 0, 9, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(296, -2515.36, -170.848, 25.0514, -2512.46, -175.795, 25.1279, 270.002, 'None', 465000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(297, -2515.38, -154.156, 25.0496, -2513.47, -158.092, 24.831, 269.763, 'None', 465000, 0, 9, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(298, -2524.22, -118.729, 21.802, -2529.68, -122.484, 19.3831, 175.645, 'None', 455000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(299, -2541.51, -119.031, 16.2084, -2546.63, -123.506, 14.0374, 180.24, 'None', 406000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(300, -2558.53, -118.727, 11.0238, -2563.54, -123.181, 9.145, 177.674, 'None', 406000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(301, -2576.42, -118.732, 6.6165, -2581.17, -123.245, 5.157, 176.334, 'None', 406000, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(302, -2623.42, -99.2828, 7.2031, -2616.99, -96.6991, 3.9115, 268.923, 'None', 380000, 0, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(303, -2625.84, -105.181, 7.2031, -2616.06, -111.531, 3.909, 269.489, 'None', 380000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(304, -2621.01, -134.773, 5, -2616.01, -140.068, 4.063, 269.458, 'None', 460000, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(305, -2620.77, -146.216, 7.2031, -2616.2, -143.882, 4.063, 270.342, 'None', 480000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(306, -2625.84, -162.426, 7.2031, -2615.07, -168.224, 3.9, 269.716, 'None', 460000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(307, -2620.79, -185.875, 7.2031, -2616.36, -178.59, 4.063, 269.042, 'None', 500000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(308, -2625.84, -191.035, 7.2031, -2616.12, -196.414, 4.0649, 270.113, 'None', 500000, 0, 9, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(309, -2678.44, -192.017, 7.2031, -2656.82, -196.576, 3.9035, 180.425, 'None', 345000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(310, -2720.87, 923.812, 67.5937, -2719.89, 916.067, 67.1684, 85.5648, 'None', 1900000, 0, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(311, -2710.67, 967.476, 54.4609, -2721.17, 977.432, 54.1895, 8.9348, 'None', 1900000, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(312, -2706.64, 864.454, 70.7031, -2711.89, 871.114, 70.275, 90.4033, 'None', 1745000, 0, 6, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, '-,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(313, -2737.56, 866.208, 64.6328, -2742.44, 862.932, 63.9013, 92.1711, 'None', 270000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 1556.55, -1270.67, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '1561.6,-1270.4,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(314, -2736.88, 846.738, 59.2727, -2743.87, 843.557, 58.2114, 86.7419, 'None', 270000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(315, -2737.84, 836.725, 56.253, -2742.36, 833.071, 55.3032, 89.4146, 'None', 270000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(316, -2709.74, 803.084, 49.9765, -2702.9, 805.545, 49.6315, 359.343, 'None', 270000, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(317, -2698.9, 803.082, 49.9702, -2694.7, 805.419, 49.6321, 359.342, 'None', 270000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(318, -2687.76, 803.084, 49.9765, -2684.02, 805.268, 49.6326, 359.342, 'None', 270000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(319, -2677.11, 803.086, 49.9765, -2680.15, 805.2, 49.633, 359.344, 'None', 270000, 0, 12, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(320, -2670.47, 803.089, 49.9765, -2667.16, 805.03, 49.6333, 359.348, 'None', 270000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(321, -2660.03, 803.089, 49.9765, -2663.62, 804.965, 49.6337, 359.349, 'None', 270000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(322, -2645.56, 803.087, 49.9765, -2648.81, 805.126, 49.6343, 359.349, 'None', 270000, 0, 12, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(323, -2640.3, 730.62, 30.0757, -2645.32, 726.211, 27.6902, 181.02, 'None', 380000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(324, -2661.52, 722.253, 27.9623, -2657.72, 719.453, 27.6715, 180.137, 'None', 380000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(325, -2665.63, 722.252, 27.9623, -2669.25, 719.434, 27.6715, 180.138, 'None', 1371000, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(326, -2678.23, 722.252, 28.5962, -2673.95, 719.915, 28.0695, 179.858, 'None', 450000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(327, -2372.53, 783.978, 35.1148, -2374.72, 789.11, 34.8424, 89.0364, 'None', 320000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(328, -2368.82, 763.444, 35.1515, -2371.11, 770.392, 34.7336, 90.9199, 'None', 320000, 0, 12, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(329, -2368.82, 740.664, 35.1514, -2371.08, 746.553, 34.7485, 88.4707, 'None', 320000, 9, 10, 0, 0, 1, 1, 1, 0, 0, 1565.32, -1256.23, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(330, -2368.82, 711.861, 35.1731, -2371.08, 706.619, 34.888, 86.1937, 'None', 320000, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(331, -2372.54, 692.734, 35.164, -2375.06, 687.814, 34.8941, 89.3194, 'None', 320000, 0, 12, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(332, -2285.32, 829.31, 57.1702, -2277.11, 825.046, 51.7109, 272.779, 'None', 380000, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'Kia_Winston,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(333, -2285.08, 849.735, 65.641, -2276.7, 842.012, 58.758, 269.607, 'None', 380000, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(334, -2159.23, 753.36, 69.5148, -2156.17, 748.723, 69.2766, 269.681, 'None', 360000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(335, -2159.23, 786.146, 69.5147, -2156.88, 781.523, 69.2699, 270.449, 'None', 360000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(336, -2099.58, 897.361, 76.7109, -2104.93, 892.693, 76.4301, 359.903, 'None', 1800000, 0, 10, 0, 0, 2, 0, 0, 0, 0, 1841.69, 2167.64, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1838.3,2171.6,2011.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(337, -2058.89, 889.375, 61.8566, -2047.57, 899.687, 53.1475, 359.201, 'None', 1800000, 0, 10, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(338, -2016.35, 897.33, 45.4453, -2014, 888.782, 45.1713, 269.362, 'None', 370000, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(339, -2018.55, 849.231, 45.4484, -2015.74, 853.838, 45.1723, 269.489, 'None', 370000, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(340, -2018.55, 832.006, 45.4453, -2015.89, 837.218, 45.182, 269.489, 'None', 370000, 0, 9, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(341, -1955.48, 1272.98, 7.6036, -1950.81, 1279.1, 6.8388, 93.3829, 'None', 230000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1556.46, -1257.78, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1575.4,-1257.2,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(342, -1970.37, 1272.98, 7.6036, -1975.99, 1276.7, 6.9158, 359.537, 'None', 230000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(343, -2024.46, 1275.92, 7.1875, -2019.78, 1278.52, 6.9145, 358.918, 'None', 250000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(344, -2028.86, 1275.92, 7.1875, -2034.06, 1279, 6.9775, 2.984, 'None', 250000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(345, -2224.78, 902.666, 66.6484, -2229.66, 905.058, 66.3795, 0.8308, 'None', 345000, 0, 9, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(346, -2174.13, 902.671, 80.0078, -2178.79, 905.511, 79.4409, 358.74, 'None', 345000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(347, -2174.3, 934.384, 80, -2179.09, 931.32, 79.3782, 178.486, 'None', 345000, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(348, -2229.22, 934.383, 66.6484, -2234.04, 931.199, 66.3755, 180.76, 'None', 345000, 0, 12, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(349, -2238.8, 962.273, 66.6521, -2241.16, 957.485, 66.3752, 89.9198, 'None', 277000, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(350, -2238.79, 944.094, 66.6521, -2241.22, 939.269, 66.3755, 90.7178, 'None', 277000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(351, -2160.13, 1002, 80, -2157.19, 997.344, 79.7405, 272.623, 'None', 355000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(352, -2160.15, 983.837, 80, -2157.78, 978.915, 79.7304, 270.183, 'None', 355000, 0, 12, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(353, -2160.15, 965.507, 80, -2157.74, 960.316, 79.7313, 270.232, 'None', 355000, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(354, -2160.15, 947.187, 80, -2157.66, 942.787, 79.7401, 270.277, 'None', 355000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(355, -2563.01, 1149.07, 55.7265, -2556.96, 1144.63, 55.4823, 162.979, 'None', 465000, 0, 9, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(356, -2549.27, 1145.76, 55.7265, -2545.99, 1142.97, 55.4466, 168.602, 'None', 480000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(357, -2534.65, 1143.79, 55.7265, -2541.81, 1142.07, 55.4538, 171.52, 'None', 475000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(358, -2523.92, 1142.69, 55.7265, -2527.41, 1140.22, 55.4536, 172.198, 'None', 465000, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(359, -2517.11, 1142.41, 55.7265, -2514.05, 1139.71, 55.4536, 176.593, 'None', 480000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(360, -2506.39, 1142.15, 55.7265, -2510.23, 1139.49, 55.4631, 176.593, 'None', 470000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(361, -2493.32, 1141.98, 55.7265, -2499.48, 1139.19, 55.4536, 180.499, 'None', 482000, 0, 9, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(362, 1241.95, -1075.39, 31.5546, 1245.46, -1067.68, 28.8741, 269.155, 'None', 400000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(363, 1242.27, -1100.58, 27.9765, 1245.43, -1108.08, 25.2513, 268.919, 'None', 400000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 1556.32, -1269.3, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '1561.6,-1269.6,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(364, 1285.26, -1091.58, 28.2578, 1282.52, -1098.83, 25.6917, 89.7304, 'None', 400000, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(365, 1285.26, -1066.06, 31.6789, 1282.29, -1058.72, 29.1496, 90.3518, 'None', 400000, 2, 3, 1, 0, 1, 1, 1, 0, 0, 1575.2, -1257.18, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 1, '1554.9,-1268.6,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(366, 1141.81, -1068.6, 31.7656, 1145.97, -1061.39, 29.3285, 271.567, 'None', 400000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(367, 1142.12, -1094.07, 28.1875, 1145.36, -1101.56, 25.4545, 268.85, 'None', 400000, 0, 2, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(368, 1183.47, -1100.13, 28.2578, 1179.35, -1108.16, 25.1156, 91.9035, 'None', 400000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(369, 1183.47, -1077.54, 31.6718, 1179.68, -1067.59, 28.7897, 89.9032, 'None', 400000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(370, 1103.4, -1093.48, 28.4687, 1099.94, -1101.61, 25.3946, 89.3235, 'None', 400000, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(371, 1103.4, -1068.11, 31.8898, 1099, -1061.1, 29.3013, 89.7116, 'None', 400000, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(372, 1059.21, -1105.14, 28.045, 1070.25, -1102.39, 24.3718, 269.938, 'None', 650000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(373, 793.984, -1707.43, 14.0382, 805.247, -1708.92, 13.189, 180.074, 'None', 600000, 0, 4, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(374, 794.991, -1692.08, 14.4633, 805.085, -1687.91, 13.2024, 180, 'None', 310000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(375, 797.265, -1729.4, 13.5468, 805.376, -1735.81, 13.189, 180.184, 'None', 450000, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 2, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(376, 791.474, -1753.22, 13.4604, 786.543, -1763.7, 12.9459, 86.7562, 'None', 400000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(377, 769.197, -1745.93, 13.0772, 761.936, -1751.83, 12.5487, 0.0414, 'None', 600000, 0, 9, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0);
INSERT INTO `house` (`hID`, `hEntrancex`, `hEntrancey`, `hEntrancez`, `hCarx`, `hCary`, `hCarz`, `hCarc`, `hOwner`, `hValue`, `hHel`, `hInt`, `hLock`, `hOwned`, `hKlass`, `hUpdAD`, `hUpdHel`, `hUpdSub`, `hUpdWkaf`, `hHealpickX`, `hHealpickY`, `hHealpickZ`, `hWkafX`, `hWkafY`, `hWkafZ`, `hWkafX1`, `hWkafY1`, `hWkafZ1`, `hWkafDrugs`, `hWkafMoney`, `hWkafPatr`, `hWkafMetall`, `hWkafSDPistol`, `hWkafDeagle`, `hWkafShotGun`, `hWkafMP5`, `hWkafAK47`, `hWkafM4`, `hSlet`, `hTakings`, `hOplata`, `hLodgers`, `hUpdStore`, `hUpdStorePos`, `hWeaponID`, `hAmmo`, `hDrugs`, `hGaragex`, `hGaragey`, `hGaragez`, `hGarage`, `hAttic`) VALUES
(378, 769.205, -1696.57, 5.1554, 762.196, -1701.24, 4.9748, 0.0466, 'None', 700000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'Fred_Elitt,null,null', 0, '1567.2,-1267.9,1278.1', '25,30,24', '400,1200,400', 99, 0, 0, 0, 0, 0),
(379, 768.063, -1655.93, 5.6093, 765.446, -1660.48, 4.1967, 92.3925, 'None', 650000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(380, 653.24, -1619.93, 15, 645.144, -1615.75, 14.9792, 3.5513, 'None', 600000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(381, 652.662, -1694, 14.5501, 643.61, -1700.15, 14.5551, 351.323, 'None', 600000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(382, 771.128, -1510.73, 13.5468, 779.356, -1508.76, 13.2817, 163.793, 'None', 900000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(383, 782.782, -1464.58, 13.5468, 787.948, -1469.15, 13.2817, 171.356, 'None', 900000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(384, 784.405, -1436.04, 13.5468, 790.443, -1430.9, 13.2736, 180.821, 'None', 800000, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(385, -2545.21, 920.343, 64.9765, -2548.2, 917.778, 64.7308, 180.999, 'None', 374500, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(386, 761.058, -1564.19, 13.9288, 766.868, -1564.5, 13.2739, 173.137, 'None', 900000, 0, 6, 0, 0, 1, 0, 0, 0, 0, 1559.55, -1259.97, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '1573.8,-1256.7,1278.1', '24,0,0', '240,0,0', 0, 0, 0, 0, 0, 0),
(387, -2551.85, 920.375, 64.9843, -2555.24, 917.651, 64.6481, 180.999, 'None', 374000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(388, -2562.31, 920.376, 64.9843, -2558.98, 917.586, 64.7144, 180.999, 'None', 375000, 0, 9, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(389, 648.854, -1536.88, 14.9336, 649.348, -1520.92, 14.6829, 90.8033, 'None', 950000, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(390, 648.855, -1489.39, 14.8417, 648.253, -1473.69, 14.4663, 89.057, 'None', 950000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(391, 648.853, -1442.3, 14.7282, 655.833, -1432.5, 14.5786, 88.5647, 'None', 950000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(392, 685.528, -1421.91, 14.7735, 665.856, -1422.21, 14.4176, 358.339, 'None', 960000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(393, 739.061, -1418.51, 13.5234, 734.659, -1412.72, 13.2515, 269.292, 'None', 1000000, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(394, 142.818, -1470.52, 25.2109, 151.038, -1470.58, 25.102, 50.0088, 'None', 700000, 0, 9, 0, 0, 1, 0, 0, 0, 0, 1567.25, -1262.81, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(395, -683.931, 939.513, 13.6328, -710.263, 970.971, 12.1294, 177.636, 'None', 1450000, 0, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(396, -692.33, 939.724, 13.6328, -706.183, 970.804, 12.1301, 177.636, 'None', 1500000, 0, 6, 0, 0, 2, 0, 0, 0, 0, 1831.34, 2164.93, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '1832.4,2182.4,2011.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(397, 1029.36, 1905.93, 11.4609, 1031.35, 1912.93, 11.1669, 89.9708, 'None', 455000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(398, 1030.36, 1876.43, 11.4687, 1023.35, 1868.14, 11.017, 90.0736, 'None', 470000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '1565.4,-1258.6,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(399, -2240.52, 786.229, 49.3768, -2243.4, 781.313, 49.1475, 89.835, 'None', 371000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(400, -2223.72, 821.132, 49.4386, -2228.46, 818.555, 49.1711, 179.676, 'None', 371000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(401, -2112.42, 795.746, 69.5625, -2117.42, 798.57, 69.2925, 0.8891, 'None', 305000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(402, -2094.22, 795.753, 69.5625, -2099.06, 798.816, 69.2908, 0.0541, 'None', 307000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(403, 2450.27, 742.691, 11.4609, 2443.85, 734.401, 11.0512, 90.4713, 'None', 755000, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(404, 2392.47, -54.9591, 28.1535, 2397.64, -50.1658, 27.1044, 0.4844, 'None', 165000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(405, 2367.27, -49.1056, 28.1535, 2358.14, -59.5901, 27.1958, 0.4664, 'None', 165000, 0, 6, 0, 0, 1, 0, 0, 0, 0, 1561.82, -1270.43, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '1556.7,-1264.8,1278.1', '38,24,30', '10000,10000,10000', 350, 0, 0, 0, 0, 0),
(406, 2398.14, 736.096, 11.4609, 2406.65, 729.733, 11.0538, 180.652, 'None', 780000, 0, 9, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(407, 2369.18, 735.188, 11.4609, 2361.98, 728.72, 11.0457, 178.161, 'None', 890000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(408, 2346.47, 736.427, 11.4682, 2354.53, 730.125, 11.0602, 179.406, 'None', 560000, 0, 12, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(409, 2258.24, 655.922, 11.4531, 2266.37, 649.506, 11.0396, 179.658, 'None', 780000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(410, 2450.74, 714.152, 11.4682, 2453.03, 697.507, 11.188, 89.0807, 'None', 560000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(411, 2449.05, 689.874, 11.4609, 2442.73, 697.36, 11.0307, 89.4609, 'None', 760000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(412, 2450.23, 662.618, 11.4609, 2443.77, 654.332, 11.0444, 90.5109, 'None', 760000, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(413, 2317.75, 656.034, 11.4531, 2326.42, 649.63, 11.0354, 179.998, 'None', 780000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(414, 2346.26, 656.286, 11.4604, 2354.33, 648.829, 10.9509, 179.546, 'None', 510000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(415, 2368.52, 655.144, 11.4609, 2361.32, 648.501, 11.0315, 178.218, 'None', 775000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(416, 2397.6, 656.013, 11.4609, 2406.09, 648.871, 10.9896, 180.846, 'None', 524000, 0, 10, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(417, 2123.28, 651.711, 11.4609, 2130.31, 657.795, 11.0467, 359.706, 'None', 900000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(418, 2094.1, 650.895, 11.4609, 2085.59, 656.979, 11.037, 1.1387, 'None', 760000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(419, 2065.75, 650.114, 11.4682, 2057.82, 657.984, 10.9398, 0.1019, 'None', 510000, 0, 9, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(420, 2043.19, 651.768, 11.4609, 2050.25, 657.84, 11.0438, 358.135, 'None', 520000, 0, 5, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(421, 2011.46, 694.678, 11.4609, 2004.5, 688.601, 11.0396, 178.939, 'None', 850000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(422, 2040.74, 695.806, 11.4531, 2049.05, 689.219, 11.0097, 180.355, 'None', 630000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(423, 2396.96, 690.418, 11.4531, 2388.52, 696.914, 11.0308, 1.2277, 'None', 780000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(424, 2368.61, 690.183, 11.4604, 2360.59, 696.443, 11.0298, 1.0237, 'None', 520000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(425, 2346.35, 691.61, 11.4609, 2353.19, 697.792, 11.0459, 358.791, 'None', 780000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(426, 2014.14, 650.736, 11.4609, 2005.7, 656.894, 11.0455, 2.2815, 'None', 480000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(427, 2256.97, 690.875, 11.4531, 2248.38, 696.952, 11.0263, 0.8799, 'None', 760000, 0, 10, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(428, 2228.73, 690.125, 11.4604, 2220.35, 696.383, 11.031, 359.844, 'None', 466000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(429, 2206.47, 691.905, 11.4609, 2213.52, 697.791, 11.0419, 359.085, 'None', 730000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(430, 2177.28, 690.575, 11.4609, 2168.69, 696.919, 11.0364, 0.976, 'None', 810000, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(431, 553.073, -1200.15, 44.8315, 541.853, -1200.43, 44.122, 288.306, 'None', 1200000, 0, 1, 0, 0, 2, 0, 0, 0, 0, 1837.57, 2169.31, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, '-,null,null', 0, '1839.4,2172.8,2011.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(432, 2257.54, 735.856, 11.4609, 2265.97, 729.61, 11.0436, 181.648, 'None', 830000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(433, 2317.12, 690.71, 11.4609, 2308.78, 696.901, 11.0397, 0.3347, 'None', 970000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(434, 2228.25, 734.924, 11.4609, 2221.44, 728.476, 11.0317, 180.363, 'None', 540000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(435, 2205.79, 736.294, 11.4682, 2213.97, 729.873, 11.0288, 180.967, 'None', 710000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(436, 891.083, -782.673, 101.309, 895.416, -777.996, 101.034, 291.967, 'None', 1100000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 1561.36, -1270.37, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '1575.2,-1257.5,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(437, 1106.06, -299.701, 74.539, 1106.86, -306.469, 73.7196, 87.9558, 'None', 180000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'Tape_Fear,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(438, 2122.62, 732.104, 11.4609, 2129.18, 728.375, 11.188, 0.7699, 'None', 870000, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(439, 2093.4, 730.727, 11.4531, 2085.22, 733.432, 11.1687, 0.8246, 'None', 780000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(440, 2065.13, 730.155, 11.4682, 2057.14, 725.205, 11.1953, 358.966, 'None', 610000, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(441, 2042.51, 732.024, 11.4609, 2049.62, 728.171, 11.188, 359.407, 'None', 605000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(442, 2013.24, 730.954, 11.4531, 2005.23, 732.952, 11.1801, 359.714, 'None', 560000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(443, 2014.06, 774.36, 11.4609, 2007.13, 777.317, 11.188, 180.976, 'None', 780000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 2, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(444, 2043.34, 775.734, 11.4531, 2051.47, 773.417, 11.1785, 181.081, 'None', 509000, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(445, 2071.47, 775.968, 11.4604, 2079.21, 781.159, 11.1875, 180.165, 'None', 450000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(446, 2094.23, 774.39, 11.4531, 2086.97, 777.93, 11.1802, 179.724, 'None', 604000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(447, 2123.37, 775.409, 11.4453, 2131.62, 773.36, 11.1693, 181.619, 'None', 540000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(448, 1465.15, 1895.04, 11.4609, 1473.64, 1901.6, 10.8209, 270.602, 'None', 407000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(449, 1465.13, 1920.04, 11.4609, 1472.41, 1927.31, 10.9216, 272.111, 'None', 406000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(450, 1439.71, 1952.07, 11.4609, 1446.51, 1955.71, 11.1211, 359.947, 'None', 450000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(451, 1412.64, 1952.04, 11.4531, 1418.35, 1956.55, 10.9653, 358.142, 'None', 430000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 2, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(452, 1365.12, 1896.75, 11.4687, 1372.67, 1904.87, 10.789, 263.529, 'None', 386000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(453, 1364.77, 1931.69, 11.4682, 1372.5, 1937.83, 10.7639, 274.81, 'None', 310000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(454, -2791.79, 212.492, 10.0546, -2796.43, 211.619, 6.7427, 88.9992, 'None', 900000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(455, -2789.71, 183.752, 10.0625, -2797.01, 180.6, 6.7511, 87.2117, 'None', 900000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(456, -2791.83, 103.794, 10.0546, -2795.72, 101.366, 6.8033, 85.77, 'None', 900000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(457, -2792.64, 92.0599, 7.7634, -2795.76, 96.8679, 6.8041, 90.2775, 'None', 800000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(458, -2792.78, -17.7866, 7.6706, -2796.78, -25.9195, 6.8088, 88.7342, 'None', 910000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(459, -347.981, -1046.58, 59.8125, 0, 0, 0, 0, 'None', 800000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(460, -2789.81, -52.7272, 10.0434, 0, 0, 0, 0, 'None', 900000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(461, -2789.8, -181.36, 10.0526, 0, 0, 0, 0, 'None', 900000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(462, -2792.89, -146.017, 7.5919, 0, 0, 0, 0, 'None', 850000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(463, -2791.86, -133.638, 10.0546, 0, 0, 0, 0, 'None', 900000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(464, -2725.07, -92.5829, 7.1578, 0, 0, 0, 0, 'None', 950000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(465, -2690.18, -114.193, 4.9758, 0, 0, 0, 0, 'None', 900000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(466, -2690.46, -152.788, 4.7886, 0, 0, 0, 0, 'None', 800000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(467, -2722.04, -127.999, 4.7369, 0, 0, 0, 0, 'None', 800000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(468, -2597.31, 2364.6, 9.883, 0, 0, 0, 0, 'None', 1140000, 0, 8, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(469, 986.409, 2271.74, 11.4609, 0, 0, 0, 0, 'None', 640000, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(470, 956.935, 2270.9, 11.4687, 0, 0, 0, 0, 'None', 625000, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(471, 985.976, 2314.27, 11.4609, 0, 0, 0, 0, 'None', 654000, 0, 9, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(472, 984.978, 2343.63, 11.4687, 0, 0, 0, 0, 'None', 430000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(473, 1032.7, 2316.19, 11.4682, 0, 0, 0, 0, 'None', 530000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(474, 1223.33, 2616.86, 10.8265, 0, 0, 0, 0, 'None', 1200000, 0, 5, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(475, 1225.61, 2585, 10.8203, 0, 0, 0, 0, 'None', 1130000, 0, 3, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(476, 1265.57, 2609.45, 10.8203, 0, 0, 0, 0, 'None', 1230000, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(477, 1285.03, 2610.4, 10.8203, 0, 0, 0, 0, 'None', 1230000, 0, 5, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(478, 1313.82, 2609.8, 11.2989, 0, 0, 0, 0, 'None', 890000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(479, 1344.82, 2609.86, 11.2989, 0, 0, 0, 0, 'None', 890000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(480, 1274.42, 2522.6, 10.8203, 0, 0, 0, 0, 'None', 1250000, 0, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(481, 1269.98, 2554.42, 10.8265, 0, 0, 0, 0, 'None', 1100000, 0, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(482, 1315.72, 2524.67, 10.8203, 0, 0, 0, 0, 'None', 1150000, 0, 9, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(483, 1325.54, 2567.93, 10.8203, 0, 0, 0, 0, 'None', 980000, 0, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(484, 1359.69, 2566.04, 10.8265, 0, 0, 0, 0, 'None', 1100000, 0, 3, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(485, 1349.51, 2568.03, 10.8203, 0, 0, 0, 0, 'None', 1100000, 0, 5, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(486, 1417.75, 2567.84, 10.8203, 0, 0, 0, 0, 'None', 980000, 0, 5, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(487, 1441.76, 2568.3, 10.8203, 0, 0, 0, 0, 'None', 1050000, 0, 15, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(488, 1451.34, 2565.8, 10.8265, 0, 0, 0, 0, 'None', 1100000, 0, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(489, 1503.24, 2568.29, 10.8203, 0, 0, 0, 0, 'None', 1100000, 0, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(490, 1513.35, 2565.81, 10.8265, 0, 0, 0, 0, 'None', 1250000, 0, 5, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(491, 1551.49, 2567.69, 10.8203, 0, 0, 0, 0, 'None', 1230000, 0, 5, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(492, 1564.63, 2566.15, 10.8203, 0, 0, 0, 0, 'None', 1240000, 0, 3, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(493, 1596.45, 2568.04, 10.8203, 0, 0, 0, 0, 'None', 1230000, 0, 4, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(494, 1623.6, 2568.06, 10.8203, 0, 0, 0, 0, 'None', 1230000, 0, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(495, 1646.44, 2570.31, 10.8203, 0, 0, 0, 0, 'None', 560000, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(496, 1665.63, 2569.8, 11.2989, 0, 0, 0, 0, 'None', 610000, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(497, 1666.88, 2609.5, 11.0549, 0, 0, 0, 0, 'None', 610000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(498, 1638.19, 2609.71, 10.8203, 0, 0, 0, 0, 'None', 540000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(499, 1554.61, 2610.39, 10.8203, 0, 0, 0, 0, 'None', 540000, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(500, 1673.08, 2801.14, 10.8203, 0, 0, 0, 0, 'None', 540000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(501, 1564.75, 2757.28, 10.8203, 0, 0, 0, 0, 'None', 587000, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(502, 1563.92, 2776.61, 10.8203, 0, 0, 0, 0, 'None', 523000, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(503, 1564.55, 2793.57, 10.8203, 0, 0, 0, 0, 'None', 597000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(504, 1654.87, 2801.49, 10.8203, 0, 0, 0, 0, 'None', 569000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(505, 1637.8, 2802.33, 10.8203, 0, 0, 0, 0, 'None', 546000, 0, 9, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(506, 1618.34, 2801.38, 10.8203, 0, 0, 0, 0, 'None', 561000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(507, 2481.71, 1525.86, 11.6689, 0, 0, 0, 0, 'None', 580000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(508, 2461.28, 1558.8, 11.7812, 0, 0, 0, 0, 'None', 580000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(509, 2532.77, 1507.72, 11.7462, 0, 0, 0, 0, 'None', 580000, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(510, 2560.23, 1561.85, 10.8203, 0, 0, 0, 0, 'None', 580000, 0, 9, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '1565.5,-1265.2,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(511, -2655.33, 986.688, 64.9912, 0, 0, 0, 0, 'None', 1600000, 0, 9, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(512, 2410.87, -5.5263, 27.6834, 0, 0, 0, 0, 'None', 165000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(513, 2410.62, 21.7506, 27.6834, 0, 0, 0, 0, 'None', 165000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(514, 2374.19, 22.0242, 28.4416, 0, 0, 0, 0, 'None', 165000, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '1573.7,-1256.7,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(515, 2374.17, 42.2234, 28.4416, 0, 0, 0, 0, 'None', 160000, 0, 2, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(516, 2374.3, 71.1556, 28.4416, 0, 0, 0, 0, 'None', 160000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(517, 2398.58, 111.087, 28.4416, 0, 0, 0, 0, 'None', 160000, 0, 5, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(518, -2132.07, -2511.26, 31.8162, 0, 0, 0, 0, 'None', 144000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(519, 2458.93, 128.262, 27.6756, 0, 0, 0, 0, 'None', 155000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(520, 2444.18, 92.225, 28.4416, 0, 0, 0, 0, 'None', 162000, 0, 8, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(521, 2480.64, 126.409, 27.6756, 0, 0, 0, 0, 'None', 162000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(522, 2518.5, 128.338, 27.6756, 0, 0, 0, 0, 'None', 158000, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(523, 2514, 94.6706, 27.6834, 0, 0, 0, 0, 'None', 145000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(524, -2551.93, 2267.01, 5.4755, 0, 0, 0, 0, 'None', 999000, 0, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(525, -2523.5, 2239.49, 5.3878, 0, 0, 0, 0, 'None', 1000000, 0, 4, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(526, 691.164, -1275.88, 13.5604, 660.27, -1277.34, 13.0271, 180.205, 'None', 6500000, 0, 5, 0, 0, 2, 0, 0, 0, 0, 1842.21, 2172.21, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 2, '-,null,null', 0, '1833.4,2165.1,2011.0', '24,30,38', '10000,10000,2398', 4500, 688.401, -1278.51, 13.5527, 0, 1318926965),
(527, 252.266, -121.284, 3.5353, 0, 0, 0, 0, 'None', 140000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(528, 2363.25, 116.209, 28.4416, 0, 0, 0, 0, 'None', 220000, 0, 3, 0, 0, 1, 1, 1, 0, 0, 1570.9, -1258.95, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 1, '1554.9,-1268.6,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(529, -2220.17, -2400.02, 32.5822, 0, 0, 0, 0, 'None', 145000, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(530, -2238.59, -2424.41, 32.7072, 0, 0, 0, 0, 'None', 145000, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(531, -2214.4, -2451.59, 31.8162, 0, 0, 0, 0, 'None', 140000, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(532, -2224.23, -2482.41, 31.8162, 0, 0, 0, 0, 'None', 150000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(533, -2174.08, -2481.85, 31.8162, 0, 0, 0, 0, 'None', 145000, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(534, -2192.79, -2509.99, 31.8162, 0, 0, 0, 0, 'None', 147000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(535, -2180.76, -2519.72, 31.8162, 0, 0, 0, 0, 'None', 148000, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(536, -2161.03, -2535.15, 31.8162, 0, 0, 0, 0, 'None', 143000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(537, 2363.63, 142.04, 28.4416, 0, 0, 0, 0, 'None', 225000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(538, 2363.62, 166.234, 28.4416, 0, 0, 0, 0, 'None', 215000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(539, 2363.49, 187.192, 28.4416, 0, 0, 0, 0, 'None', 230000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(540, 2324.33, 191.248, 28.4416, 0, 0, 0, 0, 'None', 230000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(541, 2324.46, 162.369, 28.4416, 0, 0, 0, 0, 'None', 225000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(542, 2324.03, 136.579, 28.4416, 0, 0, 0, 0, 'None', 215000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 1557.14, -1261.25, 1278.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '1554.9,-1268.7,1278.1', '30,38,0', '1276,900,0', 0, 0, 0, 0, 0, 0),
(543, 2324.54, 116.182, 28.4416, 0, 0, 0, 0, 'None', 200000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(544, 2245.49, -121.73, 28.1535, 0, 0, 0, 0, 'None', 130000, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(545, 2272.47, -118.696, 28.1535, 0, 0, 0, 0, 'None', 140000, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(546, 2293.82, -124.224, 28.1535, 0, 0, 0, 0, 'None', 132000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(547, 2313.86, -124.441, 28.1535, 0, 0, 0, 0, 'None', 140000, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(548, 2203.62, -89.3191, 28.1535, 0, 0, 0, 0, 'None', 139000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(549, 2197.8, -60.7232, 28.1535, 0, 0, 0, 0, 'None', 129000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(550, 2200.44, -37.3088, 28.1535, 0, 0, 0, 0, 'None', 142000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(551, 2245.65, -1.6718, 28.1535, 0, 0, 0, 0, 'None', 132000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1405.1, 963.516, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(552, 2270.48, -7.5124, 28.1535, 0, 0, 0, 0, 'None', 142000, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(553, -607.673, -1074.12, 23.5028, 0, 0, 0, 0, 'None', 42000, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(554, -601.157, -1065.74, 23.4056, 0, 0, 0, 0, 'None', 39000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(555, -594.727, -1057.11, 23.3561, 0, 0, 0, 0, 'None', 37000, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(556, -588.812, -1048.75, 23.3341, 0, 0, 0, 0, 'None', 41000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(557, -582.634, -1040.52, 23.5909, 0, 0, 0, 0, 'None', 46000, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'Dima_Golokolenov,Sergey_Morozz,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(558, -576.775, -1032.24, 23.8185, 0, 0, 0, 0, 'None', 37500, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(559, -2081.6, -2547.72, 30.625, 0, 0, 0, 0, 'None', 95000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(560, -2069.6, -2495.04, 31.0668, 0, 0, 0, 0, 'None', 32000, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(561, -2087.32, -2510.57, 31.0668, 0, 0, 0, 0, 'None', 35000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(562, -2101.73, -2532.13, 31.0668, 0, 0, 0, 0, 'None', 32000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(563, -2074.86, -2526.81, 31.0668, 0, 0, 0, 0, 'None', 39000, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(564, -2058.59, -2503.41, 31.0668, 0, 0, 0, 0, 'None', 45000, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(565, -2045.38, -2522.79, 31.0668, 0, 0, 0, 0, 'None', 43000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(566, -2053.49, -2544.36, 31.0668, 0, 0, 0, 0, 'None', 49000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(567, -2069.29, -2561.42, 31.0668, 0, 0, 0, 0, 'None', 46500, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(568, -2042.76, -2559.02, 30.63, 0, 0, 0, 0, 'None', 51000, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(569, -2031, -2539, 31, 0, 0, 0, 0, 'None', 53200, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(570, -2348.54, 2423.25, 7.3353, 0, 0, 0, 0, 'None', 370000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(571, -2379.49, 2444.14, 10.1693, 0, 0, 0, 0, 'None', 400000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(572, -2424.7, 2448.52, 13.158, 0, 0, 0, 0, 'None', 399000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(573, -2479.81, 2449.27, 17.323, 0, 0, 0, 0, 'None', 410000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '1565.5,-1256.9,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(574, -2437.41, 2354.57, 5.443, 0, 0, 0, 0, 'None', 200000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(575, -2583.13, 2307.98, 7.0028, 0, 0, 0, 0, 'None', 350000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(576, -2627.14, 2292.08, 8.3108, 0, 0, 0, 0, 'None', 450000, 0, 9, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(577, -2626.72, 2318.69, 8.3075, 0, 0, 0, 0, 'None', 500000, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(578, -1667.31, 2486.32, 87.1717, 0, 0, 0, 0, 'None', 45100, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(579, -1670.26, 2546.04, 85.2361, 0, 0, 0, 0, 'None', 46120, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(580, -1669.86, 2597.97, 81.4453, 0, 0, 0, 0, 'None', 46000, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(581, -1587.55, 2650.03, 55.8593, 0, 0, 0, 0, 'None', 52100, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(582, -1568.16, 2629.67, 55.8402, 0, 0, 0, 0, 'None', 53200, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(583, -1563.01, 2651.22, 55.8402, 0, 0, 0, 0, 'None', 52390, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0);
INSERT INTO `house` (`hID`, `hEntrancex`, `hEntrancey`, `hEntrancez`, `hCarx`, `hCary`, `hCarz`, `hCarc`, `hOwner`, `hValue`, `hHel`, `hInt`, `hLock`, `hOwned`, `hKlass`, `hUpdAD`, `hUpdHel`, `hUpdSub`, `hUpdWkaf`, `hHealpickX`, `hHealpickY`, `hHealpickZ`, `hWkafX`, `hWkafY`, `hWkafZ`, `hWkafX1`, `hWkafY1`, `hWkafZ1`, `hWkafDrugs`, `hWkafMoney`, `hWkafPatr`, `hWkafMetall`, `hWkafSDPistol`, `hWkafDeagle`, `hWkafShotGun`, `hWkafMP5`, `hWkafAK47`, `hWkafM4`, `hSlet`, `hTakings`, `hOplata`, `hLodgers`, `hUpdStore`, `hUpdStorePos`, `hWeaponID`, `hAmmo`, `hDrugs`, `hGaragex`, `hGaragey`, `hGaragez`, `hGarage`, `hAttic`) VALUES
(584, -1512.67, 2646.82, 56.1761, 0, 0, 0, 0, 'None', 51200, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(585, -1459.29, 2653.38, 55.8359, 0, 0, 0, 0, 'None', 52100, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(586, -1444.62, 2653.1, 56.2699, 0, 0, 0, 0, 'None', 52700, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(587, -1589.9, 2706.28, 56.1761, 0, 0, 0, 0, 'None', 54240, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(588, -1577.7, 2686.77, 55.8359, 0, 0, 0, 0, 'None', 56000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(589, -1564.39, 2712.07, 55.8593, 0, 0, 0, 0, 'None', 51400, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(590, -1551.2, 2699.71, 56.2699, 0, 0, 0, 0, 'None', 53000, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(591, -1529.37, 2686.32, 55.8359, 0, 0, 0, 0, 'None', 53100, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(592, -1511.83, 2695.46, 56.0723, 0, 0, 0, 0, 'None', 51360, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(593, -1491.5, 2685.77, 55.8593, 0, 0, 0, 0, 'None', 52700, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(594, -1482.5, 2702.52, 56.2543, 0, 0, 0, 0, 'None', 51000, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(595, -1466.36, 2692.93, 56.2699, 0, 0, 0, 0, 'None', 54321, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(596, -1450.45, 2690.85, 56.1761, 0, 0, 0, 0, 'None', 52000, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(597, -911.27, 2686.34, 42.3702, 0, 0, 0, 0, 'None', 800000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(598, 1956.69, 731.328, 10.8203, 0, 0, 0, 0, 'None', 170000, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(599, 1942.76, 742.499, 10.8203, 0, 0, 0, 0, 'None', 180000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(600, 1929.4, 742.528, 10.8203, 0, 0, 0, 0, 'None', 180000, 0, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(601, 2066.13, 2721.83, 10.8203, 0, 0, 0, 0, 'None', 390000, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(602, 1897.09, 681.888, 10.8203, 0, 0, 0, 0, 'None', 180000, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(603, 1915.91, 742.618, 10.8197, 0, 0, 0, 0, 'None', 180000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(604, 1896.93, 668.552, 10.8203, 0, 0, 0, 0, 'None', 180000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(605, 1918.84, 664.081, 10.8203, 0, 0, 0, 0, 'None', 180000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(606, 1945.51, 663.803, 10.8203, 0, 0, 0, 0, 'None', 180000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(607, 1956.68, 677.892, 10.8203, 0, 0, 0, 0, 'None', 180000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(608, 1897.06, 729.169, 10.8203, 0, 0, 0, 0, 'None', 180000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '1563.8,-1258.1,1278.1', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(609, 1901.88, 742.557, 10.8197, 0, 0, 0, 0, 'None', 180000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(610, -1478.82, 2547.1, 56.2543, 0, 0, 0, 0, 'None', 52000, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(611, -1476.33, 2562.96, 56.1761, 0, 0, 0, 0, 'None', 52300, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(612, -1450.01, 2562.91, 55.8359, 0, 0, 0, 0, 'None', 48000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(613, -1446.51, 2636.91, 56.2543, 0, 0, 0, 0, 'None', 52000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(614, -1603.86, 2689.75, 55.2855, 0, 0, 0, 0, 'None', 52740, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(615, 2056.46, 2664.56, 10.8203, 0, 0, 0, 0, 'None', 380000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(616, 2037, 2663.98, 10.8203, 0, 0, 0, 0, 'None', 382000, 0, 12, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(617, 2017.89, 2664.01, 11.0549, 0, 0, 0, 0, 'None', 405000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(618, 1989.13, 2664.97, 10.8203, 0, 0, 0, 0, 'None', 390000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(619, 1969.64, 2664.25, 10.8203, 0, 0, 0, 0, 'None', 390000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(620, 1950.62, 2664.37, 11.2989, 0, 0, 0, 0, 'None', 405000, 0, 9, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(621, 1921.88, 2664.82, 10.8203, 0, 0, 0, 0, 'None', 405000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(622, 1931.32, 2721.5, 10.8203, 0, 0, 0, 0, 'None', 390000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(623, 1950.64, 2722.35, 10.8203, 0, 0, 0, 0, 'None', 405000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(624, 1969.86, 2721.99, 11.2989, 0, 0, 0, 0, 'None', 405000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(625, 1998.75, 2721.81, 10.8203, 0, 0, 0, 0, 'None', 390000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(626, 2018.26, 2722.41, 10.8203, 0, 0, 0, 0, 'None', 405000, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(627, 2037.26, 2721.83, 11.2989, 0, 0, 0, 0, 'None', 405000, 0, 12, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(628, 2049.77, 2763.96, 10.8203, 0, 0, 0, 0, 'None', 1230000, 0, 4, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(629, 2039.45, 2766.32, 10.8265, 0, 0, 0, 0, 'None', 1230000, 0, 15, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(630, 2018.47, 2766.26, 10.8265, 0, 0, 0, 0, 'None', 1150000, 0, 3, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(631, 1992.68, 2764.28, 10.8203, 0, 0, 0, 0, 'None', 1150000, 0, 4, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(632, 1967.28, 2766.08, 10.8265, 0, 0, 0, 0, 'None', 1145000, 0, 5, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(633, 1929.5, 2774.33, 10.8203, 0, 0, 0, 0, 'None', 1200000, 0, 8, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(634, -275.313, 2736.33, 62.7543, 0, 0, 0, 0, 'None', 35000, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(635, -362.749, 1110.72, 20.9398, 0, 0, 0, 0, 'None', 400000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(636, -360.521, 1141.88, 20.9398, 0, 0, 0, 0, 'None', 400000, 0, 9, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(637, -369.497, 1169.36, 20.2718, 0, 0, 0, 0, 'None', 450000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(638, -324.451, 1165.42, 20.9398, 0, 0, 0, 0, 'None', 320000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(639, -292.437, 1122.78, 20.9398, 0, 0, 0, 0, 'None', 300000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(640, -328.466, 1118.98, 20.9398, 0, 0, 0, 0, 'None', 300000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(641, -298.367, 1115.59, 20.9398, 0, 0, 0, 0, 'None', 320000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(642, -290.786, 1176.75, 20.9398, 0, 0, 0, 0, 'None', 300000, 1, 5, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 1, '1565.1,-1265.5,1278.1', '23,0,0', '20,0,0', 0, 0, 0, 0, 0, 0),
(643, -258.31, 1151.12, 20.9398, 0, 0, 0, 0, 'None', 340000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(644, -253.276, 1118.84, 20.9398, 0, 0, 0, 0, 'None', 320000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'Dmitriy_Stolyarov,Dmitriy_Stolyarov,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(645, -258.471, 1168.85, 20.9398, 0, 0, 0, 0, 'None', 340000, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(646, -260.591, 1120.06, 20.9398, 0, 0, 0, 0, 'None', 320000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(647, -258.334, 1043.8, 20.9398, 0, 0, 0, 0, 'None', 300000, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(648, -278.926, 1003.14, 20.9398, 0, 0, 0, 0, 'None', 320000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(649, -247.866, 1001.14, 20.9398, 0, 0, 0, 0, 'None', 300000, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(650, -258.909, 1083.18, 20.9398, 0, 0, 0, 0, 'None', 340000, 0, 2, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(651, -886.497, 1514.17, 26.0311, 0, 0, 0, 0, 'None', 35000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(652, -906.372, 1514.82, 26.3168, 0, 0, 0, 0, 'None', 32000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(653, -905.429, 1528.47, 26.0779, 0, 0, 0, 0, 'None', 30000, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(654, -881.763, 1531.76, 26.0623, 0, 0, 0, 0, 'None', 35000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(655, -905.749, 1542.87, 26.0623, 0, 0, 0, 0, 'None', 36000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(656, -884.116, 1552.75, 26.0623, 0, 0, 0, 0, 'None', 30000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(657, -881.467, 1562.61, 26.2186, 0, 0, 0, 0, 'None', 32000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(658, -2116.8, 927.753, 86.079, 0, 0, 0, 0, 'None', 2000000, 0, 5, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(659, -314.09, 1774.78, 43.64, 0, 0, 0, 0, 'None', 1600000, 0, 15, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(660, -884.265, 1538.23, 26.0311, 0, 0, 0, 0, 'None', 35000, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(661, -636.528, 1446.85, 13.9964, 0, 0, 0, 0, 'None', 36000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1400.39, 963.753, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(662, -650.831, 1445.65, 13.6795, 0, 0, 0, 0, 'None', 32000, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(663, -658.418, 1447.11, 13.7342, 0, 0, 0, 0, 'None', 32000, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(664, -690.017, 1444.42, 17.8089, 0, 0, 0, 0, 'None', 40000, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(665, -715.584, 1438.95, 18.8871, 0, 0, 0, 0, 'None', 42000, 0, 2, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(666, -743.08, 1432.51, 16.11, 0, 0, 0, 0, 'None', 42000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(667, -91.1863, -1592.48, 3.0043, 0, 0, 0, 0, 'None', 38000, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, '-,Alina_Donqixote,Panciato_Donqixote', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(668, -89.1267, -1564.49, 3.0043, 0, 0, 0, 0, 'None', 38000, 0, 4, 0, 0, 0, 0, 0, 0, 0, 1401.03, 964.654, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(669, -68.8457, -1545.68, 3.0043, 0, 0, 0, 0, 'None', 40000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, '-,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(670, -2478.34, 2489.01, 18.2299, 0, 0, 0, 0, 'None', 45000, 3, 5, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(671, -2479.06, 2510.02, 17.9747, 0, 0, 0, 0, 'None', 42000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(672, -2446.82, 2512.37, 15.7003, 0, 0, 0, 0, 'None', 45000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(673, -2422.41, 2490.76, 13.2025, 0, 0, 0, 0, 'None', 40000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(674, -1802.62, 2037.79, 9.5902, 0, 0, 0, 0, 'None', 34000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(675, -1827.15, 2042.36, 8.6605, 0, 0, 0, 0, 'None', 45000, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(676, -1500.1, 1960.16, 49.0234, 0, 0, 0, 0, 'None', 50000, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(677, -1427.05, 2171.32, 50.625, 0, 0, 0, 0, 'None', 36000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(678, -311.401, 2726.88, 63.0723, 0, 0, 0, 0, 'None', 42000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(679, -279.652, 2721.89, 62.7906, 0, 0, 0, 0, 'None', 150000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(680, -287.567, 2758.14, 62.5121, 0, 0, 0, 0, 'None', 38000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(681, -257.987, 2782.9, 62.6875, 0, 0, 0, 0, 'None', 32000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(682, -268.768, 2769.42, 61.8721, 0, 0, 0, 0, 'None', 37000, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(683, -232.284, 2807.7, 62.0546, 0, 0, 0, 0, 'None', 38000, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(684, -219.717, 2767.48, 62.7906, 0, 0, 0, 0, 'None', 35000, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(685, -201.867, 2771.54, 62.3457, 0, 0, 0, 0, 'None', 36000, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(686, -161.375, 2728.2, 62.205, 0, 0, 0, 0, 'None', 38000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(687, -168.64, 2707.33, 62.5361, 0, 0, 0, 0, 'None', 38000, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(688, -150.196, 2687.87, 62.4296, 0, 0, 0, 0, 'None', 34000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(689, -207.823, 1119.28, 20.4296, 0, 0, 0, 0, 'None', 1200000, 0, 8, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(690, -121.185, 857.596, 18.5824, 0, 0, 0, 0, 'None', 35000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 1387.01, 964.866, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, '-,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(691, -123.171, 874.883, 18.7308, 0, 0, 0, 0, 'None', 42000, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(692, -152.473, 881.84, 18.4424, 0, 0, 0, 0, 'None', 36000, 0, 4, 0, 0, 0, 0, 0, 0, 0, 1386.68, 964.851, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(693, -153.328, 907.052, 19.3011, 0, 0, 0, 0, 'None', 34000, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(694, -151.157, 933.933, 19.723, 0, 0, 0, 0, 'None', 34000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(695, -92.0501, 887.069, 21.2543, 0, 0, 0, 0, 'None', 36000, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(696, -53.0071, 894.219, 22.3871, 0, 0, 0, 0, 'None', 38000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 1387.44, 965.485, 940.625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(697, -54.8259, 918.774, 22.3714, 0, 0, 0, 0, 'None', 34000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'Kirill_Khon,null,null', 0, '1407.0,954.5,940.5', '24,25,30', '9250,9750,9750', 0, 0, 0, 0, 0, 0),
(698, -56.5929, 935.33, 21.2074, 0, 0, 0, 0, 'None', 32000, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, '-,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(699, -67.0379, 971.44, 19.888, 0, 0, 0, 0, 'None', 32000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, '-,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(700, -92.6956, 970.099, 19.9789, 0, 0, 0, 0, 'None', 32000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(701, -37.6293, 962.545, 20.0511, 0, 0, 0, 0, 'None', 32000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(702, -15.4408, 934.22, 21.1058, 0, 0, 0, 0, 'None', 36000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(703, 20.5944, 948.912, 20.3168, 0, 0, 0, 0, 'None', 32000, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(704, 1295.39, 174.625, 20.9105, 0, 0, 0, 0, 'None', 34000, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(705, 1283.35, 158.463, 20.7933, 0, 0, 0, 0, 'None', 32000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(706, 1311.79, 169.617, 20.631, 0, 0, 0, 0, 'None', 32000, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(707, 1451.56, 375.708, 19.4004, 0, 0, 0, 0, 'None', 32000, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(708, 1447.49, 361.794, 18.9091, 0, 0, 0, 0, 'None', 32000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(709, 1465.73, 364.276, 19.2613, 0, 0, 0, 0, 'None', 36000, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(710, 1435.03, 334.95, 18.9468, 0, 0, 0, 0, 'None', 36000, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(711, 1428.5, 356.421, 18.875, 0, 0, 0, 0, 'None', 40000, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(712, 1409.22, 346.87, 19.252, 0, 0, 0, 0, 'None', 32000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(713, 1413.21, 363.135, 19.1973, 0, 0, 0, 0, 'None', 36000, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(714, 1419.41, 389.579, 19.3296, 0, 0, 0, 0, 'None', 35000, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(715, 772.841, 348.264, 20.1527, 0, 0, 0, 0, 'None', 35000, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(716, 758.839, 375.017, 23.3921, 0, 0, 0, 0, 'None', 36000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(717, 805.377, 358.444, 19.7621, 0, 0, 0, 0, 'None', 36000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(718, 746.463, 305.027, 20.2343, 0, 0, 0, 0, 'None', 34000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(719, 719.002, 300.683, 20.3765, 0, 0, 0, 0, 'None', 36000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(720, 748.133, 257.174, 27.0859, 0, 0, 0, 0, 'None', 36000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(721, 723.64, 269.611, 22.4531, 0, 0, 0, 0, 'None', 37000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(722, 705.483, 292.012, 20.4218, 0, 0, 0, 0, 'None', 31000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(723, 286.124, 41.2482, 2.5484, 0, 0, 0, 0, 'None', 36000, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(724, 309.216, 44.4058, 3.0879, 0, 0, 0, 0, 'None', 37000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(725, 342.534, 62.7402, 3.8609, 0, 0, 0, 0, 'None', 36000, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(726, 312.792, -92.3188, 3.5353, 0, 0, 0, 0, 'None', 150000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(727, 340.031, 33.7524, 6.4098, 0, 0, 0, 0, 'None', 36000, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(728, 312.79, -121.31, 3.5353, 0, 0, 0, 0, 'None', 140000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(729, 252.828, -92.4046, 3.5353, 0, 0, 0, 0, 'None', 150000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(730, 295.042, -54.6301, 2.7772, 0, 0, 0, 0, 'None', 140000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(731, 267.814, -54.6225, 2.7772, 0, 0, 0, 0, 'None', 130000, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(732, 743.349, -509.372, 18.0129, 0, 0, 0, 0, 'None', 212000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(733, 745.134, -556.713, 18.0129, 0, 0, 0, 0, 'None', 220000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(734, 768.363, -503.54, 18.0129, 0, 0, 0, 0, 'None', 214000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(735, 766.571, -556.704, 18.0129, 0, 0, 0, 0, 'None', 209000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(736, 795.269, -506.218, 18.0129, 0, 0, 0, 0, 'None', 198000, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(737, 818.344, -509.394, 18.0129, 0, 0, 0, 0, 'None', 230000, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(738, 745.61, -591.227, 18.0129, 0, 0, 0, 0, 'None', 215000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(739, 1549.27, 2125.44, 11.4609, 0, 0, 0, 0, 'None', 150000, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(740, 1550.2, 2096.49, 11.4609, 0, 0, 0, 0, 'None', 150000, 0, 12, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(741, 1554.42, 2074.11, 11.3593, 0, 0, 0, 0, 'None', 135000, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(742, 1596.48, 2147.53, 11.4609, 0, 0, 0, 0, 'None', 137000, 0, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(743, 1595.59, 2123.34, 11.4609, 0, 0, 0, 0, 'None', 141000, 0, 9, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(746, 1085.79, -2617.61, 4.04885, 0, 0, 0, 0, 'None', 200000000, 0, 100, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'null,null,null', 0, '0.0,0.0,0.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0),
(745, 829.249, -2154.88, 13.7315, 0, 0, 0, 0, 'None', 200000000, 0, 100, 0, 0, 2, 1, 1, 1, 0, 1842.82, 2182.83, 2011.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 14, 'null,null,null', 1, '1843.4,2175.3,2011.0', '0,0,0', '0,0,0', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `house_lodgers`
--

CREATE TABLE `house_lodgers` (
  `h_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `money_log`
--

CREATE TABLE `money_log` (
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `reason` varchar(144) CHARACTER SET cp1251 COLLATE cp1251_general_ci NOT NULL,
  `type` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `money_log`
--

INSERT INTO `money_log` (`user_id`, `amount`, `reason`, `type`, `date`) VALUES
(1003, 400000, '??????????? ($400000)', 0, '2024-09-20 07:41:24'),
(1003, 3000, '???????? Job ??before?Nick? ($402350)', 0, '2024-09-20 08:21:32'),
(1003, -5000, 'pOol Mahsol Az Shoma Kam Shod ($397350)', 0, '2024-09-21 15:44:11'),
(1003, -5000, 'pOol Mahsol Az Shoma Kam Shod ($392350)', 0, '2024-09-21 15:44:58'),
(1003, -5000, 'pOol Mahsol Az Shoma Kam Shod ($387350)', 0, '2024-09-21 15:44:59'),
(1003, -5000, 'pOol Mahsol Az Shoma Kam Shod ($382350)', 0, '2024-09-21 15:45:00'),
(1003, -5000, 'pOol Mahsol Az Shoma Kam Shod ($377250)', 0, '2024-09-21 15:55:17'),
(1003, -2000, '???? ? business? ($375100)', 0, '2024-09-22 02:59:52'),
(1003, -110000, '??????? Khane ($265100)', 0, '2024-09-22 03:01:03'),
(1006, 400000, 'registration ($400000)', 0, '2024-09-27 01:06:13'),
(1006, 9999, 'You are an Administrator. ($409958)', 0, '2024-09-27 01:36:22'),
(1006, 276447231, 'You are an Administrator. ($276857189)', 0, '2024-09-27 01:36:26'),
(1006, 276447231, 'You are an Administrator. ($553304420)', 0, '2024-09-27 01:36:33'),
(1006, 276447231, 'You are an Administrator. ($829751651)', 0, '2024-09-27 01:36:35'),
(1006, 276447231, 'You are an Administrator. ($1106198882)', 0, '2024-09-27 01:36:36'),
(1006, 276447231, 'You are an Administrator. ($1382646113)', 0, '2024-09-27 01:36:46'),
(1006, -500000, 'purchase of the business ($1382146113)', 0, '2024-09-27 01:37:08'),
(1006, 250000, 'sold the business to the government. ($1382396113)', 0, '2024-09-27 01:38:53'),
(1006, -400000, 'purchase of the business ($1381996113)', 0, '2024-09-27 01:39:01'),
(1006, -10000, 'License purchase. ($1381986063)', 0, '2024-09-27 03:52:33'),
(1006, -10000, 'License purchase. ($1381976063)', 0, '2024-09-27 03:52:49'),
(1006, -30000, 'License purchase. ($1381946063)', 0, '2024-09-27 03:52:53'),
(1006, 55000, 'sale of the House to the government ($1381999063)', 0, '2024-09-27 04:17:35'),
(1006, -1650000, 'purchase House ($1380349063)', 0, '2024-09-27 04:18:45'),
(1006, -8000, 'House upgrade 1 ($1380341063)', 0, '2024-09-27 04:19:24'),
(1006, -15000, 'Upgrade Khane 2 ($1380326063)', 0, '2024-09-27 04:19:31'),
(1006, -40000, 'Upgrade Khane 3 ($1380286063)', 0, '2024-09-27 04:19:53'),
(1006, -40000, 'Upgrade Khane 4 ($1380246063)', 0, '2024-09-27 04:20:00'),
(1006, -8000, 'LandHouse ($1380238063)', 0, '2024-09-27 04:22:19'),
(1006, 1000, 'salary Job before Nick ($1380239063)', 0, '2024-09-27 04:30:02'),
(1006, -5000, 'The pool product has decreased from you. ($1380233513)', 0, '2024-09-27 09:24:20'),
(1006, -50000, 'Purchase at the weapons store. ($1380183513)', 0, '2024-09-27 09:29:01'),
(1006, -50000, 'Purchase at the weapons store. ($1380133513)', 0, '2024-09-27 09:29:19'),
(1006, -50000, 'Purchase at the weapons store. ($1380083513)', 0, '2024-09-27 09:29:19'),
(1006, -50000, 'Purchase at the weapons store. ($1380033513)', 0, '2024-09-27 09:29:19'),
(1006, -50000, 'Purchase at the weapons store. ($1379983513)', 0, '2024-09-27 09:29:19'),
(1006, -50000, 'Purchase at the weapons store. ($1379933513)', 0, '2024-09-27 09:29:20'),
(1006, -50000, 'Purchase at the weapons store. ($1379883513)', 0, '2024-09-27 09:29:21'),
(1006, -50000, 'Purchase at the weapons store. ($1379833513)', 0, '2024-09-27 09:29:21'),
(1006, -50000, 'Purchase at the weapons store. ($1379783513)', 0, '2024-09-27 09:29:21'),
(1006, -50000, 'Purchase at the weapons store. ($1379733513)', 0, '2024-09-27 09:29:21'),
(1006, -50000, 'Purchase at the weapons store. ($1379683513)', 0, '2024-09-27 09:29:21'),
(1006, -50000, 'Purchase at the weapons store. ($1379633513)', 0, '2024-09-27 09:29:22'),
(1006, -50000, 'Purchase at the weapons store. ($1379583513)', 0, '2024-09-27 09:29:22'),
(1006, -50000, 'Purchase at the weapons store. ($1379533513)', 0, '2024-09-27 09:29:22'),
(1006, -50000, 'Purchase at the weapons store. ($1379483513)', 0, '2024-09-27 09:29:22'),
(1006, -50000, 'Purchase at the weapons store. ($1379433513)', 0, '2024-09-27 09:29:22'),
(1006, -50000, 'Purchase at the weapons store. ($1379383513)', 0, '2024-09-27 09:29:22'),
(1006, -50000, 'Purchase at the weapons store. ($1379333513)', 0, '2024-09-27 09:29:22'),
(1006, -50000, 'Purchase at the weapons store. ($1379283513)', 0, '2024-09-27 09:29:22'),
(1006, -50000, 'Purchase at the weapons store. ($1379233513)', 0, '2024-09-27 09:29:23'),
(1006, -50000, 'Purchase at the weapons store. ($1379183513)', 0, '2024-09-27 09:29:23'),
(1006, -50000, 'Purchase at the weapons store. ($1379133513)', 0, '2024-09-27 09:29:23'),
(1006, -50000, 'Purchase at the weapons store. ($1379083513)', 0, '2024-09-27 09:29:23'),
(1006, -50000, 'Purchase at the weapons store. ($1379033513)', 0, '2024-09-27 09:29:23'),
(1006, -50000, 'Purchase at the weapons store. ($1378983513)', 0, '2024-09-27 09:29:23'),
(1006, -50000, 'Purchase at the weapons store. ($1378933513)', 0, '2024-09-27 09:29:23'),
(1006, -50000, 'Purchase at the weapons store. ($1378883513)', 0, '2024-09-27 09:29:23'),
(1006, -50000, 'Purchase at the weapons store. ($1378833513)', 0, '2024-09-27 09:29:23'),
(1006, -50000, 'Purchase at the weapons store. ($1378783513)', 0, '2024-09-27 09:29:24'),
(1006, -50000, 'Purchase at the weapons store. ($1378733513)', 0, '2024-09-27 09:29:24'),
(1006, -50000, 'Purchase at the weapons store. ($1378683513)', 0, '2024-09-27 09:29:24'),
(1006, -50000, 'Purchase at the weapons store. ($1378633513)', 0, '2024-09-27 09:29:24'),
(1006, -50000, 'Purchase at the weapons store. ($1378583513)', 0, '2024-09-27 09:29:24'),
(1006, -50000, 'Purchase at the weapons store. ($1378533513)', 0, '2024-09-27 09:29:24'),
(1006, -50000, 'Purchase at the weapons store. ($1378483513)', 0, '2024-09-27 09:29:24'),
(1006, -50000, 'Purchase at the weapons store. ($1378433513)', 0, '2024-09-27 09:29:25'),
(1006, -50000, 'Purchase at the weapons store. ($1378383513)', 0, '2024-09-27 09:29:25'),
(1006, -50000, 'Purchase at the weapons store. ($1378333513)', 0, '2024-09-27 09:29:25'),
(1006, -50000, 'Purchase at the weapons store. ($1378283513)', 0, '2024-09-27 09:29:25'),
(1006, -50000, 'Purchase at the weapons store. ($1378233513)', 0, '2024-09-27 09:29:25'),
(1006, -50000, 'Purchase at the weapons store. ($1378183513)', 0, '2024-09-27 09:29:25'),
(1006, -50000, 'Purchase at the weapons store. ($1378133513)', 0, '2024-09-27 09:29:25'),
(1006, -50000, 'Purchase at the weapons store. ($1378083513)', 0, '2024-09-27 09:29:26'),
(1006, -50000, 'Purchase at the weapons store. ($1378033513)', 0, '2024-09-27 09:29:26'),
(1006, -50000, 'Purchase at the weapons store. ($1377983513)', 0, '2024-09-27 09:29:26'),
(1006, -50000, 'Purchase at the weapons store. ($1377933513)', 0, '2024-09-27 09:29:26'),
(1006, -50000, 'Purchase at the weapons store. ($1377883513)', 0, '2024-09-27 09:29:27'),
(1006, -50000, 'Purchase at the weapons store. ($1377833513)', 0, '2024-09-27 09:29:27'),
(1006, -50000, 'Purchase at the weapons store. ($1377783513)', 0, '2024-09-27 09:29:27'),
(1006, -50000, 'Purchase at the weapons store. ($1377733513)', 0, '2024-09-27 09:29:27'),
(1006, -50000, 'Purchase at the weapons store. ($1377683513)', 0, '2024-09-27 09:29:27'),
(1006, -50000, 'Purchase at the weapons store. ($1377633513)', 0, '2024-09-27 09:29:27'),
(1006, -50000, 'Purchase at the weapons store. ($1377583513)', 0, '2024-09-27 09:29:28'),
(1006, -50000, 'Purchase at the weapons store. ($1377533513)', 0, '2024-09-27 09:29:28'),
(1006, -50000, 'Purchase at the weapons store. ($1377483513)', 0, '2024-09-27 09:29:28'),
(1006, -50000, 'Purchase at the weapons store. ($1377433513)', 0, '2024-09-27 09:29:28'),
(1006, -50000, 'Purchase at the weapons store. ($1377383513)', 0, '2024-09-27 09:29:28'),
(1006, -50000, 'Purchase at the weapons store. ($1377333513)', 0, '2024-09-27 09:29:29'),
(1006, -50000, 'Purchase at the weapons store. ($1377283513)', 0, '2024-09-27 09:29:29'),
(1006, -50000, 'Purchase at the weapons store. ($1377233513)', 0, '2024-09-27 09:29:29'),
(1006, -50000, 'Purchase at the weapons store. ($1377183513)', 0, '2024-09-27 09:29:29'),
(1006, -50000, 'Purchase at the weapons store. ($1377133513)', 0, '2024-09-27 09:29:29'),
(1006, -50000, 'Purchase at the weapons store. ($1377083513)', 0, '2024-09-27 09:29:29'),
(1006, -50000, 'Purchase at the weapons store. ($1377033513)', 0, '2024-09-27 09:29:29'),
(1006, -50000, 'Purchase at the weapons store. ($1376983513)', 0, '2024-09-27 09:29:29'),
(1006, -50000, 'Purchase at the weapons store. ($1376933513)', 0, '2024-09-27 09:29:29'),
(1006, -50000, 'Purchase at the weapons store. ($1376883513)', 0, '2024-09-27 09:29:30'),
(1006, -50000, 'Purchase at the weapons store. ($1376833513)', 0, '2024-09-27 09:29:30'),
(1006, -50000, 'Purchase at the weapons store. ($1376783513)', 0, '2024-09-27 09:29:30'),
(1006, -50000, 'Purchase at the weapons store. ($1376733513)', 0, '2024-09-27 09:29:30'),
(1006, -50000, 'Purchase at the weapons store. ($1376683513)', 0, '2024-09-27 09:29:30'),
(1006, -50000, 'Purchase at the weapons store. ($1376633513)', 0, '2024-09-27 09:29:30'),
(1006, -50000, 'Purchase at the weapons store. ($1376583513)', 0, '2024-09-27 09:29:30'),
(1006, -50000, 'Purchase at the weapons store. ($1376533513)', 0, '2024-09-27 09:29:31'),
(1006, -50000, 'Purchase at the weapons store. ($1376483513)', 0, '2024-09-27 09:29:31'),
(1006, -50000, 'Purchase at the weapons store. ($1376433513)', 0, '2024-09-27 09:29:31'),
(1006, -50000, 'Purchase at the weapons store. ($1376383513)', 0, '2024-09-27 09:29:31'),
(1006, -50000, 'Purchase at the weapons store. ($1376333513)', 0, '2024-09-27 09:29:32'),
(1006, -50000, 'Purchase at the weapons store. ($1376283513)', 0, '2024-09-27 09:29:32'),
(1006, -50000, 'Purchase at the weapons store. ($1376233513)', 0, '2024-09-27 09:29:32'),
(1006, -50000, 'Purchase at the weapons store. ($1376183513)', 0, '2024-09-27 09:29:32'),
(1006, -50000, 'Purchase at the weapons store. ($1376133513)', 0, '2024-09-27 09:29:33'),
(1006, -50000, 'Purchase at the weapons store. ($1376083513)', 0, '2024-09-27 09:29:33'),
(1006, -50000, 'Purchase at the weapons store. ($1376033513)', 0, '2024-09-27 09:29:33'),
(1006, -50000, 'Purchase at the weapons store. ($1375983513)', 0, '2024-09-27 09:29:33'),
(1006, -50000, 'Purchase at the weapons store. ($1375933513)', 0, '2024-09-27 09:29:33'),
(1006, -50000, 'Purchase at the weapons store. ($1375883513)', 0, '2024-09-27 09:29:33'),
(1006, -50000, 'Purchase at the weapons store. ($1375833513)', 0, '2024-09-27 09:29:33'),
(1006, -50000, 'Purchase at the weapons store. ($1375783513)', 0, '2024-09-27 09:29:33'),
(1006, -50000, 'Purchase at the weapons store. ($1375733513)', 0, '2024-09-27 09:29:33'),
(1006, -50000, 'Purchase at the weapons store. ($1375683513)', 0, '2024-09-27 09:29:34'),
(1006, -50000, 'Purchase at the weapons store. ($1375633513)', 0, '2024-09-27 09:29:34'),
(1006, -50000, 'Purchase at the weapons store. ($1375583513)', 0, '2024-09-27 09:29:34'),
(1006, -50000, 'Purchase at the weapons store. ($1375533513)', 0, '2024-09-27 09:29:34'),
(1006, -50000, 'Purchase at the weapons store. ($1375483513)', 0, '2024-09-27 09:29:34'),
(1006, -50000, 'Purchase at the weapons store. ($1375433513)', 0, '2024-09-27 09:29:34'),
(1006, -50000, 'Purchase at the weapons store. ($1375383513)', 0, '2024-09-27 09:29:34'),
(1006, -50000, 'Purchase at the weapons store. ($1375333513)', 0, '2024-09-27 09:29:34'),
(1006, -50000, 'Purchase at the weapons store. ($1375283513)', 0, '2024-09-27 09:29:34'),
(1006, -50000, 'Purchase at the weapons store. ($1375233513)', 0, '2024-09-27 09:29:35'),
(1006, -50000, 'Purchase at the weapons store. ($1375183513)', 0, '2024-09-27 09:29:35'),
(1006, -50000, 'Purchase at the weapons store. ($1375133513)', 0, '2024-09-27 09:29:35'),
(1006, -50000, 'Purchase at the weapons store. ($1375083513)', 0, '2024-09-27 09:29:35'),
(1006, -50000, 'Purchase at the weapons store. ($1375033513)', 0, '2024-09-27 09:29:35'),
(1006, -50000, 'Purchase at the weapons store. ($1374983513)', 0, '2024-09-27 09:29:35'),
(1006, -50000, 'Purchase at the weapons store. ($1374933513)', 0, '2024-09-27 09:29:35'),
(1006, -50000, 'Purchase at the weapons store. ($1374883513)', 0, '2024-09-27 09:29:36'),
(1006, -50000, 'Purchase at the weapons store. ($1374833513)', 0, '2024-09-27 09:29:36'),
(1006, -50000, 'Purchase at the weapons store. ($1374783513)', 0, '2024-09-27 09:29:36'),
(1006, -50000, 'Purchase at the weapons store. ($1374733513)', 0, '2024-09-27 09:29:36'),
(1006, -50000, 'Purchase at the weapons store. ($1374683513)', 0, '2024-09-27 09:29:36'),
(1006, -50000, 'Purchase at the weapons store. ($1374633513)', 0, '2024-09-27 09:29:37'),
(1006, -50000, 'Purchase at the weapons store. ($1374583513)', 0, '2024-09-27 09:29:37'),
(1006, -50000, 'Purchase at the weapons store. ($1374533513)', 0, '2024-09-27 09:29:37'),
(1006, -50000, 'Purchase at the weapons store. ($1374483513)', 0, '2024-09-27 09:29:37'),
(1006, -50000, 'Purchase at the weapons store. ($1374433513)', 0, '2024-09-27 09:29:37'),
(1006, -50000, 'Purchase at the weapons store. ($1374383513)', 0, '2024-09-27 09:29:37'),
(1006, -50000, 'Purchase at the weapons store. ($1374333513)', 0, '2024-09-27 09:29:37'),
(1006, -50000, 'Purchase at the weapons store. ($1374283513)', 0, '2024-09-27 09:29:38'),
(1006, -50000, 'Purchase at the weapons store. ($1374233513)', 0, '2024-09-27 09:29:38'),
(1006, -50000, 'Purchase at the weapons store. ($1374183513)', 0, '2024-09-27 09:29:38'),
(1006, -50000, 'Purchase at the weapons store. ($1374133513)', 0, '2024-09-27 09:29:38'),
(1006, -50000, 'Purchase at the weapons store. ($1374083513)', 0, '2024-09-27 09:29:38'),
(1006, -50000, 'Purchase at the weapons store. ($1374033513)', 0, '2024-09-27 09:29:38'),
(1006, -50000, 'Purchase at the weapons store. ($1373983513)', 0, '2024-09-27 09:29:38'),
(1006, -50000, 'Purchase at the weapons store. ($1373933513)', 0, '2024-09-27 09:29:39'),
(1006, -50000, 'Purchase at the weapons store. ($1373883513)', 0, '2024-09-27 09:29:39'),
(1006, -50000, 'Purchase at the weapons store. ($1373833513)', 0, '2024-09-27 09:29:39'),
(1006, -50000, 'Purchase at the weapons store. ($1373783513)', 0, '2024-09-27 09:29:40'),
(1006, -50000, 'Purchase at the weapons store. ($1373733513)', 0, '2024-09-27 09:29:40'),
(1006, -50000, 'Purchase at the weapons store. ($1373683513)', 0, '2024-09-27 09:29:40'),
(1006, -50000, 'Purchase at the weapons store. ($1373633513)', 0, '2024-09-27 09:29:40'),
(1006, -50000, 'Purchase at the weapons store. ($1373583513)', 0, '2024-09-27 09:29:40'),
(1006, -50000, 'Purchase at the weapons store. ($1373533513)', 0, '2024-09-27 09:29:40'),
(1006, -50000, 'Purchase at the weapons store. ($1373483513)', 0, '2024-09-27 09:29:40'),
(1006, -50000, 'Purchase at the weapons store. ($1373433513)', 0, '2024-09-27 09:29:40'),
(1006, -50000, 'Purchase at the weapons store. ($1373383513)', 0, '2024-09-27 09:29:40'),
(1006, -50000, 'Purchase at the weapons store. ($1373333513)', 0, '2024-09-27 09:29:40'),
(1006, -50000, 'Purchase at the weapons store. ($1373283513)', 0, '2024-09-27 09:29:41'),
(1006, -50000, 'Purchase at the weapons store. ($1373233513)', 0, '2024-09-27 09:29:41'),
(1006, -50000, 'Purchase at the weapons store. ($1373183513)', 0, '2024-09-27 09:29:41'),
(1006, -50000, 'Purchase at the weapons store. ($1373133513)', 0, '2024-09-27 09:29:41'),
(1006, -50000, 'Purchase at the weapons store. ($1373083513)', 0, '2024-09-27 09:29:42'),
(1006, -50000, 'Purchase at the weapons store. ($1373033513)', 0, '2024-09-27 09:29:42'),
(1006, -50000, 'Purchase at the weapons store. ($1372983513)', 0, '2024-09-27 09:29:42'),
(1006, -50000, 'Purchase at the weapons store. ($1372933513)', 0, '2024-09-27 09:29:42'),
(1006, -50000, 'Purchase at the weapons store. ($1372883513)', 0, '2024-09-27 09:29:43'),
(1006, -50000, 'Purchase at the weapons store. ($1372833513)', 0, '2024-09-27 09:29:43'),
(1006, -50000, 'Purchase at the weapons store. ($1372783513)', 0, '2024-09-27 09:29:43'),
(1006, -50000, 'Purchase at the weapons store. ($1372733513)', 0, '2024-09-27 09:29:43'),
(1006, -50000, 'Purchase at the weapons store. ($1372683513)', 0, '2024-09-27 09:29:43'),
(1006, -50000, 'Purchase at the weapons store. ($1372633513)', 0, '2024-09-27 09:29:44'),
(1006, -50000, 'Purchase at the weapons store. ($1372583513)', 0, '2024-09-27 09:29:44'),
(1006, -50000, 'Purchase at the weapons store. ($1372533513)', 0, '2024-09-27 09:29:44'),
(1006, -50000, 'Purchase at the weapons store. ($1372483513)', 0, '2024-09-27 09:29:44'),
(1006, -50000, 'Purchase at the weapons store. ($1372433513)', 0, '2024-09-27 09:29:45'),
(1006, -50000, 'Purchase at the weapons store. ($1372383513)', 0, '2024-09-27 09:29:45'),
(1006, -50000, 'Purchase at the weapons store. ($1372333513)', 0, '2024-09-27 09:29:45'),
(1006, -50000, 'Purchase at the weapons store. ($1372283513)', 0, '2024-09-27 09:29:45'),
(1006, -50000, 'Purchase at the weapons store. ($1372233513)', 0, '2024-09-27 09:29:45'),
(1006, -50000, 'Purchase at the weapons store. ($1372183513)', 0, '2024-09-27 09:29:45'),
(1006, -50000, 'Purchase at the weapons store. ($1372133513)', 0, '2024-09-27 09:29:46'),
(1006, -50000, 'Purchase at the weapons store. ($1372083513)', 0, '2024-09-27 09:29:46'),
(1006, -50000, 'Purchase at the weapons store. ($1372033513)', 0, '2024-09-27 09:29:46'),
(1006, -50000, 'Purchase at the weapons store. ($1371983513)', 0, '2024-09-27 09:29:46'),
(1006, -50000, 'Purchase at the weapons store. ($1371933513)', 0, '2024-09-27 09:29:46'),
(1006, -50000, 'Purchase at the weapons store. ($1371883513)', 0, '2024-09-27 09:29:47'),
(1006, -50000, 'Purchase at the weapons store. ($1371833513)', 0, '2024-09-27 09:29:47'),
(1006, -50000, 'Purchase at the weapons store. ($1371783513)', 0, '2024-09-27 09:29:48'),
(1006, -50000, 'Purchase at the weapons store. ($1371733513)', 0, '2024-09-27 09:29:48'),
(1006, -50000, 'Purchase at the weapons store. ($1371683513)', 0, '2024-09-27 09:29:48'),
(1006, -50000, 'Purchase at the weapons store. ($1371633513)', 0, '2024-09-27 09:29:48'),
(1006, -50000, 'Purchase at the weapons store. ($1371583513)', 0, '2024-09-27 09:29:48'),
(1006, -50000, 'Purchase at the weapons store. ($1371533513)', 0, '2024-09-27 09:29:49'),
(1006, -50000, 'Purchase at the weapons store. ($1371483513)', 0, '2024-09-27 09:29:49'),
(1006, -50000, 'Purchase at the weapons store. ($1371433513)', 0, '2024-09-27 09:29:49'),
(1006, -50000, 'Purchase at the weapons store. ($1371383513)', 0, '2024-09-27 09:29:49'),
(1006, -50000, 'Purchase at the weapons store. ($1371333513)', 0, '2024-09-27 09:29:50'),
(1006, -50000, 'Purchase at the weapons store. ($1371283513)', 0, '2024-09-27 09:29:50'),
(1006, -50000, 'Purchase at the weapons store. ($1371233513)', 0, '2024-09-27 09:29:50'),
(1006, -50000, 'Purchase at the weapons store. ($1371183513)', 0, '2024-09-27 09:29:50'),
(1006, -50000, 'Purchase at the weapons store. ($1371133513)', 0, '2024-09-27 09:29:50'),
(1006, -50000, 'Purchase at the weapons store. ($1371083513)', 0, '2024-09-27 09:29:50'),
(1006, -50000, 'Purchase at the weapons store. ($1371033513)', 0, '2024-09-27 09:29:51'),
(1006, -50000, 'Purchase at the weapons store. ($1370983513)', 0, '2024-09-27 09:29:51'),
(1006, -50000, 'Purchase at the weapons store. ($1370933513)', 0, '2024-09-27 09:29:51'),
(1006, -50000, 'Purchase at the weapons store. ($1370883513)', 0, '2024-09-27 09:29:51'),
(1006, -50000, 'Purchase at the weapons store. ($1370833513)', 0, '2024-09-27 09:29:51'),
(1006, -50000, 'Purchase at the weapons store. ($1370783513)', 0, '2024-09-27 09:29:51'),
(1006, -50000, 'Purchase at the weapons store. ($1370733513)', 0, '2024-09-27 09:29:52'),
(1006, -50000, 'Purchase at the weapons store. ($1370683513)', 0, '2024-09-27 09:29:52'),
(1006, -50000, 'Purchase at the weapons store. ($1370633513)', 0, '2024-09-27 09:29:52'),
(1006, -50000, 'Purchase at the weapons store. ($1370583513)', 0, '2024-09-27 09:29:52'),
(1006, -50000, 'Purchase at the weapons store. ($1370533513)', 0, '2024-09-27 09:29:52'),
(1006, -50000, 'Purchase at the weapons store. ($1370483513)', 0, '2024-09-27 09:29:52'),
(1006, -50000, 'Purchase at the weapons store. ($1370433513)', 0, '2024-09-27 09:29:53'),
(1006, -50000, 'Purchase at the weapons store. ($1370383513)', 0, '2024-09-27 09:29:53'),
(1006, -50000, 'Purchase at the weapons store. ($1370333513)', 0, '2024-09-27 09:29:53'),
(1006, -50000, 'Purchase at the weapons store. ($1370283513)', 0, '2024-09-27 09:29:54'),
(1006, -50000, 'Purchase at the weapons store. ($1370233513)', 0, '2024-09-27 09:29:54'),
(1006, -50000, 'Purchase at the weapons store. ($1370183513)', 0, '2024-09-27 09:29:54'),
(1006, -50000, 'Purchase at the weapons store. ($1370133513)', 0, '2024-09-27 09:29:54'),
(1006, -50000, 'Purchase at the weapons store. ($1370083513)', 0, '2024-09-27 09:29:54'),
(1006, -50000, 'Purchase at the weapons store. ($1370033513)', 0, '2024-09-27 09:29:54'),
(1006, -50000, 'Purchase at the weapons store. ($1369983513)', 0, '2024-09-27 09:29:55'),
(1006, -50000, 'Purchase at the weapons store. ($1369933513)', 0, '2024-09-27 09:29:55'),
(1006, -50000, 'Purchase at the weapons store. ($1369883513)', 0, '2024-09-27 09:29:55'),
(1006, -50000, 'Purchase at the weapons store. ($1369833513)', 0, '2024-09-27 09:29:55'),
(1006, -50000, 'Purchase at the weapons store. ($1369783513)', 0, '2024-09-27 09:29:55'),
(1006, -50000, 'Purchase at the weapons store. ($1369733513)', 0, '2024-09-27 09:29:55'),
(1006, -50000, 'Purchase at the weapons store. ($1369683513)', 0, '2024-09-27 09:29:56'),
(1006, -50000, 'Purchase at the weapons store. ($1369633513)', 0, '2024-09-27 09:29:56'),
(1006, -50000, 'Purchase at the weapons store. ($1369583513)', 0, '2024-09-27 09:29:56'),
(1006, -50000, 'Purchase at the weapons store. ($1369533513)', 0, '2024-09-27 09:29:56'),
(1006, -50000, 'Purchase at the weapons store. ($1369483513)', 0, '2024-09-27 09:29:57'),
(1006, -50000, 'Purchase at the weapons store. ($1369433513)', 0, '2024-09-27 09:29:57'),
(1006, -50000, 'Purchase at the weapons store. ($1369383513)', 0, '2024-09-27 09:29:57'),
(1006, -50000, 'Purchase at the weapons store. ($1369333513)', 0, '2024-09-27 09:29:57'),
(1006, -50000, 'Purchase at the weapons store. ($1369283513)', 0, '2024-09-27 09:29:57'),
(1006, -50000, 'Purchase at the weapons store. ($1369233513)', 0, '2024-09-27 09:29:57'),
(1006, -50000, 'Purchase at the weapons store. ($1369183513)', 0, '2024-09-27 09:29:57'),
(1006, -50000, 'Purchase at the weapons store. ($1369133513)', 0, '2024-09-27 09:29:58'),
(1006, -50000, 'Purchase at the weapons store. ($1369083513)', 0, '2024-09-27 09:29:58'),
(1006, -50000, 'Purchase at the weapons store. ($1369033513)', 0, '2024-09-27 09:29:58'),
(1006, -50000, 'Purchase at the weapons store. ($1368983513)', 0, '2024-09-27 09:29:58'),
(1006, -50000, 'Purchase at the weapons store. ($1368933513)', 0, '2024-09-27 09:29:58'),
(1006, -50000, 'Purchase at the weapons store. ($1368883513)', 0, '2024-09-27 09:29:58'),
(1006, -50000, 'Purchase at the weapons store. ($1368833513)', 0, '2024-09-27 09:29:58'),
(1006, -50000, 'Purchase at the weapons store. ($1368783513)', 0, '2024-09-27 09:29:59'),
(1006, -50000, 'Purchase at the weapons store. ($1368733513)', 0, '2024-09-27 09:29:59'),
(1006, -50000, 'Purchase at the weapons store. ($1368683513)', 0, '2024-09-27 09:29:59'),
(1006, -50000, 'Purchase at the weapons store. ($1368633513)', 0, '2024-09-27 09:29:59'),
(1006, -50000, 'Purchase at the weapons store. ($1368583513)', 0, '2024-09-27 09:30:00'),
(1006, -50000, 'Purchase at the weapons store. ($1368533513)', 0, '2024-09-27 09:30:00'),
(1006, -50000, 'Purchase at the weapons store. ($1368483513)', 0, '2024-09-27 09:30:00'),
(1006, -50000, 'Purchase at the weapons store. ($1368433513)', 0, '2024-09-27 09:30:00'),
(1006, -50000, 'Purchase at the weapons store. ($1368383513)', 0, '2024-09-27 09:30:01'),
(1006, -50000, 'Purchase at the weapons store. ($1368333513)', 0, '2024-09-27 09:30:01'),
(1006, -50000, 'Purchase at the weapons store. ($1368283513)', 0, '2024-09-27 09:30:02'),
(1006, -50000, 'Purchase at the weapons store. ($1368233513)', 0, '2024-09-27 09:30:02'),
(1006, -50000, 'Purchase at the weapons store. ($1368183513)', 0, '2024-09-27 09:30:02'),
(1006, -50000, 'Purchase at the weapons store. ($1368133513)', 0, '2024-09-27 09:30:03'),
(1006, -50000, 'Purchase at the weapons store. ($1368083513)', 0, '2024-09-27 09:30:03'),
(1006, -50000, 'Purchase at the weapons store. ($1368033513)', 0, '2024-09-27 09:30:03'),
(1006, -50000, 'Purchase at the weapons store. ($1367983513)', 0, '2024-09-27 09:30:03'),
(1006, -50000, 'Purchase at the weapons store. ($1367933513)', 0, '2024-09-27 09:30:03'),
(1006, -50000, 'Purchase at the weapons store. ($1367883513)', 0, '2024-09-27 09:30:03'),
(1006, -50000, 'Purchase at the weapons store. ($1367833513)', 0, '2024-09-27 09:30:04'),
(1006, -50000, 'Purchase at the weapons store. ($1367783513)', 0, '2024-09-27 09:30:04'),
(1006, -50000, 'Purchase at the weapons store. ($1367733513)', 0, '2024-09-27 09:30:04'),
(1006, -50000, 'Purchase at the weapons store. ($1367683513)', 0, '2024-09-27 09:30:04'),
(1006, -50000, 'Purchase at the weapons store. ($1367633513)', 0, '2024-09-27 09:30:04'),
(1006, -50000, 'Purchase at the weapons store. ($1367583513)', 0, '2024-09-27 09:30:05'),
(1006, -50000, 'Purchase at the weapons store. ($1367533513)', 0, '2024-09-27 09:30:05'),
(1006, -50000, 'Purchase at the weapons store. ($1367483513)', 0, '2024-09-27 09:30:05'),
(1006, -50000, 'Purchase at the weapons store. ($1367433513)', 0, '2024-09-27 09:30:05'),
(1006, -50000, 'Purchase at the weapons store. ($1367383513)', 0, '2024-09-27 09:30:06'),
(1006, -50000, 'Purchase at the weapons store. ($1367333513)', 0, '2024-09-27 09:30:06'),
(1006, -50000, 'Purchase at the weapons store. ($1367283513)', 0, '2024-09-27 09:30:06'),
(1006, -50000, 'Purchase at the weapons store. ($1367233513)', 0, '2024-09-27 09:30:06'),
(1006, -50000, 'Purchase at the weapons store. ($1367183513)', 0, '2024-09-27 09:30:06'),
(1006, -50000, 'Purchase at the weapons store. ($1367133513)', 0, '2024-09-27 09:30:06'),
(1006, -50000, 'Purchase at the weapons store. ($1367083513)', 0, '2024-09-27 09:30:07'),
(1006, -50000, 'Purchase at the weapons store. ($1367033513)', 0, '2024-09-27 09:30:07'),
(1006, -50000, 'Purchase at the weapons store. ($1366983513)', 0, '2024-09-27 09:30:07'),
(1006, -50000, 'Purchase at the weapons store. ($1366933513)', 0, '2024-09-27 09:30:08'),
(1006, -50000, 'Purchase at the weapons store. ($1366883513)', 0, '2024-09-27 09:30:08'),
(1006, -50000, 'Purchase at the weapons store. ($1366833513)', 0, '2024-09-27 09:30:08'),
(1006, -50000, 'Purchase at the weapons store. ($1366783513)', 0, '2024-09-27 09:30:09'),
(1006, -50000, 'Purchase at the weapons store. ($1366733513)', 0, '2024-09-27 09:30:09'),
(1006, -50000, 'Purchase at the weapons store. ($1366683513)', 0, '2024-09-27 09:30:09'),
(1006, -50000, 'Purchase at the weapons store. ($1366633513)', 0, '2024-09-27 09:30:09'),
(1006, -50000, 'Purchase at the weapons store. ($1366583513)', 0, '2024-09-27 09:30:09'),
(1006, -50000, 'Purchase at the weapons store. ($1366533513)', 0, '2024-09-27 09:30:10'),
(1006, -50000, 'Purchase at the weapons store. ($1366483513)', 0, '2024-09-27 09:30:10'),
(1006, -50000, 'Purchase at the weapons store. ($1366433513)', 0, '2024-09-27 09:30:10'),
(1006, -50000, 'Purchase at the weapons store. ($1366383513)', 0, '2024-09-27 09:30:10'),
(1006, -50000, 'Purchase at the weapons store. ($1366333513)', 0, '2024-09-27 09:30:10'),
(1006, -50000, 'Purchase at the weapons store. ($1366283513)', 0, '2024-09-27 09:30:10'),
(1006, -50000, 'Purchase at the weapons store. ($1366233513)', 0, '2024-09-27 09:30:10'),
(1006, -50000, 'Purchase at the weapons store. ($1366183513)', 0, '2024-09-27 09:30:11'),
(1006, -50000, 'Purchase at the weapons store. ($1366133513)', 0, '2024-09-27 09:30:11'),
(1006, -50000, 'Purchase at the weapons store. ($1366083513)', 0, '2024-09-27 09:30:11'),
(1006, -50000, 'Purchase at the weapons store. ($1366033513)', 0, '2024-09-27 09:30:11'),
(1006, -50000, 'Purchase at the weapons store. ($1365983513)', 0, '2024-09-27 09:30:11'),
(1006, -50000, 'Purchase at the weapons store. ($1365933513)', 0, '2024-09-27 09:30:11'),
(1006, -50000, 'Purchase at the weapons store. ($1365883513)', 0, '2024-09-27 09:30:12'),
(1006, -50000, 'Purchase at the weapons store. ($1365833513)', 0, '2024-09-27 09:30:12'),
(1006, -50000, 'Purchase at the weapons store. ($1365783513)', 0, '2024-09-27 09:30:12'),
(1006, -50000, 'Purchase at the weapons store. ($1365733513)', 0, '2024-09-27 09:30:12'),
(1006, -50000, 'Purchase at the weapons store. ($1365683513)', 0, '2024-09-27 09:30:12'),
(1006, -50000, 'Purchase at the weapons store. ($1365633513)', 0, '2024-09-27 09:30:12'),
(1006, -50000, 'Purchase at the weapons store. ($1365583513)', 0, '2024-09-27 09:30:13'),
(1006, -50000, 'Purchase at the weapons store. ($1365533513)', 0, '2024-09-27 09:30:13'),
(1006, -50000, 'Purchase at the weapons store. ($1365483513)', 0, '2024-09-27 09:30:13'),
(1006, -50000, 'Purchase at the weapons store. ($1365433513)', 0, '2024-09-27 09:30:13'),
(1006, -50000, 'Purchase at the weapons store. ($1365383513)', 0, '2024-09-27 09:30:14'),
(1006, -50000, 'Purchase at the weapons store. ($1365333513)', 0, '2024-09-27 09:30:14'),
(1006, -50000, 'Purchase at the weapons store. ($1365283513)', 0, '2024-09-27 09:30:14'),
(1006, -50000, 'Purchase at the weapons store. ($1365233513)', 0, '2024-09-27 09:30:14'),
(1006, -50000, 'Purchase at the weapons store. ($1365183513)', 0, '2024-09-27 09:30:14'),
(1006, -50000, 'Purchase at the weapons store. ($1365133513)', 0, '2024-09-27 09:30:14'),
(1006, -50000, 'Purchase at the weapons store. ($1365083513)', 0, '2024-09-27 09:30:14'),
(1006, -50000, 'Purchase at the weapons store. ($1365033513)', 0, '2024-09-27 09:30:15'),
(1006, -50000, 'Purchase at the weapons store. ($1364983513)', 0, '2024-09-27 09:30:15'),
(1006, -50000, 'Purchase at the weapons store. ($1364933513)', 0, '2024-09-27 09:30:15'),
(1006, -50000, 'Purchase at the weapons store. ($1364883513)', 0, '2024-09-27 09:30:15'),
(1006, -50000, 'Purchase at the weapons store. ($1364833513)', 0, '2024-09-27 09:30:15'),
(1006, -50000, 'Purchase at the weapons store. ($1364783513)', 0, '2024-09-27 09:30:15'),
(1006, -50000, 'Purchase at the weapons store. ($1364733513)', 0, '2024-09-27 09:30:16'),
(1006, -50000, 'Purchase at the weapons store. ($1364683513)', 0, '2024-09-27 09:30:16'),
(1006, -50000, 'Purchase at the weapons store. ($1364633513)', 0, '2024-09-27 09:30:16'),
(1006, -50000, 'Purchase at the weapons store. ($1364583513)', 0, '2024-09-27 09:30:17'),
(1006, -50000, 'Purchase at the weapons store. ($1364533513)', 0, '2024-09-27 09:30:17'),
(1006, -50000, 'Purchase at the weapons store. ($1364483513)', 0, '2024-09-27 09:30:17'),
(1006, -50000, 'Purchase at the weapons store. ($1364433513)', 0, '2024-09-27 09:30:17'),
(1006, -50000, 'Purchase at the weapons store. ($1364383513)', 0, '2024-09-27 09:30:17'),
(1006, -50000, 'Purchase at the weapons store. ($1364333513)', 0, '2024-09-27 09:30:17'),
(1006, -50000, 'Purchase at the weapons store. ($1364283513)', 0, '2024-09-27 09:30:17'),
(1006, -50000, 'Purchase at the weapons store. ($1364233513)', 0, '2024-09-27 09:30:18'),
(1006, -50000, 'Purchase at the weapons store. ($1364183513)', 0, '2024-09-27 09:30:18'),
(1006, -50000, 'Purchase at the weapons store. ($1364133513)', 0, '2024-09-27 09:30:18'),
(1006, -50000, 'Purchase at the weapons store. ($1364083513)', 0, '2024-09-27 09:30:18'),
(1006, -50000, 'Purchase at the weapons store. ($1364033513)', 0, '2024-09-27 09:30:18'),
(1006, -50000, 'Purchase at the weapons store. ($1363983513)', 0, '2024-09-27 09:30:19'),
(1006, -50000, 'Purchase at the weapons store. ($1363933513)', 0, '2024-09-27 09:30:19'),
(1006, -50000, 'Purchase at the weapons store. ($1363883513)', 0, '2024-09-27 09:43:02'),
(1006, -50000, 'Purchase at the weapons store. ($1363833513)', 0, '2024-09-27 09:43:03'),
(1006, -50000, 'Purchase at the weapons store. ($1363783513)', 0, '2024-09-27 09:43:04'),
(1006, -50000, 'Purchase at the weapons store. ($1363733513)', 0, '2024-09-27 09:43:04'),
(1006, -50000, 'Purchase at the weapons store. ($1363683513)', 0, '2024-09-27 09:43:04'),
(1006, -50000, 'Purchase at the weapons store. ($1363633513)', 0, '2024-09-27 09:43:04'),
(1006, -50000, 'Purchase at the weapons store. ($1363583513)', 0, '2024-09-27 09:43:05'),
(1006, -50000, 'Purchase at the weapons store. ($1363533513)', 0, '2024-09-27 09:43:05'),
(1006, -50000, 'Purchase at the weapons store. ($1363483513)', 0, '2024-09-27 09:43:05'),
(1006, -50000, 'Purchase at the weapons store. ($1363433513)', 0, '2024-09-27 09:43:05'),
(1006, -50000, 'Purchase at the weapons store. ($1363383513)', 0, '2024-09-27 09:43:05'),
(1006, -50000, 'Purchase at the weapons store. ($1363333513)', 0, '2024-09-27 09:43:05'),
(1006, -50000, 'Purchase at the weapons store. ($1363283513)', 0, '2024-09-27 09:43:06'),
(1006, -50000, 'Purchase at the weapons store. ($1363233513)', 0, '2024-09-27 09:43:06'),
(1006, -50000, 'Purchase at the weapons store. ($1363183513)', 0, '2024-09-27 09:43:06'),
(1006, -50000, 'Purchase at the weapons store. ($1363133513)', 0, '2024-09-27 09:43:06'),
(1006, -50000, 'Purchase at the weapons store. ($1363083513)', 0, '2024-09-27 09:43:07'),
(1006, -50000, 'Purchase at the weapons store. ($1363033513)', 0, '2024-09-27 09:43:07'),
(1006, -50000, 'Purchase at the weapons store. ($1362983513)', 0, '2024-09-27 09:43:07'),
(1006, -50000, 'Purchase at the weapons store. ($1362933513)', 0, '2024-09-27 09:43:07'),
(1006, -50000, 'Purchase at the weapons store. ($1362883513)', 0, '2024-09-27 09:43:08'),
(1006, -50000, 'Purchase at the weapons store. ($1362833513)', 0, '2024-09-27 09:43:08'),
(1006, -50000, 'Purchase at the weapons store. ($1362783513)', 0, '2024-09-27 09:43:08'),
(1006, -50000, 'Purchase at the weapons store. ($1362733513)', 0, '2024-09-27 09:43:08'),
(1006, 200000, 'sold the business to the government. ($1362933513)', 0, '2024-09-27 09:44:31'),
(1006, -6000000, 'purchase of the business ($1356933513)', 0, '2024-09-27 09:45:18'),
(1006, -13200, 'Payment for the house ($1356919763)', 0, '2024-09-27 10:29:32'),
(1006, -3300, 'payment for business ($1356916463)', 0, '2024-09-27 10:29:43'),
(1006, -1500, 'payment for business ($1356914963)', 0, '2024-09-27 10:29:54'),
(1006, -5000, 'Entering business. ($1356909963)', 0, '2024-09-27 10:32:40'),
(1006, -1000, '[mechanic] You lost $1000 and your car has been repaired! ($1356907263)', 0, '2024-09-27 10:34:22'),
(1006, -8000, 'Spawn Car 8 k ($1356899263)', 0, '2024-09-27 10:40:06'),
(1006, -8000, 'Spawn Car 8 k ($1356891263)', 0, '2024-09-27 10:58:59'),
(1006, -150000, 'Engine upgrade ($1356741263)', 0, '2024-09-27 10:59:41'),
(1006, -250000, 'Engine upgrade ($1356491263)', 0, '2024-09-27 10:59:43'),
(1006, -375000, 'Engine upgrade ($1356116263)', 0, '2024-09-27 10:59:44'),
(1006, -450000, 'Engine upgrade ($1355666263)', 0, '2024-09-27 10:59:45'),
(1006, -650000, 'Engine upgrade ($1355016263)', 0, '2024-09-27 10:59:46'),
(1006, -45000, 'improvement of the braking system ($1354971263)', 0, '2024-09-27 10:59:55'),
(1006, -130000, 'improvement of the braking system ($1354841263)', 0, '2024-09-27 10:59:56'),
(1006, -170000, 'improvement of the braking system ($1354671263)', 0, '2024-09-27 10:59:57'),
(1006, -200000, 'improvement of the braking system ($1354471263)', 0, '2024-09-27 10:59:58'),
(1006, -250000, 'improvement of the braking system ($1354221263)', 0, '2024-09-27 10:59:58'),
(1006, -15000, 'Repainting ($1354206263)', 0, '2024-09-27 11:00:11'),
(1006, -15000, 'Repainting ($1354191263)', 0, '2024-09-27 11:00:25'),
(1006, -15000, 'Repainting ($1354176263)', 0, '2024-09-27 11:00:34'),
(1006, -15000, 'Repainting ($1354161263)', 0, '2024-09-27 11:00:42'),
(1006, -15000, 'Repainting ($1354146263)', 0, '2024-09-27 11:01:14'),
(1006, -3777, 'car repair ($1354142486)', 0, '2024-09-27 11:03:39'),
(1006, -8000, 'Spawn Car 8 k ($1354134486)', 0, '2024-09-27 11:03:59'),
(1006, -8000, 'Spawn Car 8 k ($1354126486)', 0, '2024-09-27 13:50:26'),
(1006, -8000, 'Spawn Car 8 k ($1354118486)', 0, '2024-09-27 13:53:00'),
(1006, -8000, 'Spawn Car 8 k ($1354110486)', 0, '2024-09-27 14:27:29'),
(1006, -4999, 'Entering business. ($1354105487)', 0, '2024-09-27 14:28:14'),
(1006, -4999, 'Entering business. ($1354100488)', 0, '2024-09-27 14:38:40'),
(1006, -1800000, 'purchase of vehicles at the dealership ($1352300488)', 0, '2024-09-27 14:44:43'),
(1006, -100000, 'replenished the bank account ($1352200488)', 0, '2024-09-27 14:46:14'),
(1006, -100000, 'replenished the bank account ($1352100488)', 0, '2024-09-27 14:46:16'),
(1006, -100000, 'replenished the bank account ($1352000488)', 0, '2024-09-27 14:46:18'),
(1006, -100000, 'replenished the bank account ($1351900488)', 0, '2024-09-27 14:46:23'),
(1006, -100000, 'replenished the bank account ($1351800488)', 0, '2024-09-27 14:46:24'),
(1006, -100000, 'replenished the bank account ($1351700488)', 0, '2024-09-27 14:46:24'),
(1006, -100000, 'replenished the bank account ($1351600488)', 0, '2024-09-27 14:46:25'),
(1006, -100000, 'replenished the bank account ($1351500488)', 0, '2024-09-27 14:46:26'),
(1006, -100000, 'replenished the bank account ($1351400488)', 0, '2024-09-27 14:46:27'),
(1006, -100000, 'replenished the bank account ($1351300488)', 0, '2024-09-27 14:46:28'),
(1006, -150000, 'Engine upgrade ($1351150488)', 0, '2024-09-27 14:46:58'),
(1006, -250000, 'Engine upgrade ($1350900488)', 0, '2024-09-27 14:46:59'),
(1006, -375000, 'Engine upgrade ($1350525488)', 0, '2024-09-27 14:46:59'),
(1006, -450000, 'Engine upgrade ($1350075488)', 0, '2024-09-27 14:47:00'),
(1006, -650000, 'Engine upgrade ($1349425488)', 0, '2024-09-27 14:47:01'),
(1006, -15000, 'Repainting ($1349410488)', 0, '2024-09-27 14:47:06'),
(1006, -15000, 'Repainting ($1349395488)', 0, '2024-09-27 14:47:17'),
(1006, -15000, 'Repainting ($1349380488)', 0, '2024-09-27 14:47:32'),
(1006, -15000, 'Repainting ($1349365488)', 0, '2024-09-27 14:47:39'),
(1006, -15000, 'Repainting ($1349350488)', 0, '2024-09-27 14:47:44'),
(1006, -15000, 'Repainting ($1349335488)', 0, '2024-09-27 14:47:51'),
(1006, -15000, 'Repainting ($1349320488)', 0, '2024-09-27 14:48:04'),
(1006, -45000, 'improvement of the braking system ($1349275488)', 0, '2024-09-27 14:48:09'),
(1006, -130000, 'improvement of the braking system ($1349145488)', 0, '2024-09-27 14:48:11'),
(1006, -170000, 'improvement of the braking system ($1348975488)', 0, '2024-09-27 14:48:12'),
(1006, -200000, 'improvement of the braking system ($1348775488)', 0, '2024-09-27 14:48:13'),
(1006, -250000, 'improvement of the braking system ($1348525488)', 0, '2024-09-27 14:48:14'),
(1006, -200000, 'removal of brake tuning ($1348325488)', 0, '2024-09-27 14:48:18'),
(1006, -250000, 'improvement of the braking system ($1348075488)', 0, '2024-09-27 14:48:24'),
(1006, -200000, 'improvement of the braking system ($1347875488)', 0, '2024-09-27 14:48:25'),
(1006, -170000, 'improvement of the braking system ($1347705488)', 0, '2024-09-27 14:48:25'),
(1006, -130000, 'improvement of the braking system ($1347575488)', 0, '2024-09-27 14:48:26'),
(1006, -45000, 'improvement of the braking system ($1347530488)', 0, '2024-09-27 14:48:27'),
(1006, -100000, 'bought a skin ($1347430487)', 0, '2024-09-27 14:50:53'),
(1006, -1500, 'Tuning ($1347428987)', 0, '2024-09-27 14:52:53'),
(1006, -175000, 'Tuning ($1347244087)', 0, '2024-09-27 14:54:24'),
(1006, -8000, 'Spawn Car 8 k ($1347236087)', 0, '2024-09-27 14:57:33'),
(1006, -1500, 'Tuning ($1347234587)', 0, '2024-09-27 15:00:30'),
(1006, -175000, 'Tuning ($1347057787)', 0, '2024-09-27 15:00:41'),
(1006, -8000, 'Spawn Car 8 k ($1347049787)', 0, '2024-09-27 15:02:52'),
(1006, -1500, 'Tuning ($1347048287)', 0, '2024-09-27 15:02:58'),
(1006, -175000, 'Tuning ($1346871487)', 0, '2024-09-27 15:03:10'),
(1006, -125000, 'Tuning ($1346746487)', 0, '2024-09-27 15:03:14'),
(1006, -8000, 'Spawn Car 8 k ($1346738487)', 0, '2024-09-27 15:03:59'),
(1006, -1500, 'Tuning ($1346736987)', 0, '2024-09-27 15:04:04'),
(1006, -175000, 'Tuning ($1346561087)', 0, '2024-09-27 15:04:14'),
(1006, -125000, 'Tuning ($1346436087)', 0, '2024-09-27 15:04:16'),
(1006, -3285, 'car repair ($1346432802)', 0, '2024-09-27 15:05:08'),
(1006, -8000, 'Spawn Car 8 k ($1346424802)', 0, '2024-09-27 15:13:06'),
(1006, -1500000, 'Creating Family ($1344924802)', 0, '2024-09-27 15:21:27'),
(1006, -2000, 'ate in the business ($1344922802)', 0, '2024-09-27 15:25:37'),
(1006, -2000, 'ate in the business ($1344920802)', 0, '2024-09-27 15:25:44'),
(1006, -2000, 'ate in the business ($1344918802)', 0, '2024-09-27 15:25:46'),
(1006, -2000, 'ate in the business ($1344916802)', 0, '2024-09-27 15:25:50'),
(1006, -2000, 'Entering business. ($1344914802)', 0, '2024-09-27 15:27:16'),
(1006, -5000, 'Entering business. ($1344908802)', 0, '2024-09-28 01:23:22'),
(1006, -1500000, 'Creating Family ($1343408502)', 0, '2024-09-28 01:57:33'),
(1006, -1500000, 'Creating Family ($1341908502)', 0, '2024-09-28 02:10:57'),
(1006, -1500000, 'Creating Family ($1340408502)', 0, '2024-09-28 02:14:27'),
(1006, -1500000, 'Creating Family ($1338908502)', 0, '2024-09-28 02:16:29'),
(1006, -1500000, 'Creating Family ($1337408502)', 0, '2024-09-28 02:21:29'),
(1006, -1500000, 'Creating Family ($1335908502)', 0, '2024-09-28 02:29:05'),
(1006, -1500000, 'Creating Family ($1334408502)', 0, '2024-09-28 02:30:41'),
(1006, -1500000, 'Creating Family ($1332908502)', 0, '2024-09-28 02:32:22'),
(1006, -1470, 'car repair ($1332907032)', 0, '2024-09-28 02:39:57'),
(1006, -2681, 'car repair ($1332904351)', 0, '2024-09-28 02:40:10'),
(1006, -8000, 'Spawn Car 8 k ($1332896351)', 0, '2024-09-28 02:40:15'),
(1006, -100000, 'Deposited money into the Family storage ($1332796351)', 0, '2024-09-28 02:49:05'),
(1006, -15000, 'improvement 3 ($1332781351)', 0, '2024-09-28 05:39:51'),
(1006, -15000, 'improvement 2 ($1332766351)', 0, '2024-09-28 05:39:53'),
(1006, -5000, 'upgrade 1 ($1332761351)', 0, '2024-09-28 05:39:55'),
(1006, -8000, 'Spawn Car 8 k ($1332753301)', 0, '2024-09-28 17:21:17'),
(1006, -8000, 'Spawn Car 8 k ($1332745301)', 0, '2024-09-28 18:27:15'),
(1006, -200000, 'removal of engine tuning ($1332545301)', 0, '2024-09-28 18:28:16'),
(1006, -3820, 'car repair ($1332541481)', 0, '2024-09-28 18:29:08'),
(1006, -8000, 'Spawn Car 8 k ($1332533481)', 0, '2024-09-28 18:29:14'),
(1006, -150000, 'Engine upgrade ($1332383481)', 0, '2024-09-28 18:30:16'),
(1006, -250000, 'Engine upgrade ($1332133481)', 0, '2024-09-28 18:30:17'),
(1006, -375000, 'Engine upgrade ($1331758481)', 0, '2024-09-28 18:30:18'),
(1006, -450000, 'Engine upgrade ($1331308481)', 0, '2024-09-28 18:30:19'),
(1006, -650000, 'Engine upgrade ($1330658481)', 0, '2024-09-28 18:30:19'),
(1006, -8000, 'Spawn Car 8 k ($1330650481)', 0, '2024-09-29 01:29:51'),
(1006, -8000, 'Spawn Car 8 k ($1330642481)', 0, '2024-09-29 01:30:51'),
(1006, -1033, 'car repair ($1330641448)', 0, '2024-09-29 01:31:55'),
(1006, -8000, 'Spawn Car 8 k ($1330633448)', 0, '2024-09-29 01:40:28'),
(1006, -8000, 'Spawn Car 8 k ($1330625448)', 0, '2024-09-29 02:01:37'),
(1006, -1782, 'car repair ($1330623666)', 0, '2024-09-29 02:02:45'),
(1006, -8000, 'Spawn Car 8 k ($1330615666)', 0, '2024-09-29 02:13:55'),
(1006, -8000, 'Spawn Car 8 k ($1330607666)', 0, '2024-09-29 02:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `user_id` int(11) NOT NULL,
  `text` varchar(244) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`user_id`, `text`) VALUES
(-1, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(299, 'Ваш номер в отеле был продан за неуплату.'),
(189, 'Ваш номер в отеле был продан за неуплату.'),
(1466, 'Ваш номер в отеле был продан за неуплату.'),
(1411, 'Ваш номер в отеле был продан за неуплату.'),
(1400, 'Ваш номер в отеле был продан за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(1178, 'Ваш номер в отеле был продан за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(1539, 'Ваш номер в отеле был продан за неуплату.'),
(105, 'Ваш номер в отеле был продан за неуплату.'),
(1858, 'Ваш номер в отеле был продан за неуплату.'),
(1559, 'Ваш номер в отеле был продан за неуплату.'),
(1637, 'Ваш номер в отеле был продан за неуплату.'),
(470, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваша заправка была продана за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваша заправка была продана за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваша заправка была продана за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваша заправка была продана за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(-1, 'Ваша заправка была продана за неуплату.'),
(-1, 'Ваш бизнес был продан за неуплату.'),
(2063, 'Ваша заправка была продана за неуплату.'),
(2085, 'Администратор Mark_Savinih заблокировал Вам чат на 30 минут (Причина: Упом Родных)'),
(-1, '??? business ??? ?????? ?? ????????.'),
(-1, '??? business ??? ?????? ?? ????????.'),
(341, '??? business ??? ?????? ?? ????????.'),
(-1, '??? business ??? ?????? ?? ????????.'),
(530, '??? ????? ? ????? ??? ?????? ?? ????????.'),
(-1, '??? business ??? ?????? ?? ????????.'),
(-1, '??? business ??? ?????? ?? ????????.'),
(-1, '??? business ??? ?????? ?? ????????.'),
(-1, '??? business ??? ?????? ?? ????????.'),
(-1, '??? business ??? ?????? ?? ????????.'),
(621, '??? business ??? ?????? ?? ????????.'),
(-1, '??? business ??? ?????? ?? ????????.'),
(-1, '??? business ??? ?????? ?? ????????.'),
(-1, '??? business ??? ?????? ?? ????????.'),
(-1, '??? business ??? ?????? ?? ????????.'),
(643, '??? business ??? ?????? ?? ????????.'),
(-1, '??? business ??? ?????? ?? ????????.'),
(-1, '??? business ??? ?????? ?? ????????.'),
(-1, '??? business ??? ?????? ?? ????????.'),
(-1, '??? business ??? ?????? ?? ????????.'),
(-1, '??? business ??? ?????? ?? ????????.'),
(665, '??? business ??? ?????? ?? ????????.'),
(-1, '??? business ??? ?????? ?? ????????.'),
(-1, '???? ???????? ???? ??????? ?? ????????.'),
(696, '??? business ??? ?????? ?? ????????.'),
(-1, '???? ???????? ???? ??????? ?? ????????.'),
(-1, '???? ???????? ???? ??????? ?? ????????.'),
(-1, '??? business ??? ?????? ?? ????????.'),
(-1, '??? business ??? ?????? ?? ????????.'),
(625, '???? ???????? ???? ??????? ?? ????????.'),
(-1, '??? business ??? ?????? ?? ????????.'),
(-1, '??? business ??? ?????? ?? ????????.'),
(-1, '???? ???????? ???? ??????? ?? ????????.'),
(-1, '???? ???????? ???? ??????? ?? ????????.'),
(650, '??? business ??? ?????? ?? ????????.'),
(623, '??? business ??? ?????? ?? ????????.'),
(51, '??? business ??? ?????? ?? ????????.'),
(7, '??? ????? ? ????? ??? ?????? ?? ????????.');

-- --------------------------------------------------------

--
-- Table structure for table `online_log`
--

CREATE TABLE `online_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `day` varchar(16) NOT NULL,
  `play_time` int(11) NOT NULL,
  `afk_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `online_log`
--

INSERT INTO `online_log` (`id`, `user_id`, `day`, `play_time`, `afk_time`) VALUES
(1, 100, '203.01.18', 0, 0),
(4, 1003, '2024.09.20', 261, 0),
(5, 1003, '2024.09.20', 566, 4),
(6, 1003, '2024.09.21', 298, 6),
(7, 1005, '2024.09.26', 0, 0),
(8, 1006, '2024.09.27', 0, 0),
(9, 1006, '2024.09.27', 3163, 15),
(10, 1006, '2024.09.28', 5542, 361);

-- --------------------------------------------------------

--
-- Table structure for table `online_record`
--

CREATE TABLE `online_record` (
  `newid` int(10) UNSIGNED NOT NULL,
  `players` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `others`
--

CREATE TABLE `others` (
  `numberbanks` int(11) NOT NULL,
  `election_status` int(11) NOT NULL,
  `bonus_exp` int(11) NOT NULL,
  `bonus_donate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `others`
--

INSERT INTO `others` (`numberbanks`, `election_status`, `bonus_exp`, `bonus_donate`) VALUES
(1000, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `promocode_activation`
--

CREATE TABLE `promocode_activation` (
  `account_id` int(11) NOT NULL,
  `promo_name` varchar(32) NOT NULL,
  `promo_hour` int(6) NOT NULL,
  `promo_accept` int(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roulet_prizes`
--

CREATE TABLE `roulet_prizes` (
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `server_promocode`
--

CREATE TABLE `server_promocode` (
  `s_id` int(3) NOT NULL,
  `s_promo` varchar(32) NOT NULL,
  `s_type` int(3) NOT NULL DEFAULT 0,
  `s_hour` int(6) NOT NULL DEFAULT 0,
  `s_activation` int(6) NOT NULL DEFAULT 0,
  `s_money` int(12) NOT NULL DEFAULT 0,
  `s_exp` int(3) NOT NULL DEFAULT 0,
  `s_lic_car` int(3) NOT NULL DEFAULT 0,
  `s_lic_fly` int(3) NOT NULL DEFAULT 0,
  `s_lic_boat` int(3) NOT NULL DEFAULT 0,
  `s_lic_gun` int(3) NOT NULL DEFAULT 0,
  `s_pistol` int(3) NOT NULL DEFAULT 0,
  `s_deagle` int(3) NOT NULL DEFAULT 0,
  `s_shotgun` int(3) NOT NULL DEFAULT 0,
  `s_mp5` int(3) NOT NULL DEFAULT 0,
  `s_ak47` int(3) NOT NULL DEFAULT 0,
  `s_m4` int(3) NOT NULL DEFAULT 0,
  `s_promo_used` int(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `server_promocode`
--

INSERT INTO `server_promocode` (`s_id`, `s_promo`, `s_type`, `s_hour`, `s_activation`, `s_money`, `s_exp`, `s_lic_car`, `s_lic_fly`, `s_lic_boat`, `s_lic_gun`, `s_pistol`, `s_deagle`, `s_shotgun`, `s_mp5`, `s_ak47`, `s_m4`, `s_promo_used`) VALUES
(1, '#reload', 1, 3600, 25, 50000, 3, 1, 1, 1, 1, 0, 100, 0, 0, 0, 100, 125),
(2, '#laki', 0, 18000, 477, 50000, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 23),
(3, '#RAF', 0, 18000, 139, 50000, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 11),
(4, '#Zunturi', 0, 18000, 147, 50000, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 3),
(5, '#petrowich', 0, 18000, 147, 50000, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 3),
(6, '#colin', 0, 18000, 150, 50000, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(7, '#Kruzi', 0, 18000, 148, 50000, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 2),
(8, '#SNASH', 0, 18000, 197, 50000, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 3),
(9, '#ROZA', 1, 18000, 487, 50000, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 13),
(10, '#BRUNO', 0, 18000, 144, 50000, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 6),
(11, '#klod', 0, 18000, 150, 50000, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(12, '#fomalf', 0, 18000, 149, 50000, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(13, '#Akakin', 0, 18000, 146, 50000, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 4),
(14, '#Hom', 0, 10800, 146, 50000, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 4),
(15, '#man', 1, 10800, 149, 50000, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(16, '#vadim', 0, 10800, 484, 50000, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 16),
(17, '#fornals', 0, 18000, 149, 50000, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(18, '#blade', 0, 18000, 148, 50000, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 2),
(19, '#viner', 0, 18000, 142, 50000, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 8),
(20, '#Falkone', 0, 18000, 150, 50000, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(21, '#biggie', 1, 18000, 9999, 50000, 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(22, '#tayner', 0, 3600, 99999, 10000000, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(23, '#open', 1, 7200, 99988, 50000000, 10, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 12),
(24, '#Priz50kk', 1, 0, 0, 49999999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(25, '#priz', 0, 0, 0, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(26, '#Sorry', 0, 0, 0, 2000000, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, '#VIP_IRAN', 0, 18000, 5, 2000000, 1939144704, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, '#Kchbs', 0, 72000, 16, 2000000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4),
(32, 'BHMME', 1, 4442400, 4321, 1234567, 99999999, 1, 1, 1, 1, 100, 100, 100, 100, 100, 100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `taxi_bizz`
--

CREATE TABLE `taxi_bizz` (
  `b_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `model` int(11) NOT NULL,
  `fuel` float NOT NULL,
  `price` int(11) NOT NULL DEFAULT 500
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `taxi_bizz`
--

INSERT INTO `taxi_bizz` (`b_id`, `c_id`, `model`, `fuel`, `price`) VALUES
(0, 0, 438, 100, 2500),
(0, 1, 579, 100, 500),
(0, 2, 438, 100, 1500),
(0, 3, 560, 100, 100),
(0, 4, 438, 100, 600),
(0, 5, 420, 100, 500),
(0, 6, 420, 100, 500),
(0, 7, 420, 100, 500),
(0, 8, 420, 100, 500),
(0, 9, 420, 100, 500),
(1, 0, 420, 100, 5000),
(1, 1, 420, 100, 500),
(1, 2, 579, 100, 500),
(1, 3, 579, 100, 500),
(1, 4, 420, 100, 500),
(1, 5, 420, 100, 500),
(1, 6, 420, 100, 500),
(1, 7, 420, 100, 500),
(1, 8, 420, 100, 500),
(1, 9, 420, 100, 500),
(2, 0, 420, 100, 5000),
(2, 1, 420, 100, 450),
(2, 2, 507, 100, 700),
(2, 3, 420, 100, 500),
(2, 4, 560, 100, 2400),
(2, 5, 420, 100, 500),
(2, 6, 420, 100, 500),
(2, 7, 420, 100, 500),
(2, 8, 420, 100, 500),
(2, 9, 420, 100, 500);

-- --------------------------------------------------------

--
-- Table structure for table `unitpay_payments`
--

CREATE TABLE `unitpay_payments` (
  `id` int(10) NOT NULL,
  `unitpayId` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `sum` float NOT NULL,
  `itemsCount` int(11) NOT NULL DEFAULT 1,
  `dateCreate` datetime NOT NULL,
  `dateComplete` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `unitpay_payments`
--

INSERT INTO `unitpay_payments` (`id`, `unitpayId`, `account`, `sum`, `itemsCount`, `dateCreate`, `dateComplete`, `status`) VALUES
(1, '78847', 'test', 10, 10, '2020-03-11 22:53:37', NULL, 0),
(2, '82869', 'test', 10, 10, '2020-03-11 22:53:41', NULL, 0),
(3, '56', 'test', 10, 10, '2020-03-11 22:53:45', NULL, 0),
(4, '56824', 'test', 10, 10, '2020-03-11 22:54:14', NULL, 0),
(5, '48951', 'test', 10, 10, '2020-03-11 23:23:33', NULL, 0),
(6, '99859', 'test', 10, 10, '2020-03-11 23:23:42', NULL, 0),
(7, '1277521451', 'test', 10, 10, '2020-03-11 23:23:33', NULL, 0),
(8, '21593', 'test', 10, 10, '2020-03-11 23:25:45', NULL, 0),
(9, '57425', 'test', 10, 10, '2020-03-11 23:25:50', NULL, 0),
(10, '99704', 'test', 10, 10, '2020-03-11 23:39:51', NULL, 0),
(11, '10166', 'test', 10, 10, '2020-03-11 23:40:17', NULL, 0),
(12, '13512', 'test', 10, 10, '2020-03-11 23:43:46', NULL, 0),
(13, '46650', 'test', 10, 10, '2020-03-11 23:57:27', NULL, 0),
(14, '90278', 'test', 10, 10, '2020-03-11 23:57:54', NULL, 0),
(15, '14006', 'test', 10, 10, '2020-03-11 23:58:23', NULL, 0),
(16, '13470', 'test', 10, 10, '2020-03-11 23:59:01', NULL, 0),
(17, '1277558661', 'test', 10, 10, '2020-03-12 00:00:57', NULL, 0),
(18, '14175', 'test', 10, 10, '2020-03-12 00:03:02', NULL, 0),
(19, '84283', 'test', 10, 10, '2020-03-12 00:04:14', NULL, 0),
(20, '88633', 'test', 10, 10, '2020-03-12 00:14:17', NULL, 0),
(21, '39885', 'test', 10, 10, '2020-03-12 00:21:39', NULL, 0),
(22, '61508', 'test', 10, 10, '2020-03-12 00:21:40', NULL, 0),
(23, '63371', 'test', 10, 10, '2020-03-12 00:22:00', NULL, 0),
(24, '19238', 'test', 10, 10, '2020-03-12 00:23:21', NULL, 0),
(25, '12072', 'test', 10, 10, '2020-03-12 00:31:42', NULL, 0),
(26, '27924', 'test', 10, 10, '2020-03-12 01:13:23', NULL, 0),
(27, '78870', 'test', 10, 10, '2020-03-12 01:13:29', NULL, 0),
(28, '74199', 'test', 10, 10, '2020-03-12 01:28:06', NULL, 0),
(29, '47107', 'test', 10, 10, '2020-03-12 01:28:07', NULL, 0),
(30, '88445', 'test', 10, 10, '2020-03-12 01:40:13', NULL, 0),
(31, '85930', 'test', 10, 10, '2020-03-12 01:40:14', NULL, 0),
(32, '80305', 'test', 10, 10, '2020-03-12 01:43:38', NULL, 0),
(33, '528', 'test', 10, 10, '2020-03-12 01:43:42', NULL, 0),
(34, '37312', 'test', 10, 10, '2020-03-12 01:57:56', NULL, 0),
(35, '54413', 'test', 10, 10, '2020-03-12 02:18:02', NULL, 0),
(36, '80561', 'test', 10, 10, '2020-03-12 02:21:02', NULL, 0),
(37, '53482', 'test', 10, 10, '2020-03-12 02:21:35', NULL, 0),
(38, '41950', 'test', 10, 10, '2020-03-12 02:41:01', NULL, 0),
(39, '59655', 'test', 10, 10, '2020-03-12 03:04:21', NULL, 0),
(40, '77187', 'test', 10, 10, '2020-03-12 04:40:59', NULL, 0),
(41, '1277765791', 'test', 270, 270, '2020-03-12 08:13:59', NULL, 0),
(42, '23745', 'test', 10, 10, '2020-03-12 11:57:41', NULL, 0),
(43, '15136', 'test', 10, 10, '2020-03-12 11:59:18', NULL, 0),
(44, '1278047591', 'test', 1000, 1000, '2020-03-12 12:18:04', NULL, 0),
(45, '96894', 'test', 10, 10, '2020-03-12 12:36:44', NULL, 0),
(46, '17861', 'test', 10, 10, '2020-03-12 12:55:31', NULL, 0),
(47, '40239', 'test', 10, 10, '2020-03-12 13:23:51', NULL, 0),
(48, '80186', 'test', 10, 10, '2020-03-12 13:59:19', NULL, 0),
(49, '44840', 'test', 10, 10, '2020-03-12 14:03:37', NULL, 0),
(50, '1278256161', 'test', 3, 3, '2020-03-12 14:24:51', NULL, 0),
(51, '1278281711', 'test', 50, 50, '2020-03-12 14:38:27', NULL, 0),
(52, '1278322631', 'test', 10, 10, '2020-03-12 14:59:48', NULL, 0),
(53, '79075', 'test', 10, 10, '2020-03-12 15:20:30', NULL, 0),
(54, '41661', 'test', 10, 10, '2020-03-12 15:32:58', NULL, 0),
(55, '77265', 'test', 10, 10, '2020-03-12 16:28:33', NULL, 0),
(56, '1278609951', 'test', 93, 93, '2020-03-12 17:27:23', NULL, 0),
(57, '66494', 'test', 10, 10, '2020-03-12 17:39:16', NULL, 0),
(58, '73954', 'test', 10, 10, '2020-03-12 21:12:29', NULL, 0),
(59, '1279176191', 'test', 2, 2, '2020-03-12 22:34:42', NULL, 0),
(60, '1279177461', 'test', 1, 1, '2020-03-12 22:35:42', NULL, 0),
(61, '1279178301', 'test', 1, 1, '2020-03-12 22:36:16', NULL, 0),
(62, '1279223211', 'test', 15, 15, '2020-03-12 23:09:18', NULL, 0),
(63, '55478', 'test', 10, 1, '2020-03-14 17:47:56', NULL, 0),
(64, '699', 'test', 10, 1, '2020-03-14 17:47:59', NULL, 0),
(65, '95709', 'test', 10, 1, '2020-03-14 17:53:18', NULL, 0),
(66, '30337', 'test', 10, 1, '2020-03-14 17:53:31', NULL, 0),
(67, '35767', 'test', 10, 1, '2020-03-14 17:53:34', NULL, 0),
(68, '1282456881', 'test', 10, 1, '2020-03-14 17:56:29', NULL, 0),
(69, '1282458211', 'test', 384, 38, '2020-03-14 17:57:07', NULL, 0),
(70, '1282459121', 'test', 20, 2, '2020-03-14 17:57:32', NULL, 0),
(71, '1282461841', 'test', 57, 5, '2020-03-14 17:58:53', NULL, 0),
(72, '1282462341', 'test', 384, 38, '2020-03-14 17:59:06', NULL, 0),
(73, '28958', 'test', 10, 1, '2020-03-14 18:38:03', NULL, 0),
(74, '21461', 'test', 10, 1, '2020-03-14 18:39:32', NULL, 0),
(75, '91874', 'test', 10, 1, '2020-03-14 18:49:08', NULL, 0),
(76, '1282582021', 'test', 100, 10, '2020-03-14 18:53:28', NULL, 0),
(77, '1282584641', 'test', 100, 10, '2020-03-14 18:54:37', NULL, 0),
(78, '74845', 'test', 10, 1, '2020-03-14 19:21:32', NULL, 0),
(79, '1282791921', 'test', 50, 5, '2020-03-14 20:33:59', NULL, 0),
(80, '67436', 'test', 10, 1, '2020-03-14 21:14:45', NULL, 0),
(81, '1282882961', 'test', 10, 1, '2020-03-14 21:20:15', NULL, 0),
(82, '1283249701', 'test', 190, 19, '2020-03-15 02:21:25', NULL, 0),
(83, '36381', 'test', 10, 1, '2020-03-15 02:45:41', NULL, 0),
(84, '1283403341', 'test', 10, 1, '2020-03-15 08:39:36', NULL, 0),
(85, '18739', 'test', 10, 1, '2020-03-15 15:28:19', NULL, 0),
(86, '1284349881', 'test', 96, 9, '2020-03-15 17:23:25', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `warninfo`
--

CREATE TABLE `warninfo` (
  `wID` int(11) NOT NULL,
  `plID` int(11) NOT NULL,
  `wReasonWarn` varchar(64) CHARACTER SET cp1251 COLLATE cp1251_general_ci NOT NULL,
  `wAdminWarn` varchar(64) CHARACTER SET cp1251 COLLATE cp1251_general_ci NOT NULL,
  `wWarnDate` varchar(64) CHARACTER SET cp1251 COLLATE cp1251_general_ci NOT NULL,
  `wUnWarnDate` varchar(64) CHARACTER SET cp1251 COLLATE cp1251_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`pID`),
  ADD UNIQUE KEY `pName` (`pName`),
  ADD UNIQUE KEY `pID` (`pID`),
  ADD KEY `pDataReg` (`pDataReg`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `anticheat_settings`
--
ALTER TABLE `anticheat_settings`
  ADD UNIQUE KEY `ac_code` (`ac_code`);

--
-- Indexes for table `atms`
--
ALTER TABLE `atms`
  ADD PRIMARY KEY (`aID`);

--
-- Indexes for table `banips`
--
ALTER TABLE `banips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banlog`
--
ALTER TABLE `banlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bizz`
--
ALTER TABLE `bizz`
  ADD PRIMARY KEY (`bID`),
  ADD UNIQUE KEY `bID` (`bID`);

--
-- Indexes for table `bizz_astats`
--
ALTER TABLE `bizz_astats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bizz_fuel`
--
ALTER TABLE `bizz_fuel`
  ADD PRIMARY KEY (`aID`);

--
-- Indexes for table `bizz_stats`
--
ALTER TABLE `bizz_stats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`nID`);

--
-- Indexes for table `car_settings`
--
ALTER TABLE `car_settings`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `enters`
--
ALTER TABLE `enters`
  ADD PRIMARY KEY (`pickID`);

--
-- Indexes for table `family`
--
ALTER TABLE `family`
  ADD PRIMARY KEY (`fam_id`);

--
-- Indexes for table `fraction_wh`
--
ALTER TABLE `fraction_wh`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `gangzone`
--
ALTER TABLE `gangzone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `graffiti`
--
ALTER TABLE `graffiti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`hID`);

--
-- Indexes for table `house_lodgers`
--
ALTER TABLE `house_lodgers`
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `online_log`
--
ALTER TABLE `online_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_record`
--
ALTER TABLE `online_record`
  ADD PRIMARY KEY (`newid`);

--
-- Indexes for table `server_promocode`
--
ALTER TABLE `server_promocode`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `unitpay_payments`
--
ALTER TABLE `unitpay_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warninfo`
--
ALTER TABLE `warninfo`
  ADD PRIMARY KEY (`wID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `pID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

--
-- AUTO_INCREMENT for table `atms`
--
ALTER TABLE `atms`
  MODIFY `aID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `banips`
--
ALTER TABLE `banips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `banlog`
--
ALTER TABLE `banlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `bizz_astats`
--
ALTER TABLE `bizz_astats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=475;

--
-- AUTO_INCREMENT for table `bizz_fuel`
--
ALTER TABLE `bizz_fuel`
  MODIFY `aID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `bizz_stats`
--
ALTER TABLE `bizz_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1298;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `nID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `car_settings`
--
ALTER TABLE `car_settings`
  MODIFY `car_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `enters`
--
ALTER TABLE `enters`
  MODIFY `pickID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `family`
--
ALTER TABLE `family`
  MODIFY `fam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `online_log`
--
ALTER TABLE `online_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `online_record`
--
ALTER TABLE `online_record`
  MODIFY `newid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `server_promocode`
--
ALTER TABLE `server_promocode`
  MODIFY `s_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `unitpay_payments`
--
ALTER TABLE `unitpay_payments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `warninfo`
--
ALTER TABLE `warninfo`
  MODIFY `wID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
