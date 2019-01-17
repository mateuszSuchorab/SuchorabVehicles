-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 11 Sty 2019, 02:45
-- Wersja serwera: 10.1.28-MariaDB
-- Wersja PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `suchorabvehiclesdatabase`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `acceptablevehicles`
--

CREATE TABLE `acceptablevehicles` (
  `acceptableVehicleId` int(11) NOT NULL,
  `Make` varchar(255) DEFAULT NULL,
  `Model` varchar(255) DEFAULT NULL,
  `VehicleType` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `acceptablevehicles`
--

INSERT INTO `acceptablevehicles` (`acceptableVehicleId`, `Make`, `Model`, `VehicleType`) VALUES
(1, 'Volkswagen', 'Golf', 'Cars'),
(2, 'Volkswagen', 'Polo', 'Cars'),
(3, 'Volkswagen', 'Passat', 'Cars'),
(4, 'Volkswagen', 'Tiguan', 'Cars'),
(5, 'Volkswagen', 'Touran', 'Cars'),
(6, 'Volkswagen', 'Amarok', 'Cars'),
(7, 'Opel', 'Astra', 'Cars'),
(8, 'Opel', 'Corsa', 'Cars'),
(9, 'Opel', 'Insignia', 'Cars'),
(10, 'Opel', 'Adam', 'Cars'),
(11, 'Opel', 'Zafira', 'Cars'),
(12, 'Opel', 'Vectra', 'Cars'),
(13, 'BMW', '320', 'Cars'),
(14, 'BMW', '318', 'Cars'),
(15, 'BMW', '520', 'Cars'),
(16, 'BMW', 'X1', 'Cars'),
(17, 'BMW', 'X3', 'Cars'),
(18, 'BMW', 'X5', 'Cars'),
(19, 'Audi', 'A4', 'Cars'),
(20, 'Audi', 'A3', 'Cars'),
(21, 'Audi', 'A6', 'Cars'),
(22, 'Audi', 'A5', 'Cars'),
(23, 'Audi', 'A1', 'Cars'),
(24, 'Audi', 'A8', 'Cars'),
(25, 'Ford', 'Focus', 'Cars'),
(26, 'Ford', 'Fiesta', 'Cars'),
(27, 'Ford', 'Kuga', 'Cars'),
(28, 'Ford', 'Mondeo', 'Cars'),
(29, 'Ford', 'C-Max', 'Cars'),
(30, 'Ford', 'Galaxy', 'Cars'),
(31, 'Renault', 'Megane', 'Cars'),
(32, 'Renault', 'Clio', 'Cars'),
(33, 'Renault', 'Twingo', 'Cars'),
(34, 'Renault', 'Scenic', 'Cars'),
(35, 'Renault', 'Captur', 'Cars'),
(36, 'Renault', 'Laguna', 'Cars'),
(37, 'Yamaha', 'Drag Star', 'Motorbikes'),
(38, 'Yamaha', 'FZ', 'Motorbikes'),
(39, 'Yamaha', 'MT', 'Motorbikes'),
(40, 'Yamaha', 'Virago', 'Motorbikes'),
(41, 'Yamaha', 'X-Max', 'Motorbikes'),
(42, 'Yamaha', 'YFZ', 'Motorbikes'),
(43, 'Honda', 'CB', 'Motorbikes'),
(44, 'Honda', 'CBF', 'Motorbikes'),
(45, 'Honda', 'CBR', 'Motorbikes'),
(46, 'Honda', 'CRF', 'Motorbikes'),
(47, 'Honda', 'Shadow', 'Motorbikes'),
(48, 'Honda', 'VFR', 'Motorbikes'),
(49, 'Suzuki', 'Bandit', 'Motorbikes'),
(50, 'Suzuki', 'Burgman', 'Motorbikes'),
(51, 'Suzuki', 'DL', 'Motorbikes'),
(52, 'Suzuki', 'GSX-R', 'Motorbikes'),
(53, 'Suzuki', 'Intruder', 'Motorbikes'),
(54, 'Suzuki', 'SV', 'Motorbikes'),
(55, 'BMW', 'F', 'Motorbikes'),
(56, 'BMW', 'GS', 'Motorbikes'),
(57, 'BMW', 'K', 'Motorbikes'),
(58, 'BMW', 'R', 'Motorbikes'),
(59, 'BMW', 'RT', 'Motorbikes'),
(60, 'BMW', 'S', 'Motorbikes'),
(61, 'Kawasaki', 'ER', 'Motorbikes'),
(62, 'Kawasaki', 'KLE', 'Motorbikes'),
(63, 'Kawasaki', 'VN', 'Motorbikes'),
(64, 'Kawasaki', 'Vulcan', 'Motorbikes'),
(65, 'Kawasaki', 'Z', 'Motorbikes'),
(66, 'Kawasaki', 'ZX', 'Motorbikes'),
(67, 'Harley-Davidson', 'Fat Boy', 'Motorbikes'),
(68, 'Harley-Davidson', 'Heritage', 'Motorbikes'),
(69, 'Harley-Davidson', 'Road King', 'Motorbikes'),
(70, 'Harley-Davidson', 'Softtail', 'Motorbikes'),
(71, 'Harley-Davidson', 'Sportster', 'Motorbikes'),
(72, 'Harley-Davidson', 'V-Rod', 'Motorbikes'),
(73, 'Scania', 'R420', 'Trucks'),
(74, 'Scania', 'R440', 'Trucks'),
(75, 'Scania', 'R450', 'Trucks'),
(76, 'DAF', 'XF 105', 'Trucks'),
(77, 'DAF', 'XF 460', 'Trucks'),
(78, 'DAF', 'XF 480', 'Trucks'),
(79, 'Volvo', 'FH420', 'Trucks'),
(80, 'Volvo', 'FH440', 'Trucks'),
(81, 'Volvo', 'FH460', 'Trucks'),
(82, 'MAN', 'TGX 430', 'Trucks'),
(83, 'MAN', 'TGX 440', 'Trucks'),
(84, 'MAN', 'TGX 460', 'Trucks'),
(85, 'Renault', 'Premium', 'Trucks'),
(86, 'Renault', 'Magnum', 'Trucks'),
(87, 'Renault', 'T', 'Trucks'),
(88, 'Mercedes-Benz', 'Actros', 'Trucks'),
(89, 'Mercedes-Benz', 'Axor', 'Trucks'),
(90, 'Mercedes-Benz', 'Sprinter', 'Vans'),
(91, 'Mercedes-Benz', 'Vito', 'Vans'),
(92, 'Mercedes-Benz', 'Citan', 'Vans'),
(93, 'Volkswagen', 'Transporter', 'Vans'),
(94, 'Volkswagen', 'Caddy', 'Vans'),
(95, 'Volkswagen', 'Multivan', 'Vans'),
(96, 'Renault', 'Master', 'Vans'),
(97, 'Renault', 'Trafic', 'Vans'),
(98, 'Renault', 'Kangoo', 'Vans'),
(99, 'Peugeot', 'Boxer', 'Vans'),
(100, 'Peugeot', 'Partner', 'Vans'),
(101, 'Peugeot', 'Bipper', 'Vans'),
(102, 'Fiat', 'Ducato', 'Vans'),
(103, 'Fiat', 'Doblo', 'Vans'),
(104, 'Fiat', 'Scudo', 'Vans'),
(105, 'Ford', 'Transit', 'Vans'),
(106, 'Ford', 'Tourneo', 'Vans'),
(107, 'Ford', 'Transit Custom', 'Vans'),
(108, 'Mercedes-Benz', 'Tourismo', 'Buses'),
(109, 'Mercedes-Benz', 'Sprinter XXL', 'Buses'),
(110, 'Mercedes-Benz', 'Integro', 'Buses'),
(111, 'Setra', 'S315 UL', 'Buses'),
(112, 'Setra', 'S415 GT-HD', 'Buses'),
(113, 'Setra', '431 DT', 'Buses'),
(114, 'MAN', 'Cobra', 'Buses'),
(115, 'MAN', 'Lions Star', 'Buses'),
(116, 'MAN', 'Marbus', 'Buses'),
(117, 'Irisbus', 'Iliade', 'Buses'),
(118, 'Irisbus', 'Ares', 'Buses'),
(119, 'Irisbus', 'Ponticelli', 'Buses'),
(120, 'IVECO', 'First', 'Buses'),
(121, 'IVECO', 'Daily', 'Buses'),
(122, 'IVECO', 'Cuby', 'Buses'),
(123, 'Renault', 'Iliade', 'Buses'),
(124, 'Renault', 'Ares', 'Buses'),
(125, 'Renault', 'Master', 'Buses');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `userrole`
--

CREATE TABLE `userrole` (
  `id` int(11) NOT NULL,
  `roleName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `userrole`
--

INSERT INTO `userrole` (`id`, `roleName`) VALUES
(2, 'ROLE_ADMIN'),
(1, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Password` varchar(255) NOT NULL,
  `Telephone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `Email`, `FirstName`, `Gender`, `LastName`, `Password`, `Telephone`) VALUES
(3, 'a@a.a', 'a', 'male', 'a', '$2a$10$qEFWmuCP7Eh8lyrePLgage/5xba4ZrYw8wY/7V4pucT5/PgoHXlcW', 'a'),
(4, 'admin@admin.admin', 'FirstNameAdmin', 'male', 'LastNameAdmin', '$2a$10$7tv7Ni8C13adyeVonpeGwec025GCMVcZP3PZLEVvq/MTexGhHSdGC', '111');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users_userrole`
--

CREATE TABLE `users_userrole` (
  `AppUser_id` int(11) NOT NULL,
  `roles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `users_userrole`
--

INSERT INTO `users_userrole` (`AppUser_id`, `roles_id`) VALUES
(3, 1),
(4, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vehicles`
--

CREATE TABLE `vehicles` (
  `vehicleId` int(11) NOT NULL,
  `Accepted` tinyint(1) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `Details` varchar(255) DEFAULT NULL,
  `FirstRegistration` datetime DEFAULT NULL,
  `FuelType` varchar(255) DEFAULT NULL,
  `Image1` longblob,
  `Image2` longblob,
  `Image3` longblob,
  `Image4` longblob,
  `Kilometer` int(11) DEFAULT NULL,
  `Make` varchar(255) DEFAULT NULL,
  `Model` varchar(255) DEFAULT NULL,
  `Power` int(11) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `VehicleType` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `vehicles`
--

INSERT INTO `vehicles` (`vehicleId`, `Accepted`, `CreateDate`, `Details`, `FirstRegistration`, `FuelType`, `Image1`, `Image2`, `Image3`, `Image4`, `Kilometer`, `Make`, `Model`, `Power`, `Price`, `VehicleType`) VALUES
(1, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 50150, 'Volkswagen', 'Golf', 151, 3000, 'Cars'),
(2, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'LPG', NULL, NULL, NULL, NULL, 50300, 'Volkswagen', 'Polo', 152, 6000, 'Cars'),
(3, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 50450, 'Volkswagen', 'Passat', 153, 9000, 'Cars'),
(4, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'LPG', NULL, NULL, NULL, NULL, 50600, 'Volkswagen', 'Tiguan', 154, 12000, 'Cars'),
(5, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 50750, 'Volkswagen', 'Touran', 155, 15000, 'Cars'),
(6, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 50900, 'Volkswagen', 'Amarok', 156, 18000, 'Cars'),
(7, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 51050, 'Opel', 'Astra', 157, 21000, 'Cars'),
(8, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'LPG', NULL, NULL, NULL, NULL, 51200, 'Opel', 'Corsa', 158, 24000, 'Cars'),
(9, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 51350, 'Opel', 'Insignia', 159, 27000, 'Cars'),
(10, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 51500, 'Opel', 'Adam', 160, 30000, 'Cars'),
(11, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 51650, 'Opel', 'Zafira', 161, 33000, 'Cars'),
(12, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 51800, 'Opel', 'Vectra', 162, 36000, 'Cars'),
(13, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 51950, 'BMW', '320', 163, 39000, 'Cars'),
(14, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 52100, 'BMW', '318', 164, 42000, 'Cars'),
(15, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 52250, 'BMW', '520', 165, 45000, 'Cars'),
(16, 1, '2019-01-01 00:00:00', '', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 52400, 'BMW', 'X1', 166, 48000, 'Cars'),
(17, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 52550, 'BMW', 'X3', 167, 51000, 'Cars'),
(18, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 52700, 'BMW', 'X5', 168, 54000, 'Cars'),
(19, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 52850, 'Audi', 'A4', 169, 57000, 'Cars'),
(20, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 53000, 'Audi', 'A3', 170, 60000, 'Cars'),
(21, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 53150, 'Audi', 'A6', 171, 63000, 'Cars'),
(22, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 53300, 'Audi', 'A5', 172, 66000, 'Cars'),
(23, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 53450, 'Audi', 'A1', 173, 69000, 'Cars'),
(24, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 53600, 'Audi', 'A8', 174, 72000, 'Cars'),
(25, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 53750, 'Ford', 'Focus', 175, 75000, 'Cars'),
(26, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 53900, 'Ford', 'Fiesta', 176, 78000, 'Cars'),
(27, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 54050, 'Ford', 'Kuga', 177, 81000, 'Cars'),
(28, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 54200, 'Ford', 'Mondeo', 178, 84000, 'Cars'),
(29, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 54350, 'Ford', 'C-Max', 179, 87000, 'Cars'),
(30, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 54500, 'Ford', 'Galaxy', 180, 90000, 'Cars'),
(31, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 54650, 'Renault', 'Megane', 181, 93000, 'Cars'),
(32, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 54800, 'Renault', 'Clio', 182, 96000, 'Cars'),
(33, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 54950, 'Renault', 'Twingo', 183, 99000, 'Cars'),
(34, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 55100, 'Renault', 'Scenic', 184, 102000, 'Cars'),
(35, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 55250, 'Renault', 'Captur', 185, 105000, 'Cars'),
(36, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 55400, 'Renault', 'Laguna', 186, 108000, 'Cars'),
(37, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 55550, 'Yamaha', 'Drag Star', 87, 1110, 'Motorbikes'),
(38, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 55700, 'Yamaha', 'FZ', 88, 1140, 'Motorbikes'),
(39, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 55850, 'Yamaha', 'MT', 89, 1170, 'Motorbikes'),
(40, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 112000, 'Yamaha', 'Virago', 90, 1200, 'Motorbikes'),
(41, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 112300, 'Yamaha', 'X-Max', 91, 1230, 'Motorbikes'),
(42, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 112600, 'Yamaha', 'YFZ', 92, 1260, 'Motorbikes'),
(43, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 112900, 'Honda', 'CB', 93, 1290, 'Motorbikes'),
(44, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 113200, 'Honda', 'CBF', 94, 1320, 'Motorbikes'),
(45, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 113500, 'Honda', 'CBR', 95, 1350, 'Motorbikes'),
(46, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 113800, 'Honda', 'CRF', 96, 1380, 'Motorbikes'),
(47, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 114100, 'Honda', 'Shadow', 97, 1410, 'Motorbikes'),
(48, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 114400, 'Honda', 'VFR', 98, 1440, 'Motorbikes'),
(49, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 114700, 'Suzuki', 'Bandit', 99, 1470, 'Motorbikes'),
(50, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 115000, 'Suzuki', 'Burgman', 100, 1500, 'Motorbikes'),
(51, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 115300, 'Suzuki', 'DL', 101, 1530, 'Motorbikes'),
(52, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 115600, 'Suzuki', 'GSX-R', 102, 1560, 'Motorbikes'),
(53, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 115900, 'Suzuki', 'Intruder', 103, 1590, 'Motorbikes'),
(54, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 116200, 'Suzuki', 'SV', 104, 1620, 'Motorbikes'),
(55, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 116500, 'BMW', 'F', 105, 1650, 'Motorbikes'),
(56, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 116800, 'BMW', 'GS', 106, 1680, 'Motorbikes'),
(57, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 117100, 'BMW', 'K', 107, 1710, 'Motorbikes'),
(58, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 117400, 'BMW', 'R', 108, 1740, 'Motorbikes'),
(59, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 117700, 'BMW', 'RT', 109, 1770, 'Motorbikes'),
(60, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 118000, 'BMW', 'S', 110, 1800, 'Motorbikes'),
(61, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 118300, 'Kawasaki', 'ER', 111, 1830, 'Motorbikes'),
(62, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 118600, 'Kawasaki', 'KLE', 112, 1860, 'Motorbikes'),
(63, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 118900, 'Kawasaki', 'VN', 113, 1890, 'Motorbikes'),
(64, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 119200, 'Kawasaki', 'Vulcan', 114, 1920, 'Motorbikes'),
(65, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 119500, 'Kawasaki', 'Z', 115, 1950, 'Motorbikes'),
(66, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 119800, 'Kawasaki', 'ZX', 116, 1980, 'Motorbikes'),
(67, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 120100, 'Harley-Davidson', 'Fat Boy', 117, 2010, 'Motorbikes'),
(68, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 120400, 'Harley-Davidson', 'Heritage', 118, 2040, 'Motorbikes'),
(69, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 120700, 'Harley-Davidson', 'Road King', 119, 2070, 'Motorbikes'),
(70, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 121000, 'Harley-Davidson', 'Softtail', 120, 2100, 'Motorbikes'),
(71, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 121300, 'Harley-Davidson', 'Sportster', 121, 2130, 'Motorbikes'),
(72, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Petrol', NULL, NULL, NULL, NULL, 121600, 'Harley-Davidson', 'V-Rod', 122, 2160, 'Motorbikes'),
(73, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 121900, 'Scania', 'R420', 723, 219000, 'Trucks'),
(74, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 122200, 'Scania', 'R440', 724, 222000, 'Trucks'),
(75, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 122500, 'Scania', 'R450', 725, 225000, 'Trucks'),
(76, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 122800, 'DAF', 'XF 105', 726, 228000, 'Trucks'),
(77, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 123100, 'DAF', 'XF 460', 727, 231000, 'Trucks'),
(78, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 123400, 'DAF', 'XF 480', 728, 234000, 'Trucks'),
(79, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 123700, 'Volvo', 'FH420', 729, 237000, 'Trucks'),
(80, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 124000, 'Volvo', 'FH440', 730, 240000, 'Trucks'),
(81, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 124300, 'Volvo', 'FH460', 731, 243000, 'Trucks'),
(82, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 124600, 'MAN', 'TGX 430', 732, 246000, 'Trucks'),
(83, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 124900, 'MAN', 'TGX 440', 733, 249000, 'Trucks'),
(84, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 125200, 'MAN', 'TGX 460', 734, 252000, 'Trucks'),
(85, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 125500, 'Renault', 'Premium', 735, 255000, 'Trucks'),
(86, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 125800, 'Renault', 'Magnum', 736, 258000, 'Trucks'),
(87, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 126100, 'Renault', 'T', 737, 261000, 'Trucks'),
(88, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 126400, 'Mercedes-Benz', 'Actros', 738, 264000, 'Trucks'),
(89, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 126700, 'Mercedes-Benz', 'Axor', 739, 267000, 'Trucks'),
(90, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 127000, 'Mercedes-Benz', 'Sprinter', 140, 270000, 'Vans'),
(91, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 127300, 'Mercedes-Benz', 'Vito', 141, 273000, 'Vans'),
(92, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 127600, 'Mercedes-Benz', 'Citan', 142, 276000, 'Vans'),
(93, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 127900, 'Volkswagen', 'Transporter', 143, 279000, 'Vans'),
(94, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 128200, 'Volkswagen', 'Caddy', 144, 282000, 'Vans'),
(95, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 128500, 'Volkswagen', 'Multivan', 145, 285000, 'Vans'),
(96, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 128800, 'Renault', 'Master', 146, 288000, 'Vans'),
(97, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 129100, 'Renault', 'Trafic', 147, 291000, 'Vans'),
(98, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 129400, 'Renault', 'Kangoo', 148, 294000, 'Vans'),
(99, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 129700, 'Peugeot', 'Boxer', 149, 297000, 'Vans'),
(100, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 130000, 'Peugeot', 'Partner', 150, 300000, 'Vans'),
(101, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 130300, 'Peugeot', 'Bipper', 151, 303000, 'Vans'),
(102, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 130600, 'Fiat', 'Ducato', 152, 306000, 'Vans'),
(103, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 130900, 'Fiat', 'Doblo', 153, 309000, 'Vans'),
(104, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 131200, 'Fiat', 'Scudo', 154, 312000, 'Vans'),
(105, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 131500, 'Ford', 'Transit', 155, 315000, 'Vans'),
(106, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 131800, 'Ford', 'Tourneo', 156, 318000, 'Vans'),
(107, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 132100, 'Ford', 'Transit Custom', 157, 321000, 'Vans'),
(108, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 132400, 'Mercedes-Benz', 'Tourismo', 458, 324000, 'Buses'),
(109, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 132700, 'Mercedes-Benz', 'Sprinter XXL', 459, 327000, 'Buses'),
(110, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 133000, 'Mercedes-Benz', 'Integro', 460, 330000, 'Buses'),
(111, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 133300, 'Setra', 'S315 UL', 461, 333000, 'Buses'),
(112, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 133600, 'Setra', 'S415 GT-HD', 462, 336000, 'Buses'),
(113, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 133900, 'Setra', '431 DT', 463, 339000, 'Buses'),
(114, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 134200, 'MAN', 'Cobra', 464, 342000, 'Buses'),
(115, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 134500, 'MAN', 'Lions Star', 465, 345000, 'Buses'),
(116, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 134800, 'MAN', 'Marbus', 466, 348000, 'Buses'),
(117, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 135100, 'Irisbus', 'Iliade', 467, 351000, 'Buses'),
(118, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 135400, 'Irisbus', 'Ares', 468, 354000, 'Buses'),
(119, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 135700, 'Irisbus', 'Ponticelli', 469, 357000, 'Buses'),
(120, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 136000, 'IVECO', 'First', 470, 360000, 'Buses'),
(121, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 136300, 'IVECO', 'Daily', 471, 363000, 'Buses'),
(122, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 136600, 'IVECO', 'Cuby', 472, 366000, 'Buses'),
(123, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 136900, 'Renault', 'Iliade', 473, 369000, 'Buses'),
(124, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 137200, 'Renault', 'Ares', 474, 372000, 'Buses'),
(125, 1, '2019-01-01 00:00:00', 'Details', '2018-05-07 00:00:00', 'Diesel', NULL, NULL, NULL, NULL, 137500, 'Renault', 'Master', 475, 375000, 'Buses');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vehicles_users`
--

CREATE TABLE `vehicles_users` (
  `Vehicle_vehicleId` int(11) NOT NULL,
  `appUser_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `vehicles_users`
--

INSERT INTO `vehicles_users` (`Vehicle_vehicleId`, `appUser_id`) VALUES
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 3),
(44, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3),
(49, 3),
(50, 3),
(51, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(65, 3),
(66, 3),
(67, 3),
(68, 3),
(69, 3),
(70, 3),
(71, 3),
(72, 3),
(73, 3),
(74, 3),
(75, 3),
(76, 3),
(77, 3),
(78, 3),
(79, 3),
(80, 3),
(81, 3),
(82, 3),
(83, 3),
(84, 3),
(85, 3),
(86, 3),
(87, 3),
(88, 3),
(89, 3),
(90, 3),
(91, 3),
(92, 3),
(93, 3),
(94, 3),
(95, 3),
(96, 3),
(97, 3),
(98, 3),
(99, 3),
(100, 3),
(101, 3),
(102, 3),
(103, 3),
(104, 3),
(105, 3),
(106, 3),
(107, 3),
(108, 3),
(109, 3),
(110, 3),
(111, 3),
(112, 3),
(113, 3),
(114, 3),
(115, 3),
(116, 3),
(117, 3),
(118, 3),
(119, 3),
(120, 3),
(121, 3),
(122, 3),
(123, 3),
(124, 3),
(125, 3);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `acceptablevehicles`
--
ALTER TABLE `acceptablevehicles`
  ADD PRIMARY KEY (`acceptableVehicleId`);

--
-- Indexes for table `userrole`
--
ALTER TABLE `userrole`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_bf83xwomjfpkswclblso5uvms` (`roleName`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_gnfv1k6flrriv6a9jh5cja03x` (`Email`);

--
-- Indexes for table `users_userrole`
--
ALTER TABLE `users_userrole`
  ADD KEY `FK2qwd19xo2kvy15f6sujf3oi6l` (`roles_id`),
  ADD KEY `FKcrrggc6lcipfs8ksy4so23msn` (`AppUser_id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`vehicleId`);

--
-- Indexes for table `vehicles_users`
--
ALTER TABLE `vehicles_users`
  ADD KEY `FKkxs3jtcdw84b562ttw992n9nv` (`appUser_id`),
  ADD KEY `FKfgq36ohdn3713fd0now28ncch` (`Vehicle_vehicleId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `acceptablevehicles`
--
ALTER TABLE `acceptablevehicles`
  MODIFY `acceptableVehicleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT dla tabeli `userrole`
--
ALTER TABLE `userrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `vehicleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `users_userrole`
--
ALTER TABLE `users_userrole`
  ADD CONSTRAINT `FK2qwd19xo2kvy15f6sujf3oi6l` FOREIGN KEY (`roles_id`) REFERENCES `userrole` (`id`),
  ADD CONSTRAINT `FKcrrggc6lcipfs8ksy4so23msn` FOREIGN KEY (`AppUser_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `vehicles_users`
--
ALTER TABLE `vehicles_users`
  ADD CONSTRAINT `FKfgq36ohdn3713fd0now28ncch` FOREIGN KEY (`Vehicle_vehicleId`) REFERENCES `vehicles` (`vehicleId`),
  ADD CONSTRAINT `FKkxs3jtcdw84b562ttw992n9nv` FOREIGN KEY (`appUser_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
