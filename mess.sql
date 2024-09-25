-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2024 at 09:25 AM
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
-- Database: `mess`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mess_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `mess_id`) VALUES
(1, 'User1', 'User1', 1),
(2, 'User2', 'User2', 2),
(3, 'User3', 'User3', 3),
(4, 'User4', 'User4', 4),
(5, 'User5', 'User5', 5);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `mess_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `attendance_state` enum('present','absent') DEFAULT NULL,
  `attendance_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `student_id`, `mess_id`, `date`, `attendance_state`, `attendance_type`) VALUES
(20, 1, 1, '2024-05-14', 'present', 'lunch'),
(21, 2, 1, '2024-05-14', 'present', 'lunch'),
(22, 2, 1, '2024-05-14', 'absent', 'dinner'),
(23, 3, 1, '2024-05-14', 'present', 'lunch'),
(24, 3, 1, '2024-05-14', 'absent', 'dinner'),
(25, 4, 4, '2024-05-14', 'absent', 'dinner'),
(26, 2, 1, '2024-06-11', 'absent', 'dinner');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `enrollment_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `mess_id` int(11) DEFAULT NULL,
  `pricing_id` int(11) DEFAULT NULL,
  `remaining_attempts` int(11) DEFAULT NULL,
  `fees_status` enum('not paid','paid') DEFAULT 'not paid',
  `Date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`enrollment_id`, `student_id`, `mess_id`, `pricing_id`, `remaining_attempts`, `fees_status`, `Date`) VALUES
(3, 1, 1, 1, 0, 'paid', '2024-05-13'),
(4, 2, 1, 1, 59, 'paid', '2024-05-14'),
(5, 3, 1, 1, 29, 'paid', '2024-05-14'),
(6, 1, 2, 1, 30, 'paid', '2024-05-14'),
(7, 4, 4, 1, 30, 'not paid', '2024-05-14');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `mess_id` int(11) DEFAULT NULL,
  `day_of_week` enum('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday') NOT NULL,
  `lunch` varchar(255) DEFAULT NULL,
  `dinner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `mess_id`, `day_of_week`, `lunch`, `dinner`) VALUES
(1, 1, 'Monday', 'VADAPAV', 'Methi, chapati'),
(2, 1, 'Tuesday', 'Pav Bhaji', 'Varan Bhat'),
(3, 1, 'Wednesday', 'Dal Bhat', 'Potato Chapati'),
(4, 1, 'Thursday', 'Vegetarian Pizza', 'Roast Chicken'),
(5, 1, 'Friday', 'Tofu Salad', 'Fish Tacos'),
(6, 1, 'Saturday', 'Usal Bhaji, chapati', 'Soyabin, chapati'),
(7, 1, 'Sunday', 'Mongo Ras', 'Steak and Potatoes'),
(8, 2, 'Monday', 'Bhendi, chapati', 'Methi, chapati'),
(9, 2, 'Tuesday', 'Pav Bhaji', 'Varan Bhat'),
(10, 2, 'Wednesday', 'Dal Bhat', 'Potato Chapati'),
(11, 2, 'Thursday', 'Vegetarian Pizza', 'Roast Chicken'),
(12, 2, 'Friday', 'Tofu Salad', 'Fish Tacos'),
(13, 2, 'Saturday', 'Usal Bhaji, chapati', 'Soyabin, chapati'),
(14, 2, 'Sunday', 'Mongo Ras', 'Steak and Potatoes'),
(15, 3, 'Monday', 'Bhendi, chapati', 'Methi, chapati'),
(16, 3, 'Tuesday', 'Pav Bhaji', 'Varan Bhat'),
(17, 3, 'Wednesday', 'Dal Bhat', 'Potato Chapati'),
(18, 3, 'Thursday', 'Vegetarian Pizza', 'Roast Chicken'),
(19, 3, 'Friday', 'Tofu Salad', 'Fish Tacos'),
(20, 3, 'Saturday', 'Usal Bhaji, chapati', 'Soyabin, chapati'),
(21, 3, 'Sunday', 'Mongo Ras', 'Steak and Potatoes'),
(22, 4, 'Monday', 'Bhendi, chapati', 'Methi, chapati'),
(23, 4, 'Tuesday', 'Pav Bhaji', 'Varan Bhat'),
(24, 4, 'Wednesday', 'Dal Bhat', 'Potato Chapati'),
(25, 4, 'Thursday', 'Vegetarian Pizza', 'Roast Chicken'),
(26, 4, 'Friday', 'Tofu Salad', 'Fish Tacos'),
(27, 4, 'Saturday', 'Usal Bhaji, chapati', 'Soyabin, chapati'),
(28, 4, 'Sunday', 'Mongo Ras', 'Steak and Potatoes'),
(29, 5, 'Monday', 'Bhendi, chapati', 'Methi, chapati'),
(30, 5, 'Tuesday', 'Pav Bhaji', 'Varan Bhat'),
(31, 5, 'Wednesday', 'Dal Bhat', 'Potato Chapati'),
(32, 5, 'Thursday', 'Vegetarian Pizza', 'Roast Chicken'),
(33, 5, 'Friday', 'Tofu Salad', 'Fish Tacos'),
(34, 5, 'Saturday', 'Usal Bhaji, chapati', 'Soyabin, chapati'),
(35, 5, 'Sunday', 'Mongo Ras', 'Steak and Potatoes');

-- --------------------------------------------------------

--
-- Table structure for table `mess`
--

CREATE TABLE `mess` (
  `mess_id` int(11) NOT NULL,
  `mess_name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `mess_info` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mess`
--

INSERT INTO `mess` (`mess_id`, `mess_name`, `location`, `image1`, `image2`, `owner_name`, `mess_info`) VALUES
(1, 'Patil Mess', 'Ichalkarnji, Thorat chauk', 'img1.jpg', NULL, 'Ravindra Patil', NULL),
(2, 'Sayali Mess', 'Ichalkarnji, Mahasatta chauk', 'img2.jpg', NULL, 'Raj Yadav', NULL),
(3, 'Aabhale Mess', 'Mahatma Gandhi Chauk', 'img3.jpg', NULL, 'Pallavi Aabhale', NULL),
(4, 'Thakare Mess', 'Shikshak colony', 'img3.jpg', NULL, 'Rajiv Thakare', NULL),
(5, 'Ghate Mess', 'Thorat chauk', 'img4.jpg', NULL, 'Amol Ghate', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pricing`
--

CREATE TABLE `pricing` (
  `pricing_id` int(11) NOT NULL,
  `mess_id` int(11) DEFAULT NULL,
  `price_1_time` decimal(10,2) NOT NULL,
  `price_15_days` decimal(10,2) NOT NULL,
  `price_30_days` decimal(10,2) NOT NULL,
  `price_6_months` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pricing`
--

INSERT INTO `pricing` (`pricing_id`, `mess_id`, `price_1_time`, `price_15_days`, `price_30_days`, `price_6_months`) VALUES
(1, 1, 60.00, 1300.00, 2300.00, 14000.00),
(2, 2, 70.00, 1400.00, 2400.00, 15000.00),
(3, 3, 80.00, 1500.00, 2500.00, 16000.00),
(4, 4, 90.00, 1600.00, 2600.00, 17000.00),
(5, 5, 100.00, 1700.00, 2700.00, 18000.00);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `password` varchar(255) NOT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `full_name`, `email`, `phone_number`, `gender`, `password`, `registration_date`) VALUES
(1, 'vaibhav shinde', 'vshinde2217@gmail.com', '9422623965', 'male', '$2y$10$r95UIG6Yb6V3KlXVionjFuWyXplo1WiV1h4iNpEJHPJnjE27tKf7i', '2024-05-13 14:03:17'),
(2, 'Abhi sutar', 'sutarsubas0@gmail.com', '9322431676', 'male', '$2y$10$z9pUJsDfZNwwUwE9zTvAOehASctvekR2ShZHdJSR2x1VgjN96udwO', '2024-05-14 04:04:03'),
(3, 'rohan kamble', 'rohan@gmail.com', '09422623965', 'male', '$2y$10$vGvs/IZIOe21Mo23XQxyION7FYZypmyHUpJZPuzeh/.BEL8QU/J5C', '2024-05-14 05:12:34'),
(4, 'akshad ghate', 'akshadghate@gmail.com', '1234567890', 'male', '$2y$10$oDdTkYbJcDERyIxdEom9XOHAcf.BUjJb./1jhcTLAFRDmlGQop4Ty', '2024-05-14 06:09:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `mess_id` (`mess_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `mess_id` (`mess_id`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`enrollment_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `mess_id` (`mess_id`),
  ADD KEY `pricing_id` (`pricing_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD UNIQUE KEY `unique_menu` (`mess_id`,`day_of_week`);

--
-- Indexes for table `mess`
--
ALTER TABLE `mess`
  ADD PRIMARY KEY (`mess_id`);

--
-- Indexes for table `pricing`
--
ALTER TABLE `pricing`
  ADD PRIMARY KEY (`pricing_id`),
  ADD KEY `mess_id` (`mess_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `enrollment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `mess`
--
ALTER TABLE `mess`
  MODIFY `mess_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pricing`
--
ALTER TABLE `pricing`
  MODIFY `pricing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`mess_id`) REFERENCES `mess` (`mess_id`);

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`mess_id`) REFERENCES `mess` (`mess_id`);

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`mess_id`) REFERENCES `mess` (`mess_id`),
  ADD CONSTRAINT `enrollment_ibfk_3` FOREIGN KEY (`pricing_id`) REFERENCES `pricing` (`pricing_id`);

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`mess_id`) REFERENCES `mess` (`mess_id`);

--
-- Constraints for table `pricing`
--
ALTER TABLE `pricing`
  ADD CONSTRAINT `pricing_ibfk_1` FOREIGN KEY (`mess_id`) REFERENCES `mess` (`mess_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
