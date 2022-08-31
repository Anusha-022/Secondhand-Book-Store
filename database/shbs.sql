-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: March 23, 2022 at 11:15 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `inventory_id` int(30) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `status`, `date_created`) VALUES
(1, '1st Year', 1, '2022-02-03 18:40:32'),
(2, '2nd Year', 1, '2022-02-03 18:40:32'),
(3, '3rd Year', 1, '2022-02-03 18:40:32'),
(4, '4th Year', 1, '2022-02-03 18:40:32');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(30) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `default_delivery_address` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `firstname`, `lastname`, `gender`, `contact`, `email`, `password`, `default_delivery_address`, `date_created`) VALUES
(1, 'Admin', '.', 'Female', '9090111218', 'admin@gmail.com', '1254737c076cf867dc53d60a0364f38e', 'Bangalore', '2021-07-16 10:34:48'),
(2, 'Alice', 'Smith', 'Female', '9876543210', 'alice@xyz.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Bangalore', '2022-02-04 08:34:14');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` double NOT NULL,
  `price` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `quantity`, `price`, `date_created`, `date_updated`) VALUES
(6, 5, 5, 200, '2022-02-03 20:01:39', '2022-02-05 01:09:59'),
(7, 16, 2, 180, '2022-02-05 01:08:47', NULL),
(8, 41, 4, 250, '2022-02-05 01:10:22', NULL),
(9, 6, 1, 300, '2022-02-05 01:10:47', NULL),
(10, 35, 1, 280, '2022-02-05 01:11:32', NULL),
(11, 38, 5, 210, '2022-02-05 01:11:44', NULL),
(12, 32, 6, 150, '2022-02-05 01:12:12', NULL),
(13, 40, 4, 400, '2022-02-05 01:12:27', NULL),
(14, 10, 4, 190, '2022-02-05 01:12:42', NULL),
(15, 30, 8, 350, '2022-02-05 01:13:04', NULL),
(16, 25, 2, 190, '2022-02-05 01:13:22', NULL),
(17, 26, 5, 130, '2022-02-05 01:13:49', NULL),
(18, 28, 7, 550, '2022-02-05 01:14:07', NULL),
(19, 22, 8, 240, '2022-02-05 01:14:29', NULL),
(20, 42, 4, 270, '2022-02-05 01:15:34', NULL),
(21, 15, 1, 190, '2022-02-05 01:16:01', NULL),
(22, 9, 2, 180, '2022-02-05 01:16:16', NULL),
(23, 19, 1, 250, '2022-02-05 01:16:43', NULL),
(24, 12, 6, 190, '2022-02-05 01:17:08', NULL),
(25, 13, 2, 210, '2022-02-05 01:17:26', NULL),
(26, 20, 3, 200, '2022-02-05 01:18:12', NULL),
(27, 29, 1, 210, '2022-02-05 01:18:33', NULL),
(28, 7, 4, 160, '2022-02-05 01:19:05', NULL),
(29, 8, 4, 330, '2022-02-05 01:19:38', NULL),
(30, 31, 10, 220, '2022-02-05 01:20:13', NULL),
(31, 17, 6, 400, '2022-02-05 01:20:32', NULL),
(32, 45, 4, 220, '2022-02-05 01:20:49', NULL),
(33, 44, 5, 290, '2022-02-05 01:21:11', NULL),
(34, 39, 1, 190, '2022-02-05 01:21:33', NULL),
(35, 37, 3, 260, '2022-02-05 01:21:52', NULL),
(36, 43, 4, 380, '2022-02-05 01:22:27', NULL),
(37, 24, 7, 429, '2022-02-05 01:22:57', NULL),
(38, 36, 5, 310, '2022-02-05 01:23:17', NULL),
(39, 18, 4, 139, '2022-02-05 01:23:40', NULL),
(40, 14, 7, 240, '2022-02-05 01:24:03', NULL),
(41, 27, 5, 290, '2022-02-05 01:24:23', NULL),
(42, 33, 7, 270, '2022-02-05 01:24:46', NULL),
(43, 34, 4, 320, '2022-02-05 01:25:02', NULL),
(44, 23, 4, 350, '2022-02-05 01:25:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `delivery_address` text NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `order_type` tinyint(1) NOT NULL COMMENT '1= pickup,2= deliver',
  `amount` double NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `sub_category_id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `author` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `title`, `author`, `description`, `status`, `date_created`) VALUES
(5, 1, 1, 'Engineering Mathematics-I', 'Dr. K S C', '', 1, '2022-02-03 19:34:38'),
(6, 1, 1, 'Advanced Engineering Mathematics', 'Erwin Kreyszig', '', 1, '2022-02-04 22:37:50'),
(7, 1, 2, 'Engineering Physics', 'R K Gaur, S L Gupta', '', 1, '2022-02-04 22:39:47'),
(8, 1, 2, 'Engineering Physics 3rd Edition', 'S.O. Pillai, Sivakami', '', 1, '2022-02-04 23:56:14'),
(9, 1, 4, 'Elements of Civil Engineering & Mechanics', 'H.J. Sawant, S.P. Nitsure', '', 1, '2022-02-04 23:58:35'),
(10, 1, 9, 'Communication Skills, 2nd Edition', 'Sanjay Kumar, Pushp Lata', '', 1, '2022-02-04 23:59:57'),
(11, 1, 9, 'English Language Communication Skills', 'Rajesh Kumar', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, '2022-02-05 00:00:48'),
(12, 1, 6, 'Engineering Chemistry', 'Jain', '', 1, '2022-02-05 00:02:41'),
(13, 1, 6, 'Engineering Chemistry, Ed 2', 'Dr. C Muthukumar, Dr. Manjunatha D.H, Dr. Gurushantha K', '', 1, '2022-02-05 00:04:56'),
(14, 1, 7, 'The C Programming Language', 'Brain W. Kernighan, Dennis M. Ritchie', '', 1, '2022-02-05 00:06:06'),
(15, 1, 3, 'Electronic Devices', 'Floyd', '', 1, '2022-02-05 00:06:56'),
(16, 1, 5, 'Engineering Mathematics-II', 'Dr. K.S.C', '', 1, '2022-02-05 00:07:46'),
(17, 1, 5, 'Higher Engineering Mathematics', 'B.S Grewal', '', 1, '2022-02-05 00:08:48'),
(18, 1, 9, 'Technical Communication', 'Gajendra Singh Chauhan, Smita Kashiramka', '', 1, '2022-02-05 00:09:51'),
(19, 1, 8, 'Elements Of Mechanical Engineeing', 'K.R Gopalakrishna, Sudhir Gopalakrishna, S.C. Sharma', '', 1, '2022-02-05 00:11:10'),
(20, 2, 28, 'Engineering Mathematics-III', 'Dr. K.S.C', '', 1, '2022-02-05 00:13:24'),
(21, 2, 10, 'Fundamentals of Data Structures in C', 'Horowitz, Sahni, Anderson-Freed', '', 1, '2022-02-05 00:16:37'),
(22, 2, 10, 'Data Structures with C', 'Seymour Lipschutz', '', 1, '2022-02-05 00:19:12'),
(23, 2, 11, 'Computer Organization', 'Carl Hamacher, Zvonko Vranesic, Safwat Zaky', '', 1, '2022-02-05 00:20:22'),
(24, 2, 12, 'Software Engineering', 'Sommerville', '', 1, '2022-02-05 00:27:16'),
(25, 2, 15, 'Constitution Of India, Professional Ethics and Human Rights', 'Shubham Singla, Charles E. Harris, L. Thimmesha', '', 1, '2022-02-05 00:29:45'),
(26, 2, 15, 'Cyber Security and Cyber Laws', 'Alfred Basta, Ravinder Kumar', '', 1, '2022-02-05 00:32:24'),
(27, 2, 10, 'The Design and Analysis of Algorithms', 'Anany Levitin', '', 1, '2022-02-05 00:33:51'),
(28, 2, 14, 'Data Communication and Nerworking', 'Behrouz A. Forouzan', '', 1, '2022-02-05 00:34:57'),
(29, 2, 29, 'Engineering Mathematics-IV', 'Dr. K.S.C', '', 1, '2022-02-05 00:35:34'),
(30, 3, 16, 'Computer Networking', 'Kurose, Ross', '', 1, '2022-02-05 00:37:08'),
(31, 3, 17, 'Fundamentals Of Database System', 'Elmasri, Navathe', '', 1, '2022-02-05 00:37:55'),
(32, 3, 18, 'Automate the Boring Stuff', 'Al Sweigart', '', 1, '2022-02-05 00:38:41'),
(33, 3, 18, 'Think Python', 'Allen B. Downey', '', 1, '2022-02-05 00:39:29'),
(34, 3, 19, 'Unix Concepts and Applications', 'Sumitabha Das', '', 1, '2022-02-05 00:40:21'),
(35, 3, 19, 'Advanced Programming in Unix Environment', 'W. Richard Stevens', '', 1, '2022-02-05 00:55:48'),
(36, 3, 20, 'System Software', 'Leland L. Beck', '', 1, '2022-02-05 00:57:35'),
(37, 3, 21, 'Mastering Cloud Computing', 'Rajkumar Buyya', '', 1, '2022-02-05 00:58:37'),
(38, 4, 22, 'Artificial Intelligence', 'Elaine Rich, Kevin Knight, Shivashankar B Nair', '', 1, '2022-02-05 01:00:12'),
(39, 4, 22, 'Machine Learning', 'Tom M. Mitchell', '', 1, '2022-02-05 01:00:52'),
(40, 4, 23, 'Big Data Analytics', 'Raj Kamal, Preeti Saxena', '', 1, '2022-02-05 01:01:44'),
(41, 4, 27, 'Advanced Computer Archtecture', 'Kai Hwang, Naresh Jotwani', '', 1, '2022-02-05 01:02:58'),
(42, 4, 24, 'Digital Image Processing using MATLAB', 'Rafael C. Gonzalez, Richard E. Woods', '', 1, '2022-02-05 01:04:11'),
(43, 4, 25, 'Robotic Process Automation', 'Nandan Mullakara, Arun Kumar', '', 1, '2022-02-05 01:05:22'),
(44, 4, 26, 'IOT Fundamentals', 'David Hanes, Gonzalo Salgueiro, Rob Barton', '', 1, '2022-02-05 01:06:55'),
(45, 4, 26, 'Internet Of Things', 'Srinivas K.G, Hanumantha Raju', '', 1, '2022-02-05 01:07:48');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `total_amount` double NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `order_id`, `total_amount`, `date_created`) VALUES
(1, 3, 8500, '2021-07-16 11:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(30) NOT NULL,
  `parent_id` int(30) NOT NULL,
  `sub_category` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `parent_id`, `sub_category`, `status`, `date_created`) VALUES
(1, 1, 'Mathematics-I', 1, '2022-02-03 19:16:50'),
(2, 1, 'Physics', 1, '2022-02-03 19:16:50'),
(3, 1, 'Electronics', 1, '2022-02-03 19:16:50'),
(4, 1, 'Civil', 1, '2022-02-03 19:16:50'),
(5, 1, 'Mathematics-II', 1, '2022-02-03 19:16:50'),
(6, 1, 'Chemistry', 1, '2022-02-03 19:16:50'),
(7, 1, 'C Programming', 1, '2022-02-03 19:16:50'),
(8, 1, 'Mechanical', 1, '2022-02-03 19:16:50'),
(9, 1, 'English', 1, '2022-02-03 19:16:50'),
(10, 2, 'Data Structures', 1, '2022-02-03 19:20:32'),
(11, 2, 'Computer Organization', 1, '2022-02-03 19:20:32'),
(12, 2, 'Software Engineering', 1, '2022-02-03 19:20:32'),
(13, 2, 'Operating System', 1, '2022-02-03 19:20:32'),
(14, 2, 'Data Communication', 1, '2022-02-03 19:20:32'),
(15, 2, 'Constitution Of India', 1, '2022-02-03 19:20:32'),
(16, 3, 'Computer Networks', 1, '2022-02-03 19:20:32'),
(17, 3, 'Database Management System', 1, '2022-02-03 19:20:32'),
(18, 3, 'Python', 1, '2022-02-03 19:20:32'),
(19, 3, 'Unix', 1, '2022-02-03 19:25:37'),
(20, 3, 'System Software and Compilers', 1, '2022-02-03 19:25:37'),
(21, 3, 'Cloud Computing', 1, '2022-02-03 19:25:37'),
(22, 4, 'Artificial Intelligence', 1, '2022-02-03 19:25:37'),
(23, 4, 'Big Data Analytics', 1, '2022-02-03 19:25:37'),
(24, 4, 'Digital Image Processing', 1, '2022-02-03 19:25:37'),
(25, 4, 'Robotic Process Automation', 1, '2022-02-03 19:25:37'),
(26, 4, 'IOT', 1, '2022-02-03 19:25:37'),
(27, 4, 'Advanced Computer Architecture', 1, '2022-02-03 19:25:37'),
(28, 2, 'Mathematics-III', 1, '2022-02-05 00:12:26'),
(29, 2, 'Mathematics-IV', 1, '2022-02-05 00:12:43');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Second Hand Book Store'),
(6, 'short_name', 'SHBS'),
(11, 'logo', 'uploads/1643886660_navlogo.png'),
(14, 'cover', 'uploads/1626397620_books.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Admin', 'a', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2022-01-20 14:02:37', '2022-02-03 17:04:44'),
(4, 'John', 'Smith', 'jsmith', '1254737c076cf867dc53d60a0364f38e', NULL, NULL, 0, '2021-06-19 08:36:09', '2022-01-20 10:53:12'),
(5, 'Claire', 'Blake', 'cblake', '4744ddea876b11dcb1d169fadf494418', NULL, NULL, 0, '2021-06-19 10:01:51', '2022-01-21 12:03:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
