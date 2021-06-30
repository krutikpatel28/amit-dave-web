-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2020 at 05:15 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `after_treatment`
--

CREATE TABLE `after_treatment` (
  `treatment` varchar(255) NOT NULL,
  `medicine_list` varchar(255) NOT NULL,
  `dosage` varchar(255) NOT NULL,
  `instructions` varchar(255) NOT NULL,
  `treatment_days` varchar(255) NOT NULL,
  `patient_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `after_treatment`
--

INSERT INTO `after_treatment` (`treatment`, `medicine_list`, `dosage`, `instructions`, `treatment_days`, `patient_id`) VALUES
('dfgd', 'k', 'tuy', 'hfg', '30', 20),
('gfh', 'hg', 'hggf', 'ghfcvg', '32', 21);

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `patient_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `app_date` date NOT NULL,
  `app_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`patient_name`, `email`, `mobile`, `app_date`, `app_id`) VALUES
('sdrf', 'dfsd@rsy.vco', 56676767, '2019-12-03', 1),
('Rahul Jagtap', 'rahul@ety.com', 2147483647, '2019-12-02', 6),
('Karuna Jagtap', 'abcd@hjh.com', 2147483647, '2019-12-13', 7),
('rahul', 'rahul@xyz.com', 8976879090, '2020-01-05', 8);

-- --------------------------------------------------------

--
-- Table structure for table `examin_noting`
--

CREATE TABLE `examin_noting` (
  `bowels` varchar(255) NOT NULL,
  `urine` varchar(255) NOT NULL,
  `tongue` varchar(255) NOT NULL,
  `appetite` varchar(255) NOT NULL,
  `skin` varchar(255) NOT NULL,
  `other` varchar(255) NOT NULL,
  `pulse` varchar(255) NOT NULL,
  `patient_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examin_noting`
--

INSERT INTO `examin_noting` (`bowels`, `urine`, `tongue`, `appetite`, `skin`, `other`, `pulse`, `patient_id`) VALUES
('fg', 'vc', 'gfvfc', 'gfdx', 'gfv', 'gvf', '45', 20),
('g', 'ghdf', 'gdf', 'gf', 'gdf', 'gf', 'ggf', 21);

-- --------------------------------------------------------

--
-- Table structure for table `panchkarma_advise`
--

CREATE TABLE `panchkarma_advise` (
  `diet_advise` varchar(255) NOT NULL,
  `to_eat_list` varchar(255) NOT NULL,
  `not_to_eat_list` varchar(255) NOT NULL,
  `home_remedies` varchar(255) NOT NULL,
  `next_appoint` date NOT NULL,
  `consult_charge` int(10) NOT NULL,
  `medicine_charge` int(10) NOT NULL,
  `panchkarma_charge` int(10) NOT NULL,
  `med_certi_format` varchar(255) NOT NULL,
  `invest_ref_format` varchar(255) NOT NULL,
  `patient_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `panchkarma_advise`
--

INSERT INTO `panchkarma_advise` (`diet_advise`, `to_eat_list`, `not_to_eat_list`, `home_remedies`, `next_appoint`, `consult_charge`, `medicine_charge`, `panchkarma_charge`, `med_certi_format`, `invest_ref_format`, `patient_id`) VALUES
('g', 'gbv', 'vfbg', '', '2019-12-13', 67, 564, 5, 'bv', 'bgf', 20),
('uyh', 'uygh', 'hgh', 'jhg', '2020-01-16', 44, 767, 777, 'gfg', 'gdf', 21);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(10) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `status` varchar(255) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `job` varchar(255) NOT NULL,
  `weight` int(3) NOT NULL,
  `blood_pressure` varchar(255) NOT NULL,
  `random_sugar` varchar(255) NOT NULL,
  `diet` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `reference` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `patient_name`, `mobile`, `status`, `age`, `sex`, `job`, `weight`, `blood_pressure`, `random_sugar`, `diet`, `address`, `reference`) VALUES
(16, 'Sneha xyz', 7659679, 'New', 21, 'female', 'contractor', 48, '120/80', '80 mg/dl', 'veg', 'D-402,Sonam Heights D CHS LTD,PHASE -XV ,NEW GOLDEN NEST, GODDEV VILLAGE,BHAINDER EAST ,THANE', 'newspaper'),
(17, 'Uma singh', 981, 'New', 21, 'female', 'rft', 48, '121/60', '101 mg/dl', 'veg', 'D-402,Sonam Heights D CHS LTD,PHASE -XV ,NEW GOLDEN NEST, GODDEV VILLAGE,BHAINDER EAST ,THANE', 'newspaper'),
(19, 'Shashi singh', 981, 'New', 21, 'female', 'contractor', 48, '121/60', '90 mg/dl', 'non_veg', 'House no 827,vil- rudhauli ,post- rudra nagar ,dist-basti,up', 'pp'),
(20, 'Karuna Jagtap', 907898707, 'New', 21, 'female', 'contractor', 65, '120/80', '80 mg/dl', 'veg', 'D-402,Sonam Heights D CHS LTD,PHASE -XV ,NEW GOLDEN NEST, GODDEV VILLAGE,BHAINDER EAST ,THANE', 'magazine'),
(21, 'rahul', 324235425, 'new', 20, 'male', 'Student', 75, '54567', '657', 'veg', 'dfgtfjd', 'gdf');

-- --------------------------------------------------------

--
-- Table structure for table `patient_history`
--

CREATE TABLE `patient_history` (
  `report_noting` varchar(255) NOT NULL,
  `curr_medication` varchar(255) NOT NULL,
  `curr_complain` varchar(255) NOT NULL,
  `chief_complain` varchar(255) NOT NULL,
  `recovery` varchar(255) NOT NULL,
  `patient_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_history`
--

INSERT INTO `patient_history` (`report_noting`, `curr_medication`, `curr_complain`, `chief_complain`, `recovery`, `patient_id`) VALUES
('dfsdf', 'Other', 'hbg', 'none', 'Relief', 19),
('dfsdf', 'Allopathy', 'hbg', 'none', 'No relief', 20),
('none', 'allopathy', 'gc', 'cxv', 'gdf', 21);

-- --------------------------------------------------------

--
-- Table structure for table `present_routine`
--

CREATE TABLE `present_routine` (
  `breakfast` varchar(255) NOT NULL,
  `lunch` varchar(255) NOT NULL,
  `even_snacks` varchar(255) NOT NULL,
  `dinner` varchar(255) NOT NULL,
  `early_morn_diet` varchar(255) NOT NULL,
  `habits` varchar(255) NOT NULL,
  `phy_act` varchar(255) NOT NULL,
  `Stress` char(255) NOT NULL,
  `patient_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `present_routine`
--

INSERT INTO `present_routine` (`breakfast`, `lunch`, `even_snacks`, `dinner`, `early_morn_diet`, `habits`, `phy_act`, `Stress`, `patient_id`) VALUES
('soup', 'chapati', 'biscuit', 'curry', 'Yes', 'swimming', 'Exercise', 'Often', 20),
('gfdf', 'gdfg', 'jghh', 'jhgh', 'jhgh', 'hjbn', 'hgvbh', 'yes', 21);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_bill_rec`
--

CREATE TABLE `purchase_bill_rec` (
  `party_name` varchar(30) NOT NULL,
  `bill_date` date NOT NULL,
  `bill_no` int(10) NOT NULL,
  `total` int(9) NOT NULL,
  `paid` int(9) NOT NULL,
  `bal` int(9) NOT NULL,
  `pay_date` date NOT NULL,
  `pay_mode` varchar(30) NOT NULL,
  `pay_details` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_bill_rec`
--

INSERT INTO `purchase_bill_rec` (`party_name`, `bill_date`, `bill_no`, `total`, `paid`, `bal`, `pay_date`, `pay_mode`, `pay_details`) VALUES
('abc', '2020-01-17', 6, 200, 150, 50, '2020-01-10', 'online', 'none'),
('dsf', '2019-12-10', 7, 0, 0, 0, '2019-12-03', 'online', 'xf'),
('dsf', '2019-12-04', 44, 0, 0, 0, '2019-12-10', 'online', 'xf'),
('f', '2020-01-08', 53, 0, 0, 0, '2020-01-08', '453', 'ses');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `mon_rep` varchar(255) NOT NULL,
  `no_of_visits` int(30) NOT NULL,
  `charge_collect` int(25) NOT NULL,
  `medication` varchar(255) NOT NULL,
  `relief_percent` varchar(255) NOT NULL,
  `new_follow_case_no` int(10) NOT NULL,
  `purchase_report` varchar(255) NOT NULL,
  `no_of_appoint` int(30) NOT NULL,
  `patient_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`mon_rep`, `no_of_visits`, `charge_collect`, `medication`, `relief_percent`, `new_follow_case_no`, `purchase_report`, `no_of_appoint`, `patient_id`) VALUES
('hfc', 4, 454, 'gfd', '77', 5, 'hg', 6, 20),
('gc', 3, 600, 'vxc', '75%', 545, '645er', 2, 21);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `after_treatment`
--
ALTER TABLE `after_treatment`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `examin_noting`
--
ALTER TABLE `examin_noting`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `panchkarma_advise`
--
ALTER TABLE `panchkarma_advise`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `patient_history`
--
ALTER TABLE `patient_history`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `present_routine`
--
ALTER TABLE `present_routine`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `purchase_bill_rec`
--
ALTER TABLE `purchase_bill_rec`
  ADD PRIMARY KEY (`bill_no`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`patient_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `app_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `after_treatment`
--
ALTER TABLE `after_treatment`
  ADD CONSTRAINT `after_treatment_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `examin_noting`
--
ALTER TABLE `examin_noting`
  ADD CONSTRAINT `examin_noting_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `panchkarma_advise`
--
ALTER TABLE `panchkarma_advise`
  ADD CONSTRAINT `panchkarma_advise_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `patient_history`
--
ALTER TABLE `patient_history`
  ADD CONSTRAINT `patient_history_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `present_routine`
--
ALTER TABLE `present_routine`
  ADD CONSTRAINT `present_routine_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
