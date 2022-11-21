-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: localhost
-- Létrehozás ideje: 2022. Nov 21. 21:20
-- Kiszolgáló verziója: 10.4.21-MariaDB
-- PHP verzió: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `notebook`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `contacts`
--

CREATE TABLE `contacts` (
  `id` int(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `name`, `address`, `message`, `date`) VALUES
(1, 'asperant8@gmail.com', 'Balog Olivér', 'Ceglédi út', 'afdef', '2022-11-21 19:19:57'),
(2, 'asperant8@gmail.com', 'Balog Olivér', 'Ceglédi út', 'afdef', '2022-11-21 19:20:27'),
(3, 'asperant8@gmail.coms', 'Balog Olivér', 'Ceglédi út', 'efwqwefqwf', '2022-11-21 19:21:22'),
(4, 'asperant8@gmail.com', 'Balog Olivér', 'Ceglédi út', 'r2r23r\r\n', '2022-11-21 20:14:27'),
(5, 'asperant8@gmail.com', 'Balog Olivér', 'Ceglédi út', 'qwefweqf', '2022-11-21 20:18:10'),
(6, 'asperant8@gmail.com', 'Balog Olivér', 'Ceglédi út', 'wefqwfwef', '2022-11-21 20:22:22'),
(7, 'a20i86@hallgato.uni-neumann.hu', 'Olivér Balog', 'Ceglédi út', 'weqfwefq', '2022-11-21 20:22:31'),
(8, 'asperant8@gmail.com', 'Balog Olivér', 'Ceglédi út', 'sdfasdf', '2022-11-21 20:23:50'),
(9, 'asd@asd.asd', 'admin admin', 'Ceglédi út', 'wefqgweg', '2022-11-21 21:06:44');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `gep`
--

CREATE TABLE `gep` (
  `id` int(5) NOT NULL,
  `gyarto` varchar(50) NOT NULL,
  `tipus` varchar(50) NOT NULL,
  `kijelzo` varchar(8) NOT NULL,
  `memoria` int(10) NOT NULL,
  `merevlemez` int(10) NOT NULL,
  `videovezerlo` varchar(50) NOT NULL,
  `ar` decimal(20,0) NOT NULL,
  `processzorid` int(5) NOT NULL,
  `oprendszerid` int(5) NOT NULL,
  `db` int(5) NOT NULL,
  `kijlezo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `gep`
--

INSERT INTO `gep` (`id`, `gyarto`, `tipus`, `kijelzo`, `memoria`, `merevlemez`, `videovezerlo`, `ar`, `processzorid`, `oprendszerid`, `db`, `kijlezo`) VALUES
(585, 'HP', 'COMPAQ 615 NX556EA', '15,6', 1024, 160, 'ATi Mobility Radeon HD3200 256MB', '95120', 1, 1, 0, NULL),
(586, 'ASUS', 'K51AC-SX001D', '15,6', 2048, 250, 'ATi Mobility Radeon HD3200 256MB', '101200', 1, 8, 0, NULL),
(587, 'HP', 'COMPAQ 615 NX560EA', '15,6', 2048, 320, 'ATi Mobility Radeon HD3200 256MB', '114800', 1, 4, 0, NULL),
(588, 'HP', 'Pavilion DV6-1110EH NL956EA', '15,6', 3072, 250, 'ATi Mobility Radeon HD4530 512MB', '167920', 1, 6, 3, NULL),
(589, 'ACER', 'Aspire 5536G-642G25MN', '15,6', 2048, 250, 'ATi Mobility Radeon HD4570 512MB', '111920', 1, 2, 3, NULL),
(590, 'ACER', 'Aspire 5536G-643G32MN', '15,6', 3072, 320, 'ATi Mobility Radeon HD4570 512MB', '117520', 1, 2, 2, NULL),
(591, 'MSI', 'X410-019HU', '14', 2048, 320, 'ATI Radeon Xpress 1250', '111920', 4, 6, 4, NULL),
(592, 'ASUS', 'F83T-VX005X', '14', 4096, 500, 'ATi Mobility Radeon HD4570 512MB', '115920', 4, 8, 1, NULL),
(593, 'MSI', 'VR630XL-004HU', '16', 2048, 320, 'NVIDIA GeForce Go 9100M-GS', '90800', 5, 1, 1, NULL),
(594, 'ASUS', 'N60DP-JX012V', '16', 4096, 500, 'ATi Mobility Radeon HD4670 512MB', '183920', 6, 10, 4, NULL),
(595, 'ASUS', 'K50AB-SX045D', '15,6', 4096, 500, 'ATi Mobility Radeon HD4570 512MB', '134320', 7, 8, 5, NULL),
(596, 'FUJITSU', 'Amilo Sa3650', '13,3', 2048, 250, 'ATi Mobility Radeon HD3200 256MB', '223920', 8, 6, 4, NULL),
(597, 'MSI', 'WIND U200-064HU', '12', 2048, 320, 'Intel Graphics X4500M / 256MB', '112400', 51, 6, 3, NULL),
(598, 'ACER', 'eMachine E525-901G16Mi', '15,6', 1024, 160, 'Intel Graphics 4500MHD ', '82800', 10, 2, 0, NULL),
(599, 'DELL', 'Inspiron 1545-106208 RED', '15,6', 1024, 160, 'Intel Graphics 4500MHD ', '103120', 10, 2, 3, NULL),
(600, 'TOSHIBA', 'Satellite L500-1EN', '15,6', 2048, 320, 'Intel Graphics X4500M / 256MB', '118800', 10, 1, 1, NULL),
(601, 'MSI', 'CR500X-012HU', '15,6', 2048, 320, 'NVIDIA GeForce Go 8200M 128MB', '94800', 10, 1, 1, NULL),
(602, 'MSI', 'CR500X-008HU', '15,6', 4096, 320, 'NVIDIA GeForce Go 8200M 128MB', '95920', 10, 1, 3, NULL),
(603, 'LENOVO', 'SL500 2746P5G', '15,4', 1024, 160, 'NVIDIA GeForce Go 9300M 256MB', '139920', 12, 4, 0, NULL),
(604, 'TOSHIBA', 'Satellite L300-24P', '15,4', 2048, 160, 'Intel Graphics 4500MHD', '98000', 12, 1, 0, NULL),
(605, 'MSI', 'VR603X-094HU', '15,4', 4096, 320, 'Intel Graphics 4500MHD', '99600', 12, 1, 5, NULL),
(606, 'HP', 'ProBook 4510s NX435EA', '15,6', 2048, 250, 'Intel Graphics 4500MHD', '111920', 12, 1, 1, NULL),
(607, 'FUJITSU', 'Esprimo V6535', '15,4', 1024, 160, 'Intel Graphics 4500MHD ', '95920', 13, 2, 4, NULL),
(608, 'LENOVO', 'IdeaPad G550L 59-026377', '15,6', 1024, 160, 'Intel Graphics 4500MHD', '94320', 14, 4, 5, NULL),
(609, 'HP', 'Presario CQ61-200SH NZ890EA', '15,6', 3072, 320, 'Intel Graphics 4500MHD', '127120', 14, 4, 3, NULL),
(610, 'ACER', 'eMachine E525-302G25Mi', '15,6', 2048, 250, 'Intel Graphics 4500MHD ', '89200', 14, 2, 0, NULL),
(611, 'HP', 'ProBook 4510s NX668EA', '15,6', 2048, 250, 'Intel Graphics 4500MHD ', '113520', 14, 2, 3, NULL),
(612, 'HP', 'ProBook 4310s NX580EA', '13,3', 1024, 160, 'Intel Graphics 4500MHD ', '119920', 14, 2, 3, NULL),
(613, 'ASUS', 'K50IJ-SX036L', '15,6', 2048, 250, 'Intel Graphics X4500M', '94320', 14, 8, 2, NULL),
(614, 'ASUS', 'K50IJ-SX153L', '15,6', 4096, 320, 'Intel Graphics X4500M / 256MB', '100720', 14, 8, 0, NULL),
(615, 'MSI', 'CR700X-023HU', '17,3', 3072, 320, 'NVIDIA GeForce Go 8200M 128MB', '108400', 14, 1, 0, NULL),
(616, 'DELL', 'Vostro V860-111696', '15,6', 1024, 250, 'Intel Graphics x3100', '79920', 17, 2, 3, NULL),
(617, 'HP', 'Mini 1199 NS528EA', '10,1', 1024, 80, 'Intel Graphics 950', '114000', 18, 12, 3, NULL),
(618, 'Asus', 'EEE PC 1001HA-BLK012X BLACK', '10', 1024, 160, 'Intel Graphics 4500MHD', '59920', 19, 12, 4, NULL),
(619, 'Asus', 'EEE PC 1001HA-WHI009X XP WHITE', '10', 1024, 160, 'Intel Graphics 4500MHD', '59920', 19, 12, 4, NULL),
(620, 'DELL', 'Inspiron 1011 104442 BLUE', '10,1', 1024, 160, 'Intel Graphics 500', '55920', 19, 2, 3, NULL),
(621, 'DELL', 'Inspiron 1011 104437 BLUE', '10,1', 1024, 160, 'Intel Graphics 500', '63992', 19, 12, 1, NULL),
(622, 'DELL', 'Inspiron 1011 104435 BLACK', '10,1', 1024, 160, 'Intel Graphics 500', '63992', 19, 12, 4, NULL),
(623, 'DELL', 'Inspiron 1011 105566 RED', '10,1', 1024, 160, 'Intel Graphics 500', '63992', 19, 12, 1, NULL),
(624, 'DELL', 'Inspiron 1011 104434 WHITE', '10,1', 1024, 160, 'Intel Graphics 500', '63992', 19, 12, 5, NULL),
(625, 'DELL', 'Inspiron 1011 104436 PINK', '10,1', 1024, 160, 'Intel Graphics 500', '63992', 19, 12, 0, NULL),
(626, 'DELL', 'Inspiron 1011 110960 GREEN', '10,1', 1024, 160, 'Intel Graphics 500', '63992', 19, 12, 5, NULL),
(627, 'DELL', 'Inspiron 1011 106751 BLACK', '10,1', 1024, 160, 'Intel Graphics 500', '87920', 19, 12, 3, NULL),
(628, 'ACER', 'ASPIRE ONE A150-A BLUE', '8,9', 1024, 120, 'Intel Graphics 950', '58320', 19, 2, 1, NULL),
(629, 'ACER', 'ASPIRE ONE D250-0Bw', '10,1', 1024, 160, 'Intel Graphics 950', '68720', 19, 12, 5, NULL),
(630, 'ACER', 'ASPIRE ONE D250-0Br', '10,1', 1024, 160, 'Intel Graphics 950', '68720', 19, 12, 3, NULL),
(631, 'MSI', 'WIND U100-1033HU', '10', 1024, 160, 'Intel Graphics 950', '71920', 19, 12, 2, NULL),
(632, 'HP', 'Mini 110c-1010SH NW642EA', '10,1', 1024, 160, 'Intel Graphics 950', '78320', 19, 12, 2, NULL),
(633, 'Asus', 'Eee PC 1005HA-WHI059X XP WHITE', '10', 1024, 160, 'Intel Graphics 950', '78320', 19, 12, 3, NULL),
(634, 'HP', 'Mini 731 NG660EA', '10,1', 1024, 80, 'Intel Graphics 950', '78320', 19, 12, 3, NULL),
(635, 'Asus', 'Eee PC 1005HA-BLK076X XP', '10', 1024, 160, 'Intel Graphics 950', '78400', 19, 12, 3, NULL),
(636, 'LENOVO', 'IdeaPad S10e NS9RLHL R', '10,1', 1024, 160, 'Intel Graphics 950', '79920', 19, 12, 3, NULL),
(637, 'LENOVO', 'IdeaPad S10e NS9RJHL', '10,1', 1024, 160, 'Intel Graphics 950', '79920', 19, 12, 5, NULL),
(638, 'Asus', 'Eee PC 1002HA-BLK022X XP B', '10', 1024, 160, 'Intel Graphics 950', '91999', 19, 12, 5, NULL),
(639, 'Asus', 'Eee PC 1004DN-BLK003X GR', '10,1', 1024, 120, 'Intel Graphics 4500MHD', '106700', 20, 12, 4, NULL),
(640, 'ACER', 'ASPIRE ONE D250-1Bw', '10,1', 1024, 160, 'Intel Graphics 950', '71120', 20, 12, 5, NULL),
(641, 'ACER', 'ASPIRE ONE D250-1B Blue', '10,1', 1024, 160, 'Intel Graphics 950', '71120', 20, 12, 3, NULL),
(642, 'MSI', 'WIND U123-013HU BLUE', '10', 1024, 160, 'Intel Graphics 950', '72400', 20, 12, 5, NULL),
(643, 'MSI', 'WIND U123-012HU RED', '10', 1024, 160, 'Intel Graphics 950', '72400', 20, 12, 1, NULL),
(644, 'LENOVO', 'IdeaPad S10-2 59-027093 POP ART', '10,1', 1024, 160, 'Intel Graphics 950', '73520', 20, 12, 3, NULL),
(645, 'LENOVO', 'IdeaPad S10-2 59-027094 FLOWER SEA', '10,1', 1024, 160, 'Intel Graphics 950', '73520', 20, 12, 5, NULL),
(646, 'LENOVO', 'IdeaPad S10-2 59-027108 SAILING', '10,1', 1024, 160, 'Intel Graphics 950', '73520', 20, 12, 0, NULL),
(647, 'MSI', 'WIND U123-014HU WHITE', '10', 1024, 160, 'Intel Graphics 950', '75600', 20, 12, 3, NULL),
(648, 'MSI', 'WIND U123-018HU GRAY', '10', 1024, 160, 'Intel Graphics 950', '75600', 20, 12, 4, NULL),
(649, 'LENOVO', 'IdeaPad S10-2 59-027036 WHITE', '10,1', 1024, 160, 'Intel Graphics 950', '77520', 20, 12, 3, NULL),
(650, 'Asus', 'Eee PC 1005HA-WHI058X XP W', '10', 1024, 160, 'Intel Graphics 950', '82320', 20, 12, 2, NULL),
(651, 'Asus', 'Eee PC 1005HA-BLK075X XP B', '10', 1024, 160, 'Intel Graphics 950', '82400', 20, 12, 3, NULL),
(652, 'Asus', 'Eee S101H-BRN073X XP BR', '10', 1024, 160, 'Intel Graphics 950', '87120', 20, 12, 4, NULL),
(653, 'Asus', 'Eee PC 1008HA-PIK012X XP P', '10', 1024, 160, 'Intel Graphics 950', '95920', 20, 12, 5, NULL),
(654, 'Asus', 'Eee PC 1008HA-RED008X XP R', '10', 1024, 160, 'Intel Graphics 950', '95920', 20, 12, 1, NULL),
(655, 'Asus', 'Eee PC 1008HA-BLU021X XP BL', '10', 1024, 160, 'Intel Graphics 950', '95920', 20, 12, 0, NULL),
(656, 'Asus', 'Eee PC 1008HA-WHI024X XP', '10', 1024, 160, 'Intel Graphics 950', '95920', 20, 12, 3, NULL),
(657, 'Asus', 'Eee PC 1008HA-BLU036X XP BL', '10', 1024, 160, 'Intel Graphics 950', '95920', 20, 12, 5, NULL),
(658, 'TOSHIBA', 'NB200-136', '10,1', 1024, 160, 'Intel GMA 950 / 256MB', '95920', 20, 11, 5, NULL),
(659, 'Asus', 'Eee PC 1101HA-BLK041X B', '11,6', 1024, 160, 'Intel Graphics 500', '96720', 21, 12, 4, NULL),
(660, 'Asus', 'Eee PC 1101HA-BLK028M B', '11,6', 2048, 250, 'Intel Graphics 500', '98000', 21, 11, 5, NULL),
(661, 'ACER', 'ASPIRE ONE 751h 52Bb BLACK', '11,6', 1024, 160, 'Intel Graphics 950', '81200', 21, 12, 2, NULL),
(662, 'ACER', 'ASPIRE ONE 751h 52Bb WHITE', '11,6', 1024, 160, 'Intel Graphics 950', '81200', 21, 12, 4, NULL),
(663, 'ACER', 'ASPIRE ONE 751h 52Bb RED', '11,6', 1024, 160, 'Intel Graphics 950', '81200', 21, 12, 5, NULL),
(664, 'ACER', 'ASPIRE ONE 751H PINK', '11,6', 1024, 160, 'Intel Graphics 950', '81200', 21, 12, 3, NULL),
(665, 'ACER', 'ASPIRE ONE 751h 52Bb BLUE', '11,6', 1024, 160, 'Intel Graphics 950', '81200', 21, 12, 3, NULL),
(666, 'Asus', 'Eee PC 1101HA-BLU018X BLUE', '11,6', 1024, 160, 'Intel Graphics 950', '96720', 21, 12, 1, NULL),
(667, 'Asus', 'Eee PC 1101HA-WHI040X W', '11,6', 1024, 160, 'Intel Graphics 950', '96720', 21, 12, 0, NULL),
(668, 'Asus', 'Eee PC 1101HA-WHI022M W', '11,6', 2048, 250, 'Intel Graphics 950', '98000', 21, 11, 4, NULL),
(669, 'DELL', 'Inspiron 1010 106752 BLACK', '10,1', 1024, 160, 'Intel Graphics 500', '87920', 22, 12, 0, NULL),
(670, 'ASUS', 'M51VR-AP184C', '15,4', 2048, 250, 'ATi Mobility Radeon HD3470 256MB', '140720', 23, 6, 4, NULL),
(671, 'FUJITSU', 'Esprimo V6535-104060', '15,4', 2048, 250, 'Intel Graphics 4500MHD', '110320', 23, 8, 5, NULL),
(672, 'ACER', 'Extensa 5630G-732G16N', '15,4', 2048, 160, 'NVIDIA GeForce Go 9300M 256MB', '127920', 24, 6, 0, NULL),
(673, 'DELL', 'Studio XPS 13-711 BLACK', '13,3', 4096, 320, 'NVIDIA GeForce Go 9500M-GS 256MB', '241520', 24, 6, 0, NULL),
(674, 'MSI', 'GX723X-271HU', '17', 4096, 500, 'NVIDIA GeForce GT130M 512B DDR3', '216720', 24, 1, 1, NULL),
(675, 'TOSHIBA', 'Satellite A300-1GN', '15,4', 3072, 320, 'ATi Mobility Radeon HD3650 512MB', '226800', 25, 6, 0, NULL),
(676, 'LENOVO', 'ThinkPad T500 NL34EHV', '15,4', 2048, 160, 'Intel Graphics 4500MHD', '241520', 25, 3, 1, NULL),
(677, 'LENOVO', 'ThinkPad T400 NM81UHV', '14,1', 2048, 160, 'Intel Graphics 4500MHD', '244720', 25, 3, 5, NULL),
(678, 'FUJITSU', 'Lifebook E8420', '15,4', 4096, 160, 'Intel Graphics 4500MHD', '268720', 25, 3, 5, NULL),
(679, 'FUJITSU', 'Lifebook S7220', '14,1', 4096, 320, 'Intel Graphics 4500MHD', '268720', 25, 3, 1, NULL),
(680, 'FUJITSU', 'Lifebook S6420', '13,3', 4096, 160, 'Intel Graphics 4500MHD', '279920', 25, 3, 3, NULL),
(681, 'LENOVO', 'ThinkPad T500 NL346HV', '15,4', 2048, 320, 'Intel Graphics 4500MHD', '279920', 25, 3, 3, NULL),
(682, 'LENOVO', 'ThinkPad T500 NJ253HV', '15,4', 2048, 160, 'ATi Mobility Radeon HD3650', '279920', 26, 3, 3, NULL),
(683, 'DELL', 'Studio XPS 16-713 BLACK', '16', 4096, 500, 'ATi Mobility Radeon HD3670 512MB', '266320', 26, 6, 5, NULL),
(684, 'DELL', 'Inspiron 1545-106226 Red', '15,6', 2048, 320, 'ATi Mobility Radeon HD4330 256MB', '169200', 26, 6, 0, NULL),
(685, 'DELL', 'Inspiron 1545-106227 Blue', '15,6', 2048, 320, 'ATi Mobility Radeon HD4330 256MB', '169200', 26, 6, 5, NULL),
(686, 'DELL', 'Studio 1555-110573 RED', '15,6', 2048, 500, 'ATi Mobility Radeon HD4570 512MB', '192720', 26, 6, 2, NULL),
(687, 'DELL', 'Studio 1555-110574 BLACK', '15,6', 2048, 500, 'ATi Mobility Radeon HD4570 512MB', '192720', 26, 6, 1, NULL),
(688, 'DELL', 'Studio 1555-110575 BLUE', '15,6', 2048, 500, 'ATi Mobility Radeon HD4570 512MB', '192720', 26, 6, 3, NULL),
(689, 'TOSHIBA', 'Satellite P300-225', '17,1', 4096, 500, 'ATi Mobility Radeon HD4650 1024MB', '234800', 26, 6, 3, NULL),
(690, 'DELL', 'Studio XPS M1640-106257 B', '15,6', 4096, 500, 'ATi Mobility Radeon HD4670 512MB', '268720', 26, 6, 2, NULL),
(691, 'DELL', 'Studio XPS M1640-106259 R', '15,6', 4096, 500, 'ATi Mobility Radeon HD4670 512MB', '268720', 26, 6, 5, NULL),
(692, 'LENOVO', 'ThinkPad T500 NJ42RHV', '15,4', 2048, 160, 'Intel Graphics 4500MHD', '255920', 26, 3, 1, NULL),
(693, 'FUJITSU', 'Lifebook S7220-1', '14,1', 4096, 320, 'Intel Graphics 4500MHD', '279920', 26, 3, 3, NULL),
(694, 'TOSHIBA', 'Tecra M10-14Z', '14,1', 3072, 250, 'NVIDIA Quadro NVS 150M 256MB', '271920', 26, 3, 3, NULL),
(695, 'DELL', 'Studio XPS M1340-106255 B', '13,3', 4096, 500, 'NVIDIA GeForce Go 9400M-GS 256MB', '251920', 26, 6, 5, NULL),
(696, 'DELL', 'Studio XPS M1340-106256 R', '13,3', 4096, 500, 'NVIDIA GeForce Go 9400M-GS 256MB', '251920', 26, 6, 4, NULL),
(697, 'ASUS', 'N80VN-GP023C', '14,1', 4096, 320, 'NVIDIA GeForce 9650M GT 1GB', '215920', 26, 6, 4, NULL),
(698, 'ASUS', 'U50VG-XX162V', '15,6', 4096, 500, 'NVIDIA GeForce G105/512MB', '219120', 27, 10, 0, NULL),
(699, 'TOSHIBA', 'Qosmio X300-14V', '17', 4096, 320, 'NVIDIA GeForce Go 9700M-GT 512MB', '399920', 27, 6, 4, NULL),
(700, 'ASUS', 'N71VG-TY046V', '17,3', 4096, 640, 'NVIDIA GeForce GT220M 1GB', '243920', 27, 10, 2, NULL),
(701, 'ASUS', 'N61VN-JX069V', '16', 4096, 500, 'NVIDIA GeForce GT240M 1GB', '247920', 27, 10, 4, NULL),
(702, 'MSI', 'GT628X-447HU', '15,4', 4096, 500, 'NVIDIA GeForce GTS 160M', '258000', 27, 1, 3, NULL),
(703, 'HP', 'EliteBook 2530p FU431EA', '12,1', 2048, 120, 'Intel Graphics 4500MHD', '379920', 28, 3, 0, NULL),
(704, 'ThinkPad', 'X200 NRRFWHV', '12,1', 2048, 250, 'Intel Graphics 4500MHD', '387120', 28, 3, 2, NULL),
(705, 'ACER', 'Timeline 3810TG-734G50N', '13,3', 4096, 500, 'ATi Mobility Radeon HD4330 256MB', '174320', 29, 6, 5, NULL),
(706, 'ACER', 'Aspire Timeline 4810TG-733G25MN', '14', 3072, 250, 'ATi Mobility Radeon HD4330 512MB', '164720', 29, 10, 3, NULL),
(707, 'ACER', 'TravelMate 8471-733G25MN', '14', 3072, 250, 'Intel Graphics 4500MHD', '167920', 29, 3, 2, NULL),
(708, 'ASUS', 'UL20A-2X022V', '12,1', 3072, 320, 'Intel Graphics X4500M / 256MB', '146800', 29, 10, 3, NULL),
(709, 'ASUS', 'UL30A-QX164V', '13,3', 3072, 320, 'Intel Graphics X4500M / 256MB', '148720', 29, 10, 3, NULL),
(710, 'ASUS', 'UL50AG-XX007V', '15,6', 4096, 500, 'Intel Graphics X4500M / 256MB', '174320', 29, 10, 3, NULL),
(711, 'ASUS', 'UX30-QX096V', '13,3', 3072, 320, 'Intel Graphics X4500M / 256MB', '177520', 29, 10, 1, NULL),
(712, 'ASUS', 'UX30-QX085V', '13,3', 4096, 500, 'Intel Graphics X4500M / 256MB', '184720', 29, 10, 0, NULL),
(713, 'ASUS', 'UL80AG-WX011V', '14', 3072, 320, 'Intel GMA 950 / 256MB', '162320', 29, 10, 5, NULL),
(714, 'ASUS', 'UX50V-XX042V', '15,6', 4096, 500, 'NVIDIA GeForce G105/512MB', '203920', 29, 10, 2, NULL),
(715, 'ASUS', 'UL50VT-XX021V', '15,6', 4096, 500, 'NVIDIA GeForce GT210M 512GB', '191120', 29, 10, 2, NULL),
(716, 'TOSHIBA', 'Portégé A600-139', '12,1', 2048, 250, 'Intel Graphics 4500MHD', '271920', 30, 3, 5, NULL),
(717, 'ACER', 'Timeline 3810TG-944G50N', '13,3', 4096, 500, 'ATi Mobility Radeon HD4330 256MB', '194800', 31, 6, 0, NULL),
(718, 'ACER', 'Timeline 3810T-944G32N', '13,3', 4096, 320, 'Intel Graphics 4500MHD', '168720', 31, 6, 2, NULL),
(719, 'ACER', 'Aspire Timeline 4810T-943G32MN', '14', 3072, 320, 'Intel Graphics 4500MHD', '189200', 31, 6, 3, NULL),
(720, 'ThinkPad', 'X301 NRFC1HV', '13,3', 2048, 120, 'Intel Graphics 4500MHD', '366000', 31, 3, 0, NULL),
(721, 'FUJITSU', 'Esprimo V6515-104062', '15,4', 2048, 250, 'NVIDIA GeForce Go 8200M 128MB', '123920', 32, 8, 1, NULL),
(722, 'FUJITSU', 'Esprimo V5535 02', '15,4', 2048, 160, 'SiS Mirage 3+ 256M', '103920', 34, 1, 2, NULL),
(723, 'HP', 'ProBook 4510s NX621EA', '15,6', 3072, 320, 'ATi Mobility Radeon HD4330 256MB', '146320', 34, 1, 0, NULL),
(724, 'HP', 'ProBook 4510s NX624EA', '15,6', 3072, 320, 'ATi Mobility Radeon HD4330 256MB', '157520', 34, 4, 1, NULL),
(725, 'HP', 'ProBook 4710s NX628EA', '17,3', 3072, 320, 'ATi Mobility Radeon HD4330 512MB', '159920', 34, 1, 4, NULL),
(726, 'HP', 'COMPAQ 610 NX549EA', '15,6', 1024, 160, 'Intel Graphics x3100', '104990', 34, 1, 1, NULL),
(727, 'HP', 'COMPAQ 610 NX550EA', '15,6', 2048, 320, 'Intel Graphics x3100', '121520', 34, 1, 3, NULL),
(728, 'HP', 'COMPAQ 610 NX552EA', '15,6', 2048, 320, 'Intel Graphics x3100', '125200', 34, 4, 0, NULL),
(729, 'DELL', 'Vostro A860-111877', '15,6', 2048, 250, 'Intel Graphics x3100 ', '94320', 34, 2, 0, NULL),
(730, 'FUJITSU', 'Esprimo V6555 MPWE5HU', '15,4', 2048, 250, 'NVIDIA GeForce Go 8200M 128MB', '108000', 34, 2, 2, NULL),
(731, 'MSI', 'VX600X-053HU', '15,4', 4096, 500, 'ATi Mobility Radeon HD3410 256MB', '136400', 35, 1, 0, NULL),
(732, 'FUJITSU', 'Esprimo V6545-104064', '15,4', 2048, 250, 'ATi Mobility Radeon HD3450 256MB', '143920', 35, 2, 4, NULL),
(733, 'FUJITSU', 'Amilo PI 3525', '15,4', 2048, 320, 'Intel Graphics 4500MHD', '111111', 35, 8, 3, NULL),
(734, 'FUJITSU', 'Esprimo V6505-104063', '15,4', 2048, 250, 'Intel Graphics 4500MHD ', '135920', 35, 2, 0, NULL),
(735, 'MSI', 'CX600X-042HU', '16', 4096, 500, 'ATi Mobility Radeon HD4330 256MB', '149600', 36, 8, 1, NULL),
(736, 'DELL', 'Inspiron 1545-699 BLUE', '15,6', 4096, 320, 'ATi Mobility Radeon HD4330 256MB', '159920', 36, 6, 2, NULL),
(737, 'DELL', 'Studio 1555-635 RED', '15,6', 4096, 500, 'ATi Mobility Radeon HD4570 512MB', '176720', 36, 1, 5, NULL),
(738, 'DELL', 'Studio 1555-106249 BLUE', '15,6', 4096, 500, 'ATi Mobility Radeon HD4570 512MB', '190320', 36, 6, 3, NULL),
(739, 'ASUS', 'F6A-3P193X', '13,3', 3072, 250, 'Intel Graphics X4500M / 256MB', '159920', 36, 8, 2, NULL),
(740, 'ASUS', 'K50IN-SX024L', '15,6', 4096, 250, 'NVIDIA GeForce G102M/512MB', '135920', 36, 8, 1, NULL),
(741, 'DELL', 'Studio XPS M1340-110934 B', '13,3', 2048, 320, 'NVIDIA GeForce Go 9400M-GS 256MB', '201520', 36, 6, 5, NULL),
(742, 'HP', 'ProBook 4510s VC191EA', '15,6', 3072, 500, 'ATi Mobility Radeon HD4330 256MB', '187600', 37, 6, 5, NULL),
(743, 'HP', 'ProBook 4510s NA921EA', '15,6', 2048, 250, 'Intel Graphics 4500MHD', '203920', 37, 3, 2, NULL),
(744, 'DELL', 'Inspiron 1545-111827 Red', '15,6', 4096, 320, 'ATi Mobility Radeon HD4330 512MB', '139120', 38, 2, 2, NULL),
(745, 'DELL', 'Inspiron 1545-111826 Black', '15,6', 4096, 320, 'ATi Mobility Radeon HD4330 512MB', '139120', 38, 2, 0, NULL),
(746, 'DELL', 'Inspiron 1545-111828 Blue', '15,6', 4096, 320, 'ATi Mobility Radeon HD4330 512MB', '139120', 38, 2, 5, NULL),
(747, 'DELL', 'Inspiron 1545-111829 White', '15,6', 4096, 320, 'ATi Mobility Radeon HD4330 512MB', '139120', 38, 2, 0, NULL),
(748, 'DELL', 'Inspiron 1545-111831 Purple', '15,6', 4096, 320, 'ATi Mobility Radeon HD4330 512MB', '139120', 38, 2, 0, NULL),
(749, 'MSI', 'EX627X-400HU', '16', 4096, 500, 'ATi Mobility Radeon HD4570 512MB', '164720', 38, 1, 5, NULL),
(750, 'ASUS', 'U80V-WX101V', '14', 4096, 500, 'ATi Mobility Radeon HD4570 512MB', '199120', 38, 10, 3, NULL),
(751, 'LENOVO', 'IdeaPad G550A 59-026421', '15,6', 3072, 320, 'Intel Graphics 4500MHD', '135920', 38, 1, 5, NULL),
(752, 'ACER', 'Aspire 5738-663G32MN Linux', '15,6', 3072, 320, 'Intel Graphics 4500MHD ', '123920', 38, 2, 2, NULL),
(753, 'ASUS', 'K50IJ-SX152L', '15,6', 4096, 320, 'Intel Graphics X4500M / 256MB', '119920', 38, 8, 0, NULL),
(754, 'ASUS', 'K50IN-SX155L', '15,6', 3072, 250, 'NVIDIA GeForce G102M/512MB', '126320', 38, 2, 4, NULL),
(755, 'ASUS', 'K50IN-SX157L', '15,6', 4096, 500, 'NVIDIA GeForce G102M/512MB', '131920', 38, 2, 2, NULL),
(756, 'ASUS', 'U50VG-XX156V', '15,6', 4096, 500, 'NVIDIA GeForce G105/512MB', '195120', 38, 10, 1, NULL),
(757, 'MSI', 'EX723X-079HU', '17', 4096, 500, 'NVIDIA GeForce Go 9300M 256MB', '173520', 38, 1, 0, NULL),
(758, 'TOSHIBA', 'Satellite U500-17E', '13,3', 2048, 320, 'NVIDIA GeForce GT210M 512GB', '166320', 38, 10, 2, NULL),
(759, 'ASUS', 'F50SF-JX061X', '16', 4096, 500, 'NVIDIA GeForce GT220M 1GB', '167680', 38, 8, 2, NULL),
(760, 'ASUS', 'N61VG-JX070V', '16', 4096, 500, 'NVIDIA GeForce GT220M 1GB', '207920', 38, 10, 3, NULL),
(761, 'TOSHIBA', 'Satellite A500-1DN', '16', 4096, 320, 'NVIDIA GeForce GT230M 1GB', '185520', 38, 10, 2, NULL),
(762, 'LENOVO', 'SL500 NRJEBHV', '15,4', 2048, 320, 'Intel Graphics 4500MHD', '169520', 39, 4, 3, NULL),
(763, 'FUJITSU', 'Esprimo V5505 02', '15,4', 2048, 250, 'Intel Graphics x3100', '135555', 40, 4, 4, NULL),
(764, 'TOSHIBA', 'Satellite A200-23W', '15,4', 2048, 400, 'ATi Mobility Radeon HD2600 512MB', '175920', 41, 6, 0, NULL),
(765, 'FUJITSU', 'Esprimo D9500-101571', '15,4', 2048, 160, 'Intel Graphics x3100', '155920', 42, 3, 2, NULL),
(766, 'FUJITSU', 'Esprimo D9500-101570', '15,4', 4096, 160, 'Intel Graphics x3100', '179120', 43, 3, 3, NULL),
(767, 'Lenovo', 'ThinkPad W500 NRA3KHV', '15,4', 4096, 200, 'Intel Graphics 4500MHD', '380720', 44, 3, 0, NULL),
(768, 'ACER', 'Timeline 3810T-352G25N', '13,3', 2048, 250, 'Intel Graphics 4500MHD', '130320', 45, 6, 1, NULL),
(769, 'MSI', 'X400-048HU', '14', 2048, 500, 'Intel Graphics 4500MHD', '143920', 45, 6, 4, NULL),
(770, 'ASUS', 'UX30-QX032C', '13,3', 3072, 500, 'Intel Graphics X4500M / 256MB', '198800', 45, 6, 5, NULL),
(771, 'ASUS', 'U20A-2P027C', '12,1', 4096, 500, 'Intel Graphics X4500M / 256MB', '207920', 45, 6, 0, NULL),
(772, 'ASUS', 'UX50V-XX007C', '15,6', 4096, 500, 'NVIDIA GeForce G105/512MB', '244720', 45, 6, 2, NULL),
(773, 'ACER', 'Timeline 3810TZ-414G32N', '13,3', 4096, 320, 'Intel Graphics 4500MHD', '138320', 46, 9, 3, NULL),
(774, 'ACER', 'Timeline 5810TZ-414G32MN Vista', '15,6', 4096, 320, 'Intel Graphics 4500MHD', '142320', 46, 7, 3, NULL),
(775, 'ACER', 'Timeline 5810TZ-414G32MN Win7', '15,6', 4096, 320, 'Intel Graphics 4500MHD', '146320', 46, 9, 3, NULL),
(776, 'ACER', 'Aspire Timeline 4810TZ-413G25MN', '14,1', 3072, 250, 'Intel Graphics 4500MHD', '150000', 46, 10, 5, NULL),
(777, 'TOSHIBA', 'Satellite T130-10G', '13,3', 4096, 320, 'Intel Graphics X4500M / 256MB', '151920', 46, 10, 5, NULL),
(778, 'FUJITSU', 'Esprimo V6545', '15,4', 2048, 250, 'ATi Mobility Radeon HD3450 256MB', '110320', 23, 2, 1, NULL),
(779, 'TOSHIBA', 'Satellite A300-22Z', '15,4', 2048, 320, 'ATi Mobility Radeon HD3470 256MB', '126000', 23, 8, 5, NULL),
(780, 'FUJITSU', 'Esprimo V6505', '15,4', 2048, 250, 'Intel Graphics 4500MHD ', '111111', 23, 2, 2, NULL),
(781, 'FUJITSU', 'Amilo PI 3540-104877', '15,4', 3072, 250, 'NVIDIA GeForce Go 9300M 256MB', '115920', 23, 8, 5, NULL),
(782, 'MSI', 'VX600X-206HU', '15,4', 4096, 320, 'ATi Mobility Radeon HD3410 256MB', '121520', 48, 1, 4, NULL),
(783, 'TOSHIBA', 'Satellite A300-29K', '15,4', 2048, 320, 'ATi Mobility Radeon HD3470 256MB', '125520', 48, 8, 3, NULL),
(784, 'TOSHIBA', 'Satellite A300-22W', '15,4', 3072, 320, 'ATi Mobility Radeon HD3470 256MB', '131920', 48, 6, 5, NULL),
(785, 'TOSHIBA', 'Satellite A300-29J', '15,4', 4096, 320, 'ATi Mobility Radeon HD3470 256MB', '135120', 48, 6, 3, NULL),
(786, 'MSI', 'CX600X-018HU', '16', 4096, 320, 'ATi Mobility Radeon HD4330 256MB', '114800', 48, 8, 0, NULL),
(787, 'MSI', 'CX700X-013HU', '17,3', 4096, 320, 'ATi Mobility Radeon HD4330 256MB', '133520', 48, 8, 1, NULL),
(788, 'HP', 'Pavilion DV6-1120EH NM629EA', '15,6', 3072, 250, 'ATi Mobility Radeon HD4530 512MB', '183992', 48, 6, 3, NULL),
(789, 'ASUS', 'F83SE-VX039', '14', 4096, 500, 'ATi Mobility Radeon HD4570 512MB', '138320', 48, 8, 5, NULL),
(790, 'TOSHIBA', 'Satellite L300-2CE', '15,4', 2048, 250, 'Intel Graphics 4500MHD', '103600', 48, 8, 1, NULL),
(791, 'FUJITSU', 'Esprimo V6535-104061', '15,4', 4096, 320, 'Intel Graphics 4500MHD', '118320', 48, 8, 3, NULL),
(792, 'FUJITSU', 'Amilo Li 3910-UW5HU', '18,4', 4096, 320, 'Intel Graphics 4500MHD', '123920', 48, 8, 3, NULL),
(793, 'ASUS', 'K50IJ-SX025L', '15,6', 4096, 320, 'Intel Graphics 4500MHD', '125520', 48, 8, 3, NULL),
(794, 'HP', 'Presario CQ61-110eh NT353EA', '15,6', 2048, 250, 'Intel Graphics 4500MHD', '131920', 48, 4, 4, NULL),
(795, 'HP', 'ProBook 4510s VC179ES', '15,6', 3072, 320, 'Intel Graphics 4500MHD', '134320', 48, 1, 3, NULL),
(796, 'ASUS', 'F6A-3P154X', '13,3', 3072, 250, 'Intel Graphics X4500M / 256MB', '143120', 48, 8, 4, NULL),
(797, 'ASUS', 'K50IN-SX011L', '15,6', 4096, 320, 'NVIDIA GeForce G102M/512MB', '129520', 48, 8, 5, NULL),
(798, 'HP', 'Presario CQ61-120eh NL930EA', '15,6', 3072, 250, 'NVIDIA GeForce G103/512MB', '148720', 48, 4, 0, NULL),
(799, 'ACER', 'Aspire 5738ZG-422G25MN', '15,6', 2048, 250, 'NVIDIA GeForce G105/512MB', '123120', 48, 4, 4, NULL),
(800, 'MSI', 'EX720X-058HU', '17', 4096, 500, 'NVIDIA GeForce Go 9300M 256MB', '150320', 48, 1, 0, NULL),
(801, 'MSI', 'CX600X-072HU', '16', 4096, 500, 'ATi Mobility Radeon HD4330 256MB', '119120', 49, 8, 4, NULL),
(802, 'DELL', 'Inspiron 1545-110961 Red', '15,6', 2048, 320, 'ATi Mobility Radeon HD4330 512MB', '134320', 49, 6, 3, NULL),
(803, 'DELL', 'Inspiron 1545-110963 Blue', '15,6', 2048, 320, 'ATi Mobility Radeon HD4330 512MB', '134320', 49, 6, 0, NULL),
(804, 'DELL', 'Inspiron 1545-110964 White', '15,6', 2048, 320, 'ATi Mobility Radeon HD4330 512MB', '134320', 49, 6, 4, NULL),
(805, 'DELL', 'Inspiron 1545-110962 Black', '15,6', 2048, 320, 'ATi Mobility Radeon HD4330 512MB', '134320', 49, 6, 3, NULL),
(806, 'ASUS', 'F83SE-VX057D', '14', 4096, 500, 'ATi Mobility Radeon HD4570 512MB', '124720', 49, 8, 2, NULL),
(807, 'ACER', 'Aspire 5738ZG-432G25MN', '15,6', 2048, 250, 'ATi Mobility Radeon HD4570 512MB', '126320', 49, 5, 5, NULL),
(808, 'LENOVO', 'IdeaPad G550L 59-026359', '15,6', 3072, 320, 'Intel Graphics 4500MHD', '103920', 49, 1, 0, NULL),
(809, 'TOSHIBA', 'Satellite L300-2C5', '15,4', 2048, 250, 'Intel Graphics 4500MHD', '110320', 49, 6, 3, NULL),
(810, 'ACER', 'Aspire 5738Z-434G32MN', '15,6', 4096, 320, 'Intel Graphics 4500MHD', '126320', 49, 6, 3, NULL),
(811, 'ACER', 'Extensa 5635Z-431G16MN', '15,6', 1024, 160, 'Intel Graphics 4500MHD ', '94320', 49, 2, 1, NULL),
(812, 'TOSHIBA', 'Satellite L500-1EQ', '15,6', 2048, 320, 'Intel Graphics X4500M / 256MB', '103920', 49, 1, 1, NULL),
(813, 'ASUS', 'K50IJ-SX148L', '15,6', 2048, 250, 'Intel Graphics X4500M / 256MB', '103920', 49, 8, 1, NULL),
(814, 'TOSHIBA', 'Satellite L500-1GE', '15,6', 4096, 320, 'Intel Graphics X4500M / 256MB', '103920', 49, 1, 4, NULL),
(815, 'ASUS', 'K50IJ-SX151L', '15,6', 3072, 250, 'Intel Graphics X4500M / 256MB', '110320', 49, 8, 5, NULL),
(816, 'ASUS', 'K50IJ-SX151V', '15,6', 3072, 250, 'Intel Graphics X4500M / 256MB', '119920', 49, 9, 0, NULL),
(817, 'ASUS', 'K50IJ-SX124L', '15,6', 4096, 320, 'Intel Graphics X4500M / 256MB', '120400', 49, 8, 1, NULL),
(818, 'ASUS', 'K70IJ-TY042L', '17,3', 4096, 320, 'Intel Graphics X4500M / 256MB', '131920', 49, 8, 1, NULL),
(819, 'ASUS', 'K50IN-SX153L', '15,6', 3072, 250, 'NVIDIA GeForce G102M/512MB', '111920', 49, 2, 2, NULL),
(820, 'ASUS', 'K50IN-SX154L', '15,6', 4096, 320, 'NVIDIA GeForce G102M/512MB', '115920', 49, 2, 5, NULL),
(821, 'ASUS', 'K50IN-SX153V', '15,6', 3072, 250, 'NVIDIA GeForce G102M/512MB', '127920', 49, 9, 4, NULL),
(822, 'ASUS', 'K70IO-TY073L', '17,3', 4096, 320, 'NVIDIA GeForce GT120M 1GB', '138320', 49, 8, 2, NULL),
(823, 'ASUS', 'K70IO-TY068V', '17,3', 4096, 250, 'NVIDIA GeForce GT120M 1GB', '156720', 49, 9, 0, NULL),
(824, 'ASUS', 'K61IC-JX018D', '15,6', 4096, 500, 'NVIDIA GeForce GT220M 1GB', '143920', 49, 8, 1, NULL),
(825, 'LENOVO', 'U350 BLACK', '13,3', 2048, 250, 'Intel Graphics 4500MHD', '111920', 51, 4, 0, NULL),
(826, 'MSI', 'X340-037HU', '13,4', 2048, 320, 'Intel Graphics 4500MHD', '135920', 51, 6, 5, NULL),
(827, 'LENOVO', 'IdeaPad S12 Black', '12', 1024, 160, 'VIA S3 Chrome 9', '97520', 52, 12, 4, NULL),
(828, 'LENOVO', 'IdeaPad S12 White', '12', 1024, 160, 'VIA S3 Chrome 9', '97520', 52, 12, 4, NULL),
(829, 'ASUS', 'K51AC-SX037D', '15,6', 2048, 250, 'ATi Mobility Radeon HD3200 256MB', '98320', 53, 8, 1, NULL),
(830, 'ASUS', 'K50AB-SX073D', '15,6', 3072, 250, 'ATi Mobility Radeon HD4570 512MB', '107120', 53, 8, 5, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `oprendszer`
--

CREATE TABLE `oprendszer` (
  `id` int(5) NOT NULL,
  `nev` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `oprendszer`
--

INSERT INTO `oprendszer` (`id`, `nev`) VALUES
(1, 'FreeDOS'),
(2, 'Linux'),
(3, 'Microsoft Vista Business'),
(4, 'Microsoft Vista Home Basic HU'),
(5, 'Microsoft Vista Home Premium'),
(6, 'Microsoft Vista Home Premium HU'),
(7, 'Microsoft Vista Home Premium HU notebook'),
(8, 'nincs'),
(9, 'Windows 7 Home Premium HU 32Bit'),
(10, 'Windows 7 Home Premium HU 64Bit'),
(11, 'Windows 7 Starter Edition HU'),
(12, 'Windows XP Home Magyar');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `processzor`
--

CREATE TABLE `processzor` (
  `id` int(5) NOT NULL,
  `gyarto` varchar(50) NOT NULL,
  `tipus` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `processzor`
--

INSERT INTO `processzor` (`id`, `gyarto`, `tipus`) VALUES
(1, 'AMD', 'Athlon 64 X2 QL64'),
(4, 'AMD', 'Athlon TM Neo MV-40'),
(5, 'AMD', 'Mobil Sempron SI-40'),
(6, 'AMD', 'Turion64 X2 TL60'),
(7, 'AMD', 'Turion64 X2 TL64'),
(8, 'AMD', 'Turion64 X2 TL62'),
(10, 'Intel', 'Celeron 900'),
(12, 'Intel', 'Celeron Dual-Core T1600'),
(13, 'Intel', 'Celeron Dual-Core T1700'),
(14, 'Intel', 'Celeron Dual-Core T3000'),
(17, 'Intel', 'Celeron M 560'),
(18, 'Intel', 'Centrino Atom 1600'),
(19, 'Intel', 'Centrino Atom N270'),
(20, 'Intel', 'Centrino Atom N280'),
(21, 'Intel', 'Centrino Atom Z520'),
(22, 'Intel', 'Centrino Atom Z530'),
(23, 'Intel', 'Core Duo T3400'),
(24, 'Intel', 'Core2 Duo P7350'),
(25, 'Intel', 'Core2 Duo P8400'),
(26, 'Intel', 'Core2 Duo P8600'),
(27, 'Intel', 'Core2 Duo P8700'),
(28, 'Intel', 'Core2 Duo SL9400'),
(29, 'Intel', 'Core2 Duo SU7300'),
(30, 'Intel', 'Core2 Duo SU9300'),
(31, 'Intel', 'Core2 Duo SU9400'),
(32, 'Intel', 'Core2 Duo T5670'),
(34, 'Intel', 'Core2 Duo T5870'),
(35, 'Intel', 'Core2 Duo T6400'),
(36, 'Intel', 'Core2 Duo T6500'),
(37, 'Intel', 'Core2 Duo T6570'),
(38, 'Intel', 'Core2 Duo T6600'),
(39, 'Intel', 'Core2 Duo T6670'),
(40, 'Intel', 'Core2 Duo T7300'),
(41, 'Intel', 'Core2 Duo T7500'),
(42, 'Intel', 'Core2 Duo T8300'),
(43, 'Intel', 'Core2 Duo T9300'),
(44, 'Intel', 'Core2 Duo T9400'),
(45, 'Intel', 'Core2 Solo SU3500 ULV'),
(46, 'Intel', 'Pentium Dual Core SU4100'),
(48, 'Intel', 'Pentium dual-core T4200'),
(49, 'Intel', 'Pentium dual-core T4300'),
(51, 'Intel', 'Celeron M ULV723'),
(52, 'VIA', 'Via Nano ULV 2250'),
(53, 'AMD', 'Athlon 64 X2 QL65');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `roles`
--

CREATE TABLE `roles` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'ADMIN'),
(2, 'USER');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `email`, `password`, `role_id`) VALUES
(1, 'asd', 'asd', 'asd', 'asd', '$2a$10$smSFcM6WkBwQSXINSO6NtOmei1G/1vCZItHrWP2VOR03PLLr0KIzK', 1),
(2, 'admin', 'admin', 'admin', 'asd@asd.asd', '$2a$10$aKLL2PKofbAAhSwLpSNFeeRQWOmH85mbF69QBpxJyw9CauY/VZe3W', 3);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user_role`
--

CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(2, 1),
(1, 2);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `gep`
--
ALTER TABLE `gep`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `oprendszer`
--
ALTER TABLE `oprendszer`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `processzor`
--
ALTER TABLE `processzor`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `user_role`
--
ALTER TABLE `user_role`
  ADD KEY `FKt7e7djp752sqn6w22i6ocqy6q` (`role_id`),
  ADD KEY `FK859n2jvi8ivhui0rl0esws6o` (`user_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT a táblához `gep`
--
ALTER TABLE `gep`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=831;

--
-- AUTO_INCREMENT a táblához `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `gep`
--
ALTER TABLE `gep`
  ADD CONSTRAINT `gep_ibfk_1` FOREIGN KEY (`processzorid`) REFERENCES `processzor` (`id`),
  ADD CONSTRAINT `gep_ibfk_2` FOREIGN KEY (`oprendszerid`) REFERENCES `oprendszer` (`id`);

--
-- Megkötések a táblához `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKt7e7djp752sqn6w22i6ocqy6q` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
