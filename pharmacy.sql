-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2024 at 01:30 PM
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
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_id` int(11) NOT NULL,
  `Discounts` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `Payment_Method` varchar(100) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doctor_id` int(11) NOT NULL,
  `first _name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `specialization` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doctor_id`, `first _name`, `last_name`, `email`, `specialization`) VALUES
(1, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(2, 'Alhosna', 'Elshenawy', 'Alhosna @mial', 'business technology'),
(3, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(4, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(5, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(6, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(7, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(8, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(9, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(10, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(11, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(12, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(13, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(14, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(15, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(16, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(17, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(18, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(19, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(20, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(21, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(22, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(23, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(24, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(25, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(26, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(27, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(28, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(29, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(30, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(31, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(32, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(33, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database'),
(34, 'Dr Mohamed', 'Abdelsalam', 'kingDatabse@gmail', 'database');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_adress`
--

CREATE TABLE `doctor_adress` (
  `doctor_id` int(11) NOT NULL,
  `ADRESS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_phone`
--

CREATE TABLE `doctor_phone` (
  `doctor_id` int(11) NOT NULL,
  `phone` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drug`
--

CREATE TABLE `drug` (
  `drug_id` int(11) NOT NULL,
  `Drug_name` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `Unit_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `salary` int(11) NOT NULL,
  `performance` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_adress`
--

CREATE TABLE `employee_adress` (
  `employee_id` int(11) NOT NULL,
  `ADRESS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_orders`
--

CREATE TABLE `employee_orders` (
  `order_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_phone`
--

CREATE TABLE `employee_phone` (
  `employee_id` int(11) NOT NULL,
  `phone` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE `insurance` (
  `provider_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `c_details` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `insurance`
--

INSERT INTO `insurance` (`provider_id`, `name`, `c_details`) VALUES
(1, 'safdf', 'ASDX'),
(2, 'SDF', 'ASDF'),
(3, 'safdf', 'ASDX'),
(4, 'SDF', 'ASDF');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventory_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `Expiry_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_drug`
--

CREATE TABLE `inventory_drug` (
  `inventory_id` int(11) NOT NULL,
  `drug_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_date` text NOT NULL,
  `total_price` int(11) NOT NULL,
  `status` text NOT NULL,
  `pateint_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pateint_phone`
--

CREATE TABLE `pateint_phone` (
  `pateint_id` int(11) NOT NULL,
  `phone` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `pateint_id` int(11) NOT NULL,
  `first _name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `medical_history` varchar(200) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient_adress`
--

CREATE TABLE `patient_adress` (
  `pateint_id` int(11) NOT NULL,
  `ADRESS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `first _name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `Product_Offerings` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_adresss`
--

CREATE TABLE `supplier_adresss` (
  `supplier_id` int(11) NOT NULL,
  `ADRESS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_drug`
--

CREATE TABLE `supplier_drug` (
  `supplier_id` int(11) NOT NULL,
  `drug_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_phone`
--

CREATE TABLE `supplier_phone` (
  `supplier_id` int(11) NOT NULL,
  `ADRESS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `doctor_adress`
--
ALTER TABLE `doctor_adress`
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `doctor_phone`
--
ALTER TABLE `doctor_phone`
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `drug`
--
ALTER TABLE `drug`
  ADD PRIMARY KEY (`drug_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `employee_adress`
--
ALTER TABLE `employee_adress`
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `employee_orders`
--
ALTER TABLE `employee_orders`
  ADD KEY `employee_orders_ibfk_1` (`order_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `employee_phone`
--
ALTER TABLE `employee_phone`
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `insurance`
--
ALTER TABLE `insurance`
  ADD PRIMARY KEY (`provider_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_id`);

--
-- Indexes for table `inventory_drug`
--
ALTER TABLE `inventory_drug`
  ADD KEY `drug_id` (`drug_id`),
  ADD KEY `inventory_id` (`inventory_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `pateint_id` (`pateint_id`);

--
-- Indexes for table `pateint_phone`
--
ALTER TABLE `pateint_phone`
  ADD KEY `pateint_id` (`pateint_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`pateint_id`),
  ADD KEY `bill_id` (`bill_id`),
  ADD KEY `patient_ibfk_2` (`provider_id`);

--
-- Indexes for table `patient_adress`
--
ALTER TABLE `patient_adress`
  ADD KEY `pateint_id` (`pateint_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `supplier_adresss`
--
ALTER TABLE `supplier_adresss`
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `supplier_drug`
--
ALTER TABLE `supplier_drug`
  ADD KEY `drug_id` (`drug_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `supplier_phone`
--
ALTER TABLE `supplier_phone`
  ADD KEY `supplier_id` (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `drug`
--
ALTER TABLE `drug`
  MODIFY `drug_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `insurance`
--
ALTER TABLE `insurance`
  MODIFY `provider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `pateint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `doctor_adress`
--
ALTER TABLE `doctor_adress`
  ADD CONSTRAINT `doctor_adress_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`);

--
-- Constraints for table `doctor_phone`
--
ALTER TABLE `doctor_phone`
  ADD CONSTRAINT `doctor_phone_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`);

--
-- Constraints for table `employee_adress`
--
ALTER TABLE `employee_adress`
  ADD CONSTRAINT `employee_adress_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `employee_orders`
--
ALTER TABLE `employee_orders`
  ADD CONSTRAINT `employee_orders_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `employee_orders_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `employee_phone`
--
ALTER TABLE `employee_phone`
  ADD CONSTRAINT `employee_phone_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `inventory_drug`
--
ALTER TABLE `inventory_drug`
  ADD CONSTRAINT `inventory_drug_ibfk_1` FOREIGN KEY (`drug_id`) REFERENCES `drug` (`drug_id`),
  ADD CONSTRAINT `inventory_drug_ibfk_2` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`inventory_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`pateint_id`) REFERENCES `patient` (`pateint_id`);

--
-- Constraints for table `pateint_phone`
--
ALTER TABLE `pateint_phone`
  ADD CONSTRAINT `pateint_phone_ibfk_1` FOREIGN KEY (`pateint_id`) REFERENCES `patient` (`pateint_id`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_2` FOREIGN KEY (`provider_id`) REFERENCES `insurance` (`provider_id`);

--
-- Constraints for table `patient_adress`
--
ALTER TABLE `patient_adress`
  ADD CONSTRAINT `patient_adress_ibfk_1` FOREIGN KEY (`pateint_id`) REFERENCES `patient` (`pateint_id`);

--
-- Constraints for table `supplier_adresss`
--
ALTER TABLE `supplier_adresss`
  ADD CONSTRAINT `supplier_adresss_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`);

--
-- Constraints for table `supplier_drug`
--
ALTER TABLE `supplier_drug`
  ADD CONSTRAINT `supplier_drug_ibfk_1` FOREIGN KEY (`drug_id`) REFERENCES `drug` (`drug_id`),
  ADD CONSTRAINT `supplier_drug_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`);

--
-- Constraints for table `supplier_phone`
--
ALTER TABLE `supplier_phone`
  ADD CONSTRAINT `supplier_phone_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
