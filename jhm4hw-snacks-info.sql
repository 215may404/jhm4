DROP DATABASE IF EXISTS jhm4hw;
CREATE DATABASE jhm4hw;
USE jhm4hw;

CREATE TABLE `snacks` (
  `ID` int(11) NOT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `Brand` varchar(100) DEFAULT NULL,
  `SalesCount` int(11) DEFAULT NULL,
  `HealthyOption` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `snacks` (`ID`, `Category`, `Brand`, `SalesCount`, `HealthyOption`) VALUES
(1, 'Chips', 'Lays', 50, 0),
(2, 'Chips', 'Calbee', 42, 0),
(3, 'Chips', 'Doritos', 38, 0),
(4, 'Chips', 'Pringles', 61, 0),
(5, 'Chips', 'Jack’n Jill', 33, 0),
(6, 'Chocolate', 'Lindt', 65, 0),
(7, 'Chocolate', 'Kinder', 75, 1),
(8, 'Chocolate', 'Ferrero Rocher', 58, 0),
(9, 'Chocolate', 'Snickers', 49, 0),
(10, 'Chocolate', 'M&M\'s', 45, 0),
(11, 'Cookies', 'Oreo', 33, 0),
(12, 'Cookies', 'Glico Pretz', 28, 1),
(13, 'Cookies', 'Hello Panda', 39, 0),
(14, 'Cookies', 'Koala\'s March', 31, 0),
(15, 'Cookies', 'Bourbon Alfort', 22, 1),
(16, 'Candies', 'Sugus', 40, 0),
(17, 'Candies', 'Ricola', 36, 1),
(18, 'Candies', 'Mentos', 55, 0),
(19, 'Candies', 'Hi-Chew', 33, 0),
(20, 'Candies', 'Puccho', 29, 0),
(21, 'Fruit Snacks', 'Vita Fruit Bar', 20, 1),
(22, 'Fruit Snacks', 'Healthy Garden', 18, 1),
(23, 'Fruit Snacks', 'Fruit-tella', 12, 1),
(24, 'Fruit Snacks', 'Dried Mango', 17, 1),
(25, 'Nuts', 'Blue Diamond Almonds', 26, 1),
(26, 'Nuts', 'Tong Garden', 22, 1),
(27, 'Nuts', 'Kirkland Cashews', 19, 1),
(28, 'Nuts', 'Planters Peanuts', 24, 1),
(29, 'Energy Bars', 'Nature Valley', 21, 1),
(30, 'Energy Bars', 'Clif Bar', 25, 1),
(31, 'Energy Bars', 'KIND Bar', 27, 1),
(32, 'Energy Bars', 'Quest Bar', 18, 1);