-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2019 at 10:42 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nisrocha_nisroch`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcart`
--

CREATE TABLE `addcart` (
  `cart_id` int(11) NOT NULL,
  `invoiceId` int(255) NOT NULL,
  `prod_id` int(255) NOT NULL,
  `prod_name` varchar(255) NOT NULL,
  `hsn` varchar(255) NOT NULL,
  `batch` varchar(255) NOT NULL,
  `mdate` varchar(255) NOT NULL,
  `edate` varchar(255) NOT NULL,
  `psize` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `quantitytype` varchar(255) NOT NULL,
  `base_price` varchar(255) NOT NULL,
  `tax` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addcart`
--

INSERT INTO `addcart` (`cart_id`, `invoiceId`, `prod_id`, `prod_name`, `hsn`, `batch`, `mdate`, `edate`, `psize`, `quantity`, `quantitytype`, `base_price`, `tax`) VALUES
(251, 133, 50, 'JHATKA [Chlorpyriphos50% EC+ Cypermethrin5%] (500ml x 20)', '3808', '', '', '', ' 500 ml x 20', 1, 'Case', '5350', ''),
(252, 133, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', ' 250 ml x 40', 1, 'Case', '5550', ''),
(253, 133, 52, 'JHATKA [ Chlorpyriphos 50% EC+ Cypermetrin 5%] (100ml x50)', '3808', '', '', '', '100 ml x 50 ', 1, 'Case', '2900', ''),
(254, 133, 53, 'NISCRON PLUS [Profenophos40%+ Cypermethrin5%] (250mlx40)', '', '', '', '', '40 X 250 ML', 1, 'Case', '4800', ''),
(255, 133, 54, 'NISCRON PLUS [ Profenofos40%+ Cypermethrin4%] (100mlx50)', '3808', '', '', '', '100 ml x 50', 1, 'Case', '2550', ''),
(256, 133, 73, 'SUPER KILL-25[Cypermethrin25%E.C] (250mlx40)', '3808', '', '', '', '', 1, 'Case', '4400', ''),
(257, 133, 74, 'SUPER KILL-25[Cypermethrin25%E.C] (100mlx50)', '3808', '', '', '', '', 1, 'Case', '2325', ''),
(258, 133, 72, 'SUPER KILL-25[Cypermethrin25%E.C] (500mlx20)', '3808', '', '', '', '', 1, 'Case', '4200', ''),
(260, 135, 99, 'NISCRON [Profenofos50%EC] (100mlx50)', '3808', '', '', '', '', 1, 'Case', '2700', ''),
(261, 135, 191, 'ROUNAK (80X50 Gm)', '3808', '', '', '', '', 1, 'Case', '4200', ''),
(262, 135, 192, 'ROUNAK (60X100 Gm)', '3808', '', '', '', '', 1, 'Case', '6150', ''),
(263, 135, 49, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5% Ec(1ltr X 10)', '3808', '', '', '', '1Ltr x 10', 1, 'Case', '5200', ''),
(264, 135, 50, 'JHATKA [Chlorpyriphos50% EC+ Cypermethrin5%] (500ml x 20)', '3808', '', '', '', ' 500 ml x 20', 1, 'Case', '5350', ''),
(265, 135, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', ' 250 ml x 40', 1, 'Case', '5550', ''),
(266, 135, 52, 'JHATKA [ Chlorpyriphos 50% EC+ Cypermetrin 5%] (100ml x50)', '3808', '', '', '', '100 ml x 50 ', 1, 'Case', '2900', ''),
(267, 135, 74, 'SUPER KILL-25[Cypermethrin25%E.C] (100mlx50)', '3808', '', '', '', '', 1, 'Case', '2325', ''),
(268, 135, 73, 'SUPER KILL-25[Cypermethrin25%E.C] (250mlx40)', '3808', '', '', '', '', 1, 'Case', '4400', ''),
(269, 135, 69, 'JADE [Chlorpyriphos20%E.C] (250mlx40)', '3808', '', '', '', '', 1, 'Case', '2650', ''),
(273, 136, 99, 'NISCRON [Profenofos50%EC] (100mlx50)', '3808', '', '', '', '', 1, 'Case', '2700', ''),
(274, 136, 191, 'ROUNAK (80X50 Gm)', '3808', '', '', '', '', 1, 'Case', '4200', ''),
(275, 136, 192, 'ROUNAK (60X100 Gm)', '3808', '', '', '', '', 1, 'Case', '6150', ''),
(276, 136, 49, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5% Ec(1ltr X 10)', '3808', '', '', '', '1Ltr x 10', 1, 'Case', '5200', ''),
(277, 136, 50, 'JHATKA [Chlorpyriphos50% EC+ Cypermethrin5%] (500ml x 20)', '3808', '', '', '', ' 500 ml x 20', 1, 'Case', '5350', ''),
(278, 136, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', ' 250 ml x 40', 1, 'Case', '5550', ''),
(279, 136, 52, 'JHATKA [ Chlorpyriphos 50% EC+ Cypermetrin 5%] (100ml x50)', '3808', '', '', '', '100 ml x 50 ', 1, 'Case', '2900', ''),
(280, 136, 73, 'SUPER KILL-25[Cypermethrin25%E.C] (250mlx40)', '3808', '', '', '', '', 1, 'Case', '4400', ''),
(281, 136, 74, 'SUPER KILL-25[Cypermethrin25%E.C] (100mlx50)', '3808', '', '', '', '', 1, 'Case', '2325', ''),
(282, 136, 69, 'JADE [Chlorpyriphos20%E.C] (250mlx40)', '3808', '', '', '', '', 1, 'Case', '2650', ''),
(283, 136, 70, 'JADE [Chlorpyriphos20%E.C] (100mlx50)', '3808', '', '', '', '', 1, 'Case', '1450', ''),
(285, 137, 125, 'CHEENI KUM[Special Thrips & Miter] (100mlx50)', '3101', '', '', '', '', 1, 'Case', '13000', ''),
(286, 138, 49, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5% Ec(1ltr X 10)', '3808', '', '', '', '1Ltr x 10', 1, 'Case', '5200', ''),
(287, 138, 50, 'JHATKA [Chlorpyriphos50% EC+ Cypermethrin5%] (500ml x 20)', '3808', '', '', '', ' 500 ml x 20', 1, 'Case', '5350', ''),
(288, 138, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', ' 250 ml x 40', 1, 'Case', '5550', ''),
(290, 138, 53, 'NISCRON PLUS [Profenophos40%+ Cypermethrin5%] (250mlx40)', '', '', '', '', '40 X 250 ML', 1, 'Case', '4800', ''),
(291, 138, 54, 'NISCRON PLUS [ Profenofos40%+ Cypermethrin4%] (100mlx50)', '3808', '', '', '', '100 ml x 50', 1, 'Case', '2550', ''),
(292, 138, 55, 'N-TARA [Thiamethoxam 25% WG] (100gmx 50)', '3808', '', '', '', '100 GM X 50 ', 1, 'Case', '4025', ''),
(293, 138, 52, 'JHATKA [ Chlorpyriphos 50% EC+ Cypermetrin 5%] (100ml x50)', '3808', '', '', '', '100 ml x 50 ', 2, 'Case', '2900', ''),
(294, 139, 162, 'NISROCH GOLD[Natural Plant Protector] (10mlx400)', '3101', '', '', '', '', 1, 'Case', '12000', ''),
(295, 139, 143, 'SIGNET[Botanical Bio-Controller] (20mlx250)', '3101', '', '', '', '', 1, 'Case', '15000', ''),
(296, 139, 193, 'FLY OUT (250x20 ml)', '', '', '', '', '', 1, 'Case', '15250', ''),
(297, 140, 191, 'ROUNAK (80X50 Gm)', '3808', '', '', '', '', 1, 'Case', '4200', ''),
(298, 140, 192, 'ROUNAK (60X100 Gm)', '3808', '', '', '', '', 1, 'Case', '6150', ''),
(299, 140, 194, 'ROUNAK (24X250 Gm)', '', '', '', '', '', 1, 'Case', '6060', ''),
(316, 142, 74, 'SUPER KILL-25[Cypermethrin25%E.C] (100mlx50)', '3808', '', '', '', '', 1, 'Case', '2325', ''),
(317, 142, 49, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5% Ec(1ltr X 10)', '3808', '', '', '', '1Ltr x 10', 1, 'Case', '5200', ''),
(318, 142, 50, 'JHATKA [Chlorpyriphos50% EC+ Cypermethrin5%] (500ml x 20)', '3808', '', '', '', ' 500 ml x 20', 1, 'Case', '5350', ''),
(320, 142, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', ' 250 ml x 40', 1, 'Case', '5550', ''),
(321, 142, 52, 'JHATKA [ Chlorpyriphos 50% EC+ Cypermetrin 5%] (100ml x50)', '3808', '', '', '', '100 ml x 50 ', 1, 'Case', '2900', ''),
(322, 143, 168, 'NITRO POWER- GR[Nitrobenzin Granules] (1kgx25)', '3101', '', '', '', '', 20, 'Bag', '2450', ''),
(324, 144, 47, 'HUMAX G ( 1KG X 25)', '3101', 'HMX-01', '2018-02-15', '2023-03-31', '25X 1KG', 20, 'Bag', '1700', ''),
(325, 145, 195, 'NISROCH GOLD (60x100 ml)', '', '', '', '', '', 1, 'Case', '15600', ''),
(326, 146, 125, 'CHEENI KUM[Special Thrips & Miter] (100mlx50)', '3101', '', '', '', '', 1, 'Case', '13000', ''),
(327, 146, 196, 'NISROCH GOLD[Natural Plant Protector] (50x100 ml)', '', '', '', '', '', 1, 'Case', '15600', ''),
(328, 146, 160, 'NISROCH GOLD[Natural Plant Protector] (100mlx50)', '3101', '', '', '', '', 1, 'Case', '13000', ''),
(330, 146, 162, 'NISROCH GOLD[Natural Plant Protector] (10mlx400)', '3101', '', '', '', '', 1, 'Case', '12000', ''),
(331, 146, 142, 'SIGNET[Botanical Bio-Controller] (50mlx100)', '3101', '', '', '', '', 1, 'Case', '14000', ''),
(333, 146, 143, 'SIGNET[Botanical Bio-Controller] (20mlx250)', '3101', '', '', '', '', 1, 'Case', '15000', ''),
(334, 147, 174, 'SPREADER[WettingAgent] (1ltrx10)', '3101', '', '', '', '', 1, 'Case', '1650', ''),
(335, 147, 175, 'SPREADER[WettingAgent] (500mlx20)', '3101', '', '', '', '', 1, 'Case', '1750', ''),
(336, 147, 176, 'SPREADER[WettingAgent] (250mlx40)', '3101', '', '', '', '', 1, 'Case', '2050', ''),
(337, 150, 191, 'ROUNAK (80X50 Gm)', '3808', '', '', '', '', 1, 'Case', '4200', ''),
(338, 150, 192, 'ROUNAK (60X100 Gm)', '3808', '', '', '', '', 1, 'Case', '6150', ''),
(339, 150, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', ' 250 ml x 40', 1, 'Case', '5550', ''),
(341, 150, 52, 'JHATKA [ Chlorpyriphos 50% EC+ Cypermetrin 5%] (100ml x50)', '3808', '', '', '', '100 ml x 50 ', 1, 'Case', '2900', ''),
(342, 151, 125, 'CHEENI KUM[Special Thrips & Miter] (100mlx50)', '3101', '', '', '', '', 1, 'Case', '13000', ''),
(343, 151, 127, 'CHEENI KUM[Special Thrips & Miter] (20mlx250)', '3101', '', '', '', '', 1, 'Case', '15000', ''),
(344, 151, 142, 'SIGNET[Botanical Bio-Controller] (50mlx100)', '3101', '', '', '', '', 1, 'Case', '14000', ''),
(345, 151, 132, 'PATINA[Green Fly] (100mlx50)', '3101', '', '', '', '', 1, 'Case', '14000', ''),
(361, 156, 168, 'NITRO POWER- GR[Nitrobenzin Granules] (1kgx25)', '3101', '', '', '', '', 4, 'Bag', '2450', ''),
(362, 157, 82, 'CONFINE [Imidacloprid17.8%S.L] (250mlX40)', '3808', '', '', '', '', 1, 'Case', '7850', ''),
(363, 157, 83, 'CONFINE [Imidacloprid17.8%S.L] (1OOmlX50)', '3808', '', '', '', '', 1, 'Case', '4175', ''),
(365, 157, 84, 'CONFINE [Imidacloprid]17.8%SL] (50mlx50)', '3808', '', '', '', '', 1, 'Case', '2213', ''),
(366, 157, 85, 'CONFINE [Imidacloprid17.8%S.L] (10mlx400)', '3808', '', '', '', '', 1, 'Case', '4740', ''),
(367, 158, 125, 'CHEENI KUM[Special Thrips & Miter] (100mlx50)', '3101', '', '', '', '', 1, 'Case', '13000', ''),
(369, 158, 127, 'CHEENI KUM[Special Thrips & Miter] (20mlx250)', '3101', '', '', '', '', 1, 'Case', '15000', ''),
(370, 159, 46, 'HUMAX PLUS [100mlx100]', '3101', 'HP-01', '2018-01-10', '2020-12-31', '100 X 100', 1, 'Case', '4980', ''),
(371, 159, 48, 'HUMAX PLUS [250mlX40]', '3101', 'HMX-01', '2018-02-25', '2020-01-31', '250ML', 1, 'Case', '4580', ''),
(372, 159, 168, 'NITRO POWER- GR[Nitrobenzin Granules] (1kgx25)', '3101', '', '', '', '', 4, 'Bag', '2450', ''),
(373, 159, 160, 'NISROCH GOLD[Natural Plant Protector] (100mlx50)', '3101', '', '', '', '', 1, 'Case', '13000', ''),
(376, 159, 196, 'NISROCH GOLD[Natural Plant Protector] (50x100 ml)', '', '', '', '', '', 1, 'Case', '15600', ''),
(377, 160, 127, 'CHEENI KUM[Special Thrips & Miter] (20mlx250)', '3101', '', '', '', '', 1, 'Case', '15000', ''),
(378, 160, 143, 'SIGNET[Botanical Bio-Controller] (20mlx250)', '3101', '', '', '', '', 1, 'Case', '15000', ''),
(379, 161, 49, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5% Ec(1ltr X 10)', '3808', '', '', '', '1Ltr x 10', 1, 'Case', '5200', ''),
(380, 161, 50, 'JHATKA [Chlorpyriphos50% EC+ Cypermethrin5%] (500ml x 20)', '3808', '', '', '', ' 500 ml x 20', 1, 'Case', '5350', ''),
(382, 161, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', ' 250 ml x 40', 1, 'Case', '5550', ''),
(383, 161, 52, 'JHATKA [ Chlorpyriphos 50% EC+ Cypermetrin 5%] (100ml x50)', '3808', '', '', '', '100 ml x 50 ', 1, 'Case', '2900', ''),
(384, 161, 192, 'ROUNAK (60X100 Gm)', '3808', '', '', '', '', 1, 'Case', '6150', ''),
(385, 161, 191, 'ROUNAK (80X50 Gm)', '3808', '', '', '', '', 1, 'Case', '4200', ''),
(387, 162, 142, 'SIGNET[Botanical Bio-Controller] (50mlx100)', '3101', '', '', '', '', 1, 'Case', '14000', ''),
(388, 162, 197, 'SIGNET[Botanical Bio-Controller] (50x100 ml)', '', '', '', '', '', 1, 'Case', '13500', ''),
(389, 163, 143, 'SIGNET[Botanical Bio-Controller] (20mlx250)', '3101', '', '', '', '', 1, 'Case', '15000', ''),
(391, 163, 142, 'SIGNET[Botanical Bio-Controller] (50mlx100)', '3101', '', '', '', '', 1, 'Case', '14000', ''),
(392, 163, 162, 'NISROCH GOLD[Natural Plant Protector] (10mlx400)', '3101', '', '', '', '', 1, 'Case', '12000', ''),
(394, 164, 134, 'PATINA[Green Fly] (20mlx250)', '3101', '', '', '', '', 1, 'Case', '16000', ''),
(395, 164, 193, 'FLY OUT (250x20 ml)', '', '', '', '', '', 1, 'Case', '15250', ''),
(396, 165, 177, 'SPREADER[WettingAgent] (100mlx100)', '3101', '', '', '', '', 1, 'Case', '2600', ''),
(397, 166, 191, 'ROUNAK (80X50 Gm)', '3808', '', '', '', '', 1, 'Case', '4200', ''),
(398, 166, 192, 'ROUNAK (60X100 Gm)', '3808', '', '', '', '', 1, 'Case', '6150', ''),
(399, 166, 194, 'ROUNAK (24X250 Gm)', '', '', '', '', '', 1, 'Case', '6060', ''),
(400, 167, 143, 'SIGNET[Botanical Bio-Controller] (20mlx250)', '3101', '', '', '', '', 1, 'Case', '15000', ''),
(401, 167, 142, 'SIGNET[Botanical Bio-Controller] (50mlx100)', '3101', '', '', '', '', 1, 'Case', '14000', ''),
(403, 169, 83, 'CONFINE [Imidacloprid17.8%S.L] (1OOmlX50)', '3808', '', '', '', '', 1, 'Case', '4175', ''),
(404, 169, 84, 'CONFINE [Imidacloprid]17.8%SL] (50mlx50)', '3808', '', '', '', '', 1, 'Case', '2213', ''),
(405, 169, 97, 'NISCRON [Profenofos 50% EC] (500mlx20)', '3808', '', '', '', '', 1, 'Case', '4750', ''),
(406, 169, 98, 'NISCRON [Profenofos50%EC] (250mlx40)', '3808', '', '', '', '', 1, 'Case', '5000', ''),
(410, 170, 146, 'TAKU[Bio Plant Protector] (50gmx40)', '3101', '', '', '', '', 1, 'Case', '11000', ''),
(411, 170, 143, 'SIGNET[Botanical Bio-Controller] (20mlx250)', '3101', '', '', '', '', 1, 'Case', '15000', ''),
(412, 170, 127, 'CHEENI KUM[Special Thrips & Miter] (20mlx250)', '3101', '', '', '', '', 1, 'Case', '15000', ''),
(413, 172, 67, 'JADE [Chlorpyriphos20%E.C] (1ltrx10)', '3808', '', '', '', '', 1, 'Case', '2400', ''),
(414, 172, 68, 'JADE [Chlorpyriphos20%E.C] (500mlx20)', '3808', '', '', '', '', 1, 'Case', '2550', ''),
(415, 172, 69, 'JADE [Chlorpyriphos20%E.C] (250mlx40)', '3808', '', '', '', '', 1, 'Case', '2750', ''),
(416, 172, 70, 'JADE [Chlorpyriphos20%E.C] (100mlx50)', '3808', '', '', '', '', 1, 'Case', '1450', ''),
(417, 172, 72, 'SUPER KILL-25[Cypermethrin25%E.C] (500mlx20)', '3808', '', '', '', '', 1, 'Case', '4350', ''),
(419, 172, 73, 'SUPER KILL-25[Cypermethrin25%E.C] (250mlx40)', '3808', '', '', '', '', 1, 'Case', '4550', ''),
(420, 172, 74, 'SUPER KILL-25[Cypermethrin25%E.C] (100mlx50)', '3808', '', '', '', '', 1, 'Case', '2400', ''),
(421, 172, 194, 'ROUNAK (24X250 Gm)', '', '', '', '', '', 1, 'Case', '6060', ''),
(422, 173, 126, 'CHEENI KUM[Special Thrips & Miter] (50mlx100))', '3101', '', '', '', '', 1, 'Case', '13000', ''),
(423, 173, 133, 'PATINA[Green Fly] (50mlx100))', '3101', '', '', '', '', 1, 'Case', '14000', ''),
(424, 173, 136, 'SABA[Boi Fungicid] (100gmx16)', '3101', '', '', '', '', 1, 'Case', '8000', ''),
(425, 173, 137, 'SABA[Boi Fungicid] (50gmx40)', '3101', '', '', '', '', 1, 'Case', '11000', ''),
(426, 173, 142, 'SIGNET[Botanical Bio-Controller] (50mlx100)', '3101', '', '', '', '', 1, 'Case', '14000', ''),
(427, 173, 143, 'SIGNET[Botanical Bio-Controller] (20mlx250)', '3101', '', '', '', '', 1, 'Case', '15000', ''),
(428, 173, 145, 'TAKU[Bio Plant Protector] (100gmx15)', '3101', '', '', '', '', 1, 'Case', '7500', ''),
(429, 173, 146, 'TAKU[Bio Plant Protector] (50gmx40)', '3101', '', '', '', '', 1, 'Case', '11000', ''),
(430, 174, 142, 'SIGNET[Botanical Bio-Controller] (50mlx100)', '3101', '', '', '', '', 1, 'Case', '14000', ''),
(431, 174, 143, 'SIGNET[Botanical Bio-Controller] (20mlx250)', '3101', '', '', '', '', 1, 'Case', '15000', ''),
(432, 174, 197, 'SIGNET[Botanical Bio-Controller] (50x100 ml)', '', '', '', '', '', 1, 'Case', '13500', ''),
(434, 175, 47, 'HUMAX G ( 1KG X 25)', '3101', 'HMX-01', '2018-02-15', '2023-03-31', '25X 1KG', 48, 'Bag', '1700', ''),
(435, 176, 47, 'HUMAX G ( 1KG X 25)', '3101', 'HMX-01', '2018-02-15', '2023-03-31', '25X 1KG', 48, 'Bag', '1700', ''),
(436, 177, 125, 'CHEENI KUM[Special Thrips & Miter] (100mlx50)', '3101', '', '', '', '', 1, 'Case', '13000', ''),
(438, 177, 126, 'CHEENI KUM[Special Thrips & Miter] (50mlx100))', '3101', '', '', '', '', 1, 'Case', '13000', ''),
(439, 178, 177, 'SPREADER[WettingAgent] (100mlx100)', '3101', '', '', '', '', 1, 'Case', '2600', ''),
(440, 178, 176, 'SPREADER[WettingAgent] (250mlx40)', '3101', '', '', '', '', 1, 'Case', '2050', ''),
(446, 183, 126, 'CHEENI KUM[Special Thrips & Miter] (50mlx100))', '3101', '', '', '', '', 1, 'Case', '13000', ''),
(447, 183, 193, 'FLY OUT (250x20 ml)', '', '', '', '', '', 1, 'Case', '15250', ''),
(448, 183, 47, 'HUMAX G ( 1KG X 25)', '3101', 'HMX-01', '2018-02-15', '2023-03-31', '25X 1KG', 48, 'Bag', '1700', ''),
(449, 183, 198, 'NISROCH GOLD[Natural Plant Protector] (100 x 50 ml)', '', '', '', '', '', 1, 'Case', '14000', ''),
(450, 184, 72, 'SUPER KILL-25[Cypermethrin25%E.C] (500mlx20)', '3808', '', '', '', '', 3, 'Case', '4350', ''),
(452, 184, 73, 'SUPER KILL-25[Cypermethrin25%E.C] (250mlx40)', '3808', '', '', '', '', 1, 'Case', '4550', ''),
(453, 184, 74, 'SUPER KILL-25[Cypermethrin25%E.C] (100mlx50)', '3808', '', '', '', '', 2, 'Case', '2400', ''),
(454, 185, 88, 'ADAMANT[Imidacloprid70%WG] (30gmx75)', '3808', '', '', '', '', 1, 'Case', '6565', ''),
(455, 185, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', ' 250 ml x 40', 1, 'Case', '5750', ''),
(456, 186, 176, 'SPREADER[WettingAgent] (250mlx40)', '3101', '', '', '', '', 1, 'Case', '2250', ''),
(457, 186, 199, 'SPREADER[WettingAgent] (75x100 GM)', '', '', '', '', '', 1, 'Case', '1950', ''),
(459, 187, 47, 'HUMAX G ( 1KG X 25)', '3101', 'HMX-01', '2018-02-15', '2023-03-31', '25X 1KG', 4, 'Bag', '1700', ''),
(460, 188, 168, 'NITRO POWER- GR[Nitrobenzin Granules] (1kgx25)', '3101', '', '', '', '', 4, 'Bag', '2450', ''),
(461, 189, 168, 'NITRO POWER- GR[Nitrobenzin Granules] (1kgx25)', '3101', '', '', '', '', 8, 'Bag', '2450', ''),
(462, 190, 47, 'HUMAX G ( 1KG X 25)', '3101', 'HMX-01', '2018-02-15', '2023-03-31', '25X 1KG', 8, 'Bag', '1700', ''),
(463, 190, 203, 'CHEENI KUM[Special Thrips & Miter] (50x20 ml)', '', '', '', '', '', 1, 'Case', '3000', ''),
(464, 190, 201, 'SIGNET[Botanical Bio-Controller] (20x50 ml)', '', '', '', '', '', 1, 'Case', '2800', ''),
(465, 190, 202, 'SIGNET[Botanical Bio-Controller] (10x100 ml)', '', '', '', '', '', 1, 'Case', '2700', ''),
(466, 190, 203, 'CHEENI KUM[Special Thrips & Miter] (50x20 ml)', '', '', '', '', '', 1, 'Case', '3000', ''),
(467, 190, 204, 'CHEENI KUM[Special Thrips & Miter] (10x100 ml)', '', '', '', '', '', 1, 'Case', '2400', ''),
(470, 190, 205, 'FLY OUT (20ml x50)', '', '', '', '', '', 8, 'Case', '3050', ''),
(471, 191, 160, 'NISROCH GOLD[Natural Plant Protector] (100mlx50)', '3101', '', '', '', '', 1, 'Case', '13000', ''),
(472, 191, 198, 'NISROCH GOLD[Natural Plant Protector] (100 x 50 ml)', '', '', '', '', '', 1, 'Case', '14000', ''),
(473, 191, 162, 'NISROCH GOLD[Natural Plant Protector] (10mlx400)', '3101', '', '', '', '', 1, 'Case', '12000', ''),
(475, 193, 66, 'CAR 4G [Cartap Hydrocloride4%GR] (1kgx25)', '3808', '', '', '', '', 6, 'Bag', '1600', ''),
(476, 193, 206, 'WIL- 10 (25x1 KG)  ', '', '', '', '', '', 4, 'Bag', '1400', ''),
(478, 194, 66, 'CAR 4G [Cartap Hydrocloride4%GR] (1kgx25)', '3808', '', '', '', '', 4, 'Bag', '1600', ''),
(479, 194, 74, 'SUPER KILL-25[Cypermethrin25%E.C] (100mlx50)', '3808', '', '', '', '', 1, 'Case', '2400', ''),
(480, 194, 166, 'NITRO POWER[Nitrobenzin 35%] (100mlx100)', '3101', '', '', '', '', 1, 'Case', '4740', ''),
(481, 195, 167, 'NITRO POWER[Nitrobenzin 35%] (50mlx200)', '3101', '', '', '', '', 1, 'Case', '5300', ''),
(482, 197, 50, 'JHATKA [Chlorpyriphos50% EC+ Cypermethrin5%] (500ml x 20)', '3808', '', '', '', ' 500 ml x 20', 2, 'Case', '5350', ''),
(483, 197, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', ' 250 ml x 40', 2, 'Case', '5750', ''),
(484, 197, 52, 'JHATKA [ Chlorpyriphos 50% EC+ Cypermetrin 5%] (100ml x50)', '3808', '', '', '', '100 ml x 50 ', 2, 'Case', '2900', ''),
(486, 197, 73, 'SUPER KILL-25[Cypermethrin25%E.C] (250mlx40)', '3808', '', '', '', '', 2, 'Case', '4550', ''),
(487, 197, 74, 'SUPER KILL-25[Cypermethrin25%E.C] (100mlx50)', '3808', '', '', '', '', 2, 'Case', '2400', ''),
(489, 197, 206, 'WIL- 10 (25x1 KG)  ', '', '', '', '', '', 20, 'Bag', '1400', ''),
(491, 198, 85, 'CONFINE [Imidacloprid17.8%S.L] (10mlx400)', '3808', '', '', '', '', 1, 'Case', '3520', ''),
(492, 198, 66, 'CAR 4G [Cartap Hydrocloride4%GR] (1kgx25)', '3808', '', '', '', '', 20, 'Bag', '1600', ''),
(494, 198, 104, 'SAAN [Carbendazim 12% + Mancozeb 64%WP] (500gmx20))', '3808', '', '', '', '', 1, 'Case', '', ''),
(496, 198, 74, 'SUPER KILL-25[Cypermethrin25%E.C] (100mlx50)', '3808', '', '', '', '', 1, 'Case', '2400', ''),
(497, 198, 52, 'JHATKA [ Chlorpyriphos 50% EC+ Cypermetrin 5%] (100ml x50)', '3808', '', '', '', '100 ml x 50 ', 1, 'Case', '2900', ''),
(498, 199, 167, 'NITRO POWER[Nitrobenzin 35%] (50mlx200)', '3101', '', '', '', '', 1, 'Case', '5300', ''),
(500, 199, 47, 'HUMAX G ( 1KG X 25)', '3101', 'HMX-01', '2018-02-15', '2023-03-31', '25X 1KG', 20, 'Bag', '1700', ''),
(502, 199, 46, 'HUMAX PLUS [100mlx100]', '3101', 'HP-01', '2018-01-10', '2020-12-31', '100 X 100', 1, 'Case', '4980', ''),
(504, 201, 54, 'NISCRON PLUS [ Profenofos40%+ Cypermethrin4%] (100mlx50)', '3808', '', '', '', '100 ml x 50', 1, 'Case', '2550', ''),
(506, 202, 206, 'WIL- 10 (25x1 KG)  ', '', '', '', '', '', 8, 'Bag', '1400', ''),
(507, 202, 66, 'CAR 4G [Cartap Hydrocloride4%GR] (1kgx25)', '3808', '', '', '', '', 4, 'Bag', '1600', ''),
(510, 204, 200, 'SIGNET[Botanical Bio-Controller] (50x20 ml)', '', '', '', '', '', 50, 'Case', '3000', ''),
(511, 204, 47, 'HUMAX G ( 1KG X 25)', '3101', 'HMX-01', '2018-02-15', '2023-03-31', '25X 1KG', 2, 'Bag', '1700', ''),
(513, 204, 203, 'CHEENI KUM[Special Thrips & Miter] (50x20 ml)', '', '', '', '', '', 50, 'Case', '3000', ''),
(515, 205, 66, 'CAR 4G [Cartap Hydrocloride4%GR] (1kgx25)', '3808', '', '', '', '', 20, 'Bag', '1600', ''),
(521, 209, 210, 'VIP 95 (100gmx60)', '', '', '', '', '', 2, 'Case', '8376', ''),
(522, 211, 66, 'CAR 4G [Cartap Hydrocloride4%GR] (1kgx25)', '3808', '', '', '', '', 20, 'Bag', '1600', ''),
(523, 212, 66, 'CAR 4G [Cartap Hydrocloride4%GR] (1kgx25)', '3808', '', '', '', '', 50, 'Bag', '1600', ''),
(524, 213, 47, 'HUMAX G ( 1KG X 25)', '3101', 'HMX-01', '2018-02-15', '2023-03-31', '25X 1KG', 10, 'Bag', '1700', ''),
(525, 216, 168, 'NITRO POWER- GR[Nitrobenzin Granules] (1kgx25)', '3101', '', '', '', '', 10, 'Bag', '2450', ''),
(526, 219, 211, 'NISROCH GOLD[Natural Plant Protector] (50mlx100)', '3101', '', '', '', '', 1, 'Case', '14000', ''),
(527, 220, 142, 'SIGNET[Botanical Bio-Controller] (50mlx100)', '3101', '', '', '', '', 1, 'Case', '14000', ''),
(528, 221, 206, 'WIL- 10 (25x1 KG)  ', '', '', '', '', '', 10, 'Bag', '1400', ''),
(529, 222, 212, 'NAVAN (50X100 ML)', '3808', '', '', '', '', 1, 'Case', '2050', ''),
(530, 222, 53, 'NISCRON PLUS [Profenophos40%+ Cypermethrin5%] (250mlx40)', '', '', '', '', '40 X 250 ML', 1, 'Case', '4850', ''),
(531, 222, 54, 'NISCRON PLUS [ Profenofos40%+ Cypermethrin4%] (100mlx50)', '3808', '', '', '', '100 ml x 50', 1, 'Case', '2550', ''),
(537, 240, 206, 'WIL- 10 (25x1 KG)  ', '', '', '', '', '', 10, 'Bag', '1400', ''),
(538, 240, 212, 'NAVAN (50X100 ML)', '3808', '', '', '', '', 1, 'Case', '2050', ''),
(539, 240, 53, 'NISCRON PLUS [Profenophos40%+ Cypermethrin5%] (250mlx40)', '', '', '', '', '40 X 250 ML', 1, 'Case', '4850', ''),
(540, 240, 54, 'NISCRON PLUS [ Profenofos40%+ Cypermethrin4%] (100mlx50)', '3808', '', '', '', '100 ml x 50', 1, 'Case', '2550', ''),
(542, 243, 38, 'VIP 95 (50gmx60)', '3101', 'V95-01', '2018-01-30', '2021-01-31', '', 1, 'Case', '4428', ''),
(547, 245, 103, 'SAAN [Carbendazim12% + Mancozeb64%WP](1kgx10)', '3808', '', '', '', '', 1, 'Case', '3600', ''),
(548, 247, 104, 'SAAN [Carbendazim 12% + Mancozeb 64%WP] (500gmx20))', '3808', '', '', '', '', 1, 'Case', '3750', ''),
(549, 248, 127, 'CHEENI KUM[Special Thrips & Miter] (20mlx250)', '3101', '', '', '', '', 1, 'Case', '15000', ''),
(552, 251, 49, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5% Ec(1ltr X 10)', '3808', '', '', '', '1Ltr x 10', 1, 'Case', '5200', ''),
(553, 251, 50, 'JHATKA [Chlorpyriphos50% EC+ Cypermethrin5%] (500ml x 20)', '3808', '', '', '', ' 500 ml x 20', 1, 'Case', '5350', ''),
(554, 251, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', ' 250 ml x 40', 1, 'Case', '5750', ''),
(555, 251, 52, 'JHATKA [ Chlorpyriphos 50% EC+ Cypermetrin 5%] (100ml x50)', '3808', '', '', '', '100 ml x 50 ', 1, 'Case', '2900', ''),
(556, 251, 74, 'SUPER KILL-25[Cypermethrin25%E.C] (100mlx50)', '3808', '', '', '', '', 1, 'Case', '2400', ''),
(557, 251, 72, 'SUPER KILL-25[Cypermethrin25%E.C] (500mlx20)', '3808', '', '', '', '', 1, 'Case', '4350', ''),
(558, 251, 66, 'CAR 4G [Cartap Hydrocloride4%GR] (1kgx25)', '3808', '', '', '', '', 5, 'Bag', '1600', ''),
(559, 252, 72, 'SUPER KILL-25[Cypermethrin25%E.C] (500mlx20)', '3808', '', '', '', '', 1, 'Case', '4350', ''),
(560, 252, 73, 'SUPER KILL-25[Cypermethrin25%E.C] (250mlx40)', '3808', '', '', '', '', 1, 'Case', '4550', ''),
(561, 252, 53, 'NISCRON PLUS [Profenophos40%+ Cypermethrin5%] (250mlx40)', '', '', '', '', '40 X 250 ML', 1, 'Case', '4850', ''),
(562, 252, 54, 'NISCRON PLUS [ Profenofos40%+ Cypermethrin4%] (100mlx50)', '3808', '', '', '', '100 ml x 50', 1, 'Case', '2550', ''),
(564, 253, 49, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5% Ec(1ltr X 10)', '3808', '', '', '', '1Ltr x 10', 2, 'Case', '5200', ''),
(565, 253, 50, 'JHATKA [Chlorpyriphos50% EC+ Cypermethrin5%] (500ml x 20)', '3808', '', '', '', ' 500 ml x 20', 2, 'Case', '5350', ''),
(566, 253, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', ' 250 ml x 40', 1, 'Case', '5750', ''),
(567, 255, 153, 'HUMAX PLUS[Humic Acid 12 + A.A] (500mlx20)', '3101', '', '', '', '', 1, 'Case', '5350', ''),
(568, 258, 37, 'VIP 95 (500gmx12)', '3101', 'V95-01', '2018-01-30', '2021-01-13', '', 1, 'Case', '7656', ''),
(569, 258, 36, 'VIP 95 (250gmx24)', '3101', 'V95-01', '2018-01-30', '2021-03-01', '', 1, 'Case', '7896', ''),
(570, 263, 34, 'VIP 95 (100gmx60)', '3101', 'B95-01', '2018-01-30', '2021-03-12', '', 1, 'Case', '8376', ''),
(571, 264, 49, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5% Ec(1ltr X 10)', '3808', '', '', '', '1Ltr x 10', 1, 'Case', '5200', ''),
(572, 264, 50, 'JHATKA [Chlorpyriphos50% EC+ Cypermethrin5%] (500ml x 20)', '3808', '', '', '', ' 500 ml x 20', 1, 'Case', '5350', ''),
(573, 264, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', ' 250 ml x 40', 1, 'Case', '5750', ''),
(574, 264, 66, 'CAR 4G [Cartap Hydrocloride4%GR] (1kgx25)', '3808', '', '', '', '', 10, 'Bag', '1600', ''),
(575, 265, 49, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5% Ec(1ltr X 10)', '3808', '', '', '', '1Ltr x 10', 1, 'Case', '5200', ''),
(576, 266, 104, 'SAAN [Carbendazim 12% + Mancozeb 64%WP] (500gmx20))', '3808', '', '', '', '', 1, 'Case', '3750', ''),
(577, 266, 72, 'SUPER KILL-25[Cypermethrin25%E.C] (500mlx20)', '3808', '', '', '', '', 1, 'Case', '4350', ''),
(578, 268, 192, 'ROUNAK (60X100 Gm)', '3808', '', '', '', '', 1, 'Case', '6150', ''),
(579, 268, 191, 'ROUNAK (80X50 Gm)', '3808', '', '', '', '', 1, 'Case', '4200', ''),
(581, 268, 50, 'JHATKA [Chlorpyriphos50% EC+ Cypermethrin5%] (500ml x 20)', '3808', '', '', '', ' 500 ml x 20', 1, 'Case', '5350', ''),
(583, 268, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', ' 250 ml x 40', 1, 'Case', '5750', ''),
(584, 268, 52, 'JHATKA [ Chlorpyriphos 50% EC+ Cypermetrin 5%] (100ml x50)', '3808', '', '', '', '100 ml x 50 ', 1, 'Case', '2900', ''),
(585, 270, 45, 'NITRO POWER  (1ltrx10)', '3808', 'NP-01', '2018-01-30', '2020-01-31', '', 3, 'Case', '3960', ''),
(586, 270, 55, 'N-TARA [Thiamethoxam 25% WG] (100gmx 50)', '3808', '', '', '', '100 GM X 50 ', 1, 'Case', '4025', ''),
(587, 272, 160, 'NISROCH GOLD[Natural Plant Protector] (100mlx50)', '3101', '', '', '', '', 1, 'Case', '13000', ''),
(588, 274, 198, 'NISROCH GOLD[Natural Plant Protector] (100 x 50 ml)', '', '', '', '', '', 1, 'Case', '14000', ''),
(589, 274, 125, 'CHEENI KUM[Special Thrips & Miter] (100mlx50)', '3101', '', '', '', '', 1, 'Case', '13000', ''),
(590, 274, 126, 'CHEENI KUM[Special Thrips & Miter] (50mlx100))', '3101', '', '', '', '', 1, 'Case', '13000', ''),
(591, 275, 50, 'JHATKA [Chlorpyriphos50% EC+ Cypermethrin5%] (500ml x 20)', '3808', '', '', '', ' 500 ml x 20', 5, 'Case', '5350', ''),
(592, 275, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', ' 250 ml x 40', 5, 'Case', '5750', ''),
(593, 275, 52, 'JHATKA [ Chlorpyriphos 50% EC+ Cypermetrin 5%] (100ml x50)', '3808', '', '', '', '100 ml x 50 ', 3, 'Case', '2900', ''),
(594, 277, 71, 'SUPER KILL-25[Cypermethrin25%E.C] (1Ltrx10)', '3808', '', '', '', '', 10, 'Case', '4200', ''),
(595, 277, 72, 'SUPER KILL-25[Cypermethrin25%E.C] (500mlx20)', '3808', '', '', '', '', 5, 'Case', '4350', ''),
(596, 278, 66, 'CAR 4G [Cartap Hydrocloride4%GR] (1kgx25)', '3808', '', '', '', '', 1600, 'Bag', '1600', ''),
(597, 280, 212, 'NAVAN (50X100 ML)', '3808', '', '', '', '', 1, 'Case', '2050', ''),
(598, 282, 49, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5% Ec(1ltr X 10)', '3808', '', '', '', '1Ltr x 10', 1, 'Case', '5200', ''),
(599, 282, 50, 'JHATKA [Chlorpyriphos50% EC+ Cypermethrin5%] (500ml x 20)', '3808', '', '', '', ' 500 ml x 20', 1, 'Case', '5350', ''),
(600, 282, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', ' 250 ml x 40', 1, 'Case', '5750', ''),
(601, 282, 191, 'ROUNAK (80X50 Gm)', '3808', '', '', '', '', 1, 'Case', '4200', ''),
(602, 285, 152, 'HUMAX PLUS[Humic Acid 12 + A.A] (1ltrx10)', '3101', '', '', '', '', 1, 'Case', '5150', ''),
(603, 285, 153, 'HUMAX PLUS[Humic Acid 12 + A.A] (500mlx20)', '3101', '', '', '', '', 1, 'Case', '5350', ''),
(605, 287, 50, 'JHATKA [Chlorpyriphos50% EC+ Cypermethrin5%] (500ml x 20)', '3808', '', '', '', ' 500 ml x 20', 4, 'Case', '5350', ''),
(606, 287, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', ' 250 ml x 40', 4, 'Case', '5750', ''),
(607, 287, 52, 'JHATKA [ Chlorpyriphos 50% EC+ Cypermetrin 5%] (100ml x50)', '3808', '', '', '', '100 ml x 50 ', 2, 'Case', '2900', ''),
(608, 288, 49, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5% Ec(1ltr X 10)', '3808', '', '', '', '1Ltr x 10', 5, 'Case', '5200', ''),
(609, 288, 50, 'JHATKA [Chlorpyriphos50% EC+ Cypermethrin5%] (500ml x 20)', '3808', '', '', '', ' 500 ml x 20', 5, 'Case', '5350', ''),
(610, 288, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', ' 250 ml x 40', 3, 'Case', '5750', ''),
(611, 288, 52, 'JHATKA [ Chlorpyriphos 50% EC+ Cypermetrin 5%] (100ml x50)', '3808', '', '', '', '100 ml x 50 ', 1, 'Case', '2900', ''),
(613, 288, 66, 'CAR 4G [Cartap Hydrocloride4%GR] (1kgx25)', '3808', '', '', '', '', 10, 'Bag', '1600', ''),
(619, 290, 66, 'CAR 4G [Cartap Hydrocloride4%GR] (1kgx25)', '3808', '', '', '', '', 1600, 'Bag', '1600', ''),
(620, 291, 174, 'SPREADER[WettingAgent] (1ltrx10)', '3101', '', '', '', '', 1, 'Bag', '1800', ''),
(621, 291, 175, 'SPREADER[WettingAgent] (500mlx20)', '3101', '', '', '', '', 1, 'Case', '2000', ''),
(623, 291, 176, 'SPREADER[WettingAgent] (250mlx40)', '3101', '', '', '', '', 1, 'Case', '2200', ''),
(624, 297, 50, 'JHATKA [Chlorpyriphos50% EC+ Cypermethrin5%] (500ml x 20)', '3808', '', '', '', ' 500 ml x 20', 3, 'Case', '5350', ''),
(625, 297, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', ' 250 ml x 40', 2, 'Case', '5750', ''),
(626, 297, 52, 'JHATKA [ Chlorpyriphos 50% EC+ Cypermetrin 5%] (100ml x50)', '3808', '', '', '', '100 ml x 50 ', 2, 'Case', '2900', ''),
(627, 297, 206, 'WIL- 10 (25x1 KG)  ', '', '', '', '', '', 4, 'Bag', '1400', ''),
(628, 297, 66, 'CAR 4G [Cartap Hydrocloride4%GR] (1kgx25)', '3808', '', '', '', '', 4, 'Bag', '1600', ''),
(629, 298, 66, 'CAR 4G [Cartap Hydrocloride4%GR] (1kgx25)', '3808', '', '', '', '', 25, 'Bag', '1600', ''),
(630, 299, 127, 'CHEENI KUM[Special Thrips & Miter] (20mlx250)', '3101', '', '', '', '', 2, 'Case', '15000', ''),
(631, 300, 50, 'JHATKA [Chlorpyriphos50% EC+ Cypermethrin5%] (500ml x 20)', '3808', '', '', '', ' 500 ml x 20', 3, 'Case', '5350', ''),
(632, 300, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', ' 250 ml x 40', 2, 'Case', '5750', ''),
(633, 300, 52, 'JHATKA [ Chlorpyriphos 50% EC+ Cypermetrin 5%] (100ml x50)', '3808', '', '', '', '100 ml x 50 ', 2, 'Case', '2900', ''),
(634, 300, 206, 'WIL- 10 (25x1 KG)  ', '', '', '', '', '', 4, 'Bag', '1400', ''),
(635, 300, 66, 'CAR 4G [Cartap Hydrocloride4%GR] (1kgx25)', '3808', '', '', '', '', 4, 'Bag', '1600', ''),
(636, 300, 93, 'NISCRON PLUS[Profenofos 40% + Cypermethrin 4%EC] (100mlx50)', '3808', '', '', '', '', 1, 'Case', '2550', ''),
(637, 301, 50, 'JHATKA [Chlorpyriphos50% EC+ Cypermethrin5%] (500ml x 20)', '3808', '', '', '', ' 500 ml x 20', 3, 'Case', '5350', ''),
(638, 301, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', ' 250 ml x 40', 2, 'Case', '5750', ''),
(639, 301, 52, 'JHATKA [ Chlorpyriphos 50% EC+ Cypermetrin 5%] (100ml x50)', '3808', '', '', '', '100 ml x 50 ', 2, 'Case', '2900', ''),
(640, 301, 206, 'WIL- 10 (25x1 KG)  ', '', '', '', '', '', 4, 'Bag', '1400', ''),
(641, 301, 66, 'CAR 4G [Cartap Hydrocloride4%GR] (1kgx25)', '3808', '', '', '', '', 4, 'Bag', '1600', ''),
(642, 302, 50, 'JHATKA [Chlorpyriphos50% EC+ Cypermethrin5%] (500ml x 20)', '3808', '', '', '', ' 500 ml x 20', 3, 'Case', '5350', ''),
(643, 302, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', ' 250 ml x 40', 2, 'Case', '5750', ''),
(644, 302, 52, 'JHATKA [ Chlorpyriphos 50% EC+ Cypermetrin 5%] (100ml x50)', '3808', '', '', '', '100 ml x 50 ', 2, 'Case', '2900', ''),
(646, 302, 206, 'WIL- 10 (25x1 KG)  ', '', '', '', '', '', 4, 'Bag', '1400', ''),
(647, 302, 66, 'CAR 4G [Cartap Hydrocloride4%GR] (1kgx25)', '3808', '', '', '', '', 4, 'Bag', '1600', ''),
(648, 302, 93, 'NISCRON PLUS[Profenofos 40% + Cypermethrin 4%EC] (100mlx50)', '3808', '', '', '', '', 2, 'Case', '2550', ''),
(649, 303, 46, 'HUMAX PLUS [100mlx100]', '3101', 'HP-01', '2018-01-10', '2020-12-31', '100 X 100', 1, 'Case', '4980', ''),
(652, 307, 211, 'NISROCH GOLD[Natural Plant Protector] (50mlx100)', '3101', '', '', '', '', 1, 'Case', '14000', ''),
(653, 307, 142, 'SIGNET[Botanical Bio-Controller] (50mlx100)', '3101', '', '', '', '', 1, 'Case', '14000', ''),
(654, 308, 145, 'TAKU[Bio Plant Protector] (100gmx15)', '3101', '', '', '', '', 1, 'Case', '7500', ''),
(655, 308, 147, 'TAKU[Bio Plant Protector] (25gmx40)', '3101', '', '', '', '', 1, 'Case', '6000', ''),
(656, 308, 143, 'SIGNET[Botanical Bio-Controller] (20mlx250)', '3101', '', '', '', '', 1, 'Case', '15000', ''),
(661, 316, 68, 'JADE [Chlorpyriphos20%E.C] (500mlx20)', '3808', '', '', '', '', 1, 'Case', '2550', ''),
(662, 316, 69, 'JADE [Chlorpyriphos20%E.C] (250mlx40)', '3808', '', '', '', '', 2, 'Case', '2750', ''),
(663, 316, 70, 'JADE [Chlorpyriphos20%E.C] (100mlx50)', '3808', '', '', '', '', 1, 'Case', '1450', ''),
(664, 316, 99, 'NISCRON [Profenofos50%EC] (100mlx50)', '3808', '', '', '', '', 1, 'Case', '2700', ''),
(665, 317, 125, 'CHEENI KUM[Special Thrips & Miter] (100mlx50)', '3101', '', '', '', '', 1, 'Case', '13000', ''),
(666, 321, 168, 'NITRO POWER- GR[Nitrobenzin Granules] (1kgx25)', '3808', '', '', '', '', 2, 'Bag', '2450', ''),
(667, 322, 71, 'SUPER KILL-25[Cypermethrin25%E.C] (1Ltrx10)', '3808', '', '', '', '', 2, 'Case', '4200', ''),
(668, 325, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', ' 250 ml x 40', 1, 'Case', '5750', ''),
(669, 326, 71, 'SUPER KILL-25[Cypermethrin25%E.C] (1Ltrx10)', '3808', '', '', '', '', 2, 'Case', '4200', ''),
(670, 328, 47, 'HUMAX G ( 1KG X 25)', '3101', 'HMX-01', '2018-02-15', '2023-03-31', '25X 1KG', 10, 'Bag', '1700', ''),
(671, 329, 49, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5% Ec(1ltr X 10)', '3808', '', '', '', '1Ltr x 10', 3, 'Case', '5200', ''),
(672, 329, 50, 'JHATKA [Chlorpyriphos50% EC+ Cypermethrin5%] (500ml x 20)', '3808', '', '', '', ' 500 ml x 20', 2, 'Case', '5350', ''),
(673, 329, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', ' 250 ml x 40', 1, 'Case', '5750', ''),
(674, 330, 47, 'HUMAX G ( 1KG X 25)', '3101', 'HMX-01', '2018-02-15', '2023-03-31', '25X 1KG', 5, 'Bag', '1700', ''),
(675, 331, 168, 'NITRO POWER- GR[Nitrobenzin Granules] (1kgx25)', '3101', '', '', '', '', 5, 'Bag', '2450', ''),
(676, 331, 47, 'HUMAX G ( 1KG X 25)', '3101', 'HMX-01', '2018-02-15', '2023-03-31', '25X 1KG', 5, 'Bag', '1700', ''),
(677, 335, 91, 'NISCRON PLUS[Profenofos 40% +Cypermethrin 4%EC] (500mlx20)', '3808', '', '', '', '', 1, 'Case', '4650', ''),
(678, 335, 104, 'SAAN [Carbendazim 12% + Mancozeb 64%WP] (500gmx20))', '3808', '', '', '', '', 1, 'Case', '3750', ''),
(679, 336, 83, 'CONFINE [Imidacloprid17.8%S.L] (1OOmlX50)', '3808', '', '', '', '', 1, 'Case', '4175', ''),
(680, 336, 84, 'CONFINE [Imidacloprid]17.8%SL] (50mlx50)', '3808', '', '', '', '', 1, 'Case', '2100', ''),
(681, 336, 90, 'NISCRON PLUS[Profenofos40% + Cypermethrin 4%EC] (1ltrx10)', '3808', '', '', '', '', 3, 'Case', '4500', ''),
(682, 336, 91, 'NISCRON PLUS[Profenofos 40% +Cypermethrin 4%EC] (500mlx20)', '3808', '', '', '', '', 3, 'Case', '4650', ''),
(684, 336, 49, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5% Ec(1ltr X 10)', '3808', '', '', '', '1Ltr x 10', 1, 'Case', '5200', ''),
(685, 336, 50, 'JHATKA [Chlorpyriphos50% EC+ Cypermethrin5%] (500ml x 20)', '3808', '', '', '', ' 500 ml x 20', 1, 'Case', '5350', ''),
(686, 338, 83, 'CONFINE [Imidacloprid17.8%S.L] (1OOmlX50)', '3808', '', '', '', '', 1, 'Case', '4175', ''),
(687, 338, 84, 'CONFINE [Imidacloprid]17.8%SL] (50mlx50)', '3808', '', '', '', '', 1, 'Case', '2100', ''),
(688, 338, 90, 'NISCRON PLUS[Profenofos40% + Cypermethrin 4%EC] (1ltrx10)', '3808', '', '', '', '', 3, 'Case', '4500', ''),
(689, 338, 91, 'NISCRON PLUS[Profenofos 40% +Cypermethrin 4%EC] (500mlx20)', '3808', '', '', '', '', 3, 'Case', '4650', ''),
(690, 338, 49, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5% Ec(1ltr X 10)', '3808', '', '', '', '1Ltr x 10', 1, 'Case', '5200', ''),
(691, 338, 50, 'JHATKA [Chlorpyriphos50% EC+ Cypermethrin5%] (500ml x 20)', '3808', '', '', '', ' 500 ml x 20', 1, 'Case', '5350', ''),
(692, 339, 178, 'SPREADER[WettingAgent] (50x100ML)', '3101', '', '', '', '', 1, 'Case', '1250', ''),
(693, 341, 34, 'VIP 95 (100gmx60)', '3101', 'B95-01', '2018-01-30', '2021-03-12', '', 1, 'Case', '8376', ''),
(694, 342, 212, 'NAVAN (40X250 ML)', '3808', '', '', '', '', 1, 'Case', '3600', ''),
(695, 342, 206, 'WIL- 10 (25x1 KG)  ', '', '', '', '', '', 12, 'Bag', '1400', ''),
(696, 343, 90, 'NISCRON PLUS[Profenofos40% + Cypermethrin 4%EC] (1ltrx10)', '3808', '', '', '', '', 1, 'Case', '4500', ''),
(697, 343, 91, 'NISCRON PLUS[Profenofos 40% +Cypermethrin 4%EC] (500mlx20)', '3808', '', '', '', '', 1, 'Case', '4650', ''),
(698, 343, 49, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5% Ec(1ltr X 10)', '3808', '', '', '', '1Ltr x 10', 2, 'Case', '5200', ''),
(699, 345, 127, 'CHEENI KUM[Special Thrips & Miter] (20mlx250)', '3101', '', '', '', '', 3, 'Case', '15000', ''),
(700, 345, 126, 'CHEENI KUM[Special Thrips & Miter] (50mlx100))', '3101', '', '', '', '', 2, 'Case', '13000', ''),
(701, 345, 125, 'CHEENI KUM[Special Thrips & Miter] (100mlx50)', '3101', '', '', '', '', 1, 'Case', '13000', ''),
(702, 345, 143, 'SIGNET[Botanical Bio-Controller] (20mlx250)', '3101', '', '', '', '', 1, 'Case', '15000', ''),
(703, 345, 142, 'SIGNET[Botanical Bio-Controller] (50mlx100)', '3101', '', '', '', '', 1, 'Case', '14000', ''),
(704, 346, 99, 'NISCRON [Profenofos50%EC] (100mlx50)', '3808', '', '', '', '', 1, 'Case', '2700', ''),
(705, 351, 205, 'FLY OUT (20ml x100)', '3101', '', '', '', '', 1, 'Case', '64.05', ''),
(707, 351, 162, 'NISROCH GOLD[Natural Plant Protector] (10mlx200)', '3101', '', '', '', '', 1, 'Case', '31.50', ''),
(708, 351, 203, 'CHEENI KUM[Special Thrips & Miter] (80x20 ml)', '3101', '', '', '', '', 1, 'Case', '67.00', ''),
(711, 353, 145, 'TAKU[Bio Plant Protector] (100gmx15)', '3101', '', '', '', '', 1, 'Case', '525.00', ''),
(712, 353, 147, 'TAKU[Bio Plant Protector] (25gmx40)', '3101', '', '', '', '', 1, 'Case', '157.50', ''),
(713, 353, 193, 'FLY OUT (100x50 ml)', '3101', '', '', '', '', 1, 'Case', '139.12', ''),
(715, 353, 161, 'NISROCH GOLD[Natural Plant Protector] (50mlx50)', '3101', '', '', '', '', 1, 'Case', '147.00', ''),
(716, 353, 162, 'NISROCH GOLD[Natural Plant Protector] (10mlx100)', '3101', '', '', '', '', 1, 'Case', '31.50', ''),
(717, 353, 121, 'AGRISTAR [Bio Fungicide] (20mlx75))', '3101', '', '', '', '', 1, 'Case', '102.90', ''),
(719, 353, 177, 'SPREADER[WettingAgent] (100mlx100)', '3101', '', '', '', '', 1, 'Case', '30.68', ''),
(720, 353, 126, 'CHEENI KUM[Special Thrips & Miter] (50mlx100))', '3101', '', '', '', '', 1, 'Case', '136.50', ''),
(721, 354, 38, 'VIP 95 (50gmx60)', '3101', 'V95-01', '2018-01-30', '2021-01-31', '', 1, 'Case', '4428', ''),
(722, 354, 205, 'FLY OUT (50MLX40)', '3101', '', '', '', '', 1, 'Case', '139.12', ''),
(725, 354, 121, 'AGRISTAR [Bio Fungicide] (20mlx75))', '3101', '', '', '', '', 1, 'Case', '102.90', ''),
(726, 354, 47, 'HUMAX G ( 1KG X 25)', '3101', 'HMX-01', '2018-02-15', '2023-03-31', '25X 1KG', 1, 'Bag', '1700', ''),
(727, 355, 63, 'RAUNAK [Acetamipride20%Sp] (100gmx60)', '3808', '', '', '', '', 1, 'Case', '120.95', ''),
(728, 355, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', ' 250 ml x 40', 2, 'Case', '5750', ''),
(729, 355, 84, 'CONFINE [Imidacloprid]17.8%SL] (50mlx50)', '3808', '', '', '', '', 1, 'Case', '2100', ''),
(731, 355, 99, 'NISCRON [Profenofos50%EC] (100mlx50)', '3808', '', '', '', '', 1, 'Case', '63.72', ''),
(732, 355, 98, 'NISCRON [Profenofos50%EC] (250mlx40)', '3808', '', '', '', '', 1, 'Case', '147.5', ''),
(733, 356, 38, 'VIP 95 (50gmx60)', '3101', 'V95-01', '2018-01-30', '2021-01-31', '', 1, 'Case', '4428', ''),
(734, 356, 126, 'CHEENI KUM[Special Thrips & Miter] (50mlx100))', '3101', '', '', '', '', 1, 'Case', '136.50', ''),
(735, 356, 166, 'NITRO POWER[Nitrobenzin 35%] (100mlx50))', '3101', '', '', '', '', 1, 'Case', '55.93', ''),
(738, 356, 142, 'SIGNET[Botanical Bio-Controller] (50mlx100)', '3101', '', '', '', '', 1, 'Case', '147.00', ''),
(739, 356, 143, 'SIGNET[Botanical Bio-Controller] (20mlx250)', '3101', '', '', '', '', 1, 'Case', '63.00', ''),
(740, 357, 107, 'NISROCH STAR[Hexaconazole 5% EC] (1ltrx10)', '3808', '', '', '', '', 1, 'Case', '295.00', ''),
(741, 359, 192, 'ROUNAK (60X100 Gm)', '3808', '', '', '', '', 1, 'Case', '6150', ''),
(742, 359, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', ' 250 ml x 40', 2, 'Case', '5750', ''),
(744, 359, 84, 'CONFINE [Imidacloprid]17.8%SL] (50mlx50)', '3808', '', '', '', '', 1, 'Case', '52.21', ''),
(745, 359, 99, 'NISCRON [Profenofos50%EC] (100mlx50)', '3808', '', '', '', '', 1, 'Case', '63.72', ''),
(746, 359, 98, 'NISCRON [Profenofos50%EC] (250mlx40)', '3808', '', '', '', '', 1, 'Case', '147.5', ''),
(747, 360, 38, 'VIP 95 (50gmx60)', '3101', 'V95-01', '2018-01-30', '2021-01-31', '', 1, 'Case', '4428', ''),
(748, 360, 126, 'CHEENI KUM[Special Thrips & Miter] (50mlx100))', '3101', '', '', '', '', 1, 'Case', '136.50', ''),
(749, 360, 142, 'SIGNET[Botanical Bio-Controller] (50mlx100)', '3101', '', '', '', '', 1, 'Case', '147.00', ''),
(750, 360, 143, 'SIGNET[Botanical Bio-Controller] (20mlx250)', '3101', '', '', '', '', 1, 'Case', '63.00', ''),
(751, 360, 42, 'NITRO POWER  (100mlx100)', '3101', 'NP-01', '2018-01-30', '2020-01-31', '', 1, 'Case', '63.00', ''),
(768, 363, 47, 'HUMAX G ( 1KG X 25)', '3101', 'HMX-01', '2018-02-15', '2023-03-31', '25X 1KG', 1, 'Bag', '1700', ''),
(771, 364, 168, 'NITRO POWER- GR[Nitrobenzin Granules] (1kgx25)', '3101', '', '', '', '', 1, 'Bag', '2450', ''),
(772, 365, 213, 'x', '11', '22', '2018-10-12', '2018-10-13', 'Custom', 10, 'Piece', '500', '18'),
(773, 365, 213, 'x', '11', '22', '2018-10-12', '2018-10-13', 'Large', 10, 'Drum', '3000', '18'),
(774, 366, 214, 'Y', '11', '2', '2018-10-12', '2018-10-13', 'Custom', 10, 'Packet', '500', '12'),
(775, 366, 213, 'x', '11', '22', '2018-10-12', '2018-10-13', 'Large', 10, 'Drum', '3000', '18'),
(776, 367, 213, 'x', '11', '22', '2018-10-12', '2018-10-13', 'Large', 50, 'Drum', '3000', '18'),
(778, 368, 213, 'x', '11', '22', '2018-10-12', '2018-10-13', 'Custom', 2, 'Piece', '500', '18'),
(779, 368, 214, 'Y', '11', '2', '2018-10-12', '2018-10-13', 'Small', 10, 'Bag', '1000', '12'),
(781, 369, 214, 'Y', '11', '2', '2018-10-12', '2018-10-13', 'Custom', 1, 'Packet', '500', '12'),
(782, 369, 213, 'x', '11', '22', '2018-10-12', '2018-10-13', 'Custom', 1, 'Piece', '500', '18'),
(784, 370, 214, 'Y', '11', '2', '2018-10-12', '2018-10-13', 'Small', 1, 'Bag', '1000', '12'),
(789, 377, 145, 'TAKU[Bio Plant Protector] (100gmx15)', '3101', '', '', '', '', 1, 'Case', '525.00', '0'),
(790, 378, 147, 'TAKU[Bio Plant Protector] (25gmx40)', '3101', '', '', '', '', 1, 'Case', '157.50', '0'),
(794, 383, 215, 'AA', '123', '12', '2018-10-11', '2018-10-12', 'Large', 25, 'Case', '2000', '12'),
(795, 388, 49, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5% Ec(1ltr X 10)', '3808', '', '', '', '1Ltr x 10', 1, 'Case', '5400', ''),
(796, 389, 49, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5% Ec(1ltr X 10)', '3808', '', '', '', '1Ltr x 10', 1, 'Case', '5200', '0'),
(797, 389, 50, 'JHATKA [Chlorpyriphos50% EC+ Cypermethrin5%] (500ml x 20)', '3808', '', '', '', '500 ML X 20', 1, 'Case', '5350', '0'),
(798, 389, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', ' 250 ml x 40', 1, 'Case', '5550', '0'),
(799, 389, 52, 'JHATKA [ Chlorpyriphos 50% EC+ Cypermetrin 5%] (100ml x50)', '3808', '', '', '', '100 ml x 50 ', 2, 'Case', '2900', '0'),
(800, 390, 49, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5% Ec(1ltr X 10)', '3808', '', '', '', '1Ltr x 10', 1, 'Case', '5200', '0'),
(801, 390, 50, 'JHATKA [Chlorpyriphos50% EC+ Cypermethrin5%] (500ml x 20)', '3808', '', '', '', '500 ML X 20', 1, 'Case', '5350', '0'),
(802, 390, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', ' 250 ml x 40', 1, 'Case', '5550', '0'),
(803, 390, 52, 'JHATKA [ Chlorpyriphos 50% EC+ Cypermetrin 5%] (100ml x50)', '3808', '', '', '', '100 ml x 50 ', 2, 'Case', '2900', '0'),
(804, 390, 53, 'NISCRON PLUS [Profenophos40%+ Cypermethrin5%] (250mlx40)', '3808', '', '', '', '40 X 250 ML', 1, 'Case', '4850', '0'),
(805, 390, 99, 'NISCRON [Profenofos50%EC] (100mlx50)', '3808', '', '', '', '', 1, 'Case', '2700', '0'),
(806, 390, 55, 'N-TARA [Thiamethoxam 25% WG] (100gmx 50)', '3808', '', '', '', '100 GM X 50 ', 1, 'Case', '4325', '0'),
(807, 391, 217, 'zzz', '11', '22', '2018-11-02', '2018-12-21', 'Small', 1, 'Bag', '1000', '5'),
(808, 392, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', 'Custom', 10, '1 case', '143.75', '0'),
(810, 399, 45, 'NITRO POWER  (1ltrx10)', '3808', 'NP-01', '2018-01-30', '2020-01-31', '', 1, 'Case', '3960', '0'),
(812, 404, 219, 'JHATKA 505 (1LTRX10)', '3808', '', '', '', '', 1, 'Case', '5200', '18'),
(813, 404, 220, 'JHATKA 505 (500MLX20)', '3808', '', '', '', '1 case', 1, 'Case', '5350', '18'),
(814, 404, 221, 'JHATKA 505 (250MLX40)', '3808', '', '', '', '1 case', 1, 'Case', '5550', '18'),
(818, 410, 49, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5% Ec(1ltr X 10)', '3808', '', '', '', '1Ltr x 10', 1, 'Case', '5200', '0'),
(819, 412, 47, 'HUMAX G ( 1KG X 25)', '3101', 'HMX-01', '2018-02-15', '2023-03-31', '25X 1KG', 6, 'Bag', '1700', '0'),
(820, 413, 45, 'NITRO POWER  (1ltrx10)', '3808', 'NP-01', '2018-01-30', '2020-01-31', '', 1, 'Case', '3960', '0'),
(821, 414, 45, 'NITRO POWER  (1ltrx10)', '3808', 'NP-01', '2018-01-30', '2020-01-31', '', 1, 'Case', '3960', '0'),
(822, 415, 47, 'HUMAX G ( 1KG X 25)', '3101', 'HMX-01', '2018-02-15', '2023-03-31', '25X 1KG', 1, 'Bag', '1700', '0'),
(823, 416, 47, 'HUMAX G ( 1KG X 25)', '3101', 'HMX-01', '2018-02-15', '2023-03-31', '25X 1KG', 1, 'Bag', '1700', '0'),
(824, 419, 47, 'HUMAX G ( 1KG X 25)', '3101', 'HMX-01', '2018-02-15', '2023-03-31', '25X 1KG', 1, 'Bag', '1700', '0'),
(825, 420, 49, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5% Ec(1ltr X 10)', '3808', '', '', '', '1Ltr x 10', 1, 'Case', '5200', '0'),
(826, 421, 47, 'HUMAX G ( 1KG X 25)', '3101', 'HMX-01', '2018-02-15', '2023-03-31', '25X 1KG', 6, 'Bag', '1700', '0'),
(827, 421, 152, 'HUMAX PLUS[Humic Acid 12 + A.A] (1ltrx10)', '3101', '', '', '', '', 10, 'Case', '5150', '0'),
(828, 421, 153, 'HUMAX PLUS[Humic Acid 12 + A.A] (500mlx20)', '3101', '', '', '', '', 3, 'Case', '5350', '0'),
(829, 422, 47, 'HUMAX G ( 1KG X 25)', '3101', 'HMX-01', '2018-02-15', '2023-03-31', '25X 1KG', 6, 'Bag', '1700', '0'),
(830, 423, 47, 'HUMAX G ( 1KG X 25)', '3101', 'HMX-01', '2018-02-15', '2023-03-31', '25X 1KG', 6, 'Bag', '1700', '0'),
(831, 423, 152, 'HUMAX PLUS[Humic Acid 12 + A.A] (1ltrx10)', '3101', '', '', '', '', 10, 'Case', '5150', '0'),
(833, 424, 49, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5% Ec(1ltr X 10)', '3808', '', '', '', '1Ltr x 10', 1, 'Case', '5200', '0'),
(834, 424, 220, 'JHATKA 505 (500MLX20)', '3808', '', '', '', '1 case', 1, 'Case', '5350', '18'),
(835, 424, 221, 'JHATKA 505 (250MLX40)', '3808', '', '', '', '1 case', 1, 'Case', '5550', '18'),
(836, 424, 222, 'JHATKA 505 (100MLX50)', '3808', '', '', '', '1 case', 2, 'Case', '2900', '18'),
(837, 424, 53, 'NISCRON PLUS [Profenophos40%+ Cypermethrin5%] (250mlx40)', '3808', '', '', '', '40 X 250 ML', 1, 'Case', '4850', '0'),
(838, 424, 99, 'NISCRON [Profenofos50%EC] (100mlx50)', '3808', '', '', '', '', 1, 'Case', '2700', '0'),
(839, 424, 102, 'N-TARA [Thiamethoxam 25% WG] (50gmx100)', '3808', '', '', '', '', 1, 'Case', '7.61', '0'),
(840, 429, 239, 'HUMAX G', '3101', '', '', '', '25X 1KG', 6, 'Bag', '472', '5'),
(841, 429, 240, 'HUMAX PLUS (10X1LTR)', '3101', '', '', '', '(10X1LTR)', 1, 'Case', '1352', '5'),
(842, 429, 241, 'HUMAXPLUS', '3101', '', '', '', '(20X500)', 3, 'Case', '1144', '5'),
(843, 429, 242, 'HUMAX PLUS', '3101', '', '', '', '(40X250)', 2, 'Case', '1528', '5'),
(844, 429, 243, 'HUMAX', '3101', '', '', '', '(100X100ML)', 5, 'Case', '1779', '5'),
(845, 430, 239, 'HUMAX G(25X1KG)', '3101', '', '', '', '25X 1KG', 6, 'Bag', '2830.44', '5'),
(846, 430, 240, 'HUMAX PLUS (10X1LTR)', '3101', '', '', '', '(10X1LTR)', 10, 'Case', '13520', '5'),
(847, 430, 241, 'HUMAXPLUS(20X500ML)', '3101', '', '', '', '(20X500ML)', 3, 'Case', '3432', '5'),
(848, 430, 242, 'HUMAX PLUS(40X250ML)', '3101', '', '', '', '(40X250ML)', 2, 'Case', '3057.60', '5'),
(849, 430, 243, 'HUMAX PLUS(100X100ML)', '3101', '', '', '', '(100X100ML)', 5, 'Case', '8892', '5'),
(850, 431, 49, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5% Ec(1ltr X 10)', '3808', '', '', '', '1Ltr x 10', 1, 'Case', '5200', '0'),
(851, 431, 51, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5%EC (250mlX 40)', '3808', '', '', '', 'Custom', 1, '1 case', '143.75', '0'),
(853, 433, 240, 'HUMAX PLUS (10X1LTR)', '3101', '', '', '', '(10X1LTR)', 10, 'Case', '1352', '5'),
(854, 433, 241, 'HUMAXPLUS(20X500ML)', '3101', '', '', '', '(20X500ML)', 3, 'Case', '1144', '5'),
(855, 433, 242, 'HUMAX PLUS(40X250ML)', '3101', '', '', '', '(40X250ML)', 2, 'Case', '1528.80', '5'),
(856, 433, 243, 'HUMAX PLUS(100X100ML)', '3101', '', '', '', '(100X100ML)', 5, 'Case', '1778.40', '5'),
(857, 434, 47, 'HUMAX G ( 1KG X 25)', '3101', '', '', '', '25X 1KG', 6, 'Bag', '471.74', '5'),
(858, 434, 240, 'HUMAX PLUS (10X1LTR)', '3101', '', '', '', '(10X1LTR)', 10, 'Case', '1352', '5'),
(859, 434, 241, 'HUMAXPLUS(20X500ML)', '3101', '', '', '', '(20X500ML)', 3, 'Case', '1144', '5'),
(860, 434, 242, 'HUMAX PLUS(40X250ML)', '3101', '', '', '', '(40X250ML)', 2, 'Case', '1528.80', '5'),
(861, 434, 243, 'HUMAX PLUS(100X100ML)', '3101', '', '', '', '(100X100ML)', 5, 'Case', '1778.40', '5');
INSERT INTO `addcart` (`cart_id`, `invoiceId`, `prod_id`, `prod_name`, `hsn`, `batch`, `mdate`, `edate`, `psize`, `quantity`, `quantitytype`, `base_price`, `tax`) VALUES
(862, 435, 49, 'JHATKA [Chlorpyriphos50%EC+ Cypermethrin5% Ec(1ltr X 10)', '3808', '', '', '', '1Ltr x 10', 1, 'Case', '5200', '0'),
(863, 438, 47, 'HUMAX G ( 1KG X 25)', '3101', '', '', '', '25X 1KG', 6, 'Bag', '471.74', '5'),
(864, 438, 240, 'HUMAX PLUS (10X1LTR)', '3101', '', '', '', '(10X1LTR)', 10, 'Case', '1352', '5'),
(865, 438, 241, 'HUMAXPLUS(20X500ML)', '3101', '', '', '', '(20X500ML)', 3, 'Case', '1144', '5'),
(866, 438, 242, 'HUMAX PLUS(40X250ML)', '3101', '', '', '', '(40X250ML)', 2, 'Case', '1528.80', '5'),
(867, 438, 243, 'HUMAX PLUS(100X100ML)', '3101', '', '', '', '(100X100ML)', 5, 'Case', '1778.40', '5'),
(868, 439, 244, 'JHATKA 505 (1LTRX10)', '3808', '', '', '', '1Ltr x 10', 1, 'Case', '5200', '18'),
(869, 439, 245, 'JHATKA 505 (500MLX20)', '3808', '', '', '', '500ML X20', 1, 'Case', '5350', '18'),
(870, 439, 246, 'JHATKA 505 (250MLX40)', '3808', '', '', '', '250MLX40', 1, 'Case', '5550', '18'),
(871, 439, 247, 'JHATKA 505 (100MLX50)', '3808', '', '', '', '100MLX50', 2, 'Case', '2900', '18'),
(875, 439, 248, 'NISCRON PLUS(250MLX40)', '3808', '', '', '', '250MLX40', 1, 'Case', '4850', '18'),
(876, 439, 249, 'NISCRON (100MLX50)', '3808', '', '', '', '100MLX50', 1, 'Case', '2700', '18'),
(877, 439, 250, 'N-TARA(100GMX50)', '3808', '', '', '', '100GMX50', 1, 'Case', '4325', '18'),
(878, 440, 245, 'JHATKA 505 (500MLX20)', '3808', '', '', '', '500ML X20', 1, 'Case', '5350', '18'),
(879, 440, 246, 'JHATKA 505 (250MLX40)', '3808', '', '', '', '250MLX40', 1, 'Case', '5550', '18'),
(880, 440, 247, 'JHATKA 505 (100MLX50)', '3808', '', '', '', '100MLX50', 1, 'Case', '2900', '18'),
(881, 440, 248, 'NISCRON PLUS(250MLX40)', '3808', '', '', '', '250MLX40', 1, 'Case', '4850', '18'),
(882, 440, 251, 'NISCRON PLUS(100MLX50)', '3808', '', '', '', '100MLX50', 1, 'Case', '2550', '18'),
(883, 440, 252, 'SUPER KILL (250mlx40)', '3808', '', '', '', '250MLX40', 1, 'Case', '4550', '18'),
(884, 440, 253, 'SUPER KILL (100mlx50)', '3808', '', '', '', '100MLX50', 1, 'Case', '2400', '18'),
(885, 440, 254, 'SUPER KILL (500mlx20)', '3808', '', '', '', '500MLX20', 1, 'Case', '4350', '18'),
(886, 441, 249, 'NISCRON (100MLX50)', '3808', '', '', '', '100MLX50', 1, 'Case', '2700', '18'),
(887, 441, 255, 'ROUNAK (50GMX80)', '3808', '', '', '', '50GMX80', 1, 'Case', '4200', '18'),
(888, 441, 256, 'ROUNAK(100GMX60)', '3808', '', '', '', '100GMX60', 1, 'Case', '6150', '18'),
(889, 441, 244, 'JHATKA 505 (1LTRX10)', '3808', '', '', '', '1Ltr x 10', 1, 'Case', '5200', '18'),
(890, 441, 245, 'JHATKA 505 (500MLX20)', '3808', '', '', '', '500ML X20', 1, 'Case', '5350', '18'),
(891, 441, 246, 'JHATKA 505 (250MLX40)', '3808', '', '', '', '250MLX40', 1, 'Case', '5550', '18'),
(892, 441, 247, 'JHATKA 505 (100MLX50)', '3808', '', '', '', '100MLX50', 1, 'Case', '2900', '18'),
(893, 441, 252, 'SUPER KILL (250mlx40)', '3808', '', '', '', '250MLX40', 1, 'Case', '4550', '18'),
(894, 441, 253, 'SUPER KILL (100mlx50)', '3808', '', '', '', '100MLX50', 1, 'Case', '2400', '18'),
(895, 441, 257, 'JADE (250mlx40)', '3808', '', '', '', '250mlx40)', 1, 'Case', '2750', '18'),
(896, 441, 258, 'JADE (100mlx50)', '3808', '', '', '', '100MLX50', 1, 'Case', '1500', '18'),
(897, 442, 262, 'CHEENI KAM (50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '13000', '18'),
(898, 443, 244, 'JHATKA 505 (1LTRX10)', '3808', '', '', '', '1Ltr x 10', 1, 'Case', '5200', '18'),
(899, 443, 245, 'JHATKA 505 (500MLX20)', '3808', '', '', '', '500ML X20', 1, 'Case', '5350', '18'),
(900, 443, 246, 'JHATKA 505 (250MLX40)', '3808', '', '', '', '250MLX40', 1, 'Case', '5550', '18'),
(902, 443, 248, 'NISCRON PLUS(250MLX40)', '3808', '', '', '', '250MLX40', 1, 'Case', '4850', '18'),
(903, 443, 249, 'NISCRON (100MLX50)', '3808', '', '', '', '100MLX50', 1, 'Case', '2700', '18'),
(904, 443, 250, 'N-TARA(100GMX50)', '3808', '', '', '', '100GMX50', 1, 'Case', '4325', '18'),
(905, 443, 247, 'JHATKA 505 (100MLX50)', '3808', '', '', '', '100MLX50', 2, 'Case', '2900', '18'),
(906, 444, 263, 'NISROCH GOLD(10MLX400)', '3101', '', '', '', '10MLX400', 1, 'Case', '12000', '18'),
(907, 444, 264, 'SIGNET(20MLX250)', '3101', '', '', '', '20MLX250', 1, 'Case', '15000', '18'),
(908, 445, 263, 'NISROCH GOLD(10MLX400)', '3101', '', '', '', '10MLX400', 1, 'Case', '12000', '18'),
(909, 445, 264, 'SIGNET(20MLX250)', '3101', '', '', '', '20MLX250', 1, 'Case', '15000', '18'),
(911, 445, 265, 'FLY OUT(20MLX250)', '3101', '', '', '', '20MLX250', 1, 'Case', '15250', '18'),
(912, 446, 263, 'NISROCH GOLD(10MLX400)', '3101', '', '', '', '10MLX400', 1, 'Case', '12000', '18'),
(913, 446, 264, 'SIGNET(20MLX250)', '3101', '', '', '', '20MLX250', 1, 'Case', '15000', '18'),
(914, 446, 266, 'FLY OUT(20MLX250)', '3808', '', '', '', '(20MLX250)', 1, 'Case', '15250', '18'),
(915, 447, 263, 'NISROCH GOLD(10MLX400)', '3808', '', '', '', '10MLX400', 1, 'Case', '12000', '18'),
(917, 450, 267, 'NISROCH GOLD (10MLX400)', '3101', '', '', '', '10MLX400', 1, 'Case', '12000', '5'),
(918, 451, 267, 'NISROCH GOLD (10MLX400)', '3101', '', '', '', '10MLX400', 1, 'Case', '12000', '5'),
(921, 451, 269, 'SIGNET(20MLX250)', '3101', '', '', '', '20MLX250', 1, 'Case', '15000', '5'),
(922, 451, 265, 'FLY OUT(20MLX250)', '3101', '', '', '', '20MLX250', 1, 'Case', '15250', '5'),
(923, 452, 255, 'ROUNAK (50GMX80)', '3808', '', '', '', '50GMX80', 1, 'Case', '4200', '18'),
(924, 452, 256, 'ROUNAK(100GMX60)', '3808', '', '', '', '100GMX60', 1, 'Case', '6150', '18'),
(925, 452, 271, 'ROUNAK(250GMX24)', '3808', '', '', '', '250MLX24', 1, 'Case', '6060', '18'),
(926, 453, 248, 'NISCRON PLUS(250MLX40)', '3808', '', '', '', '250MLX40', 1, 'Case', '4850', '18'),
(927, 453, 251, 'NISCRON PLUS(100MLX50)', '3808', '', '', '', '100MLX50', 1, 'Case', '2550', '18'),
(928, 453, 271, 'ROUNAK(250GMX24)', '3808', '', '', '', '250MLX24', 1, 'Case', '6060', '18'),
(929, 453, 256, 'ROUNAK(100GMX60)', '3808', '', '', '', '100GMX60', 1, 'Case', '6150', '18'),
(930, 453, 255, 'ROUNAK (50GMX80)', '3808', '', '', '', '50GMX80', 1, 'Case', '4200', '18'),
(931, 453, 245, 'JHATKA 505 (500MLX20)', '3808', '', '', '', '500ML X20', 1, 'Case', '5350', '18'),
(932, 453, 246, 'JHATKA 505 (250MLX40)', '3808', '', '', '', '250MLX40', 1, 'Case', '5550', '18'),
(933, 453, 247, 'JHATKA 505 (100MLX50)', '3808', '', '', '', '100MLX50', 1, 'Case', '2900', '18'),
(934, 453, 254, 'SUPER KILL (500mlx20)', '3808', '', '', '', '500MLX20', 1, 'Case', '4350', '18'),
(935, 453, 252, 'SUPER KILL (250mlx40)', '3808', '', '', '', '250MLX40', 1, 'Case', '4550', '18'),
(936, 453, 253, 'SUPER KILL (100mlx50)', '3808', '', '', '', '100MLX50', 1, 'Case', '2400', '18'),
(937, 453, 272, 'NAGRON(100GMX60)', '3808', '', '', '', '100GMX60', 1, 'Case', '6600', '18'),
(938, 454, 253, 'SUPER KILL (100mlx50)', '3808', '', '', '', '100MLX50', 1, 'Case', '2400', '18'),
(939, 454, 244, 'JHATKA 505 (1LTRX10)', '3808', '', '', '', '1Ltr x 10', 1, 'Case', '5200', '18'),
(940, 454, 245, 'JHATKA 505 (500MLX20)', '3808', '', '', '', '500ML X20', 1, 'Case', '5350', '18'),
(941, 454, 246, 'JHATKA 505 (250MLX40)', '3808', '', '', '', '250MLX40', 1, 'Case', '5550', '18'),
(942, 454, 247, 'JHATKA 505 (100MLX50)', '3808', '', '', '', '100MLX50', 1, 'Case', '2900', '18'),
(943, 455, 273, 'NITRO POWER GR (1KGX25)', '3101', '', '', '', '1KGX25', 2, 'Bag', '2450', '18'),
(944, 456, 274, 'HUMAX G(1KGX25)', '3101', '', '', '', '1KGX25', 2, 'Bag', '1700', '5'),
(945, 457, 275, 'NISROCH GOLD (100MLX50)', '3101', '', '', '', '100MLX50', 1, 'Case', '13000', '5'),
(947, 458, 276, 'NISROCH GOLD(100MLX50)', '3101', '', '', '', '100MLX50', 1, 'Case', '13000', '5'),
(948, 458, 277, 'NISROCH GOLD (50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '14000', '5'),
(949, 458, 267, 'NISROCH GOLD (10MLX400)', '3101', '', '', '', '10MLX400', 1, 'Case', '12000', '5'),
(950, 458, 279, 'SIGNET(50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '15000', '5'),
(951, 458, 264, 'SIGNET(20MLX250)', '3808', '', '', '', '20MLX250', 1, 'Case', '15000', '5'),
(953, 459, 280, 'CHEENI KUM (50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '13000', '5'),
(954, 459, 275, 'NISROCH GOLD (100MLX50)', '3101', '', '', '', '100MLX50', 1, 'Case', '13000', '5'),
(955, 459, 277, 'NISROCH GOLD (50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '14000', '5'),
(956, 459, 279, 'SIGNET(50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '15000', '5'),
(957, 459, 264, 'SIGNET(20MLX250)', '3808', '', '', '', '20MLX250', 1, 'Case', '15000', '5'),
(959, 459, 263, 'NISROCH GOLD(10MLX400)', '3808', '', '', '', '10MLX400', 1, 'Case', '12000', '18'),
(960, 460, 281, 'SPREDER(1LTRX10)', '3402', '', '', '', '1LTRX10', 1, 'Case', '1800', '18'),
(961, 460, 282, 'SPREDER(500MLX20)', '3402', '', '', '', '500MLX20', 1, 'Case', '2000', '18'),
(962, 460, 283, 'SPREDER(250MLX40)', '3402', '', '', '', '250MLX40', 1, 'Case', '2200', '18'),
(963, 461, 256, 'ROUNAK(100GMX60)', '3808', '', '', '', '100GMX60', 1, 'Case', '6150', '18'),
(964, 461, 255, 'ROUNAK (50GMX80)', '3808', '', '', '', '50GMX80', 1, 'Case', '4200', '18'),
(965, 461, 246, 'JHATKA 505 (250MLX40)', '3808', '', '', '', '250MLX40', 1, 'Case', '5550', '18'),
(966, 461, 247, 'JHATKA 505 (100MLX50)', '3808', '', '', '', '100MLX50', 1, 'Case', '2900', '18'),
(967, 462, 280, 'CHEENI KUM (50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '13000', '5'),
(968, 462, 284, 'CHEENI KUM (20MLX250)', '3101', '', '', '', '20MLX250', 1, 'Case', '15000', '5'),
(970, 462, 285, 'PATINA (50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '14000', '5'),
(971, 463, 249, 'NISCRON (100MLX50)', '3808', '', '', '', '100MLX50', 1, 'Case', '2700', '18'),
(972, 463, 288, 'NISCRON(250MLX40)', '3808', '', '', '', '250MLX40', 1, 'Case', '5000', '18'),
(973, 463, 252, 'SUPER KILL (250mlx40)', '3808', '', '', '', '250MLX40', 1, 'Case', '4550', '18'),
(974, 463, 253, 'SUPER KILL (100mlx50)', '3808', '', '', '', '100MLX50', 1, 'Case', '2400', '18'),
(975, 463, 286, 'SPREDER (250MLX40)', '3808', '', '', '', '250MLX40', 1, 'Case', '2200', '18'),
(976, 463, 287, 'SPREDER(100MLX100)', '3808', '', '', '', '100MLX100', 1, 'Case', '2600', '18'),
(977, 463, 247, 'JHATKA 505 (100MLX50)', '3808', '', '', '', '100MLX50', 1, 'Case', '2900', '18'),
(978, 464, 266, 'FLY OUT(20MLX250)', '3808', '', '', '', '(20MLX250)', 1, 'Case', '15250', '5'),
(980, 465, 280, 'CHEENI KUM (50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '13000', '5'),
(981, 465, 284, 'CHEENI KUM (20MLX250)', '3101', '', '', '', '20MLX250', 1, 'Case', '15000', '5'),
(983, 466, 291, 'CONFINE(100MLX50)', '3808', '', '', '', '100MLX50', 1, 'Case', '4175', '18'),
(984, 466, 292, 'CONFINE (50MLX50)', '3808', '', '', '', '50MLX50', 1, 'Case', '2213', '18'),
(985, 466, 290, 'CONFINE(250MLX40)', '3808', '', '', '', '250MLX40', 1, 'Case', '7850', '18'),
(986, 466, 293, 'CONFINE(10MLX400)', '3808', '', '', '', '10MLX400', 1, 'Case', '4740', '18'),
(987, 467, 273, 'NITRO POWER GR (1KGX25)', '3101', '', '', '', '1KGX25', 4, 'Bag', '2450', '18'),
(988, 468, 284, 'CHEENI KUM (20MLX250)', '3101', '', '', '', '20MLX250', 1, 'Case', '15000', '5'),
(989, 468, 264, 'SIGNET(20MLX250)', '3101', '', '', '', '20MLX250', 1, 'Case', '15000', '5'),
(990, 469, 275, 'NISROCH GOLD (100MLX50)', '3101', '', '', '', '100MLX50', 1, 'Case', '13000', ''),
(991, 469, 277, 'NISROCH GOLD (50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '14000', ''),
(992, 469, 294, 'HUMAX PLUS (250MLX40)', '3101', '', '', '', '250MLX40', 1, 'Case', '13000', ''),
(993, 469, 295, 'HUMAX PLUS (100MLX100)', '3101', '', '', '', '100MLX100', 1, 'Case', '6050', ''),
(995, 470, 277, 'NISROCH GOLD (50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '14000', '5'),
(996, 470, 275, 'NISROCH GOLD (100MLX50)', '3101', '', '', '', '100MLX50', 1, 'Case', '13000', '5'),
(997, 470, 295, 'HUMAX PLUS (100MLX100)', '3101', '', '', '', '100MLX100', 1, 'Case', '6050', '5'),
(998, 470, 294, 'HUMAX PLUS (250MLX40)', '3101', '', '', '', '250MLX40', 1, 'Case', '13000', '5'),
(999, 471, 275, 'NISROCH GOLD (100MLX50)', '3101', '', '', '', '100MLX50', 1, 'Case', '13000', '5'),
(1000, 471, 277, 'NISROCH GOLD (50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '14000', '5'),
(1001, 471, 294, 'HUMAX PLUS (250MLX40)', '3101', '', '', '', '250MLX40', 1, 'Case', '13000', '5'),
(1002, 471, 295, 'HUMAX PLUS (100MLX100)', '3101', '', '', '', '100MLX100', 1, 'Case', '6050', '5'),
(1003, 472, 275, 'NISROCH GOLD (100MLX50)', '3101', '', '', '', '100MLX50', 1, 'Case', '13000', '5'),
(1004, 472, 277, 'NISROCH GOLD (50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '14000', '5'),
(1005, 472, 296, 'HUMAX PLUS (250MLX40)', '3101', '', '', '', '250MLX40', 1, 'Case', '5650', '5'),
(1006, 472, 295, 'HUMAX PLUS (100MLX100)', '3101', '', '', '', '100MLX100', 1, 'Case', '6050', '5'),
(1007, 473, 266, 'FLY OUT(20MLX250)', '3808', '', '', '', '(20MLX250)', 1, 'Case', '15250', '5'),
(1008, 473, 289, 'PATINA(20MLX250)', '3101', '', '', '', '20MLX250', 1, 'Case', '16000', '5'),
(1009, 474, 280, 'CHEENI KUM (50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '13000', '5'),
(1010, 474, 284, 'CHEENI KUM (20MLX250)', '3101', '', '', '', '20MLX250', 1, 'Case', '15000', '5'),
(1011, 474, 279, 'SIGNET(50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '14000', '5'),
(1012, 474, 285, 'PATINA (50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '14000', '5'),
(1013, 475, 297, 'nitro power gr (1KGX25)', '3808', '', '', '', '1KGX25', 4, 'Bag', '2450', '18'),
(1014, 476, 244, 'JHATKA 505 (1LTRX10)', '3808', '', '', '', '1Ltr x 10', 1, 'Case', '5200', '18'),
(1015, 476, 245, 'JHATKA 505 (500MLX20)', '3808', '', '', '', '500ML X20', 1, 'Case', '5350', '18'),
(1016, 476, 246, 'JHATKA 505 (250MLX40)', '3808', '', '', '', '250MLX40', 1, 'Case', '5550', '18'),
(1017, 476, 247, 'JHATKA 505 (100MLX50)', '3808', '', '', '', '100MLX50', 1, 'Case', '2900', '18'),
(1018, 476, 256, 'ROUNAK(100GMX60)', '3808', '', '', '', '100GMX60', 1, 'Case', '6150', '18'),
(1019, 476, 255, 'ROUNAK (50GMX80)', '3808', '', '', '', '50GMX80', 1, 'Case', '4200', '18'),
(1020, 477, 298, 'SIGNET (100MLX50)', '3101', '', '', '', '100MLX50', 1, 'Case', '13500', '5'),
(1021, 477, 279, 'SIGNET(50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '14000', '5'),
(1022, 478, 264, 'SIGNET(20MLX250)', '3101', '', '', '', '20MLX250', 1, 'Case', '15000', '5'),
(1023, 478, 279, 'SIGNET(50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '14000', '5'),
(1024, 478, 299, 'NISROCH GOLD (10MLX400)', '3101', '', '', '', '10MLX400', 1, 'Case', '12000', '5'),
(1025, 479, 289, 'PATINA(20MLX250)', '3101', '', '', '', '20MLX250', 1, 'Case', '16000', '5'),
(1026, 479, 266, 'FLY OUT(20MLX250)', '3808', '', '', '', '(20MLX250)', 1, 'Case', '15250', '5'),
(1027, 480, 287, 'SPREDER(100MLX100)', '3808', '', '', '', '100MLX100', 1, 'Case', '2600', '18'),
(1028, 481, 255, 'ROUNAK (50GMX80)', '3808', '', '', '', '50GMX80', 1, 'Case', '4200', '18'),
(1029, 481, 256, 'ROUNAK(100GMX60)', '3808', '', '', '', '100GMX60', 1, 'Case', '6150', '18'),
(1030, 481, 271, 'ROUNAK(250GMX24)', '3808', '', '', '', '250MLX24', 1, 'Case', '6060', '18'),
(1031, 482, 264, 'SIGNET(20MLX250)', '3101', '', '', '', '20MLX250', 1, 'Case', '15000', '5'),
(1032, 482, 279, 'SIGNET(50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '14000', '5'),
(1033, 484, 300, 'TAKU(25GMX40)', '3101', '', '', '', '25GMX40', 1, 'Case', '11000', '5'),
(1034, 484, 264, 'SIGNET(20MLX250)', '3101', '', '', '', '20MLX250', 1, 'Case', '15000', '5'),
(1035, 484, 284, 'CHEENI KUM (20MLX250)', '3101', '', '', '', '20MLX250', 1, 'Case', '15000', '5'),
(1036, 486, 301, 'NISCRON(500MLX20)', '3808', '', '', '', '500MLX20', 1, 'Case', '4750', '18'),
(1037, 486, 288, 'NISCRON(250MLX40)', '3808', '', '', '', '250MLX40', 1, 'Case', '5000', '18'),
(1038, 486, 291, 'CONFINE(100MLX50)', '3808', '', '', '', '100MLX50', 1, 'Case', '4175', '18'),
(1039, 486, 292, 'CONFINE (50MLX50)', '3808', '', '', '', '50MLX50', 1, 'Case', '2213', '18'),
(1040, 487, 302, 'JADE(10LTRX1)', '3808', '', '', '', '10LTRX1', 1, 'Case', '2400', '18'),
(1041, 487, 303, 'JADE(500MLX20)', '3808', '', '', '', '500MLX20', 1, 'Case', '2550', '18'),
(1042, 487, 257, 'JADE (250mlx40)', '3808', '', '', '', '250mlx40)', 1, 'Case', '2750', '18'),
(1043, 487, 258, 'JADE (100mlx50)', '3808', '', '', '', '100MLX50', 1, 'Case', '1500', '18'),
(1044, 487, 254, 'SUPER KILL (500mlx20)', '3808', '', '', '', '500MLX20', 1, 'Case', '4350', '18'),
(1045, 487, 252, 'SUPER KILL (250mlx40)', '3808', '', '', '', '250MLX40', 1, 'Case', '4550', '18'),
(1046, 487, 253, 'SUPER KILL (100mlx50)', '3808', '', '', '', '100MLX50', 1, 'Case', '2400', '18'),
(1047, 487, 271, 'ROUNAK(250GMX24)', '3808', '', '', '', '250MLX24', 1, 'Case', '6060', '18'),
(1048, 489, 280, 'CHEENI KUM (50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '13000', '5'),
(1049, 489, 285, 'PATINA (50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '14000', '5'),
(1052, 489, 279, 'SIGNET(50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '14000', '5'),
(1053, 489, 264, 'SIGNET(20MLX250)', '3101', '', '', '', '20MLX250', 1, 'Case', '15000', '5'),
(1054, 489, 300, 'TAKU(25GMX40)', '3101', '', '', '', '25GMX40', 1, 'Case', '11000', '5'),
(1055, 489, 306, 'SABA(50GMX40)', '3101', '', '', '', '50GMX40', 1, 'Case', '8000', '5'),
(1056, 489, 305, 'SABA(100GMX16)', '3101', '', '', '', '100MLX16', 1, 'Case', '8000', '5'),
(1057, 490, 280, 'CHEENI KUM (50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '13000', '5'),
(1058, 490, 285, 'PATINA (50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '14000', '5'),
(1059, 490, 305, 'SABA(100GMX16)', '3101', '', '', '', '100MLX16', 1, 'Case', '8000', '5'),
(1060, 490, 279, 'SIGNET(50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '14000', '5'),
(1061, 490, 264, 'SIGNET(20MLX250)', '3101', '', '', '', '20MLX250', 1, 'Case', '15000', '5'),
(1062, 490, 300, 'TAKU(25GMX40)', '3101', '', '', '', '25GMX40', 1, 'Case', '6000', '5'),
(1064, 490, 307, 'TAKU(100GMX15)', '3101', '', '', '', '100GMX15', 1, 'Case', '7500', '5'),
(1066, 491, 280, 'CHEENI KUM (50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '13000', '5'),
(1067, 491, 285, 'PATINA (50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '14000', '5'),
(1068, 491, 305, 'SABA(100GMX16)', '3101', '', '', '', '100MLX16', 1, 'Case', '8000', '5'),
(1069, 491, 279, 'SIGNET(50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '14000', '5'),
(1070, 491, 264, 'SIGNET(20MLX250)', '3101', '', '', '', '20MLX250', 1, 'Case', '15000', '5'),
(1071, 491, 300, 'TAKU(25GMX40)', '3101', '', '', '', '25GMX40', 1, 'Case', '6000', '5'),
(1072, 491, 306, 'SABA(50GMX40)', '3101', '', '', '', '50GMX40', 1, 'Case', '11000', '5'),
(1073, 491, 307, 'TAKU(100GMX15)', '3101', '', '', '', '100GMX15', 1, 'Case', '7500', '5'),
(1074, 492, 298, 'SIGNET (100MLX50)', '3101', '', '', '', '100MLX50', 1, 'Case', '13500', '5'),
(1075, 492, 279, 'SIGNET(50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '14000', '5'),
(1076, 492, 264, 'SIGNET(20MLX250)', '3101', '', '', '', '20MLX250', 1, 'Case', '15000', '5'),
(1077, 493, 274, 'HUMAX G(1KGX25)', '3101', '', '', '', '1KGX25', 48, 'Bag', '1700', '5'),
(1078, 494, 274, 'HUMAX G(1KGX25)', '3101', '', '', '', '1KGX25', 48, 'Bag', '1700', '5'),
(1079, 495, 287, 'SPREDER(100MLX100)', '3808', '', '', '', '100MLX100', 1, 'Case', '2600', '18'),
(1080, 495, 286, 'SPREDER (250MLX40)', '3808', '', '', '', '250MLX40', 1, 'Case', '2200', '18'),
(1081, 496, 308, 'CHEENI KUM(100MLX50)', '3101', '', '', '', '100MLX50', 1, 'Case', '12000', '5'),
(1082, 496, 280, 'CHEENI KUM (50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '13000', '5'),
(1084, 500, 274, 'HUMAX G(1KGX25)', '3101', '', '', '', '1KGX25', 48, 'Bag', '1700', '5'),
(1085, 501, 309, 'CONFINE(250MLX29)', '3808', '', '', '', 'Custom', 29, '29', '193', '18'),
(1086, 501, 292, 'CONFINE (50MLX50)', '3808', '', '', '', '50MLX50', 1, 'Case', '2213', '18'),
(1087, 501, 293, 'CONFINE(10MLX400)', '3808', '', '', '', '10MLX400', 1, 'Case', '4740', '18'),
(1088, 503, 274, 'HUMAX G(1KGX25)', '3101', '', '', '', '1KGX25', 48, 'Bag', '1700', '5'),
(1089, 506, 313, 'CHEENI KAM (50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '13000', '5'),
(1090, 506, 265, 'FLY OUT(20MLX250)', '3101', '', '', '', '20MLX250', 1, 'Case', '15250', '5'),
(1091, 507, 244, 'JHATKA 505 (1LTRX10)', '3808', '', '', '', '1Ltr x 10', 1, 'Case', '5200', '18'),
(1092, 508, 280, 'CHEENI KUM (50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '13000', '5'),
(1093, 508, 266, 'FLY OUT(20MLX250)', '3808', '', '', '', '(20MLX250)', 1, 'Case', '15250', '5'),
(1094, 508, 274, 'HUMAX G(1KGX25)', '3101', '', '', '', '1KGX25', 48, 'Bag', '1700', '5'),
(1095, 508, 277, 'NISROCH GOLD (50MLX100)', '3101', '', '', '', '50MLX100', 1, 'Case', '14000', '5'),
(1096, 509, 254, 'SUPER KILL (500mlx20)', '3808', '', '', '', '500MLX20', 3, 'Case', '4350', '18'),
(1097, 510, 254, 'SUPER KILL (500mlx20)', '3808', '', '', '', '500MLX20', 3, 'Case', '4350', '18'),
(1098, 511, 314, 'SUPER KILL (500mlx20)', '3808', '', '', '', '500mlx20', 3, 'Case', '4350', '18'),
(1099, 512, 315, 'ADMANT(30GMX75)', '3808', '', '', '', '30GMX75', 1, 'Case', '6525', '18'),
(1100, 512, 316, 'SPREADER(100MLX75)', '3808', '', '', '', '100MLX75', 1, 'Case', '1950', '18'),
(1101, 512, 286, 'SPREDER (250MLX40)', '3808', '', '', '', '250MLX40', 1, 'Case', '2200', '18'),
(1102, 512, 246, 'JHATKA 505 (250MLX40)', '3808', '', '', '', '250MLX40', 1, 'Case', '5550', '18'),
(1103, 513, 315, 'ADMANT(30GMX75)', '3808', '', '', '', '30GMX75', 1, 'Case', '6525', '18'),
(1104, 513, 316, 'SPREADER(100MLX75)', '3808', '', '', '', '100MLX75', 1, 'Case', '1950', '18'),
(1107, 513, 246, 'JHATKA 505 (250MLX40)', '3808', '', '', '', '250MLX40', 1, 'Case', '5750', '18'),
(1108, 513, 286, 'SPREDER (250MLX40)', '3808', '', '', '', '250MLX40', 1, 'Case', '2250', '18'),
(1109, 514, 274, 'HUMAX G(1KGX25)', '3101', '', '', '', '1KGX25', 4, 'Bag', '1700', '5'),
(1110, 515, 297, 'nitro power gr (1KGX25)', '3808', '', '', '', '1KGX25', 4, 'Bag', '2450', '18'),
(1111, 516, 274, 'HUMAX G(1KGX25)', '3101', '', '', '', '1KGX25', 8, 'Bag', '1700', '5'),
(1112, 517, 274, 'HUMAX G(1KGX25)', '3101', '', '', '', '1KGX25', 8, 'Bag', '1700', '5'),
(1113, 517, 318, 'SIGNET(20MLX50)', '3101', '', '', '', '20MLX50', 1, 'Case', '3000', '18'),
(1114, 518, 274, 'HUMAX G(1KGX25)', '3101', '', '', '', '1KGX25', 8, 'Bag', '1700', '5'),
(1115, 519, 274, 'HUMAX G(1KGX25)', '3101', '', '', '', '1KGX25', 8, 'Bag', '1700', '5'),
(1119, 519, 322, 'CHEENI KUM(20MLX50)', '3101', '', '', '', '20MLX50', 1, 'Case', '3000', '5'),
(1120, 519, 323, 'CHEENIKUM(100MLX10)', '3101', '', '', '', '100MLX10', 1, 'Case', '2400', '5'),
(1121, 519, 324, 'FLYOUT(20MLX50)', '3101', '', '', '', '20MLX50', 1, 'Case', '3050', '5'),
(1122, 519, 321, 'SIGNET(100MLX10)', '3101', '', '', '', '100MLX10', 1, 'Case', '2700', '5'),
(1123, 520, 274, 'HUMAX G(1KGX25)', '3101', '', '', '', '1KGX25', 8, 'Bag', '1700', '5'),
(1124, 520, 326, 'SIGNET(20MLX50)', '3101', '', '', '', '20MLX50', 1, 'Case', '3000', '5'),
(1125, 520, 325, 'SIGNET(50MLX20)', '3101', '', '', '', '500MLX20', 1, 'Case', '2800', '5'),
(1126, 520, 321, 'SIGNET(100MLX10)', '3101', '', '', '', '100MLX10', 1, 'Case', '2700', '5'),
(1127, 520, 322, 'CHEENI KUM(20MLX50)', '3101', '', '', '', '20MLX50', 1, 'Case', '3000', '5'),
(1128, 520, 323, 'CHEENIKUM(100MLX10)', '3101', '', '', '', '100MLX10', 1, 'Case', '2400', '5'),
(1129, 520, 323, 'CHEENIKUM(100MLX10)', '3101', '', '', '', '100MLX10', 1, 'Case', '2400', '5'),
(1130, 520, 324, 'FLYOUT(20MLX50)', '3101', '', '', '', '20MLX50', 1, 'Case', '3050', '5'),
(1131, 521, 244, 'JHATKA 505 (1LTRX10)', '3808', '', '', '', '1Ltr x 10', 1, 'Case', '5200', '18'),
(1132, 521, 245, 'JHATKA 505 (500MLX20)', '3808', '', '', '', '500ML X20', 1, 'Case', '5350', '18');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `type` varchar(25) NOT NULL,
  `number` text NOT NULL,
  `address` text,
  `designationid` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `name`, `username`, `password`, `type`, `number`, `address`, `designationid`) VALUES
(1, 'Admin', 'iewd1285@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Admin', '7289811035', NULL, NULL),
(2, 'sonu kumar', 'abc@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Staff', '8882898362', NULL, NULL),
(3, 'Ramesh', 'ramesh@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Staff', '0987654321', NULL, NULL),
(4, 'Sameer', 'xyz@nisroch.in', '2e92962c0b6996add9517e4242ea9bdc', 'Staff', '0987654345', NULL, NULL),
(5, 'test', 'test@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Staff', '11', NULL, NULL),
(6, 'OmPrakash', 'iewd1285@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Staff', '9631468887', 'Patna', 2);

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `bill_id` int(11) NOT NULL,
  `Invoice` varchar(255) NOT NULL,
  `Billtaxtype` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `Distributor_id` int(11) NOT NULL,
  `current_limit` double NOT NULL,
  `credit1` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `ProductType` varchar(25) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `pay_date` date NOT NULL,
  `pay_time` time NOT NULL,
  `gst_mode` varchar(255) NOT NULL,
  `payable_amount` varchar(255) NOT NULL,
  `grandtotal` varchar(255) NOT NULL,
  `gst` double NOT NULL,
  `discount` int(20) NOT NULL,
  `transportType` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`bill_id`, `Invoice`, `Billtaxtype`, `date`, `Distributor_id`, `current_limit`, `credit1`, `login_id`, `ProductType`, `payment_status`, `pay_date`, `pay_time`, `gst_mode`, `payable_amount`, `grandtotal`, `gst`, `discount`, `transportType`) VALUES
(133, 'NCP/A-6', '', '2018-09-25', 13, 0, 0, 1, 'NPP', 'Done', '2018-09-25', '12:43:00', 'GST', '37848.5', '32075', 18, 0, ''),
(136, 'NCP/A-7', '', '2018-09-25', 14, 0, 0, 1, 'NPP', 'Done', '2018-09-25', '01:05:00', 'GST', '50592.5', '42875', 18, 0, ''),
(137, 'NCP/A-8', '', '2018-09-25', 14, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '01:06:00', 'GST', '13650', '13000', 5, 0, ''),
(138, 'NCP/A-9', '', '2018-09-25', 15, 0, 0, 1, 'NPP', 'Done', '2018-09-25', '01:11:00', 'GST', '39264.5', '33275', 18, 0, ''),
(139, 'NCP/A-10', '', '2018-09-25', 15, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '01:15:00', 'GST', '44362.5', '42250', 5, 0, ''),
(140, 'NCP/A-11', '', '2018-09-25', 16, 0, 0, 1, 'NPP', 'Done', '2018-09-25', '01:18:00', 'GST', '19363.8', '16410', 18, 0, ''),
(142, 'NCP/A-13', '', '2018-09-25', 18, 0, 0, 1, 'NPP', 'Done', '2018-09-25', '01:29:00', 'GST', '25163.5', '21325', 18, 0, ''),
(143, 'NCP/A-14', '', '2018-09-25', 18, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '01:34:00', 'GST', '57820', '49000', 18, 0, ''),
(144, 'NCP/A-15', '', '2018-09-25', 18, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '01:34:00', 'GST', '35700', '34000', 5, 0, ''),
(145, 'NCP/A-16', '', '2018-09-25', 17, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '01:38:00', 'GST', '16380', '15600', 5, 0, ''),
(146, 'NCP/A-17', '', '2018-09-25', 14, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '01:45:00', 'GST', '86730', '82600', 5, 0, ''),
(147, 'NCP/A-18', '', '2018-09-25', 14, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '01:48:00', 'GST', '6431', '5450', 18, 0, ''),
(150, 'NCP/A-19', '', '2018-09-25', 20, 0, 0, 1, 'NPP', 'Done', '2018-09-25', '01:50:00', 'GST', '22184', '18800', 18, 0, ''),
(151, 'NCP/A-20', '', '2018-09-25', 20, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '01:53:00', 'GST', '58800', '56000', 5, 0, ''),
(156, 'NCP/A-24', '', '2018-09-25', 15, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '02:18:00', 'GST', '11564', '9800', 18, 0, ''),
(157, 'NCP/A-25', '', '2018-09-25', 15, 0, 0, 1, 'NPP', 'Done', '2018-09-25', '02:20:00', 'GST', '22394.04', '18978', 18, 0, ''),
(158, 'NCP/A-26', '', '2018-09-25', 15, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '02:22:00', 'GST', '29400', '28000', 5, 0, ''),
(159, 'NCP/A-27', '', '2018-09-25', 24, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '02:29:00', 'GST', '56592.8', '47960', 18, 0, ''),
(160, 'NCP/A-28', '', '2018-09-25', 25, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '02:31:00', 'GST', '31500', '30000', 5, 0, ''),
(161, 'NCP/A-29', '', '2018-09-25', 26, 0, 0, 1, 'NPP', 'Done', '2018-09-25', '02:33:00', 'GST', '34633', '29350', 18, 0, ''),
(162, 'NCP/A-30', '', '2018-09-25', 26, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '02:36:00', 'GST', '28875', '27500', 5, 0, ''),
(163, 'NCP/A-31', '', '2018-09-25', 27, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '02:39:00', 'GST', '43050', '41000', 5, 0, ''),
(164, 'NCP/A-32', '', '2018-09-25', 18, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '02:42:00', 'GST', '32812.5', '31250', 5, 0, ''),
(165, 'NCP/A-33', '', '2018-09-25', 18, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '02:43:00', 'GST', '3068', '2600', 18, 0, ''),
(166, 'NCP/A-34', '', '2018-09-25', 28, 0, 0, 1, 'NPP', 'Done', '2018-09-25', '02:45:00', 'GST', '19363.8', '16410', 18, 0, ''),
(167, 'NCP/A-35', '', '2018-09-25', 28, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '02:46:00', 'GST', '30450', '29000', 5, 0, ''),
(169, 'NCP/A-36', '', '2018-09-25', 31, 0, 0, 1, 'NPP', 'Done', '2018-09-25', '02:55:00', 'GST', '19042.84', '16138', 18, 0, ''),
(170, 'NCP/A-37', '', '2018-09-25', 31, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '02:57:00', 'GST', '43050', '41000', 5, 0, ''),
(171, 'NCP/A-38', '', '2018-09-25', 30, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(172, 'NCP/A-38', '', '2018-09-25', 30, 0, 0, 1, 'NPP', 'Done', '2018-09-25', '03:08:00', 'GST', '31281.8', '26510', 18, 0, ''),
(173, 'NCP/A-40', '', '2018-09-25', 30, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '03:12:00', 'GST', '98175', '93500', 5, 0, ''),
(174, 'NCP/A-41', '', '2018-09-25', 28, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '03:14:00', 'GST', '44625', '42500', 5, 0, ''),
(175, 'NCP/A-42', '', '2018-09-25', 15, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '03:16:00', 'GST', '85680', '81600', 5, 0, ''),
(176, 'NCP/A-43', '', '2018-09-25', 32, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '03:16:00', 'GST', '85680', '81600', 5, 0, ''),
(177, 'NCP/A-44', '', '2018-09-25', 14, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '03:18:00', 'GST', '27300', '26000', 5, 0, ''),
(178, 'NCP/A-45', '', '2018-09-25', 14, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '03:19:00', 'GST', '5487', '4650', 18, 0, ''),
(179, 'NCP/A-46', '', '2018-09-25', 12, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(181, 'NCP/A-48', '', '2018-09-25', 12, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(183, 'NCP/A-50', '', '2018-09-25', 33, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '03:38:00', 'GST', '130042.5', '123850', 5, 0, ''),
(184, 'NCP/A-51', '', '2018-09-25', 27, 0, 0, 1, 'NPP', 'Done', '2018-09-25', '03:43:00', 'GST', '26432', '22400', 18, 0, ''),
(185, 'NCP/A-52', '', '2018-09-25', 25, 0, 0, 1, 'NPP', 'Done', '2018-09-25', '03:47:00', 'GST', '14531.7', '12315', 18, 0, ''),
(186, 'NCP/A-53', '', '2018-09-25', 25, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '03:48:00', 'GST', '4956', '4200', 18, 0, ''),
(187, 'NCP/A-54', '', '2018-09-25', 28, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '03:50:00', 'GST', '7140', '6800', 5, 0, ''),
(188, 'NCP/A-55', '', '2018-09-25', 28, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '03:52:00', 'GST', '11564', '9800', 18, 0, ''),
(189, 'NCP/A-56', '', '2018-09-25', 34, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '03:55:00', 'GST', '23128', '19600', 18, 0, ''),
(190, 'NCP/A-57', '', '2018-09-25', 35, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '04:05:00', 'GST', '54495', '51900', 5, 0, ''),
(191, 'NCP/A-58', '', '2018-09-25', 28, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '04:27:00', 'GST', '40950', '39000', 5, 0, ''),
(192, 'NCP/A-59', '', '2018-09-25', 17, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(193, 'NCP/A-59', '', '2018-09-25', 17, 0, 0, 1, 'NPP', 'Done', '2018-09-25', '04:32:00', 'GST', '17936', '15200', 18, 0, ''),
(194, 'NCP/A-61', '', '2018-09-25', 35, 0, 0, 1, 'NPP', 'Done', '2018-09-25', '04:46:00', 'GST', '15977.2', '13540', 18, 0, ''),
(195, 'NCP/A-62', '', '2018-09-25', 34, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '04:48:00', 'GST', '6254', '5300', 18, 0, ''),
(196, 'NCP/A-63', '', '2018-09-25', 24, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(197, 'NCP/A-63', '', '2018-09-25', 24, 0, 0, 1, 'NPP', 'Done', '2018-09-25', '04:57:00', 'GST', '82482', '69900', 18, 0, ''),
(198, 'NCP/A-65', '', '2018-09-25', 36, 0, 0, 1, 'NPP', 'Done', '2018-09-25', '05:07:00', 'GST', '48167.6', '40820', 18, 0, ''),
(199, 'NCP/A-66', '', '2018-09-25', 36, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '05:15:00', 'GST', '46494', '44280', 5, 0, ''),
(200, 'NCP/A-67', '', '2018-09-25', 36, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(201, 'NCP/A-68', '', '2018-09-25', 36, 0, 0, 1, 'NPP', 'Done', '2018-09-25', '05:19:00', 'GST', '3009', '2550', 18, 0, ''),
(202, 'NCP/A-69', '', '2018-09-25', 37, 0, 0, 1, 'NPP', 'Done', '2018-09-25', '05:22:00', 'GST', '20768', '17600', 18, 0, ''),
(203, 'NCP/A-70', '', '2018-09-25', 37, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(204, 'NCP/A-71', '', '2018-09-25', 37, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '05:37:00', 'GST', '318570', '303400', 5, 0, ''),
(205, 'NCP/A-72', '', '2018-09-25', 18, 0, 0, 1, 'NPP', 'Done', '2018-09-25', '05:40:00', 'GST', '37760', '32000', 18, 0, ''),
(206, 'NCP/A-73', '', '2018-09-25', 18, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(207, 'NCP/A-74', '', '2018-09-25', 18, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '05:47:00', 'GST', '0', '0', 5, 0, ''),
(208, 'NCP/A-75', '', '2018-09-25', 18, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(209, 'NCP/A-76', '', '2018-09-25', 18, 0, 0, 1, 'NBP', 'Done', '2018-09-25', '05:51:00', 'GST', '17589.6', '16752', 5, 0, ''),
(210, 'NCP/A-77', '', '2018-09-25', 18, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(211, 'NCP/A-77', '', '2018-09-25', 18, 0, 0, 1, 'NPP', 'Done', '2018-09-25', '05:52:00', 'GST', '37760', '32000', 18, 0, ''),
(212, 'NCP/A-79', '', '2018-09-26', 38, 0, 0, 1, 'NPP', 'Done', '2018-09-26', '11:13:00', 'GST', '94400', '80000', 18, 0, ''),
(213, 'NCP/A-80', '', '2018-09-26', 18, 0, 0, 1, 'NBP', 'Done', '2018-09-26', '11:16:00', 'GST', '17850', '17000', 5, 0, ''),
(214, 'NCP/A-81', '', '2018-09-26', 33, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(215, 'NCP/A-82', '', '2018-09-26', 33, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(216, 'NCP/A-83', '', '2018-09-26', 33, 0, 0, 1, 'NBP', 'Done', '2018-09-26', '11:29:00', 'GST', '28910', '24500', 18, 0, ''),
(217, 'NCP/A-84', '', '2018-09-26', 33, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(218, 'NCP/A-85', '', '2018-09-26', 33, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(219, 'NCP/A-86', '', '2018-09-26', 33, 0, 0, 1, 'NBP', 'Done', '2018-09-26', '11:38:00', 'GST', '14700', '14000', 5, 0, ''),
(220, 'NCP/A-87', '', '2018-09-26', 33, 0, 0, 1, 'NBP', 'Done', '2018-09-26', '11:39:00', 'GST', '14700', '14000', 5, 0, ''),
(221, 'NCP/A-88', '', '2018-09-26', 25, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(222, 'NCP/A-89', '', '2018-09-26', 25, 0, 0, 1, 'NPP', 'Done', '2018-09-26', '11:45:00', 'GST', '11151', '9450', 18, 0, ''),
(238, 'NCP/A-85', '', '2018-09-26', 12, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(239, 'NCP/A-86', '', '2018-09-27', 11, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(240, 'NCP/A-87', '', '2018-09-27', 25, 0, 0, 1, 'NPP', 'Done', '2018-09-27', '11:40:00', 'GST', '27671', '23450', 18, 0, ''),
(241, 'NCP/A-88', '', '2018-09-27', 25, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(242, 'NCP/A-89', '', '2018-09-27', 25, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(243, 'NCP/A-90', '', '2018-09-27', 25, 0, 0, 1, 'NBP', 'Done', '2018-09-27', '11:53:00', 'GST', '4649.4', '4428', 5, 0, ''),
(245, 'NCP/A-92', '', '2018-09-27', 15, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(246, 'NCP/A-93', '', '2018-09-27', 15, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(247, 'NCP/A-94', '', '2018-09-27', 15, 0, 0, 1, 'NPP', 'Done', '2018-09-27', '12:05:00', 'GST', '4425', '3750', 18, 0, ''),
(248, 'NCP/A-95', '', '2018-09-27', 15, 0, 0, 1, 'NBP', 'Done', '2018-09-27', '12:06:00', 'GST', '15750', '15000', 5, 0, ''),
(250, 'NCP/A-97', '', '2018-09-27', 22, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(251, 'NCP/A-98', '', '2018-09-27', 40, 0, 0, 1, 'NPP', 'Done', '2018-09-27', '01:41:00', 'GST', '40061', '33950', 18, 0, ''),
(252, 'NCP/A-99', '', '2018-09-27', 41, 0, 0, 1, 'NPP', 'Done', '2018-09-27', '01:45:00', 'GST', '19234', '16300', 18, 0, ''),
(253, 'NCP/A-100', '', '2018-09-27', 38, 0, 0, 1, 'NPP', 'Done', '2018-09-27', '01:49:00', '0', '31683', '26850', 18, 0, ''),
(254, 'NCP/A-101', '', '2018-09-27', 38, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(255, 'NCP/A-102', '', '2018-09-27', 38, 0, 0, 1, 'NBP', 'Done', '2018-09-27', '01:53:00', 'GST', '5617.5', '5350', 5, 0, ''),
(256, 'NCP/A-103', '', '2018-09-27', 18, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(257, 'NCP/A-104', '', '2018-09-27', 18, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(258, 'NCP/A-105', '', '2018-09-27', 18, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(259, 'NCP/A-106', '', '2018-09-27', 18, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(260, 'NCP/A-107', '', '2018-09-27', 18, 0, 0, 1, '', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(261, 'NCP/A-108', '', '2018-09-27', 18, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(262, 'NCP/A-109', '', '2018-09-27', 18, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(263, 'NCP/A-110', '', '2018-09-27', 18, 0, 0, 1, 'NBP', 'Done', '2018-09-27', '02:13:00', 'GST', '8794.8', '8376', 5, 0, ''),
(264, 'NCP/A-111', '', '2018-09-27', 18, 0, 0, 1, 'NPP', 'Done', '2018-09-27', '02:26:00', 'GST', '38114', '32300', 18, 0, ''),
(265, 'NCP/A-105', '', '2018-09-27', 16, 0, 0, 1, 'NPP', 'Done', '2018-09-27', '02:38:00', 'GST', '6136', '5200', 18, 0, ''),
(266, 'NCP/A-113', '', '2018-09-27', 42, 0, 0, 1, 'NPP', 'Done', '2018-09-27', '02:39:00', 'GST', '9558', '8100', 18, 0, ''),
(267, 'NCP/A-114', '', '2018-09-27', 42, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(268, 'NCP/A-114', '', '2018-09-27', 42, 0, 0, 1, 'NPP', 'Done', '2018-09-27', '02:44:00', 'GST', '28733', '24350', 18, 0, ''),
(269, 'NCP/A-116', '', '2018-09-27', 42, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(270, 'NCP/A-116', '', '2018-09-27', 42, 0, 0, 1, 'NPP', 'Done', '2018-09-27', '02:53:00', 'GST', '18767.9', '15905', 18, 0, ''),
(271, 'NCP/A-118', '', '2018-09-27', 42, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(272, 'NCP/A-118', '', '2018-09-27', 42, 0, 0, 1, 'NBP', 'Done', '2018-09-27', '03:07:00', '', '', '', 0, 0, ''),
(273, 'NCP/A-120', '', '2018-09-27', 42, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(274, 'NCP/A-120', '', '2018-09-27', 42, 0, 0, 1, 'NBP', 'Done', '2018-09-27', '03:10:00', 'GST', '42000', '40000', 5, 0, ''),
(275, 'NCP/A-122', '', '2018-09-27', 40, 0, 0, 1, 'NPP', 'Done', '2018-09-27', '03:13:00', 'GST', '75756', '64200', 18, 0, ''),
(276, 'NCP/A-123', '', '2018-09-27', 39, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(277, 'NCP/A-124', '', '2018-09-27', 40, 0, 0, 1, 'NPP', 'Done', '2018-09-27', '03:19:00', 'GST', '75225', '63750', 18, 0, ''),
(278, 'NCP/A-125', '', '2018-09-27', 15, 0, 0, 1, 'NPP', 'Done', '2018-09-27', '03:22:00', 'GST', '3020800', '2560000', 18, 0, ''),
(279, 'NCP/A-126', '', '2018-09-27', 43, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(280, 'NCP/A-126', '', '2018-09-27', 43, 0, 0, 1, 'NPP', 'Done', '2018-09-27', '03:23:00', 'GST', '2419', '2050', 18, 0, ''),
(281, 'NCP/A-128', '', '2018-09-27', 43, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(282, 'NCP/A-129', '', '2018-09-27', 35, 0, 0, 1, 'NPP', 'Done', '2018-09-27', '03:30:00', 'GST', '24190', '20500', 18, 0, ''),
(283, 'NCP/A-130', '', '2018-09-27', 11, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(284, 'NCP/A-131', '', '2018-09-27', 35, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(285, 'NCP/A-132', '', '2018-09-27', 35, 0, 0, 1, 'NBP', 'Done', '2018-09-27', '03:35:00', 'GST', '11025', '10500', 5, 0, ''),
(287, 'NCP/A-134', '', '2018-09-27', 27, 0, 0, 1, 'NPP', 'Done', '2018-09-27', '03:43:00', 'GST', '59236', '50200', 18, 0, ''),
(288, 'NCP/A-135', '', '2018-09-27', 18, 0, 0, 1, 'NPP', 'Done', '2018-09-27', '03:45:00', 'GST', '104902', '88900', 18, 0, ''),
(290, 'NCP/A-137', '', '2018-09-27', 18, 0, 0, 1, 'NPP', 'Done', '2018-09-27', '04:26:00', 'GST', '3020800', '2560000', 18, 0, ''),
(291, 'NCP/A-138', '', '2018-09-27', 18, 0, 0, 1, 'NBP', 'Done', '2018-09-27', '04:30:00', 'GST', '6300', '6000', 5, 0, ''),
(292, 'NCP/A-139', '', '2018-09-27', 43, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(293, 'NCP/A-139', '', '2018-09-27', 43, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(294, 'NCP/A-141', '', '2018-09-27', 43, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(295, 'NCP/A-142', '', '2018-09-27', 43, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(296, 'NCP/A-142', '', '2018-09-27', 43, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(297, 'NCP/A-144', '', '2018-09-27', 20, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(298, 'NCP/A-145', '', '2018-09-28', 18, 0, 0, 1, 'NPP', 'Done', '2018-09-28', '04:52:00', 'GST', '47200', '40000', 18, 0, ''),
(299, 'NCP/A-146', '', '2018-09-28', 15, 0, 0, 1, 'NBP', 'Done', '2018-09-28', '04:58:00', 'GST', '31500', '30000', 5, 0, ''),
(300, 'NCP/A-147', '', '2018-09-28', 20, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(301, 'NCP/A-148', '', '2018-09-28', 20, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(302, 'NCP/A-149', '', '2018-09-29', 20, 0, 0, 1, 'NPP', 'Done', '2018-09-29', '11:57:00', 'GST', '59531', '50450', 18, 0, ''),
(303, 'NCP/A-150', '', '2018-09-29', 20, 0, 0, 1, 'NBP', 'Done', '2018-09-29', '11:59:00', 'GST', '5229', '4980', 5, 0, ''),
(306, 'NCP/A-153', '', '2018-09-29', 33, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(307, 'NCP/A-154', '', '2018-09-29', 33, 0, 0, 1, 'NBP', 'Done', '2018-09-29', '12:05:00', 'GST', '29400', '28000', 5, 0, ''),
(308, 'NCP/A-155', '', '2018-09-29', 47, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(309, 'NCP/A-156', '', '2018-09-29', 47, 0, 0, 1, '', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(310, 'NCP/A-157', '', '2018-09-29', 47, 0, 0, 1, '', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(311, 'NCP/A-157', '', '2018-09-29', 47, 0, 0, 1, '', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(312, 'NCP/A-159', '', '2018-09-29', 47, 0, 0, 1, '', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(313, 'NCP/A-160', '', '2018-09-29', 47, 0, 0, 1, '', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(314, 'NCP/A-161', '', '2018-09-29', 47, 0, 0, 1, '', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(316, 'NCP/A-163', '', '2018-09-29', 47, 0, 0, 1, 'NPP', 'Done', '2018-09-29', '02:14:00', 'GST', '14396', '12200', 18, 0, ''),
(317, 'NCP/A-164', '', '2018-09-29', 15, 0, 0, 1, 'NBP', 'Done', '2018-09-29', '02:16:00', 'GST', '15340', '13000', 18, 0, ''),
(318, 'NCP/A-165', '', '2018-09-29', 22, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(319, 'NCP/A-166', '', '2018-09-29', 22, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(320, 'NCP/A-167', '', '2018-09-29', 22, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(321, 'NCP/A-168', '', '2018-09-29', 22, 0, 0, 1, 'NPP', 'Done', '2018-09-29', '02:37:00', 'GST', '5782', '4900', 18, 0, ''),
(322, 'NCP/A-169', '', '2018-09-29', 14, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(323, 'NCP/A-170', '', '2018-10-01', 0, 0, 0, 1, '', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(324, 'NCP/A-171', '', '2018-10-01', 14, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(325, 'NCP/A-172', '', '2018-10-01', 22, 0, 0, 1, 'NPP', 'Done', '2018-10-01', '03:16:00', 'GST', '6785', '5750', 18, 0, ''),
(326, 'NCP/A-173', '', '2018-10-01', 14, 0, 0, 1, 'NPP', 'Done', '2018-10-01', '03:20:00', 'GST', '9912', '8400', 18, 0, ''),
(327, 'NCP/A-174', '', '2018-10-01', 18, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(328, 'NCP/A-175', '', '2018-10-02', 22, 0, 0, 1, 'NBP', 'Done', '2018-10-02', '10:16:00', 'GST', '17850', '17000', 5, 0, ''),
(329, 'NCP/A-176', '', '2018-10-02', 18, 0, 0, 1, 'NPP', 'Done', '2018-10-02', '10:18:00', 'GST', '37819', '32050', 18, 0, ''),
(330, 'NCP/A-177', '', '2018-10-02', 18, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(331, 'NCP/A-178', '', '2018-10-02', 18, 0, 0, 1, 'NBP', 'Done', '2018-10-02', '10:27:00', 'GST', '21787.5', '20750', 5, 0, ''),
(332, 'NCP/A-179', '', '2018-10-02', 36, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(333, 'NCP/A-180', '', '2018-10-02', 36, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(334, 'NCP/A-181', '', '2018-10-02', 36, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(335, 'NCP/A-182', '', '2018-10-02', 36, 0, 0, 1, 'NPP', 'Done', '2018-10-02', '10:47:00', 'GST', '9912', '8400', 18, 0, ''),
(336, 'NCP/A-183', '', '2018-10-02', 33, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(337, 'NCP/A-184', '', '2018-10-02', 33, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(338, 'NCP/A-185', '', '2018-10-02', 33, 0, 0, 1, 'NPP', 'Done', '2018-10-02', '11:36:00', 'GST', '52244.5', '44275', 18, 0, ''),
(339, 'NCP/A-186', '', '2018-10-02', 33, 0, 0, 1, 'NBP', 'Done', '2018-10-02', '11:41:00', 'GST', '1312.5', '1250', 5, 0, ''),
(340, 'NCP/A-187', '', '2018-10-02', 33, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(341, 'NCP/A-188', '', '2018-10-02', 33, 0, 0, 1, 'NBP', 'Done', '2018-10-02', '11:42:00', 'GST', '8794.8', '8376', 5, 0, ''),
(342, 'NCP/A-189', '', '2018-10-02', 41, 0, 0, 1, 'NPP', 'Done', '2018-10-02', '11:47:00', 'GST', '24072', '20400', 18, 0, ''),
(343, 'NCP/A-190', '', '2018-10-02', 15, 0, 0, 1, 'NPP', 'Done', '2018-10-02', '11:51:00', 'GST', '23069', '19550', 18, 0, ''),
(344, 'NCP/A-191', '', '2018-10-02', 15, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(345, 'NCP/A-192', '', '2018-10-02', 15, 0, 0, 1, 'NBP', 'Done', '2018-10-02', '11:57:00', 'GST', '118650', '113000', 5, 0, ''),
(346, 'NCP/A-193', '', '2018-10-02', 48, 0, 0, 1, 'NPP', 'Done', '2018-10-02', '01:06:00', 'GST', '3186', '2700', 18, 0, ''),
(347, 'NCP/A-194', '', '2018-10-02', 48, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(348, 'NCP/A-195', '', '2018-10-02', 48, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(349, 'NCP/A-196', '', '2018-10-02', 48, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(350, 'NCP/A-197', '', '2018-10-02', 48, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(351, 'NCP/A-198', '', '2018-10-02', 48, 0, 0, 1, 'NBP', 'Done', '2018-10-02', '01:48:00', 'GST', '170.6775', '162.55', 5, 0, ''),
(352, 'NCP/A-199', '', '2018-10-02', 49, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(353, 'NCP/A-200', '', '2018-10-02', 49, 0, 0, 1, 'NBP', 'Done', '2018-10-02', '02:25:00', 'GST', '1333.71', '1270.2', 5, 0, ''),
(354, 'NCP/A-201', '', '2018-10-02', 22, 0, 0, 1, 'NBP', 'Done', '2018-10-02', '02:33:00', 'GST', '6688.521000000001', '6370.02', 5, 0, ''),
(355, 'NCP/A-202', '', '2018-10-02', 41, 0, 0, 1, 'NPP', 'Done', '2018-10-02', '02:51:00', 'GST', '16439.9606', '13932.17', 18, 0, ''),
(356, 'NCP/A-203', '', '2018-10-02', 41, 0, 0, 1, 'NBP', 'Done', '2018-10-02', '03:03:00', 'GST', '5071.9515', '4830.43', 5, 0, ''),
(357, 'NCP/A-204', '', '2018-10-02', 33, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(358, 'NCP/A-205', '', '2018-10-02', 33, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(359, 'NCP/A-206', '', '2018-10-02', 41, 0, 0, 1, 'NPP', 'Done', '2018-10-02', '03:47:00', 'GST', '21137.8474', '17913.43', 18, 0, ''),
(360, 'NCP/A-207', '', '2018-10-02', 41, 0, 0, 1, 'NBP', 'Done', '2018-10-02', '03:52:00', 'GST', '5079.375', '4837.5', 5, 0, ''),
(362, 'NCP/A-209', '', '2018-10-02', 51, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(363, 'NCP/A-210', '', '2018-10-02', 51, 0, 0, 1, 'NBP', 'Done', '2018-10-02', '05:21:00', 'GST', '1785', '1700', 5, 0, ''),
(364, 'NCP/A-211', '', '2018-10-02', 51, 0, 0, 1, 'NBP', 'Done', '2018-10-02', '05:23:00', 'GST', '2891', '2450', 18, 0, ''),
(365, 'NCP/A-211', '', '2018-10-06', 52, 10000, 25000, 1, 'NPP', 'Done', '2018-10-06', '01:30:00', '', '41300', '41300', 6300, 0, ''),
(366, 'NCP/A-212', '', '2018-10-06', 52, -31300, 0, 1, 'NPP', 'Done', '2018-10-06', '01:37:00', '', '41000', '41000', 6000, 0, ''),
(367, 'NCP/A-213', '', '2018-10-06', 46, 100000, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(368, 'NCP/A-214', '', '2018-10-06', 53, 10000, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(369, 'NCP/A-215', '', '2018-10-06', 54, 10000, 1150, 1, 'NPP', 'Done', '2018-10-06', '02:45:00', '', '1150', '1150', 150, 0, ''),
(370, 'NCP/A-216', '', '2018-10-06', 54, 10000, 1150, 1, 'NPP', 'Done', '2018-10-06', '03:06:00', '', '1120', '1120', 120, 0, ''),
(371, 'NCP/A-217', '', '2018-10-08', 54, 10030, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(372, 'NCP/A-217', '', '2018-10-08', 47, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(373, 'NCP/A-218', '', '2018-10-08', 47, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(374, 'NCP/A-219', '', '2018-10-08', 47, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(375, 'NCP/A-220', '', '2018-10-08', 47, 0, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(376, 'NCP/A-221', '', '2018-10-08', 47, 100000, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(377, 'NCP/A-222', '', '2018-10-08', 47, 100000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(378, 'NCP/A-223', '', '2018-10-09', 54, 5000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(379, 'NCP/A-224', '', '2018-10-09', 54, 5000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(380, 'NCP/A-225', '', '2018-10-09', 54, 5000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(382, 'NCP/A-227', 'GST', '2018-10-10', 54, 10030, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(383, 'NCP/A-228', 'GST', '2018-10-10', 54, 10030, 2000, 1, 'NPP', 'Done', '2018-10-10', '05:52:00', '', '5600', '56000', 6000, 90, ''),
(384, 'NCP/A-228', 'GST', '2018-10-12', 33, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(385, 'NCP/A-229', '', '2018-10-12', 33, 0, 0, 1, '', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(386, 'NCP/A-230', '', '2018-10-12', 33, 0, 0, 1, '', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(387, 'NCP/A-231', '', '2018-10-12', 22, 0, 0, 1, '', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(388, 'NCP/A-231', '', '2018-10-22', 12, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(389, 'NCP/A-232', 'GST', '2018-10-22', 12, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(390, 'NCP/A-233', 'GST', '2018-10-23', 12, 0, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(391, 'NCP/A-234', 'GST', '2018-11-15', 56, 10000, 1050, 1, 'NPP', 'Done', '2018-11-15', '04:00:00', '', '1050', '1050', 50, 0, ''),
(392, 'NCP/A-235', 'GST', '2018-11-21', 54, 6430, 1150, 1, 'NPP', 'Done', '2018-11-21', '02:05:00', '', '1437.5', '1437.5', 0, 0, ''),
(393, 'NCP/A-229', 'GST', '2018-11-23', 12, 500000, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(394, 'NCP/A-230', 'GST', '2018-11-23', 11, 10000, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(395, 'NCP/A-231', '', '2018-11-23', 25, 0, 0, 1, '', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(396, 'NCP/A-232', 'GST', '2018-11-23', 26, 500000, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(397, 'NCP/A-233', 'IGST', '2018-11-23', 12, 500000, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(398, 'NCP/A-234', 'GST', '2018-11-23', 15, 500000, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(399, 'NCP/A-235', 'GST', '2018-11-24', 31, 500000, 0, 1, 'NPP', 'Done', '2018-11-24', '12:32:00', '', '3960', '3960', 0, 0, ''),
(400, 'NCP/A-236', 'GST', '2018-11-24', 78, 10000, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(401, 'NCP/A-237', 'GST', '2018-11-24', 78, 10000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(402, 'NCP/A-238', 'GST', '2018-11-24', 78, 10000, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(404, 'NCP/A-240', 'GST', '2018-11-24', 12, 500000, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(405, 'NCP/A-241', 'GST', '2018-11-24', 78, 0, 0, 1, '', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(406, 'NCP/A-242', 'GST', '2018-11-24', 78, 6040, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(408, 'NCP/A-244', 'IGST', '2018-11-24', 28, 500000, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(409, 'NCP/A-245', 'GST', '2018-11-24', 31, 496040, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(410, 'NCP/A-239', 'GST', '2018-11-26', 11, 10000, 5460, 1, 'NPP', 'Done', '2018-11-26', '11:23:00', '', '5460', '5200', 5, 0, ''),
(411, 'NCP/A-240', 'GST', '2018-11-26', 11, 10000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(412, '1', 'GST', '2018-04-04', 11, 10000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(413, 'NCP/A', 'GST', '2018-11-27', 11, 10000, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(414, 'fdffdfg', 'GST', '2018-09-27', 11, 10000, 0, 1, 'NPP', 'Done', '2018-11-27', '03:27:00', '', '3960', '3960', 0, 0, ''),
(415, '1', 'GST', '2018-04-04', 11, 10000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(416, 'NCP/A-245', 'GST', '2018-04-04', 11, 10000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(417, 'NCP/A-246', 'GST', '2018-04-04', 11, 6040, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(418, '1', 'GST', '2018-04-04', 11, 10000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(419, '1', 'GST', '2018-04-04', 11, 10000, 0, 1, 'NBP', 'Done', '2018-11-27', '04:39:00', '', '1700', '1700', 0, 0, ''),
(420, 'NCP/A-2490', 'GST', '2018-11-10', 11, 6040, 0, 1, 'NPP', 'Done', '2018-11-27', '10:50:00', '', '5200', '5200', 0, 0, 'BRO-6H'),
(421, '1', 'GST', '2018-04-04', 11, 8300, 0, 1, 'NBP', 'Done', '2018-11-28', '11:35:00', '', '', '77750', 0, 0, ''),
(422, '1', 'GST', '2018-04-04', 11, 500000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'BY HAND'),
(423, '1', 'GST', '2018-04-04', 11, 500000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'BY HAND'),
(424, '1', 'GST', '2018-07-02', 12, 500000, 0, 1, 'NPP', 'Done', '2018-11-28', '03:14:00', '', '32463.61', '32463.61', 3006, 0, 'PRAKASH'),
(425, '1', 'GST', '2018-04-04', 11, 500000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'BY HAND'),
(426, '1', 'GST', '2018-04-04', 11, 500000, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'BY HAND'),
(427, 'NCP', 'GST', '0000-00-00', 11, 500000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'MARUTI'),
(428, '1', 'GST', '2018-04-04', 11, 500000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'BY HAND'),
(429, '1', 'GST', '2018-04-04', 11, 500000, 0, 1, 'NBP', 'Done', '2018-11-29', '02:50:00', '', '20545.35', '20545.35', 978.35, 0, 'BY HAND'),
(430, '1', 'GST', '2018-04-04', 11, 479455, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'BY HAND'),
(431, 'NCP/A-260', 'GST', '0000-00-00', 95, 10000, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'SHIVAM'),
(432, '1', 'GST', '2018-04-04', 11, 500000, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'BY HAND'),
(433, '1', 'GST', '2018-04-04', 11, 479455, 0, 1, 'NBP', 'Done', '2018-12-01', '11:38:00', '', '33177.12', '33177.12', 1445.08, 0, 'BY HAND'),
(434, '1', 'GST', '2018-04-04', 11, 446278, 0, 1, 'NBP', 'Done', '2018-12-01', '11:46:00', '', '33318.642', '33318.642', 1586.602, 0, 'BY HAND'),
(435, 'NCP/A-264', 'GST', '2018-08-12', 11, 500000, 0, 1, 'NPP', 'Done', '2018-12-08', '02:16:00', '', '5200', '5200', 0, 0, 'ALLIED CARGO'),
(436, '1', 'GST', '2018-04-04', 11, 494800, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'BY HAND'),
(437, '1', '', '0000-00-00', 0, 0, 0, 1, '', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(438, '1', 'GST', '2018-04-04', 11, 412959, 0, 1, 'NBP', 'Done', '2018-12-08', '02:47:00', '', '33318.642', '33318.642', 1586.602, 0, 'BY HAND'),
(439, '2', 'GST', '2018-07-02', 12, 467536, 0, 1, 'NPP', 'Done', '2018-12-10', '04:42:00', '', '39854.5', '39854.5', 6079.5, 0, 'PRAKASH'),
(440, '3', 'GST', '2018-07-02', 13, 500000, 0, 1, 'NPP', 'Done', '2018-12-10', '04:48:00', '', '38350', '38350', 5850, 0, 'ALLIED CARGO'),
(441, '4', 'GST', '2018-07-03', 14, 500000, 0, 1, 'NPP', 'Done', '2018-12-10', '04:53:00', '', '51035', '51035', 7785, 0, 'ALLIED CARGO'),
(442, '4', 'GST', '2018-07-03', 14, 500000, 0, 1, 'NBP', 'Done', '2018-12-10', '04:54:00', '', '', '15340', 2340, 0, 'ALLIED CARGO'),
(443, '5', 'GST', '2018-07-05', 15, 500000, 0, 1, 'NPP', 'Done', '2018-12-10', '05:14:00', '', '39854.5', '39854.5', 6079.5, 0, 'HARI OM'),
(444, '6', 'GST', '2018-07-05', 15, 500000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'HARI OM'),
(445, '6', 'GST', '2018-07-05', 15, 500000, 0, 1, 'NBP', 'Done', '2018-12-10', '05:34:00', '', '49855', '49855', 7605, 0, 'HARI OM'),
(446, '6', 'GST', '2018-07-05', 15, 450145, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'HARI OM'),
(447, '6', 'GST', '2018-07-05', 15, 450145, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'HARI OM'),
(448, '6', 'GST', '2018-07-05', 15, 460146, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'HARI OM'),
(450, '7', 'GST', '2018-07-05', 15, 450145, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'HARI OM'),
(451, '6', 'GST', '2018-07-05', 15, 450145, 0, 1, 'NBP', 'Done', '2018-12-11', '02:19:00', '', '44362.5', '44362.5', 2112.5, 0, 'HARI OM'),
(452, '7', 'GST', '2018-07-05', 16, 500000, 0, 1, 'NPP', 'Done', '2018-12-11', '02:27:00', '', '19363.8', '19363.8', 2953.8, 0, 'AJANTA'),
(453, '8', 'GST', '2018-07-06', 17, 500000, 0, 1, 'NPP', 'Done', '2018-12-11', '02:36:00', '', '65501.8', '65501.8', 9991.8, 0, 'LAV KUSH'),
(454, '9', 'GST', '2018-07-06', 18, 500000, 0, 1, 'NPP', 'Done', '2018-12-11', '02:39:00', '', '25252', '25252', 3852, 0, 'NEW BHARAT'),
(455, '9', 'GST', '2018-07-06', 18, 500000, 0, 1, 'NBP', 'Done', '2018-12-11', '02:46:00', '', '5782', '5782', 882, 0, 'NAYA BHARAT'),
(456, '10', 'GST', '2018-07-06', 18, 494218, 0, 1, 'NBP', 'Done', '2018-12-11', '02:53:00', '', '3570', '3570', 170, 0, 'NAYA BHARAT'),
(457, '10', 'GST', '2018-07-06', 17, 500000, 0, 1, 'NBP', 'Done', '2018-12-11', '02:57:00', '', '13650', '13650', 650, 0, 'LAV KUSH'),
(458, '11', 'GST', '2018-07-10', 14, 500000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'ALLIED CARGO'),
(459, '11', 'GST', '2018-07-10', 14, 500000, 0, 1, 'NBP', 'Done', '2018-12-12', '10:16:00', '', '87660', '87660', 5660, 0, 'ALLIED CARGO'),
(460, '12', 'GST', '2018-07-10', 14, 412340, 0, 1, 'NBP', 'Done', '2018-12-12', '10:35:00', '', '7080', '7080', 1080, 0, 'ALLIED CARGO'),
(461, '13', 'GST', '2018-07-10', 20, 500000, 0, 1, 'NPP', 'Done', '2018-12-12', '10:43:00', '', '22184', '22184', 3384, 0, 'ALLIED CARGO'),
(462, '14', 'GST', '2018-07-10', 20, 500000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'ALLIED CARGO'),
(463, '15', 'GST', '2018-07-10', 22, 500000, 0, 1, 'NPP', 'Done', '2018-12-12', '11:46:00', '', '26373', '26373', 4023, 0, 'MAURYA GHAT'),
(464, '16', 'GST', '2018-07-10', 22, 500000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'KESHARI'),
(465, '17', 'GST', '2018-07-10', 15, 405783, 0, 1, 'NBP', 'Done', '2018-12-12', '11:57:00', '', '29400', '29400', 1400, 0, 'HARI OM'),
(466, '18', 'GST', '2018-07-10', 15, 460146, 0, 1, 'NPP', 'Done', '2018-12-12', '12:09:00', '', '22394.04', '22394.04', 3416.04, 0, 'HARI OM'),
(467, '18', 'GST', '2018-07-10', 15, 376383, 0, 1, 'NBP', 'Done', '2018-12-12', '12:11:00', '', '11564', '11564', 1764, 0, 'HARI OM'),
(468, '19', 'GST', '2018-07-11', 25, 500000, 0, 1, 'NBP', 'Done', '2018-12-12', '01:09:00', '', '31500', '31500', 1500, 0, 'HARIYANA'),
(469, '20', '', '2018-07-11', 24, 500000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'LAV KUSH'),
(470, 'NCP/A-298', 'GST', '0000-00-00', 11, 367040, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'ALLIED CARGO'),
(471, '20', 'GST', '2018-07-11', 24, 500000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'LAV KUSH'),
(472, '20', 'GST', '2018-07-11', 24, 500000, 0, 1, 'NBP', 'Done', '2018-12-13', '10:07:00', '', '40635', '40635', 1935, 0, 'LAV KUSH'),
(473, '16', 'GST', '2018-07-10', 22, 500000, 0, 1, 'NBP', 'Done', '2018-12-13', '10:11:00', '', '32812.5', '32812.5', 1562.5, 0, 'KESHARI'),
(474, '14', 'GST', '2018-07-10', 20, 500000, 0, 1, 'NBP', 'Done', '2018-12-13', '10:16:00', '', '58800', '58800', 2800, 0, 'ALLIED CARGO'),
(475, '21', 'GST', '2018-07-11', 24, 500000, 0, 1, 'NPP', 'Done', '2018-12-13', '10:21:00', '', '11564', '11564', 1764, 0, 'LAV KUSH'),
(476, '22', 'GST', '2018-07-12', 26, 500000, 0, 1, 'NPP', 'Done', '2018-12-13', '10:25:00', '', '34633', '34633', 5283, 0, 'HARIYANA'),
(477, '23', 'GST', '2018-07-12', 26, 500000, 0, 1, 'NBP', 'Done', '2018-12-13', '10:29:00', '', '28875', '28875', 1375, 0, 'HARIYANA'),
(478, '24', 'GST', '2018-07-17', 27, 500000, 0, 1, 'NBP', 'Done', '2018-12-13', '10:37:00', '', '43050', '43050', 2050, 0, 'HARIYANA'),
(479, '24', 'GST', '2018-07-17', 18, 490648, 0, 1, 'NBP', 'Done', '2018-12-13', '10:40:00', '', '32812.5', '32812.5', 1562.5, 0, 'NAYA BHARAT'),
(480, '25', 'GST', '2018-07-17', 18, 474748, 0, 1, 'NPP', 'Done', '2018-12-13', '10:43:00', '', '3068', '3068', 468, 0, 'NAYA BHARAT'),
(481, '26', 'GST', '2018-07-18', 28, 500000, 0, 1, 'NPP', 'Done', '2018-12-13', '10:47:00', '', '19363.8', '19363.8', 2953.8, 0, 'AJANTA'),
(482, 'SIGNET (20MLX250)', 'GST', '2018-07-18', 28, 500000, 0, 1, 'NBP', 'Done', '2018-12-14', '10:32:00', '', '30450', '30450', 1450, 0, 'AJANTA'),
(483, '27', 'GST', '2018-07-18', 31, 500000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'HARIYANA'),
(484, '27', 'GST', '2018-07-18', 31, 500000, 0, 1, 'NBP', 'Done', '2018-12-14', '10:40:00', '', '43050', '43050', 2050, 0, 'HARIYANA'),
(485, '28', 'GST', '2018-07-18', 31, 496040, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'HARIYANA'),
(486, '28', 'GST', '2018-07-18', 31, 496040, 0, 1, 'NPP', 'Done', '2018-12-14', '10:49:00', '', '19042.84', '19042.84', 2904.84, 0, 'HARIYANA'),
(487, '29', 'GST', '2018-07-23', 30, 500000, 0, 1, 'NPP', 'Done', '2018-12-14', '10:58:00', '', '31340.8', '31340.8', 4780.8, 0, 'HARIYANA'),
(488, '30', 'GST', '2018-07-23', 30, 500000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'HARIYANA'),
(489, '30', 'GST', '2018-07-23', 30, 500000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'HARIYANA'),
(490, '30', 'GST', '2018-07-23', 30, 500000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'HARIYANA'),
(491, '30', 'GST', '2018-07-23', 30, 500000, 0, 1, 'NBP', 'Done', '2018-12-17', '02:17:00', '', '92925', '92925', 4425, 0, 'HARIYANA'),
(492, '31', 'GST', '2018-07-26', 28, 469550, 0, 1, 'NBP', 'Done', '2018-12-17', '02:22:00', '', '44625', '44625', 2125, 0, 'AJANTA'),
(493, '32', 'GST', '2018-07-26', 32, 500000, 0, 1, 'NBP', 'Done', '2018-12-17', '02:27:00', '', '85680', '85680', 4080, 0, 'MAA JAGDAMBA'),
(494, '41', 'GST', '2018-07-26', 15, 364819, 0, 1, 'NBP', 'Done', '2018-12-17', '02:34:00', '', '85680', '85680', 4080, 0, 'HARI OM'),
(495, '42', 'GST', '2018-07-26', 14, 448965, 0, 1, 'NPP', 'Done', '2018-12-17', '02:59:00', '', '5664', '5664', 864, 0, 'ALLIED CARGO'),
(496, '43', 'GST', '2018-07-26', 14, 405260, 0, 1, 'NBP', 'Done', '2018-12-17', '03:07:00', '', '26250', '26250', 1250, 0, 'ALLIED CARGO'),
(497, '44', 'GST', '2018-07-27', 12, 500000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'PRAKASH'),
(498, '44', '', '0000-00-00', 0, 0, 0, 1, '', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(499, '44', '', '0000-00-00', 0, 0, 0, 1, '', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(500, '44', 'GST', '2018-07-27', 12, 500000, 0, 1, 'NBP', 'Done', '2018-12-17', '03:21:00', '', '85680', '85680', 4080, 0, 'PRAKASH'),
(501, '45', 'GST', '2018-07-27', 12, 427682, 0, 1, 'NPP', 'Done', '2018-12-17', '03:32:00', '', '14809', '14809', 2259, 0, 'PRAKASH'),
(502, '44', 'GST', '2018-07-27', 12, 414320, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'PRAKASH'),
(503, '44', 'GST', '2018-07-27', 12, 414320, 0, 1, 'NBP', 'Done', '2018-12-18', '01:25:00', '', '85680', '85680', 4080, 0, 'PRAKASH'),
(504, '45', '', '0000-00-00', 0, 0, 0, 1, '', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, ''),
(505, '45', 'GST', '2018-07-27', 12, 328640, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'PRAKASH'),
(506, '46', 'GST', '2018-07-27', 33, 500000, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'MARUTI'),
(507, 'NCP/A-335', 'GST', '2018-01-01', 95, 10000, 0, 1, 'NPP', 'Done', '2018-12-21', '08:08:00', '', '6136', '6136', 936, 0, 'VIKAS ROADWAYS'),
(508, '46', 'GST', '2018-07-27', 33, 500000, 0, 1, 'NBP', 'Done', '2018-12-24', '10:33:00', '', '130042.5', '130042.5', 6192.5, 0, 'MARUTI'),
(509, '47', 'GST', '2018-07-28', 27, 500000, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'HARIYANA'),
(510, '47', 'GST', '2018-07-28', 27, 500000, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'HARIYANA'),
(511, '47', 'GST', '2018-07-28', 27, 500000, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'HARIYANA'),
(512, '48', 'GST', '2018-07-31', 25, 500000, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'HARIYANA'),
(513, '48', 'GST', '2018-07-31', 25, 500000, 0, 1, 'NPP', 'Done', '2018-12-26', '12:44:00', '', '19440.5', '19440.5', 2965.5, 0, 'HARIYANA'),
(514, '49', 'GST', '2018-08-03', 28, 424925, 0, 1, 'NBP', 'Done', '2018-12-26', '12:49:00', '', '7140', '7140', 340, 0, 'AJANTA'),
(515, '50', 'GST', '2018-08-03', 28, 480636, 0, 1, 'NPP', 'Done', '2018-12-26', '12:51:00', '', '11564', '11564', 1764, 0, 'AJANTA'),
(516, '51', 'GST', '2018-08-03', 34, 500000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'NEW BHARAT'),
(517, '51', 'GST', '2018-08-03', 34, 500000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'NEW BHARAT'),
(518, '51', 'GST', '2018-08-03', 34, 500000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'NEW BHARAT'),
(519, '51', 'GST', '2018-08-03', 34, 500000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'NEW BHARAT'),
(520, '51', 'GST', '2018-08-03', 34, 500000, 0, 1, 'NBP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'NEW BHARAT'),
(521, 'NCP/A-349', 'GST', '0000-00-00', 11, 494800, 0, 1, 'NPP', '', '0000-00-00', '00:00:00', '', '', '', 0, 0, 'ALLIED CARGO');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(100) NOT NULL,
  `name` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`) VALUES
(1, 'Marketing'),
(2, 'HR');

-- --------------------------------------------------------

--
-- Table structure for table `distributor`
--

CREATE TABLE `distributor` (
  `dist_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bcode` varchar(50) NOT NULL,
  `State` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `Pincode` varchar(255) NOT NULL,
  `DAddress` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `gst` varchar(255) NOT NULL,
  `pos` varchar(255) NOT NULL,
  `Destination` varchar(255) NOT NULL,
  `pnumber` varchar(255) NOT NULL,
  `npp` varchar(255) NOT NULL,
  `nbp` varchar(255) NOT NULL,
  `nppLimit` int(11) NOT NULL,
  `nbpLimit` int(11) NOT NULL,
  `currentNpp` int(11) NOT NULL,
  `currentNbp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distributor`
--

INSERT INTO `distributor` (`dist_id`, `name`, `bcode`, `State`, `City`, `Pincode`, `DAddress`, `email`, `number`, `gst`, `pos`, `Destination`, `pnumber`, `npp`, `nbp`, `nppLimit`, `nbpLimit`, `currentNpp`, `currentNbp`) VALUES
(11, 'PLANT CLINIC CENTRE', '0001', 'BIHAR', 'PATNA', '800009', 'Mahadev Asthan,Patna', 'plantcliniccentre@gmail.com', '7895798951', '10CQCPK4870N1ZQ', 'PLS23031701950', 'PATNA', '', 'NPP-001', 'NBP-002', 500000, 500000, 494800, 367040),
(12, 'NEW PROBONO PUBLICO AGRICULTURE CENTRE ,PROP SANGITA DEVI', 'NCPL0001', 'CHOOL BAZAR SAMITI', 'ROAD- MUKTAPUR', 'SAMASTIPUR', 'NEAR-DELHI PUBLIC SCHOOL,BAZAR SAMITI ROAD', 'newprobono@nisroch', '9570932023', '10CAEPD5448MIZU', 'Prakash Transport', 'Muktapur, Samastipur', 'PLS27091601556', 'NPP-001', 'NBP-001', 500000, 500000, 412873, 328640),
(13, 'NATIONAL BEEJ BHANDAR , PRO. RENU SAH', 'NCPL0002', 'BIHAR', 'PURNIA', '854326', 'At+Po-Belori,P.S.-Ranipatra Mifassil Purnia ', 'national@nisroch', '9430582576', '10AUTPS8529F1Z8', 'Allied Carrier', 'Gulabbagh', 'PLS29081601505', 'NPP-002', 'NBP-002', 500000, 500000, 461650, 500000),
(14, 'JAI  BAJRANG BEEJ BHANDAR PROP- SARITA DEVI,HO-ASHOK SINGH', 'NCPL0003', 'BIHAR', 'KATIHAR', '854103', 'Sharif Ganj', 'jaibajrang@nisroch', '9470743997', '10BGYPD6351G', 'Allied Carring Transort', 'katihar', 'PLS16121500944', 'NPP-003', 'NBP-003', 500000, 500000, 443301, 379010),
(15, 'NEW PIONEER AGRICULTURE CENTRE, PROP AVINASH KUMAR', 'NCPL0004', 'BIHAR', 'BIHARSHARIF', '803101', 'Shop No-95, Bazar Samiti Market , Bypass Road ', 'newpioneer@nisroch', '9835877683', '10DMWPK5635Q1ZA', 'Hari Om ', 'Biharsharif', '105/2013-14 N', 'NPP-004', 'NBP-004', 500000, 500000, 437752, 279139),
(16, 'RAJU KHAD BHANDAR, PROP RAJU KUMAR MAHTO', 'NCPL0005', 'Bihar', 'Samastipur', '848301', 'Nakta Chouk, P.O.- Kishanpur, P.S.- Warishnagar, Samastipur', 'rajukhad@nisroch', '9801497504', '10BBSPM0597C', 'Ajanta Transport', 'Samastipur', 'PLS29121601719', 'NPP-005', 'NBP-005', 500000, 500000, 480636, 500000),
(17, 'SATYAM KHAD BEEJ BHANDAR, POP. UMESH KUMAR,S/0 KAPILDEV PRASAD', 'NCPL0006', 'BIHAR', 'EAST CHAMPARAN', '845418', 'Ward No 17, Motihari Road Dhaka, P.O.-Dhaka, At- Azad Chowk, Dhaka', 'satyamkhad@nisroch', '8969788628', '10BTUPP3742A1ZW', 'LUV KUSH TRANSPORT', 'East Champaran', '', 'NPP-006', 'NBP-006', 500000, 500000, 434498, 486350),
(18, 'HARENDRA BEEJ BHANDAR PROP JITENDRA SINGH', 'NCPL0007', 'BIHAR', 'KUDRA BAZAR', '821108', 'Mahaveer Asthan,Kudra Bazar, Kaimur', 'harendrabeej@nisroch', '9801332827', '10BTOPS8410A1Z0', 'New Bharat', 'Kudra Bazar', '3/16-17', 'NPP-007', 'NBP-007', 500000, 500000, 471680, 457836),
(20, 'KISAN SEWA KENDRA , PROP- MD IMAM', 'NCPL0008', 'BIHAR', 'KATIHAR', '855113', 'Royal Katra School Road, Salmari, Katihar', 'kisansewa@nisroch', '9534367253', '10AARPI3876K1ZE', 'Allied Cargo', 'katihar', 'PLS31121601757/2016-17', 'NPP-008', 'NBP-008', 500000, 500000, 477816, 441200),
(22, 'DHARTI CHARA KENDRA , PROP. RAMESHWAR PRASAD', 'NCPL0009', 'BIHAR', 'GAYA', '823001', 'S/o-Manik Chand Ram, Kirani Ghat, Gaya Chaduti', 'dhartichara@nisroch', '9934652546', '10AAVP5193Q1ZT', 'Maurya Ghat Transort', 'Gaya', 'R-129/2016-17', 'NPP-009', 'NBP-009', 500000, 500000, 473627, 467188),
(24, 'SONI BEEJ BHANDAR , PROP GAUTAM PRASAD YADAV, S/O MAUJE RAY', 'NCPL0011', 'BIHAR', 'EAST CHAMPARAN', '845303', 'Ahmad Nagar, Near- Urdu Vidyalaya Ghorashan', 'sonibeej@nisroch', '9006713804', '10AJHPY7634E1Z6', 'LUV KUSH TRANSPORT', 'Ghorashan( East Champaran)', '', 'NPP-011', 'NBP-011', 500000, 500000, 488436, 459365),
(25, 'NISHA KAJAL ENTERPRISES, PROP ARJUN SINGH', 'NCPL0010', 'BIHAR', 'Purnia', '854303', 'Harda Bazar, Nayatola Tharta', 'nishakajal@nisroch', '9572223242', '10BJWPS7911N1ZH', 'Hariyana Transport', 'Purnia', '38/2013-2014', 'NPP-010', 'NBP-010', 500000, 500000, 480560, 468500),
(26, 'DINESH KHAD BEEJ BHANDAR , PROP DINESH KUMAR', 'NCPL0012', 'BIHAR', 'Gulab Bag (Purnia)', '854327', 'High School Road, Jalalgarh ,Harwa Chowk', 'dineshkhad@nisroch', '9661421428', '10CGBPD8006C1ZW', 'Hariyana Transport', 'Gulabbagh, Purnia', '56/15-16', 'NPP-012', 'NBP-012', 500000, 500000, 465367, 471125),
(27, 'NATIONAL TRADING & COMPANY PROP MD AZAM ANWAR', 'NCPL0013', 'Bihar', 'Araria', '854329', 'Harwa Chowk, Jokihat, Distt - Araria', 'nationaltrading@nisroch', '9572363786', '10AQBPA3623J12M', 'Hariyana Transport', 'Araria', '80/14-15', 'NPP-013', 'NBP-013', 500000, 500000, 500000, 456950),
(28, 'SHANKAR SEEDS, PROP AMARDEEP KUMAR', 'NCPL0014', 'Bihar', 'Samastipur', '848117', 'Khanpur, Samastipur', 'shankarseeds@nisroch', '9931407589', '10BNPPK0120G1Z0', 'Ajanta Transport', 'Khanpur', '', 'NPP-014', 'NBP-014', 500000, 500000, 469072, 417785),
(30, 'PRATHMIK KRISHI SHAKH SAHYOG SAMITI LIMITED/ PROP- MADAN KUMAR SINGH', 'NCPL0016', 'Bihar', 'Araria', '854334', 'Paikpar, Bhargama, Araria', 'prathmikkrishishakhsahyog@nisroch', '7654136281', '10CNOPS9583B3ZN', 'Hariyana Transport', 'Araria', '29/2017-18', 'NPP-016', 'NBP-016', 500000, 500000, 468659, 407075),
(31, 'MANDAL TRADING , PROP NARESH KUMAR MANDAL', 'NCPL0015', 'Bihar', 'Araria', '854334', 'Araria Road, Raniganj , Distt - Araria', 'mandaltrading@nisroch', '9470200225', '10AXRPM6587C1ZA', 'Hariyana Transport', 'Araria', '12/2014-15', 'NPP-015', 'NBP-015', 500000, 500000, 476997, 456950),
(32, 'OM SHANTI KISHAN GHAR / PROP - SUDHANSHU KUMAR', 'NCPL0017', 'Bihar', 'Sheikhpura', '811105', 'At - Dallu Chowk; Sheikhpura', 'omshantikishanghar@nisroch', '9570878277', '10DYAPS0698H1ZE', 'Maa Jagdamba Transport', 'Sheikhpura', '', 'NPP-017', 'NBP-017', 500000, 500000, 500000, 414320),
(33, 'RAM LAKHAN SINGH / PROP - NIRAJ KUMAR', 'NCPL0018', 'Bihar', 'Lakhisarai', '811311', 'Pachna Road, Lakhisarai', 'ramlakhansingh@nisroch', '8084403740', '10CFLPK1608G1ZX', 'Maruti Transport', 'Lakhisarai', 'PLS31051702188', 'NPP-018', 'NBP-018', 500000, 500000, 500000, 369958),
(34, 'NEW JANTA KITNASHAK BEEJ BHANDAR ,PROP RINKU ALAM', 'NCPL0019', 'Bihar', 'Rohtash', '821301', 'Brardhi Gola,Akorhi Gola, Rohtash', 'newjantakitnashakbeejbhandar@nisroch', '9801969401', '10AZKPA3877E1ZQ', 'Naya Bharat', 'Patna Sasaram', '', 'NPP-019', 'NBP-019', 500000, 500000, 500000, 500000),
(36, 'DURGA BEEJ BHANDAR, PROP - SHIVAM SHARDEY', 'NCPL0020', 'Bihar', 'Aurangabad', '824101', 'Nagarpalika Bazar, Sabzi Mandi ', 'durgabeejbhandar@nisroch', '7004009671', '10HAHPS4821K1ZK', 'Nalanda Express Carrier', 'Sabzi Mandi,Aurangabad', '', 'NPP-020', 'NBP-020', 500000, 500000, 500000, 500000),
(37, 'GOSHWAMI KHAD BHANDAR, PROP - OM PRAKASH GOSHWAMI', 'NCPL0021', 'Bihar', 'East Champaran', '', 'Gaddi Chowk,Lakhaura', 'goshwamikhadbhandar@nisroch', '9525298374', '10ANRPG3026A1ZS', 'Shivam Transport', 'Motihari', '102/2011-12', 'NPP-021', 'NBP-021', 500000, 500000, 500000, 500000),
(38, 'HARI BEEJ & KITNASK BHANDAR, PROP - SHASHI KANT KUMAR', 'NCPL0022', 'Bihar', 'Kaimur', '821109', 'Mohania, Kaimur', 'haribeejkitnaskbhandar@nisroch', '7004311667', '10BCFPK5792M1ZC', 'Rohtash', 'Kaimur,Ramgarh,Mohania', '', 'NPP-022', 'NBP-022', 500000, 500000, 500000, 500000),
(40, 'NAEEM FERTILIZER, PROP - NAEEM AKHTAR', 'NCPL0023', 'Bihar', 'Araria', '854329', 'Sohandar Haat ,Plashi,Araria', 'naeemfertilizer@nisroch', '9430882662', '10AYRPA2573K1ZH', 'Hariyana Transport', 'Araria', '166/2012-13', 'NPP-023', 'NBP-023', 500000, 500000, 500000, 500000),
(41, 'JAY MATA DI TRADERS, PROP- SHATRUDHAN MAHTO', 'NCPL0024', 'Bihar', 'Donwari', '847227', 'Donwari, po- Teghara,Block Babubarhi', 'jaymataditraders@nisroch', '9934636897', '10BGPM3026R1Z1', 'Subham Transport', 'Madhubani', 'PLS27121601710', 'NPP-024', 'NBP-024', 500000, 500000, 500000, 500000),
(42, 'FIRANGI LAL KUSHWAHA , PROP BALRAM PRASAD', 'NCPL0025', 'Bihar', 'Katihar', '854105', 'New Market Road, Katihar', 'firangilalkushwaha@nisroch', '9973757215', '10AHNPP0654P2Z0', 'Allied Cargo', 'New Market,Katihar', '26/2008-2009', 'NPP-025', 'NBP-025', 500000, 500000, 500000, 500000),
(43, 'SNEHA KRISHI KENDRA, PROP - SHAMBHU KUMAR', 'NCPL0026', 'Bihar', 'Mednichowki', '811106', 'Mednichowki, Surayagadha, Lakhisarai', 'snehakrishikendra@nisroch', '9931888556', '10CZQPK4074D1ZJ', 'Maruti Transport', 'Surajgadha', 'PLS29071601440', 'NPP-026', 'NBP-026', 500000, 500000, 500000, 500000),
(46, 'ASHU KUMAR , PROP NIRAJ KUMAR', 'NCPL0027', 'Bihar', 'Chhauradano', '845302', 'Chhauradano, East Champaran', 'ashukumar@nisroch', '6203942421', '10CQIPK3283R1ZF', 'Shivam Transport', 'Motihari', '83/18-19', 'NPP-027', 'NBP-027', 500000, 500000, 500000, 500000),
(47, 'MAA DURGA KRISHI BEEJ BHANDAR, PROP-SAROJ KUMAR', 'NCPL0028', 'Bihar', 'Samastipur', '848114', 'At- Malgodam Road ,Dalsingsarai', 'maadurgakrishibeejbhandar@nisroch', '9934257625', '10CBGPK4475G1ZV', 'Ajanta Transport', 'Dalsingsarai,Samastipur', 'PLS16121601691', 'NPP-028', 'NBP-028', 500000, 500000, 500000, 500000),
(48, 'RAM LAKHAN ENTERPRISES', 'NCPL0031', 'BIHAR', 'GAYA', '', 'DOHBI', 'ramlakhan@nisroch', '9973456099', '10AJBPP3993RIZO', 'M.S. TRANSPORT', 'DOHBI', '', 'NPP-031', 'NBP-031', 500000, 500000, 500000, 500000),
(49, 'BIHAR BEEJ BHANDAR', 'NCPL0032', 'BIHAR', 'ROHTASH', 'BIHAR 821312', 'Babu Ganj Road, Near Ashok Hotel, Rohtas', 'msbihar@nisroch', '9199278388', '10586394043', 'Rohtash Carrier', 'DEHRI BHAZAR', '', 'NPP-032', 'NBP-032', 500000, 500000, 500000, 500000),
(50, 'ASTHA JAGRITI ENTERPRISES', 'NCPL0051', 'BIHAR', 'PURNIA', '', '', 'astha@nisroch', '', '', 'Allied Cargo', 'Champanagar', '', 'NPP-051', 'NBP-051', 500000, 500000, 500000, 500000),
(51, 'VIJAY BEEJ BHANDAR', 'NCPL0029', 'MASAURI', 'PATNA', '', 'KUSHWAHA MARKET,DAK BANGLA ROAD MASAURI', 'vijaybeejbhandar@nisroch', '8521296878', '10EWXPK4467G1Z5', 'KESHRI TRANSPORT', 'MASAURI', '', 'NPP-O29', 'NBP-029', 500000, 500000, 500000, 500000),
(57, 'JAI MATADI TRADERS', 'NCPL0024', 'DONVARI HAT', 'TEGHRA BABUBARHI', 'BIHAR 847227', 'MADHUBANI', 'MUKESHJMDT@GMAIL.COM', '9934636897', '10BGAPM3026R1ZI', 'SUBHAM', 'MADHUBANI', '', 'NPP-024', 'NBP-024', 500000, 500000, 500000, 500000),
(58, 'JANAK KHAD BEEJ BHANDER', 'NCPL0030', 'BAGHOPUR HANUMAN NAGAR', 'SAMASTIPUR', 'BIHAR 848117', 'ROSERA', '', '9162262623', '10CVIPK3432RIZE', 'MITHLANCHAL', 'ROSERA', '', 'NPP-030', 'NBP-030', 500000, 500000, 500000, 500000),
(59, 'AFTAB KHAD BEEJ BHANDAR', 'NCPL0034', 'BHAWANI PUR RAJDHAM', 'PURNIA', 'BIHAR ', 'PURNIA', '', '9955509096', '10BKHPA6623B1Z2', 'Allied Cargo', 'PURNIA', '', 'NPP-034', 'NBP-034', 500000, 500000, 500000, 500000),
(60, 'SAKSHAM BEEJ BHANDAR', 'NCPL0034', 'NAGAR PANCHAYAT', 'PURNIA', 'BIHAR 854202', 'GULABBAGH PURNIA', '', '9931653677', '10DTHPS9028H1ZJ', 'Allied Cargo', 'Gulabbagh, Purnia', '', 'NPP-0354', 'NBP-034', 500000, 500000, 500000, 500000),
(61, 'MAA KALI KHAD BHANDAR', 'NCPL0035', 'RAMNAGAR MANKATHA', 'LAKHISARAI', '', 'LAKHISARAI', '', '9570279745', '10DDNPK7169HIZC', 'MARUTI', 'LAKHISARAI', '', 'NPP-035', 'NBP-035', 500000, 500000, 500000, 500000),
(62, 'KISAN FERTILISER', 'NCPL0036', 'BIROLI BAZAR ', 'PURNIA', 'BIHAR 854204', 'GULABBAGH PURNIA', '', '9661365410', '10APIPA5160JIZD', 'Hariyana Transport', 'Gulabbagh, Purnia', '', 'NPP-036', 'NBP-036', 500000, 500000, 500000, 500000),
(63, 'JEET KHAD BEEJ BHANDAR', 'NCPL0037', 'BELABALU GHAT ', 'BELARIK', 'BIHAR 84301', 'PURNIA', '', '8809692064', '10AXKPD7949J1GB', 'Hariyana Transport', 'PURNIA', '', 'NPP-037', 'NBP-037', 500000, 500000, 500000, 500000),
(64, 'BHARAT INTERPRISES', 'NCPL0038', 'FALKA ', 'KATIHAR', 'BIHAR 854118', 'PURNIA', '', '9931243241', '10BDKPA9849KIZD', 'Hariyana Transport', 'PURNIA', '', 'NPP-038', 'NBP-038', 500000, 500000, 500000, 500000),
(65, 'PANDEY TRADING', 'NCPL 0039', 'KAHALGAON', 'BHAGALPUR', 'BIHAR 813203', 'KAHALGAON', 'lovelysourav409@gmail.com', '9934171258', '10FJPS7262F1ZR', 'Allied Carrier', '', '', 'NPP-039', 'NBP-039', 500000, 500000, 500000, 500000),
(66, 'RAM JANAM SAH', 'NCPL0040', 'VISHNU CHAOWK ', 'CHAMPARAN', 'BIHAR 845418', 'DHAKA', '', '9504096519', '10DRQPS5832G12K', 'LAV KUSH', 'DHAKA', '', 'NPP-040', 'NBP-040', 500000, 500000, 500000, 500000),
(67, 'KAUSAL FERTILISER &SEEDS STORE', 'NCPL0041', 'NUNGARA', 'KATIHAR', 'BIHAR 855114', 'KATIHAR', '', '7549479917', '10BQHPM3652E1Z9', 'Allied Cargo', 'KATHAR', '', 'NPP-041', 'NBP-041', 500000, 500000, 500000, 500000),
(68, 'TRIDEV KHAD BEEJ BHANDAR', 'NCPL0042', 'AT-KHERIA ', 'KATIHAR', 'BIHAR 854108', 'KATIHAR', 'NISHANTRAJ4041@GMAIL.COM', '9939951395', '101VWPS4484P1ZC', 'Allied Cargo', 'KATIHAR', '', 'NPP-042', 'NBP-042', 500000, 500000, 500000, 500000),
(69, 'CHAUDHARY KHAD BEEJ BHANDAR', 'NCPL0042', 'GAX GHAT ', 'MUZAFFAR PUR', '', 'MUZAFFER PUR', '', '9934657026', '10ALNPC2208G1ZU', 'NEW SHIVAM', 'MAZAFFAR PUR', '', 'NPP-042', 'NBP-042', 500000, 500000, 500000, 500000),
(70, 'ROUSHAN SEEDS CORPORATION', 'NCPL0043', 'NEW CHOWK', 'Samastipur', 'BIHAR 843130', 'TAJPUR', 'ROUSHANSEEDS.CORPURATION@GMAIL.COM', '9661651422', '10BBFPS6386G1ZJ', 'Ajanta Transport', 'TAJPUR', '', 'NPP-043', 'NBP-043', 500000, 500000, 500000, 500000),
(71, 'KUSHWAHA BEEJ BHANDAR', 'NCPL0044', 'GOYAL MARKET ', 'PURNIA', 'BIHAR 854326', 'GULABBAGH', '', '9931273365', '10BATPS0030GZI', 'Allied Cargo', 'Gulabbagh', '', 'NPP-044', 'NBP-044', 500000, 500000, 500000, 500000),
(72, 'SONA SEEDS', 'NCPL0045', 'RAJA BAZAR ', 'NEAR BUS STAND', 'BIHAR 811201', 'MUNGER', '', '9431472151', '10BWDPK2911C1ZF', 'Allied Carring Transort', 'MUNGER', '', 'NPP-045', 'NBP-045', 500000, 500000, 500000, 500000),
(73, 'MAA BHAWANI AGRO AGENCY', 'NCPL0046', 'PANAR COMPLEX', 'ARARIA', 'BIHAR 854311', 'ARARIA', '', '8757147985', '10AOPPM5762C1Z3', 'VIKAS ROAD VIS', 'ARARIA', '', 'NPP-046', 'NBP-046', 500000, 500000, 500000, 500000),
(74, 'MAHADEV TRADERS', 'NCPL47', 'CHARAIYA RAHIKA ', 'PURNEA', 'BIHAR 854201', 'GULABBAGH PURNIA', '', '9931639198', '10EHMP52845L', 'Hariyana Transport', 'Gulabbagh, Purnia', '', 'NPP-47', 'NBP-47', 500000, 500000, 500000, 500000),
(75, 'AYUSHI FERTILIZER', 'NCPL0048', 'BALDIYABADI', 'MANIHARI', 'BIHAR 854113', 'KATIHAR', '', '8877572069', '10AICPJ7626F2ZP', 'Allied Cargo', '', '', 'NPP-048', 'NBP-048', 500000, 500000, 500000, 500000),
(76, 'ABHINAW KHAD BEEJ BHANDAR', 'NCPL0049', 'MATHIYA BHOPAT', 'PHULWAR', 'BIHAR 845315', 'MOTIHARI', '', '8789406137', '', 'SIVAM', '', '', 'NPP-049', 'NBP-049', 500000, 500000, 500000, 500000),
(77, 'MAHALAXMI TRADING', 'NCPL50', 'AMNULAHPATTI', 'ARARIA', 'BIHAR 854334', 'ARARIA', 'DEEPAKANAND6FEB@GMAIL.COM', '7547025767', '10EQLP5371H12M', 'Hariyana Transport', 'ARARIA', '', 'NPP-050', 'NBP-050', 500000, 500000, 500000, 500000),
(79, 'SRI RAM KRISI BHANDAR', 'NCPL-52', 'MODANGHCHHI ', 'MOKAMA', 'BIHAR 803302', 'MOKAMA', '', '7979808218', '', 'BABA CARING CORPURATION', 'MOKAMA', '', 'NPP-052', 'NBP-052', 500000, 500000, 500000, 500000),
(80, 'M/S SURIYA KUSWAHA BEEJ BHANDAR', 'NCPL 53', 'DANDKHORA', 'KARHAT', 'BIHAR 854107', 'KATIHAR', '', '9572770035', '10DJBPK8668B2ZG', 'ALLID CARGO', 'KATIHAR', '', 'NPP-5806', 'NBP-5283', 0, 0, 0, 0),
(81, 'KOSHI KHAD BEEJ BHANDAR', 'NCPL 54', 'JAGELI', 'PURNIA', 'BIHAR 854304', 'PURNIA', '', '9631276116', '10ARTPJ5497MIZH', 'HARIYANA', 'ALLIED CARGO', 'PURNIA', 'NPP-54', 'NBP-54', 500000, 500000, 500000, 500000),
(82, 'JAHANGIR BEEJ BHANDAR', 'NCPL55', 'AZAM NAGAR', 'KATIHAR', 'BIHAR 855113', 'KATIHAR', 'SANJAY1234934@GMAIL.COM', '9534965043', '10DODPS1554F', 'ALLIED CARGO', 'KATIHAR', '', 'NPP-6604', 'NBP-6500', 500000, 500000, 500000, 500000),
(83, 'BABA TRADING', 'NCPL56', 'MATYARI CHOWK', 'ARARIA', 'BIHAR 854311', 'ARARIA', '', '7250462555', '10AUUPB1565DIZ2', 'HARIYANA', 'ARARIA', '', 'NPP-56', 'NBP-56', 500000, 500000, 500000, 500000),
(84, 'KISHAN KRISHI KENDRA', 'NCPL57', 'NEAR DOCTOR MIRA JHA', 'BIHTA', 'BIHAR 8011013', 'BIHTA', '', '9386704936', '10ANDPK2653DIZP', 'HARI OM', 'BIHTA', '', 'NPP-5422', 'NBP-1155', 500000, 500000, 500000, 500000),
(85, 'M/S BHARAT ENTERPRISES', 'NCPL 58', 'FALKA', 'KATIHAR', 'BIHAR 854118', 'FALKA', '', '9931243241', '10BDKPA9849KIZD', 'HARIYANA', 'FALKA', '', 'NPP-58', 'NBP-58', 500000, 500000, 500000, 500000),
(86, 'ROCKY UTTAM BEEJ BHANDAR', 'NCPL 59', 'PARWALPUTR', 'BIHAR SARIF', 'BIHAR 803114', 'RAMJANDAR PUR BAYPASS', '', '9934274600', '10CCKPK7255BIZZ', 'HARI OM', 'RAMJANDAR PUR BAYPASS', '', 'NPP-59', 'NBP-59', 500000, 500000, 500000, 500000),
(87, 'M/S MANOJ KHAD BEEJ BHANDAR', 'NCPL 60', 'PACKTOLA', 'ARARIA', 'BIHAR 854325', 'ARARIA', '', '9939217611', '10EAHPS9972N2ZU', 'HARIYANA', 'ARARIA', '', 'NPP-60', 'NBP-60', 500000, 500000, 500000, 500000),
(88, 'NEW BHARAT SEEDS COMPANY', 'NCPL61', 'USMANI MARKET', 'SAMASTIPUR', 'BIHAR 848130', 'TAJPUR', '', '9708766097', '10EMCPS5O673DIZG', 'AJANTA', 'PRAKASH', '', 'NPP-61', 'NBP-61', 500000, 500000, 500000, 500000),
(89, 'KRISHI VIKASH KENDRA', 'NCPL 63', 'ALIGANJ', 'JAMUI', 'BIHAR 811301', 'ALIGANJ /JAMUI', '', '9801160976', '10CABP9961LIZD', 'JAGDAMBA CARIAR', '', '', 'NPP-63', 'NBP-63', 500000, 500000, 500000, 500000),
(90, 'KUMAR BEEJ BHANDAR', 'NCPL 62', 'BAJU MARKET', 'LAISHARAI', 'BIHAR 811320', 'LAKHISARAI', '', '7549783196', '10CSSPK5558B1ZS', 'MARUTI', 'LAKISHRAI', '', 'NPP-62', 'NBP-62', 500000, 500000, 500000, 500000),
(91, 'SACHIN BEEJ BHANDAR', 'NCPL64', 'BAGHI BHELWA', 'CAMPARAN', 'BIHAR845315', 'MOTIGARI', '', '7654421995', '', 'SIVAM', 'MOTIHARI', '', 'NPP-64', 'NBP-64', 500000, 500000, 500000, 500000),
(92, 'JAI MATA DI TRADERS', 'NCPL 65', 'NARAULI CHOWK', 'MUSHARI', 'BIHAR 843119', 'MUZAFAR PUR', '', '7097971526', '10GTUPK7187R121', 'NEW SIVAM', 'AKHARA GHAT MUZAFARPUR', '', 'NPP-65', 'NBP-65', 500000, 500000, 500000, 500000),
(93, 'ROCKY UTTAM BEEJ BHANDAR', 'NCPL 58', 'PARWALPUTR', 'BIHAR SARIF', 'BIHAR 803114', 'RAMJANDAR PUR BAYPASS', '', '9934274600', '10CCKPK7255BIZZ', 'HARI OM', 'RAMJANDAR PUR BAYPASS', '', 'NPP-58', 'NBP-58', 500000, 500000, 500000, 500000),
(95, 'Test', 'Buyer test', 'State ', 'Banka', '800014 ', 'Delivery address ', 'Email id', '8340326660', 'Gst ', 'Place of supply ', 'Destination ', 'Pl no', 'NPP-2012', 'NBP-7878', 10000, 10000, 3864, 10000),
(96, 'OmPrakash', 'TESTBUYERCODE', 'BIHAR', 'PATNA', '800026', 'SARAN', 'iewd1285@gmail.com', '9631468887', '10TESTGST', 'placeofsupply', 'saran', 'p8957689', 'NPP-4812', 'NBP-3004', 10000, 100000, 10000, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inv_id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `date` varchar(10) NOT NULL,
  `time` time(6) NOT NULL,
  `qtyOut` varchar(255) NOT NULL,
  `dateOut` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ledger`
--

CREATE TABLE `ledger` (
  `ledger_id` int(11) NOT NULL,
  `billid` int(11) NOT NULL,
  `inv_id` varchar(255) NOT NULL,
  `paymentType` varchar(255) NOT NULL,
  `ledgerdate` text NOT NULL,
  `time` text NOT NULL,
  `dis_id` int(11) NOT NULL,
  `previousLimt` int(11) NOT NULL,
  `debitamount` double NOT NULL,
  `Credit` int(11) NOT NULL,
  `balance` double NOT NULL,
  `user_balance` double NOT NULL,
  `dis` int(11) NOT NULL,
  `totalcredit` int(11) NOT NULL,
  `Remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ledger`
--

INSERT INTO `ledger` (`ledger_id`, `billid`, `inv_id`, `paymentType`, `ledgerdate`, `time`, `dis_id`, `previousLimt`, `debitamount`, `Credit`, `balance`, `user_balance`, `dis`, `totalcredit`, `Remarks`) VALUES
(53, 383, '', 'Debit', '2018/10/10', '05:52 PM', 54, 10030, 5600, 0, 4430, -3600, 0, 0, ''),
(54, 383, 'NCP/A-228', 'Cheque', '2018-10-10', '17:53 PM', 54, 4430, 0, 2000, 6430, -3600, 0, 2000, 'abcd'),
(55, 391, '', 'Debit', '2018/11/15', '04:00 PM', 56, 10000, 1050, 0, 8950, 0, 0, 0, ''),
(56, 391, 'NCP/A-234', 'Cheque', '2018-11-15', '16:03 PM', 56, 8950, 0, 1050, 10000, 0, 0, 1050, 'sasfsfdafdsgsdg ROI BOI'),
(57, 392, '', 'Debit', '2018/11/21', '02:05 PM', 54, 6430, 1437.5, 0, 4992.5, -287.5, 0, 0, ''),
(58, 392, 'NCP/A-235', 'Cash', '2018-11-21', '14:08 PM', 54, 4993, 0, 1150, 6143, -287.5, 0, 1150, 'in bank act no: 123'),
(59, 399, '', 'Debit', '2018/11/24', '12:32 PM', 31, 500000, 3960, 0, 496040, -3960, 0, 0, ''),
(60, 403, '', 'Debit', '2018/11/24', '01:36 PM', 78, 10000, 3960, 0, 6040, -3960, 0, 0, ''),
(61, 407, '', 'Debit', '2018/11/24', '01:53 PM', 78, 100000, 6136, 0, 93864, -6136, 0, 0, ''),
(62, 410, '', 'Debit', '2018/11/26', '11:23 AM', 11, 10000, 5460, 0, 4540, 0, 0, 0, ''),
(63, 410, 'NCP/A-239', 'Cash', '2018-11-26', '12:47 PM', 11, 4540, 0, 5460, 10000, 0, 0, 5460, 'counter'),
(64, 414, '', 'Debit', '2018/11/27', '03:27 PM', 11, 10000, 3960, 0, 6040, -3960, 0, 0, ''),
(65, 419, '', 'Debit', '2018/11/27', '04:39 PM', 11, 10000, 1700, 0, 8300, -1700, 0, 0, ''),
(66, 420, '', 'Debit', '2018/11/27', '10:50 PM', 11, 6040, 5200, 0, 840, -5200, 0, 0, ''),
(67, 421, '', 'Debit', '2018/11/28', '11:32 AM', 11, 8300, 0, 0, 8300, 0, 0, 0, ''),
(68, 421, '', 'Debit', '2018/11/28', '11:34 AM', 11, 8300, 0, 0, 8300, 0, 0, 0, ''),
(69, 421, '', 'Debit', '2018/11/28', '11:34 AM', 11, 8300, 0, 0, 8300, 0, 0, 0, ''),
(70, 421, '', 'Debit', '2018/11/28', '11:35 AM', 11, 8300, 0, 0, 8300, 0, 0, 0, ''),
(71, 424, '', 'Debit', '2018/11/28', '03:14 PM', 12, 500000, 32463.61, 0, 467536.39, -32463.61, 0, 0, ''),
(72, 424, '', 'Debit', '2018/11/28', '03:14 PM', 12, 500000, 32463.61, 0, 467536.39, -32463.61, 0, 0, ''),
(73, 429, '', 'Debit', '2018/11/29', '02:50 PM', 11, 500000, 20545.35, 0, 479454.65, -20545.35, 0, 0, ''),
(74, 429, '', 'Debit', '2018/11/29', '02:50 PM', 11, 500000, 20545.35, 0, 479454.65, -20545.35, 0, 0, ''),
(75, 433, '', 'Debit', '2018/12/01', '11:36 AM', 11, 479455, 33177.12, 0, 446277.88, -33177.12, 0, 0, ''),
(76, 433, '', 'Debit', '2018/12/01', '11:36 AM', 11, 479455, 33177.12, 0, 446277.88, -33177.12, 0, 0, ''),
(77, 433, '', 'Debit', '2018/12/01', '11:37 AM', 11, 479455, 33177.12, 0, 446277.88, -33177.12, 0, 0, ''),
(78, 433, '', 'Debit', '2018/12/01', '11:38 AM', 11, 479455, 33177.12, 0, 446277.88, -33177.12, 0, 0, ''),
(79, 434, '', 'Debit', '2018/12/01', '11:45 AM', 11, 446278, 33318.642, 0, 412959.358, -33318.642, 0, 0, ''),
(80, 434, '', 'Debit', '2018/12/01', '11:46 AM', 11, 446278, 33318.642, 0, 412959.358, -33318.642, 0, 0, ''),
(81, 435, '', 'Debit', '2018/12/08', '02:15 PM', 11, 500000, 5200, 0, 494800, -5200, 0, 0, ''),
(82, 435, '', 'Debit', '2018/12/08', '02:15 PM', 11, 500000, 5200, 0, 494800, -5200, 0, 0, ''),
(83, 435, '', 'Debit', '2018/12/08', '02:16 PM', 11, 500000, 5200, 0, 494800, -5200, 0, 0, ''),
(84, 438, '', 'Debit', '2018/12/08', '02:47 PM', 11, 412959, 33318.642, 0, 379640.358, -33318.642, 0, 0, ''),
(85, 439, '', 'Debit', '2018/12/10', '04:23 PM', 12, 467536, 37140.5, 0, 430395.5, -37140.5, 0, 0, ''),
(86, 439, '', 'Debit', '2018/12/10', '04:42 PM', 12, 467536, 39854.5, 0, 427681.5, -39854.5, 0, 0, ''),
(87, 440, '', 'Debit', '2018/12/10', '04:48 PM', 13, 500000, 38350, 0, 461650, -38350, 0, 0, ''),
(88, 441, '', 'Debit', '2018/12/10', '04:53 PM', 14, 500000, 51035, 0, 448965, -51035, 0, 0, ''),
(89, 442, '', 'Debit', '2018/12/10', '04:54 PM', 14, 500000, 0, 0, 500000, 0, 0, 0, ''),
(90, 443, '', 'Debit', '2018/12/10', '05:14 PM', 15, 500000, 39854.5, 0, 460145.5, -39854.5, 0, 0, ''),
(91, 445, '', 'Debit', '2018/12/10', '05:34 PM', 15, 500000, 49855, 0, 450145, -49855, 0, 0, ''),
(92, 449, '', 'Debit', '2018/12/11', '01:40 PM', 11, 379640, 12600, 0, 367040, -12600, 0, 0, ''),
(93, 451, '', 'Debit', '2018/12/11', '02:19 PM', 15, 450145, 44362.5, 0, 405782.5, -44362.5, 0, 0, ''),
(94, 452, '', 'Debit', '2018/12/11', '02:27 PM', 16, 500000, 19363.8, 0, 480636.2, -19363.8, 0, 0, ''),
(95, 453, '', 'Debit', '2018/12/11', '02:36 PM', 17, 500000, 65501.8, 0, 434498.2, -65501.8, 0, 0, ''),
(96, 454, '', 'Debit', '2018/12/11', '02:39 PM', 18, 500000, 25252, 0, 474748, -25252, 0, 0, ''),
(97, 455, '', 'Debit', '2018/12/11', '02:46 PM', 18, 500000, 5782, 0, 494218, -5782, 0, 0, ''),
(98, 456, '', 'Debit', '2018/12/11', '02:53 PM', 18, 494218, 3570, 0, 490648, -3570, 0, 0, ''),
(99, 456, '', 'Debit', '2018/12/11', '02:53 PM', 18, 494218, 3570, 0, 490648, -3570, 0, 0, ''),
(100, 457, '', 'Debit', '2018/12/11', '02:57 PM', 17, 500000, 13650, 0, 486350, -13650, 0, 0, ''),
(101, 459, '', 'Debit', '2018/12/12', '10:16 AM', 14, 500000, 87660, 0, 412340, -87660, 0, 0, ''),
(102, 460, '', 'Debit', '2018/12/12', '10:35 AM', 14, 412340, 7080, 0, 405260, -7080, 0, 0, ''),
(103, 461, '', 'Debit', '2018/12/12', '10:43 AM', 20, 500000, 22184, 0, 477816, -22184, 0, 0, ''),
(104, 463, '', 'Debit', '2018/12/12', '11:46 AM', 22, 500000, 26373, 0, 473627, -26373, 0, 0, ''),
(105, 465, '', 'Debit', '2018/12/12', '11:57 AM', 15, 405783, 29400, 0, 376383, -29400, 0, 0, ''),
(106, 466, '', 'Debit', '2018/12/12', '12:09 PM', 15, 460146, 22394.04, 0, 437751.96, -22394.04, 0, 0, ''),
(107, 467, '', 'Debit', '2018/12/12', '12:11 PM', 15, 376383, 11564, 0, 364819, -11564, 0, 0, ''),
(108, 468, '', 'Debit', '2018/12/12', '01:09 PM', 25, 500000, 31500, 0, 468500, -31500, 0, 0, ''),
(109, 472, '', 'Debit', '2018/12/13', '10:07 AM', 24, 500000, 40635, 0, 459365, -40635, 0, 0, ''),
(110, 473, '', 'Debit', '2018/12/13', '10:11 AM', 22, 500000, 32812.5, 0, 467187.5, -32812.5, 0, 0, ''),
(111, 474, '', 'Debit', '2018/12/13', '10:16 AM', 20, 500000, 58800, 0, 441200, -58800, 0, 0, ''),
(112, 475, '', 'Debit', '2018/12/13', '10:21 AM', 24, 500000, 11564, 0, 488436, -11564, 0, 0, ''),
(113, 476, '', 'Debit', '2018/12/13', '10:25 AM', 26, 500000, 34633, 0, 465367, -34633, 0, 0, ''),
(114, 477, '', 'Debit', '2018/12/13', '10:29 AM', 26, 500000, 28875, 0, 471125, -28875, 0, 0, ''),
(115, 478, '', 'Debit', '2018/12/13', '10:37 AM', 27, 500000, 43050, 0, 456950, -43050, 0, 0, ''),
(116, 479, '', 'Debit', '2018/12/13', '10:40 AM', 18, 490648, 32812.5, 0, 457835.5, -32812.5, 0, 0, ''),
(117, 480, '', 'Debit', '2018/12/13', '10:43 AM', 18, 474748, 3068, 0, 471680, -3068, 0, 0, ''),
(118, 481, '', 'Debit', '2018/12/13', '10:46 AM', 28, 500000, 19363.8, 0, 480636.2, -19363.8, 0, 0, ''),
(119, 481, '', 'Debit', '2018/12/13', '10:46 AM', 28, 500000, 19363.8, 0, 480636.2, -19363.8, 0, 0, ''),
(120, 481, '', 'Debit', '2018/12/13', '10:47 AM', 28, 500000, 19363.8, 0, 480636.2, -19363.8, 0, 0, ''),
(121, 482, '', 'Debit', '2018/12/14', '10:32 AM', 28, 500000, 30450, 0, 469550, -30450, 0, 0, ''),
(122, 484, '', 'Debit', '2018/12/14', '10:40 AM', 31, 500000, 43050, 0, 456950, -43050, 0, 0, ''),
(123, 486, '', 'Debit', '2018/12/14', '10:49 AM', 31, 496040, 19042.84, 0, 476997.16, -19042.84, 0, 0, ''),
(124, 487, '', 'Debit', '2018/12/14', '10:58 AM', 30, 500000, 31340.8, 0, 468659.2, -31340.8, 0, 0, ''),
(125, 491, '', 'Debit', '2018/12/17', '02:17 PM', 30, 500000, 92925, 0, 407075, -92925, 0, 0, ''),
(126, 492, '', 'Debit', '2018/12/17', '02:22 PM', 28, 469550, 44625, 0, 424925, -44625, 0, 0, ''),
(127, 493, '', 'Debit', '2018/12/17', '02:27 PM', 32, 500000, 85680, 0, 414320, -85680, 0, 0, ''),
(128, 494, '', 'Debit', '2018/12/17', '02:34 PM', 15, 364819, 85680, 0, 279139, -85680, 0, 0, ''),
(129, 495, '', 'Debit', '2018/12/17', '02:59 PM', 14, 448965, 5664, 0, 443301, -5664, 0, 0, ''),
(130, 496, '', 'Debit', '2018/12/17', '03:07 PM', 14, 405260, 26250, 0, 379010, -26250, 0, 0, ''),
(131, 500, '', 'Debit', '2018/12/17', '03:21 PM', 12, 500000, 85680, 0, 414320, -85680, 0, 0, ''),
(132, 501, '', 'Debit', '2018/12/17', '03:32 PM', 12, 427682, 14809, 0, 412873, -14809, 0, 0, ''),
(133, 503, '', 'Debit', '2018/12/18', '01:25 PM', 12, 414320, 85680, 0, 328640, -85680, 0, 0, ''),
(134, 507, '', 'Debit', '2018/12/21', '08:08 PM', 95, 10000, 6136, 0, 3864, -6136, 0, 0, ''),
(135, 508, '', 'Debit', '2018/12/24', '10:33 AM', 33, 500000, 130042.5, 0, 369957.5, -130042.5, 0, 0, ''),
(136, 513, '', 'Debit', '2018/12/26', '12:42 PM', 25, 500000, 0, 0, 500000, 0, 0, 0, ''),
(137, 513, '', 'Debit', '2018/12/26', '12:43 PM', 25, 500000, 0, 0, 500000, 0, 0, 0, ''),
(138, 513, '', 'Debit', '2018/12/26', '12:44 PM', 25, 500000, 19440.5, 0, 480559.5, -19440.5, 0, 0, ''),
(139, 514, '', 'Debit', '2018/12/26', '12:49 PM', 28, 424925, 7140, 0, 417785, -7140, 0, 0, ''),
(140, 515, '', 'Debit', '2018/12/26', '12:51 PM', 28, 480636, 11564, 0, 469072, -11564, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(255) NOT NULL,
  `category` varchar(50) NOT NULL,
  `hsn` varchar(255) NOT NULL,
  `batch` varchar(255) NOT NULL,
  `mfg` varchar(255) NOT NULL,
  `exp` varchar(255) NOT NULL,
  `size` varchar(500) NOT NULL,
  `bagtype` varchar(255) NOT NULL,
  `bagprice` varchar(255) NOT NULL,
  `bagqty` int(11) NOT NULL,
  `casetype` varchar(255) NOT NULL,
  `csize` varchar(255) NOT NULL,
  `caseprice` varchar(255) NOT NULL,
  `caseqty` int(11) NOT NULL,
  `drumtype` varchar(255) NOT NULL,
  `dsize` varchar(255) NOT NULL,
  `drumprice` varchar(255) NOT NULL,
  `drumqty` int(11) NOT NULL,
  `customunit` varchar(255) NOT NULL,
  `customprice` varchar(255) NOT NULL,
  `customqty` int(11) NOT NULL,
  `gst` int(11) NOT NULL,
  `igst` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `prod_name`, `category`, `hsn`, `batch`, `mfg`, `exp`, `size`, `bagtype`, `bagprice`, `bagqty`, `casetype`, `csize`, `caseprice`, `caseqty`, `drumtype`, `dsize`, `drumprice`, `drumqty`, `customunit`, `customprice`, `customqty`, `gst`, `igst`) VALUES
(244, 'JHATKA 505 (1LTRX10)', 'NPP', '3808', '', '', '', '', 'Bag', '', 300, 'Case', '1Ltr x 10', '5200', 299, 'Drum', '', '', 300, '', '', 300, 18, 18),
(245, 'JHATKA 505 (500MLX20)', 'NPP', '3808', '', '', '', '', 'Bag', '', 300, 'Case', '500ML X20', '5350', 299, 'Drum', '', '', 300, '', '', 300, 18, 18),
(246, 'JHATKA 505 (250MLX40)', 'NPP', '3808', '', '', '', '', 'Bag', '', 300, 'Case', '250MLX40', '5750', 299, 'Drum', '', '', 300, '', '', 300, 18, 18),
(247, 'JHATKA 505 (100MLX50)', 'NPP', '3808', '', '', '', '', 'Bag', '', 300, 'Case', '100MLX50', '2900', 299, 'Drum', '', '', 300, '', '', 300, 18, 18),
(248, 'NISCRON PLUS(250MLX40)', 'NPP', '3808', '', '', '', '', 'Bag', '', 300, 'Case', '250MLX40', '4850', 299, 'Drum', '', '', 300, '', '', 300, 18, 18),
(249, 'NISCRON (100MLX50)', 'NPP', '3808', '', '', '', '', 'Bag', '', 300, 'Case', '100MLX50', '2700', 299, 'Drum', '', '', 300, '', '', 299, 18, 18),
(250, 'N-TARA(100GMX50)', 'NPP', '3808', '', '', '', '', 'Bag', '', 300, 'Case', '100GMX50', '4325', 299, 'Drum', '', '', 300, '', '', 300, 18, 18),
(251, 'NISCRON PLUS(100MLX50)', 'NPP', '3808', '', '', '', '', 'Bag', '', 300, 'Case', '100MLX50', '2550', 299, 'Drum', '', '', 300, '', '', 300, 18, 18),
(252, 'SUPER KILL (250mlx40)', 'NPP', '3808', '', '', '', '', 'Bag', '', 300, 'Case', '250MLX40', '4550', 299, 'Drum', '', '', 300, '', '', 300, 18, 18),
(253, 'SUPER KILL (100mlx50)', 'NPP', '3808', '', '', '', '', 'Bag', '', 300, 'Case', '100MLX50', '2400', 299, 'Drum', '', '', 300, '', '', 300, 18, 18),
(255, 'ROUNAK (50GMX80)', 'NPP', '3808', '', '', '', '', 'Bag', '', 300, 'Case', '50GMX80', '4200', 299, 'Drum', '', '', 300, '', '', 300, 18, 18),
(256, 'ROUNAK(100GMX60)', 'NPP', '3808', '', '', '', '', 'Bag', '', 300, 'Case', '100GMX60', '6150', 299, 'Drum', '', '', 300, '', '', 300, 18, 18),
(257, 'JADE (250mlx40)', 'NPP', '3808', '', '', '', '', 'Bag', '', 300, 'Case', '250mlx40)', '2750', 299, 'Drum', '', '', 300, '', '', 300, 18, 18),
(258, 'JADE (100mlx50)', 'NPP', '3808', '', '', '', '', 'Bag', '', 300, 'Case', '100MLX50', '1500', 299, 'Drum', '', '', 300, '', '', 300, 18, 18),
(263, 'NISROCH GOLD(10MLX400)', 'NPP', '3808', '', '', '', '', 'Bag', '', 300, 'Case', '10MLX400', '12000', 299, 'Drum', '', '', 300, '', '', 300, 18, 18),
(264, 'SIGNET(20MLX250)', 'NBP', '3101', '', '', '', '', 'Bag', '', 300, 'Case', '20MLX250', '15000', 299, 'Drum', '', '', 300, '', '', 300, 5, 5),
(265, 'FLY OUT(20MLX250)', 'NPP', '3101', '', '', '', '', 'Bag', '', 300, 'Case', '20MLX250', '15250', 299, 'Drum', '', '', 300, '', '', 300, 5, 5),
(266, 'FLY OUT(20MLX250)', 'NBP', '3808', '', '', '', '', 'Bag', '', 300, 'Case', '(20MLX250)', '15250', 299, 'Drum', '', '', 300, '', '', 300, 5, 5),
(267, 'NISROCH GOLD (10MLX400)', 'NBP', '3101', '', '', '', '', 'Bag', '', 300, 'Case', '10MLX400', '12000', 299, 'Drum', '', '', 300, '', '', 300, 5, 5),
(269, 'SIGNET(20MLX250)', 'NPP', '3808', '', '', '', '', 'Bag', '', 300, 'Case', '20MLX250', '15000', 299, 'Drum', '', '', 300, '', '', 300, 18, 18),
(271, 'ROUNAK(250GMX24)', 'NPP', '3808', '', '', '', '', 'Bag', '', 300, 'Case', '250MLX24', '6060', 299, 'Drum', '', '', 300, '', '', 300, 18, 18),
(272, 'NAGRON(100GMX60)', 'NPP', '3808', '', '', '', '', 'Bag', '', 300, 'Case', '100GMX60', '6600', 299, 'Drum', '', '', 300, '', '', 300, 18, 18),
(273, 'NITRO POWER GR (1KGX25)', 'NBP', '3101', '', '', '', '1KGX25', 'Bag', '2450', 294, 'Case', '', '', 300, 'Drum', '', '', 300, '', '', 300, 18, 18),
(274, 'HUMAX G(1KGX25)', 'NBP', '3101', '', '', '', '1KGX25', 'Bag', '1700', 13, 'Case', '', '', 300, 'Drum', '', '', 300, '', '', 300, 5, 5),
(275, 'NISROCH GOLD (100MLX50)', 'NBP', '3101', '', '', '', '', 'Bag', '', 300, 'Case', '100MLX50', '13000', 299, 'Drum', '', '', 300, '', '', 300, 5, 5),
(276, 'NISROCH GOLD(100MLX50)', 'NPP', '3808', '', '', '', '', 'Bag', '', 300, 'Case', '100MLX50', '13000', 299, 'Drum', '', '', 300, '', '', 300, 18, 18),
(277, 'NISROCH GOLD (50MLX100)', 'NBP', '3101', '', '', '', '', 'Bag', '', 300, 'Case', '50MLX100', '14000', 299, 'Drum', '', '', 300, '', '', 300, 5, 5),
(279, 'SIGNET(50MLX100)', 'NBP', '3101', '', '', '', '', 'Bag', '', 300, 'Case', '50MLX100', '14000', 299, 'Drum', '', '', 300, '', '', 300, 5, 5),
(280, 'CHEENI KUM (50MLX100)', 'NBP', '3101', '', '', '', '', 'Bag', '', 300, 'Case', '50MLX100', '13000', 299, 'Drum', '', '', 300, '', '', 300, 5, 5),
(281, 'SPREDER(1LTRX10)', 'NBP', '3402', '', '', '', '', 'Bag', '', 300, 'Case', '1LTRX10', '1800', 299, 'Drum', '', '', 300, '', '', 300, 18, 18),
(282, 'SPREDER(500MLX20)', 'NBP', '3402', '', '', '', '', 'Bag', '', 300, 'Case', '500MLX20', '2000', 299, 'Drum', '', '', 300, '', '', 300, 18, 18),
(283, 'SPREDER(250MLX40)', 'NBP', '3402', '', '', '', '', 'Bag', '', 300, 'Case', '250MLX40', '2200', 299, 'Drum', '', '', 300, '', '', 300, 18, 18),
(284, 'CHEENI KUM (20MLX250)', 'NBP', '3101', '', '', '', '', 'Bag', '', 300, 'Case', '20MLX250', '15000', 299, 'Drum', '', '', 300, '', '', 300, 5, 5),
(285, 'PATINA (50MLX100)', 'NBP', '3101', '', '', '', '', 'Bag', '', 300, 'Case', '50MLX100', '14000', 299, 'Drum', '', '', 300, '', '', 300, 5, 5),
(286, 'SPREDER (250MLX40)', 'NPP', '3808', '', '', '', '', 'Bag', '', 0, 'Case', '250MLX40', '2250', -1, 'Drum', '', '', 0, '', '', 0, 18, 18),
(287, 'SPREDER(100MLX100)', 'NPP', '3808', '', '', '', '', 'Bag', '', 0, 'Case', '100MLX100', '2600', -1, 'Drum', '', '', 0, '', '', 0, 18, 18),
(288, 'NISCRON(250MLX40)', 'NPP', '3808', '', '', '', '', 'Bag', '', 0, 'Case', '250MLX40', '5000', -1, 'Drum', '', '', 0, '', '', 0, 18, 18),
(289, 'PATINA(20MLX250)', 'NBP', '3101', '', '', '', '', 'Bag', '', 300, 'Case', '20MLX250', '16000', 299, 'Drum', '', '', 0, '', '', 0, 5, 5),
(290, 'CONFINE(250MLX40)', 'NPP', '3808', '', '', '', '', 'Bag', '', 0, 'Case', '250MLX40', '7850', 300, 'Drum', '', '', 0, '', '', 0, 18, 18),
(291, 'CONFINE(100MLX50)', 'NPP', '3808', '', '', '', '', 'Bag', '', 0, 'Case', '100MLX50', '4175', 300, 'Drum', '', '', 0, '', '', 0, 18, 18),
(292, 'CONFINE (50MLX50)', 'NPP', '3808', '', '', '', '', 'Bag', '', 0, 'Case', '50MLX50', '2213', -1, 'Drum', '', '', 0, '', '', 0, 18, 18),
(293, 'CONFINE(10MLX400)', 'NPP', '3808', '', '', '', '', 'Bag', '', 0, 'Case', '10MLX400', '4740', -1, 'Drum', '', '', 0, '', '', 0, 18, 18),
(295, 'HUMAX PLUS (100MLX100)', 'NBP', '3101', '', '', '', '', 'Bag', '', 0, 'Case', '100MLX100', '6050', 300, 'Drum', '', '', 0, '', '', 0, 5, 5),
(296, 'HUMAX PLUS (250MLX40)', 'NBP', '3101', '', '', '', '', 'Bag', '', 0, 'Case', '250MLX40', '5650', 300, 'Drum', '', '', 0, '', '', 0, 5, 5),
(297, 'nitro power gr (1KGX25)', 'NPP', '3808', '', '', '', '1KGX25', 'Bag', '2450', 292, 'Case', '', '', 0, 'Drum', '', '', 0, '', '', 0, 18, 18),
(298, 'SIGNET (100MLX50)', 'NBP', '3101', '', '', '', '', 'Bag', '', 0, 'Case', '100MLX50', '13500', -1, 'Drum', '', '', 0, '', '', 0, 5, 5),
(299, 'NISROCH GOLD (10MLX400)', 'NBP', '3101', '', '', '', '', 'Bag', '', 0, 'Case', '10MLX400', '12000', 300, 'Drum', '', '', 0, '', '', 0, 5, 5),
(300, 'TAKU(25GMX40)', 'NBP', '3101', '', '', '', '', 'Bag', '', 0, 'Case', '25GMX40', '6000', -1, 'Drum', '', '', 0, '', '', 0, 5, 5),
(301, 'NISCRON(500MLX20)', 'NPP', '3808', '', '', '', '', 'Bag', '', 0, 'Case', '500MLX20', '4750', 300, 'Drum', '', '', 0, '', '', 0, 18, 18),
(302, 'JADE(10LTRX1)', 'NPP', '3808', '', '', '', '', 'Bag', '', 0, 'Case', '10LTRX1', '2400', -1, 'Drum', '', '', 0, '', '', 0, 18, 18),
(303, 'JADE(500MLX20)', 'NPP', '3808', '', '', '', '', 'Bag', '', 0, 'Case', '500MLX20', '2550', -1, 'Drum', '', '', 0, '', '', 0, 18, 18),
(305, 'SABA(100GMX16)', 'NBP', '3101', '', '', '', '', 'Bag', '', 0, 'Case', '100MLX16', '8000', -1, 'Drum', '', '', 0, '', '', 0, 5, 5),
(306, 'SABA(50GMX40)', 'NBP', '3101', '', '', '', '', 'Bag', '', 0, 'Case', '50GMX40', '11000', -1, 'Drum', '', '', 0, '', '', 0, 5, 5),
(307, 'TAKU(100GMX15)', 'NBP', '3101', '', '', '', '', 'Bag', '', 0, 'Case', '100GMX15', '7500', -1, 'Drum', '', '', 0, '', '', 0, 5, 5),
(308, 'CHEENI KUM(100MLX50)', 'NBP', '3101', '', '', '', '', 'Bag', '', 0, 'Case', '100MLX50', '12000', -1, 'Drum', '', '', 0, '', '', 0, 5, 5),
(309, 'CONFINE(250MLX29)', 'NPP', '3808', '', '', '', '', 'Bag', '', 0, 'Case', '', '', 300, 'Drum', '', '', 0, '29', '193', -29, 18, 18),
(310, 'CONFINE(250MLX29)', 'NPP', '3808', '', '', '', '', 'Bag', '', 0, 'Case', '250MLX29', '192', 300, 'Drum', '', '', 0, '', '', 0, 18, 18),
(311, 'CONFINE (50MLX50)', 'NBP', '3808', '', '', '', '', 'Bag', '', 0, 'Case', '50MLX50', '2100', 300, 'Drum', '', '', 0, '', '', 0, 18, 18),
(312, 'CONFINE(10MLX400)', 'NBP', '3808', '', '', '', '', 'Bag', '', 0, 'Case', '10MLX400', '3520', 300, 'Drum', '', '', 0, '', '', 0, 18, 18),
(313, 'CHEENI KAM (50MLX100)', 'NPP', '3101', '', '', '', '', 'Bag', '', 0, 'Case', '50MLX100', '13000', -1, 'Drum', '', '', 0, '', '', 0, 5, 5),
(314, 'SUPER KILL (500mlx20)', 'NPP', '3808', '', '', '', '', 'Bag', '', 0, 'Case', '500mlx20', '4350', -3, 'Drum', '', '', 0, '', '', 0, 18, 18),
(315, 'ADMANT(30GMX75)', 'NPP', '3808', '', '', '', '', 'Bag', '', 0, 'Case', '30GMX75', '6525', -1, 'Drum', '', '', 0, '', '', 0, 18, 18),
(316, 'SPREADER(100MLX75)', 'NPP', '3808', '', '', '', '', 'Bag', '', 0, 'Case', '100MLX75', '1950', -1, 'Drum', '', '', 0, '', '', 0, 18, 18),
(317, 'SIGNET(20MLX50)', 'NBP', '3101', '', '', '', '', 'Bag', '', 0, 'Case', '20MLX50', '3000', -1, 'Drum', '', '', 0, '', '', -1, 5, 5),
(319, 'SIGNET(50MLX20)', 'NBP', '3101', '', '', '', '', 'Bag', '', 0, 'Case', '50MLX20', '3000', -1, 'Drum', '', '', 0, '', '', 0, 5, 5),
(321, 'SIGNET(100MLX10)', 'NBP', '3101', '', '', '', '', 'Bag', '', 0, 'Case', '100MLX10', '2700', -1, 'Drum', '', '', 0, '', '', 0, 5, 5),
(322, 'CHEENI KUM(20MLX50)', 'NBP', '3101', '', '', '', '', 'Bag', '', 0, 'Case', '20MLX50', '3000', -1, 'Drum', '', '', 0, '', '', 0, 5, 5),
(323, 'CHEENIKUM(100MLX10)', 'NBP', '3101', '', '', '', '', 'Bag', '', 0, 'Case', '100MLX10', '2400', -1, 'Drum', '', '', 0, '', '', 0, 5, 5),
(324, 'FLYOUT(20MLX50)', 'NBP', '3101', '', '', '', '', 'Bag', '', 0, 'Case', '20MLX50', '3050', -1, 'Drum', '', '', 0, '', '', 0, 5, 5),
(325, 'SIGNET(50MLX20)', 'NBP', '3101', '', '', '', '', 'Bag', '', 0, 'Case', '500MLX20', '2800', -1, 'Drum', '', '', 0, '', '', 0, 5, 5),
(326, 'SIGNET(20MLX50)', 'NBP', '3101', '', '', '', '', 'Bag', '', 0, 'Case', '20MLX50', '3000', -1, 'Drum', '', '', 0, '', '', 0, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_distributor`
--

CREATE TABLE `staff_distributor` (
  `dist_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `Pincode` varchar(255) NOT NULL,
  `DAddress` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `gst` varchar(255) NOT NULL,
  `pos` varchar(255) NOT NULL,
  `Destination` varchar(255) NOT NULL,
  `pnumber` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_distributor`
--

INSERT INTO `staff_distributor` (`dist_id`, `name`, `State`, `City`, `Pincode`, `DAddress`, `email`, `number`, `gst`, `pos`, `Destination`, `pnumber`, `created_at`) VALUES
(1, 'OmPrakash', 'BIHAR', 'PATNA', '800026', 'SARAN', 'iewd1285@gmail.com', '9631468887', '12', 'fghdfhg', 'dfghdfgh', '9631468887', '2019-01-04 09:54:31'),
(2, '', '', '', '', '', '', '', '', '', '', '', '2019-01-04 10:05:00'),
(3, 'OmPrakash', 'BIHAR', 'PATNA', '800026', 'SARAN', 'iewd1285@gmail.com', '9631468887', 'dghdhdhdfhg', 'fghdfhg', 'dfghdfgh', '9631468887', '2019-01-04 10:40:07');

-- --------------------------------------------------------

--
-- Table structure for table `transports`
--

CREATE TABLE `transports` (
  `id` int(100) NOT NULL,
  `name` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transports`
--

INSERT INTO `transports` (`id`, `name`) VALUES
(2, 'ALLIED CARGO'),
(3, 'LAV KUSH'),
(4, 'HARIYANA'),
(5, 'SHIVAM'),
(6, 'HARI OM'),
(7, 'SUBHAM'),
(8, 'MARUTI'),
(9, 'MAA JAGDAMBA'),
(10, 'NEW BHARAT'),
(11, 'RHOTAS CARRIES'),
(12, 'AJANTA'),
(13, 'MITHLANCHAL'),
(14, 'M/S'),
(15, 'NEW SHIVAM'),
(16, 'ALLIED CARIER'),
(17, 'KESHARI'),
(18, 'VIKAS ROADWAYS'),
(19, 'JAGDAMBA'),
(20, 'PRAKASH'),
(21, 'BY HAND'),
(22, 'NAYA BHARAT'),
(23, 'MAURYA GHAT'),
(24, 'MAA JAGDAMBA');

-- --------------------------------------------------------

--
-- Table structure for table `userregister`
--

CREATE TABLE `userregister` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `number` varchar(20) CHARACTER SET utf8 NOT NULL,
  `Password` varchar(555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregister`
--

INSERT INTO `userregister` (`id`, `name`, `email`, `number`, `Password`) VALUES
(10, 'AYTIS', 'aytistechnology@gmail.com', '8340326660', 'aytis@2018cloud');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcart`
--
ALTER TABLE `addcart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`dist_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inv_id`);

--
-- Indexes for table `ledger`
--
ALTER TABLE `ledger`
  ADD PRIMARY KEY (`ledger_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `staff_distributor`
--
ALTER TABLE `staff_distributor`
  ADD PRIMARY KEY (`dist_id`);

--
-- Indexes for table `transports`
--
ALTER TABLE `transports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregister`
--
ALTER TABLE `userregister`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcart`
--
ALTER TABLE `addcart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1133;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=522;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `distributor`
--
ALTER TABLE `distributor`
  MODIFY `dist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inv_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ledger`
--
ALTER TABLE `ledger`
  MODIFY `ledger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_distributor`
--
ALTER TABLE `staff_distributor`
  MODIFY `dist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transports`
--
ALTER TABLE `transports`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `userregister`
--
ALTER TABLE `userregister`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
