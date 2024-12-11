-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2024 at 01:21 AM
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
-- Database: `cosmetics_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `Admin_User_ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Last_Login` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `Category_ID` int(11) NOT NULL,
  `Category_Name` varchar(100) NOT NULL,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `Coupon_ID` int(11) NOT NULL,
  `Coupon_Code` varchar(50) NOT NULL,
  `Discount_Percentage` decimal(5,2) NOT NULL,
  `Valid_From` timestamp NOT NULL DEFAULT current_timestamp(),
  `Valid_To` timestamp NOT NULL DEFAULT current_timestamp(),
  `Minimum_Purchase_Amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Customer_ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Signup_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastLogin_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Customer_ID`, `Name`, `Email`, `Password`, `Signup_time`, `LastLogin_time`) VALUES
(4, 'Thiri', 'thiri@gmail.com', '$2y$10$U0HRDvrmd4.1IX/uGhvSgeRSx0Mp3NG9.PgsihTWCvZx6ajEPE0Ne', '2024-12-06 14:14:27', '2024-12-06 14:35:55'),
(5, 'Yati', 'yati@gmail.com', '$2y$10$7RsTYyOUDBwyRQVQbGLJmOxoMi8iVXYeI0mg1nhpnvf9wUE5yYOSq', '2024-12-06 14:15:41', '2024-12-06 14:15:41'),
(6, 'Thiri Winyati', 'thiriwinyati@gmail.com', '$2y$10$vhVTO3OWRnG0BvhFIquoguzNuD/X8JpMnVW8RVnXI5hiPfzaH1012', '2024-12-07 03:35:11', '2024-12-07 03:56:14'),
(7, 'Chaw', 'chaw@gmail.com', '$2y$10$ZWLS14jzR8vAu6Lcevqv/.M/2McdERIslDVY2PHKcM98zOoSeR2P.', '2024-12-07 15:52:52', '2024-12-07 15:53:02'),
(8, 'Linn', 'linn@gmail.com', '$2y$10$9hQ3Hn/4WNooMjLEZCpzAe4Y67HBi4fH5BRt0x5b8COCl06gO7Fia', '2024-12-10 03:37:18', '2024-12-10 03:37:26');

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `FavouritesID` int(11) NOT NULL,
  `Customer_ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `DateAdded` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_ID` int(11) NOT NULL,
  `Customer_ID` int(11) DEFAULT NULL,
  `Order_Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `Status` varchar(50) DEFAULT 'Pending',
  `Shipping_Address` text DEFAULT NULL,
  `Total_Price` decimal(10,2) DEFAULT NULL,
  `cupon_id` int(11) DEFAULT NULL,
  `Admin_User_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `Order_Item_ID` int(11) NOT NULL,
  `Order_ID` int(11) DEFAULT NULL,
  `Product_ID` int(11) DEFAULT NULL,
  `Quantity` int(11) NOT NULL,
  `Unit_Price` decimal(10,2) NOT NULL,
  `Subtotal` decimal(10,2) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `Payment_ID` int(11) NOT NULL,
  `Order_ID` int(11) DEFAULT NULL,
  `Payment_Status` varchar(50) DEFAULT 'Pending',
  `Payment_Amount` decimal(10,2) DEFAULT NULL,
  `Payment_Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `Payment_Method_ID` int(11) NOT NULL,
  `Admin_User_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `Payment_Method_ID` int(11) NOT NULL,
  `Method_Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Product_ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Category_ID` int(11) DEFAULT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Description` text DEFAULT NULL,
  `Stock_Quantity` int(11) DEFAULT 0,
  `Image_URL` varchar(255) DEFAULT NULL,
  `Admin_User_ID` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `Review_ID` int(11) NOT NULL,
  `Product_ID` int(11) DEFAULT NULL,
  `Customer_ID` int(11) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL CHECK (`Rating` >= 1 and `Rating` <= 5),
  `Review_Text` text DEFAULT NULL,
  `Review_Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `Shipping_ID` int(11) NOT NULL,
  `Order_ID` int(11) DEFAULT NULL,
  `Shipping_Method` varchar(100) DEFAULT NULL,
  `Shipping_Status` varchar(50) DEFAULT 'Processing',
  `Shipping_Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Tracking_Number` varchar(100) DEFAULT NULL,
  `Shipping_Method_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shippingmethods`
--

CREATE TABLE `shippingmethods` (
  `Shipping_Method_ID` int(11) NOT NULL,
  `Shipping_Method` varchar(100) NOT NULL,
  `Tracking_Number` varchar(100) DEFAULT NULL,
  `DeliveryTime` varchar(100) DEFAULT NULL,
  `Cost` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `Cart_ID` int(11) NOT NULL,
  `Customer_ID` int(11) DEFAULT NULL,
  `Product_ID` int(11) DEFAULT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`Admin_User_ID`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Category_ID`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`Coupon_ID`),
  ADD UNIQUE KEY `Coupon_Code` (`Coupon_Code`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`FavouritesID`),
  ADD KEY `FK_Customer` (`Customer_ID`),
  ADD KEY `FK_Product` (`Product_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `fk_customer` (`Customer_ID`),
  ADD KEY `fk_cupon_id` (`cupon_id`),
  ADD KEY `fk_orders_admin` (`Admin_User_ID`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`Order_Item_ID`),
  ADD KEY `Order_ID` (`Order_ID`),
  ADD KEY `Product_ID` (`Product_ID`),
  ADD KEY `fk_order_items_brand_id` (`brand_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`Payment_ID`),
  ADD KEY `Order_ID` (`Order_ID`),
  ADD KEY `fk_payment_method` (`Payment_Method_ID`),
  ADD KEY `fk_payments_admin` (`Admin_User_ID`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`Payment_Method_ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Product_ID`),
  ADD KEY `fk_category` (`Category_ID`),
  ADD KEY `fk_products_admin` (`Admin_User_ID`),
  ADD KEY `fk_products_brand_id` (`brand_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`Review_ID`),
  ADD KEY `Product_ID` (`Product_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`Shipping_ID`),
  ADD KEY `Order_ID` (`Order_ID`),
  ADD KEY `FK_ShippingMethod` (`Shipping_Method_ID`);

--
-- Indexes for table `shippingmethods`
--
ALTER TABLE `shippingmethods`
  ADD PRIMARY KEY (`Shipping_Method_ID`);

--
-- Indexes for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`Cart_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `Product_ID` (`Product_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `Admin_User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `Category_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `Coupon_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `Customer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `FavouritesID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Order_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `Order_Item_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `Payment_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `Payment_Method_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Product_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `Review_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `Shipping_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shippingmethods`
--
ALTER TABLE `shippingmethods`
  MODIFY `Shipping_Method_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  MODIFY `Cart_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favourites`
--
ALTER TABLE `favourites`
  ADD CONSTRAINT `FK_Customer` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`Customer_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Product` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_cupon_id` FOREIGN KEY (`cupon_id`) REFERENCES `coupons` (`Coupon_ID`),
  ADD CONSTRAINT `fk_orders_admin` FOREIGN KEY (`Admin_User_ID`) REFERENCES `admin_users` (`Admin_User_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`Customer_ID`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `fk_order_items_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_ID`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `fk_payment_method` FOREIGN KEY (`Payment_Method_ID`) REFERENCES `payment_methods` (`Payment_Method_ID`),
  ADD CONSTRAINT `fk_payments_admin` FOREIGN KEY (`Admin_User_ID`) REFERENCES `admin_users` (`Admin_User_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`Category_ID`) REFERENCES `categories` (`Category_ID`),
  ADD CONSTRAINT `fk_products_admin` FOREIGN KEY (`Admin_User_ID`) REFERENCES `admin_users` (`Admin_User_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_products_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_ID`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`Customer_ID`);

--
-- Constraints for table `shipping`
--
ALTER TABLE `shipping`
  ADD CONSTRAINT `FK_ShippingMethod` FOREIGN KEY (`Shipping_Method_ID`) REFERENCES `shippingmethods` (`Shipping_Method_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shipping_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`);

--
-- Constraints for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD CONSTRAINT `shopping_cart_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`Customer_ID`),
  ADD CONSTRAINT `shopping_cart_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
