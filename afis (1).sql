-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2025 at 07:42 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `afis`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_payable`
--

CREATE TABLE `accounts_payable` (
  `id` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` enum('unpaid','paid') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_payable`
--

INSERT INTO `accounts_payable` (`id`, `contact_id`, `description`, `amount`, `due_date`, `status`) VALUES
(1, 3, 'Office supplies invoice #1234', 5000.00, '2025-04-20', 'unpaid'),
(2, 4, 'Import duty for March shipment', 12000.00, '2025-04-10', 'paid'),
(3, 4, 'gege', 123456.00, '2025-04-19', 'unpaid'),
(4, 4, 'gege', 123456.00, '2025-04-19', 'unpaid'),
(5, 4, 'gege', 123456.00, '2025-04-19', 'unpaid'),
(6, 4, 'gege', 123456.00, '2025-04-19', 'unpaid'),
(7, 4, 'gege', 123456.00, '2025-04-19', 'unpaid'),
(8, 4, 'gege', 123456.00, '2025-04-19', 'unpaid'),
(9, 4, 'gege', 123456.00, '2025-04-19', 'unpaid'),
(10, 4, 'gege', 123456.00, '2025-04-19', 'unpaid'),
(11, 4, 'gege', 123456.00, '2025-04-19', 'unpaid'),
(12, 4, 'gege', 123456.00, '2025-04-19', 'unpaid'),
(13, 4, 'gege', 123456.00, '2025-04-19', 'unpaid'),
(14, 4, 'gege', 123456.00, '2025-04-19', 'unpaid'),
(15, 4, 'gege', 123456.00, '2025-04-19', 'unpaid'),
(16, 4, 'gege', 123456.00, '2025-04-19', 'unpaid'),
(17, 4, 'gege', 123456.00, '2025-04-19', 'unpaid'),
(18, 4, 'gege', 123456.00, '2025-04-19', 'unpaid'),
(19, 4, 'gege', 123456.00, '2025-04-19', 'unpaid'),
(20, 4, 'gege', 123456.00, '2025-04-19', 'unpaid'),
(21, 4, 'gege', 123456.00, '2025-04-19', 'unpaid'),
(22, 4, 'gege', 123456.00, '2025-04-19', 'unpaid'),
(23, 4, 'gege', 123456.00, '2025-04-19', 'unpaid'),
(24, 4, 'gege', 123456.00, '2025-04-19', 'unpaid'),
(25, 4, 'gege', 123456.00, '2025-04-19', 'unpaid'),
(26, 4, 'gege', 123456.00, '2025-04-19', 'unpaid'),
(27, 4, 'gege', 123456.00, '2025-04-19', 'unpaid'),
(28, 4, 'gege', 123456.00, '2025-04-19', 'unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_receivable`
--

CREATE TABLE `accounts_receivable` (
  `id` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` enum('unpaid','paid') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_receivable`
--

INSERT INTO `accounts_receivable` (`id`, `contact_id`, `description`, `amount`, `due_date`, `status`) VALUES
(1, 1, 'Web design service for March', 15000.00, '2025-04-30', 'unpaid'),
(2, 2, 'Consulting fee for Q1', 20000.00, '2025-04-15', 'paid'),
(3, 1, 'bayaran', 12345.00, '2025-04-14', 'unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `acknowledgment_receipt`
--

CREATE TABLE `acknowledgment_receipt` (
  `Receipt_Id` int(11) NOT NULL,
  `Customer_Name` varchar(255) NOT NULL,
  `Customer_Email` varchar(255) NOT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `Address` varchar(500) NOT NULL,
  `purpose_type` enum('payment','items') DEFAULT 'payment',
  `Payment_For` varchar(500) DEFAULT NULL,
  `items_received` text DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `payment_status` enum('full','partial','down') DEFAULT 'full',
  `Payment_Method_Id` int(11) NOT NULL,
  `Reference_Number` varchar(100) DEFAULT NULL,
  `Notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_signed` tinyint(1) DEFAULT 0,
  `signature_token` varchar(255) DEFAULT NULL,
  `signature_date` datetime DEFAULT NULL,
  `signature_ip` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `acknowledgment_receipt`
--

INSERT INTO `acknowledgment_receipt` (`Receipt_Id`, `Customer_Name`, `Customer_Email`, `contact_number`, `Address`, `purpose_type`, `Payment_For`, `items_received`, `location`, `Amount`, `payment_status`, `Payment_Method_Id`, `Reference_Number`, `Notes`, `created_at`, `is_signed`, `signature_token`, `signature_date`, `signature_ip`) VALUES
(2, 'Justine Dimalanta', 'dimalantajustine8@gmail.com', '12312312', 'La Union Street, Brgy. Barretto\r\nLa Union', 'items', NULL, 'ewan', 'Olongapo', 123.00, 'partial', 2, '123', '123', '2025-08-08 10:30:07', 0, NULL, NULL, NULL),
(3, 'Justine Dimalanta', 'dimalantajustine8@gmail.com', '09616219737', 'La Union Street, Brgy. Barretto\r\nLa Union', 'items', NULL, 'test', 'Mayao Crossing, Lucena, 2nd District, Calabarzon, 4301, Philippines', 123.00, 'full', 2, '46456', 'test', '2025-08-18 06:00:06', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `active_banks_ph`
--

CREATE TABLE `active_banks_ph` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `bank_type` enum('Universal/Commercial','Digital','Thrift','Rural/Cooperative') NOT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `active_banks_ph`
--

INSERT INTO `active_banks_ph` (`id`, `bank_name`, `bank_type`, `status`, `notes`, `created_at`) VALUES
(1, 'BDO Unibank, Inc.', 'Universal/Commercial', 'Active', NULL, '2025-05-09 08:44:45'),
(2, 'Land Bank of the Philippines', 'Universal/Commercial', 'Active', NULL, '2025-05-09 08:44:45'),
(3, 'Metrobank', 'Universal/Commercial', 'Active', NULL, '2025-05-09 08:44:45'),
(4, 'Bank of the Philippine Islands', 'Universal/Commercial', 'Active', NULL, '2025-05-09 08:44:45'),
(5, 'China Banking Corporation', 'Universal/Commercial', 'Active', NULL, '2025-05-09 08:44:45'),
(6, 'RCBC', 'Universal/Commercial', 'Active', NULL, '2025-05-09 08:44:45'),
(7, 'Philippine National Bank', 'Universal/Commercial', 'Active', NULL, '2025-05-09 08:44:45'),
(8, 'Security Bank Corporation', 'Universal/Commercial', 'Active', NULL, '2025-05-09 08:44:45'),
(9, 'Union Bank of the Philippines', 'Universal/Commercial', 'Active', NULL, '2025-05-09 08:44:45'),
(10, 'Development Bank of the Philippines', 'Universal/Commercial', 'Active', NULL, '2025-05-09 08:44:45'),
(11, 'Maya Bank, Inc.', 'Digital', 'Active', NULL, '2025-05-09 08:44:45'),
(12, 'UnionDigital Bank', 'Digital', 'Active', NULL, '2025-05-09 08:44:45'),
(13, 'GoTyme Bank Corporation', 'Digital', 'Active', NULL, '2025-05-09 08:44:45'),
(14, 'Tonik Digital Bank, Inc.', 'Digital', 'Active', NULL, '2025-05-09 08:44:45'),
(15, 'UNObank, Inc.', 'Digital', 'Active', NULL, '2025-05-09 08:44:45'),
(16, 'Overseas Filipino Bank (OFBank)', 'Digital', 'Active', NULL, '2025-05-09 08:44:45'),
(17, 'Philippine Savings Bank', 'Thrift', 'Active', NULL, '2025-05-09 08:44:45'),
(18, 'Philippine Business Bank', 'Thrift', 'Active', NULL, '2025-05-09 08:44:45'),
(19, 'City Savings Bank', 'Thrift', 'Active', NULL, '2025-05-09 08:44:45'),
(20, 'China Bank Savings', 'Thrift', 'Active', NULL, '2025-05-09 08:44:45'),
(21, 'Sterling Bank of Asia', 'Thrift', 'Active', NULL, '2025-05-09 08:44:45'),
(22, 'BDO Network Bank', 'Rural/Cooperative', 'Active', NULL, '2025-05-09 08:44:45'),
(23, 'EastWest Rural Bank', 'Rural/Cooperative', 'Active', NULL, '2025-05-09 08:44:45'),
(24, 'CARD Bank, Inc.', 'Rural/Cooperative', 'Active', NULL, '2025-05-09 08:44:45'),
(25, 'Seabank Philippines, Inc.', 'Rural/Cooperative', 'Active', NULL, '2025-05-09 08:44:45'),
(26, 'Cantilan Bank, Inc.', 'Rural/Cooperative', 'Active', NULL, '2025-05-09 08:44:45');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `Area_Id` int(11) NOT NULL,
  `Area` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`Area_Id`, `Area`) VALUES
(1234, 'SBMA'),
(1235, 'Sbma'),
(1236, 'Remy'),
(1237, 'testing'),
(1238, 'CR'),
(1239, 'Dinalupihan'),
(1240, 'test'),
(1241, 'test'),
(1242, 'area 51');

-- --------------------------------------------------------

--
-- Table structure for table `asset_assignments`
--

CREATE TABLE `asset_assignments` (
  `id` int(11) NOT NULL,
  `request_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `assignment_request_id` varchar(50) NOT NULL,
  `requestor_name` varchar(255) NOT NULL,
  `location` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `asset_id` varchar(50) NOT NULL,
  `reason` text DEFAULT NULL,
  `proposed_return_date` date DEFAULT NULL,
  `status` enum('Pending','Approved','Rejected') DEFAULT 'Pending',
  `approver_comment` text DEFAULT NULL,
  `reviewed_by` varchar(255) DEFAULT NULL,
  `reviewed_date` datetime DEFAULT NULL,
  `assigned_to` varchar(255) DEFAULT NULL,
  `assignment_date` date DEFAULT NULL,
  `expected_return_date` date DEFAULT NULL,
  `asset_condition_assignment` enum('In use','Available','For repair','Disposed') DEFAULT NULL,
  `assignment_notes` text DEFAULT NULL,
  `returned_by` varchar(255) DEFAULT NULL,
  `returned_date` date DEFAULT NULL,
  `return_condition` enum('In use','Available','For repair','Disposed') DEFAULT NULL,
  `return_comment` text DEFAULT NULL,
  `user_returned_by` varchar(100) DEFAULT NULL,
  `user_returned_date` date DEFAULT NULL,
  `user_return_condition` enum('In use','Available','For repair','Disposed') DEFAULT NULL,
  `user_return_comment` text DEFAULT NULL,
  `archived` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `asset_assignments`
--

INSERT INTO `asset_assignments` (`id`, `request_date`, `assignment_request_id`, `requestor_name`, `location`, `department`, `asset_id`, `reason`, `proposed_return_date`, `status`, `approver_comment`, `reviewed_by`, `reviewed_date`, `assigned_to`, `assignment_date`, `expected_return_date`, `asset_condition_assignment`, `assignment_notes`, `returned_by`, `returned_date`, `return_condition`, `return_comment`, `user_returned_by`, `user_returned_date`, `user_return_condition`, `user_return_comment`, `archived`) VALUES
(1, '2025-05-07 16:00:00', 'AR-681c5b6c0fbed', '123', '123', '123', 'Asset-001', '123', '2025-05-08', 'Rejected', 'pass', 'Justine Dimalanta', '2025-05-08 15:25:35', 'ewan', '0000-00-00', '0000-00-00', 'In use', 'xd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, '2025-10-21 16:00:00', 'AR-68f8daf464ab0', 'Justine', 'test', 'test', 'Asset-002', 'test', '2025-10-22', 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00', 'Available', 'test', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `account_no` varchar(50) NOT NULL,
  `account_type` enum('Savings - PHP','Current - PHP','Savings - Dollar','Current - Dollar') NOT NULL,
  `currency` enum('PHP','USD') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `bank_name`, `account_name`, `account_no`, `account_type`, `currency`, `created_at`) VALUES
(5, 'BPI', 'Stafify Holdings Inc.', '1234-5678-9012', 'Savings - PHP', 'PHP', '2025-05-09 08:39:58'),
(6, 'BDO', 'Stafify Treasury', '2345-6789-0123', 'Current - PHP', 'PHP', '2025-05-09 08:39:58'),
(7, 'Metrobank', 'Stafify Payroll', '3456-7890-1234', 'Savings - Dollar', 'USD', '2025-05-09 08:39:58'),
(8, 'UnionBank', 'Stafify Intl.', '4567-8901-2345', 'Current - Dollar', 'USD', '2025-05-09 08:39:58');

-- --------------------------------------------------------

--
-- Table structure for table `bank_reco`
--

CREATE TABLE `bank_reco` (
  `id` int(11) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_number` varchar(100) NOT NULL,
  `account_type` varchar(50) NOT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `opening_balance` decimal(10,2) DEFAULT 0.00,
  `current_balance` decimal(10,2) DEFAULT 0.00,
  `last_reconciled_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_reco`
--

INSERT INTO `bank_reco` (`id`, `account_name`, `account_number`, `account_type`, `bank_id`, `opening_balance`, `current_balance`, `last_reconciled_date`, `created_at`, `updated_at`) VALUES
(3, 'BDO Unibank, Inc. Account', '10001', 'Checking', 1, 0.00, 0.00, NULL, '2025-08-18 06:11:23', '2025-08-18 06:11:23'),
(4, 'Land Bank of the Philippines Account', '10002', 'Checking', 2, 0.00, 0.00, NULL, '2025-08-18 06:11:23', '2025-08-18 06:11:23'),
(5, 'Metrobank Account', '10003', 'Checking', 3, 0.00, 0.00, NULL, '2025-08-18 06:11:23', '2025-08-18 06:11:23'),
(6, 'Bank of the Philippine Islands Account', '10004', 'Checking', 4, 0.00, 0.00, NULL, '2025-08-18 06:11:23', '2025-08-18 06:11:23'),
(7, 'China Banking Corporation Account', '10005', 'Checking', 5, 0.00, 678.00, NULL, '2025-08-18 06:11:23', '2025-08-18 06:12:00'),
(8, 'RCBC Account', '10006', 'Checking', 6, 0.00, 0.00, NULL, '2025-08-18 06:11:23', '2025-08-18 06:11:23'),
(9, 'Philippine National Bank Account', '10007', 'Checking', 7, 0.00, 0.00, NULL, '2025-08-18 06:11:23', '2025-08-18 06:11:23'),
(10, 'Security Bank Corporation Account', '10008', 'Checking', 8, 0.00, 0.00, NULL, '2025-08-18 06:11:23', '2025-08-18 06:11:23'),
(11, 'Union Bank of the Philippines Account', '10009', 'Checking', 9, 0.00, 0.00, NULL, '2025-08-18 06:11:23', '2025-08-18 06:11:23'),
(12, 'Development Bank of the Philippines Account', '100010', 'Checking', 10, 0.00, 0.00, NULL, '2025-08-18 06:11:23', '2025-08-18 06:11:23'),
(13, 'Maya Bank, Inc. Account', '100011', 'Checking', 11, 0.00, 0.00, NULL, '2025-08-18 06:11:23', '2025-08-18 06:11:23'),
(14, 'UnionDigital Bank Account', '100012', 'Checking', 12, 0.00, 0.00, NULL, '2025-08-18 06:11:23', '2025-08-18 06:11:23'),
(15, 'GoTyme Bank Corporation Account', '100013', 'Checking', 13, 0.00, 0.00, NULL, '2025-08-18 06:11:23', '2025-08-18 06:11:23'),
(16, 'Tonik Digital Bank, Inc. Account', '100014', 'Checking', 14, 0.00, 567.00, NULL, '2025-08-18 06:11:23', '2025-08-18 06:11:38'),
(17, 'UNObank, Inc. Account', '100015', 'Checking', 15, 0.00, 0.00, NULL, '2025-08-18 06:11:23', '2025-08-18 06:11:23'),
(18, 'Overseas Filipino Bank (OFBank) Account', '100016', 'Checking', 16, 0.00, 0.00, NULL, '2025-08-18 06:11:23', '2025-08-18 06:11:23'),
(19, 'Philippine Savings Bank Account', '100017', 'Checking', 17, 0.00, 0.00, NULL, '2025-08-18 06:11:23', '2025-08-18 06:11:23'),
(20, 'Philippine Business Bank Account', '100018', 'Checking', 18, 0.00, 0.00, NULL, '2025-08-18 06:11:23', '2025-08-18 06:11:23'),
(21, 'City Savings Bank Account', '100019', 'Checking', 19, 0.00, 0.00, NULL, '2025-08-18 06:11:23', '2025-08-18 06:11:23'),
(22, 'China Bank Savings Account', '100020', 'Checking', 20, 0.00, 0.00, NULL, '2025-08-18 06:11:23', '2025-08-18 06:11:23'),
(23, 'Sterling Bank of Asia Account', '100021', 'Checking', 21, 0.00, 0.00, NULL, '2025-08-18 06:11:23', '2025-08-18 06:11:23'),
(24, 'BDO Network Bank Account', '100022', 'Checking', 22, 0.00, 0.00, NULL, '2025-08-18 06:11:23', '2025-08-18 06:11:23'),
(25, 'EastWest Rural Bank Account', '100023', 'Checking', 23, 0.00, 0.00, NULL, '2025-08-18 06:11:23', '2025-08-18 06:11:23'),
(26, 'CARD Bank, Inc. Account', '100024', 'Checking', 24, 0.00, 0.00, NULL, '2025-08-18 06:11:23', '2025-08-18 06:11:23'),
(27, 'Seabank Philippines, Inc. Account', '100025', 'Checking', 25, 0.00, 0.00, NULL, '2025-08-18 06:11:23', '2025-08-18 06:11:23'),
(28, 'Cantilan Bank, Inc. Account', '100026', 'Checking', 26, 0.00, 0.00, NULL, '2025-08-18 06:11:23', '2025-08-18 06:11:23');

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` int(11) NOT NULL,
  `business_legal_name` varchar(255) DEFAULT NULL,
  `trade_name` varchar(255) DEFAULT NULL,
  `registration_type` varchar(50) DEFAULT NULL,
  `registration_no` varchar(20) DEFAULT NULL,
  `date_of_registration` date DEFAULT NULL,
  `industry_code` varchar(100) DEFAULT NULL,
  `business_description` text DEFAULT NULL,
  `business_tin` varchar(15) DEFAULT NULL,
  `rdo_code` varchar(3) DEFAULT NULL,
  `official_address` text DEFAULT NULL,
  `zip_code` varchar(4) DEFAULT NULL,
  `contact_phone` varchar(20) DEFAULT NULL,
  `official_email` varchar(100) DEFAULT NULL,
  `sss_no` varchar(20) DEFAULT NULL,
  `phic_no` varchar(20) DEFAULT NULL,
  `hdmf_no` varchar(20) DEFAULT NULL,
  `peza_cert_no` varchar(50) DEFAULT NULL,
  `permits` text DEFAULT NULL,
  `enable_multi_branch` tinyint(1) DEFAULT 0,
  `inventory_tracking_mode` varchar(20) DEFAULT NULL,
  `use_weighted_avg_cost` tinyint(1) DEFAULT 0,
  `enable_audit_trail` tinyint(1) DEFAULT 0,
  `tax_type` varchar(50) DEFAULT NULL,
  `books_of_accounts` varchar(255) DEFAULT NULL,
  `accounting_method` varchar(20) DEFAULT NULL,
  `fiscal_start_month` varchar(20) DEFAULT NULL,
  `quarter_cutoff` varchar(50) DEFAULT NULL,
  `withholding_agent` tinyint(1) DEFAULT 0,
  `currency` varchar(10) DEFAULT NULL,
  `timezone` varchar(50) DEFAULT NULL,
  `week_start` varchar(10) DEFAULT NULL,
  `date_format` varchar(20) DEFAULT NULL,
  `number_format` varchar(20) DEFAULT NULL,
  `or_prefix` varchar(10) DEFAULT NULL,
  `si_prefix` varchar(10) DEFAULT NULL,
  `next_or_number` int(11) DEFAULT NULL,
  `next_si_number` int(11) DEFAULT NULL,
  `pdf_template` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `business_legal_name`, `trade_name`, `registration_type`, `registration_no`, `date_of_registration`, `industry_code`, `business_description`, `business_tin`, `rdo_code`, `official_address`, `zip_code`, `contact_phone`, `official_email`, `sss_no`, `phic_no`, `hdmf_no`, `peza_cert_no`, `permits`, `enable_multi_branch`, `inventory_tracking_mode`, `use_weighted_avg_cost`, `enable_audit_trail`, `tax_type`, `books_of_accounts`, `accounting_method`, `fiscal_start_month`, `quarter_cutoff`, `withholding_agent`, `currency`, `timezone`, `week_start`, `date_format`, `number_format`, `or_prefix`, `si_prefix`, `next_or_number`, `next_si_number`, `pdf_template`, `created_at`, `updated_at`, `last_updated`) VALUES
(1, 'Stafify BPO', 'Stafify', 'SEC - Partnership', '23141234', '2025-10-14', '234', 'wqer', '123123123123333', '344', 'La Union Street, Brgy. Barretto\nLa Union', '2200', '+639616219737', 'dimalantajustine8@gmail.com', NULL, NULL, NULL, NULL, '123123', 0, 'Perpetual', 1, 1, 'Non-VAT (3%)', 'Non-computerized', 'Accrual', 'February', 'Calendar Quarter', 1, 'USD', 'America/New_York (UTC-5)', 'Monday', 'DD-MM-YYYY', '1 234,56', 'OR- 123123', 'SI- 232132', 2003, 6006, 'Minimal', '2025-08-13 17:44:36', '2025-10-14 07:52:47', '2025-10-14 07:52:47');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `Category_Id` int(100) NOT NULL,
  `Category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`Category_Id`, `Category`) VALUES
(1234, 'Shoes'),
(1235, 'Hygiene'),
(1236, 'BAT AKO NATATAWA'),
(1237, 'XD'),
(1238, 'Furniture'),
(1239, 'testing'),
(1240, 'Furniture'),
(1241, 'Food'),
(1242, 'Technology'),
(1243, 'testing'),
(1244, 'ayaw'),
(1245, 'robot'),
(1246, 'Massage');

-- --------------------------------------------------------

--
-- Table structure for table `chart_of_accounts`
--

CREATE TABLE `chart_of_accounts` (
  `id` int(11) NOT NULL,
  `account_group` varchar(50) NOT NULL,
  `account_type` varchar(100) NOT NULL,
  `account_number` int(11) DEFAULT NULL,
  `is_parent` tinyint(1) NOT NULL,
  `parent_account_number` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chart_of_accounts`
--

INSERT INTO `chart_of_accounts` (`id`, `account_group`, `account_type`, `account_number`, `is_parent`, `parent_account_number`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Assets', 'Assets', 100000, 1, NULL, 'Major Group', '2025-04-11 16:02:40', '2025-04-14 11:29:49'),
(2, 'Assets', 'Current Assets', 110000, 1, 100000, 'Subgroup', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(3, 'Assets', 'Cash', 111000, 1, 110000, 'General cash account', '2025-04-11 16:02:40', '2025-04-14 11:13:20'),
(4, 'Assets', 'Petty Cash', 111100, 0, 111000, 'For small daily expenses', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(5, 'Assets', 'Cash in Bank - Current', 111200, 0, 111000, 'Checking accounts', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(6, 'Assets', 'Cash in Bank - Savings', 111300, 0, 111000, 'Savings accounts', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(7, 'Assets', 'Accounts Receivable', 112000, 0, 110000, 'General AR', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(8, 'Assets', 'Accounts Receivables - Trade', 112100, 0, 112000, 'Sales-related AR', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(9, 'Assets', 'Accounts Receivables - Non-Trade', 112200, 0, 112000, 'Non-sales AR (e.g., advances)', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(10, 'Assets', 'Allowance for Doubtful Accounts', 112300, 0, 112000, 'Contra-asset account', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(11, 'Assets', 'Notes Receivable', 113000, 0, 110000, 'Formal written promises', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(12, 'Assets', 'Loans Receivable', 114000, 0, 110000, 'Loans given to others', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(13, 'Assets', 'Inventories', 115000, 0, 110000, 'General inventory', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(14, 'Assets', 'Merchandise Inventory', 115100, 0, 115000, 'For trading businesses', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(15, 'Assets', 'Raw Materials Inventory', 115200, 0, 115000, 'For manufacturing businesses', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(16, 'Assets', 'Finished Goods/Supplies Inventory', 115300, 0, 115000, 'Completed items or office supplies', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(17, 'Assets', 'Input VAT', 116000, 0, 110000, 'VAT input from purchases', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(18, 'Assets', 'Prepaid Expenses', 117000, 0, 110000, 'General prepaid category', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(19, 'Assets', 'Prepaid Rent', 117100, 0, 117000, 'Rent paid in advance', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(20, 'Assets', 'Prepaid Insurance', 117200, 0, 117000, 'Insurance paid in advance', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(21, 'Assets', 'Advance to Employees', 118000, 0, 110000, 'Salary or expense advances', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(22, 'Assets', 'Other Current Assets', 119000, 0, 110000, 'Any other unclassified short-term asset', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(23, 'Assets', 'Non-Current Assets', 120000, 1, 100000, 'Major subgroup under Asset', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(24, 'Assets', 'Property, Plant & Equipment', 121000, 0, 120000, 'Header for all fixed physical assets', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(25, 'Assets', 'Land', 121100, 0, 121000, 'Non-depreciable; owned parcels of land', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(26, 'Assets', 'Building', 121200, 0, 121000, 'Structures used in business operations', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(27, 'Assets', 'Leasehold Improvements', 121300, 0, 121000, 'Improvements on leased spaces', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(28, 'Assets', 'Office Equipment', 121400, 0, 121000, 'Printers, phones, calculators, etc.', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(29, 'Assets', 'IT Equipment', 121500, 0, 121000, 'Computers, servers, networking devices', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(30, 'Assets', 'Furniture and Fixtures', 121600, 0, 121000, 'Desks, chairs, cabinets', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(31, 'Assets', 'Tools and Equipment', 121700, 0, 121000, 'Small tools used in daily operations', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(32, 'Assets', 'Transportation Equipment', 121800, 0, 121000, 'Vehicles owned by the company', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(33, 'Assets', 'Machinery and Equipment', 121900, 0, 121000, 'Heavy equipment and machinery for production or operation', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(34, 'Assets', 'Accumulated Depreciations - Buildings', 121910, 0, 121000, 'Contra to 121200', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(35, 'Assets', 'Accumulated Depreciations - Office Equipment', 121920, 0, 121000, 'Contra to 121400', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(36, 'Assets', 'Accumulated Depreciations - IT Equipment', 121930, 0, 121000, 'Contra to 121500', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(37, 'Assets', 'Accumulated Depreciations - Furniture and Fixtures', 121940, 0, 121000, 'Contra to 121600', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(38, 'Assets', 'Accumulated Depreciations - Tools and Equipment', 121950, 0, 121000, 'Contra to 121700', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(39, 'Assets', 'Accumulated Depreciations - Transportation Equipment', 121960, 0, 121000, 'Contra to 121800', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(40, 'Assets', 'Accumulated Deprecication - Machinery', 121970, 0, 121000, 'Contra to 121900', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(41, 'Assets', 'Intangible Assets', 122000, 1, 120000, 'Non-physical assets', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(42, 'Assets', 'Software and Application Licenses', 122100, 0, 122000, 'Purchased or developed software', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(43, 'Assets', 'Trademark/Brand Name', 122200, 0, 122000, 'Registered intellectual property', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(44, 'Assets', 'Goodwill', 122300, 0, 122000, 'From acquisition (if any)', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(45, 'Assets', 'Website Development Costs', 122400, 0, 122000, 'Capitalized app/website costs', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(46, 'Assets', 'Accumulated Amortization - Intangibles', 122900, 0, 122000, 'Contra-asset for intangibles', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(47, 'Assets', 'Deferred Tax Asset', 123000, 1, 120000, '', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(48, 'Assets', 'Deferred Tax Asset', 123100, 0, 123000, 'Future tax benefit due to temporary differences', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(49, 'Assets', 'Other Non-Current Assets', 124000, 1, 120000, 'Major subgroup under Asset', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(50, 'Assets', 'Security Deposits', 124100, 0, 124000, 'Long-term rental/utilities', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(51, 'Assets', 'Rental Deposits', 124200, 0, 124000, 'Leases', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(52, 'Assets', 'Long-Term Advances', 124300, 0, 124000, 'Expected to settle beyond 1 year', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(53, 'Assets', 'Construction in Progress', 124400, 1, 124000, 'Ongoing construction for PPE', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(54, 'Assets', 'Other Deferred Charges', 124900, 0, 124000, 'Long-term prepaid costs not elsewhere classified', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(55, 'Liabilities', 'Liabilities', 200000, 1, NULL, '', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(56, 'Liabilities', 'Current Liabilities', 210000, 1, 200000, 'Total short-term obligations', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(57, 'Liabilities', 'Accounts Payable', 211000, 0, 210000, 'General unpaid obligations', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(58, 'Liabilities', 'Accounts Payable - Trade', 211100, 0, 211000, 'Suppliers for goods', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(59, 'Liabilities', 'Accounts Payable - Non-Trade', 211200, 0, 211000, 'Other payables (rent, freelancers)', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(60, 'Liabilities', 'Notes Payable - Short Term', 212000, 0, 210000, 'Short-term promissory notes', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(61, 'Liabilities', 'Loans Payable - Short Term', 212500, 0, 210000, 'Part of long-term loans due this year', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(62, 'Liabilities', 'Accrued Expenses', 213000, 0, 210000, 'Expenses incurred but unpaid', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(63, 'Liabilities', 'Accrued Salaries and Wages', 213100, 0, 213000, 'Employee salaries not yet paid', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(64, 'Liabilities', 'Accrued Utilities', 213200, 0, 213000, 'Electric, water, internet bills accrued', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(65, 'Liabilities', 'Taxes Payable', 214000, 0, 210000, 'Control account for taxes', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(66, 'Liabilities', 'Output VAT Payable', 214100, 0, 214000, 'VAT collected from sales', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(67, 'Liabilities', 'VAT Payable - Net', 214200, 0, 214000, 'Output VAT – Input VAT (if not offset)', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(68, 'Liabilities', 'Percentage Tax Payable', 214300, 0, 214000, 'For Non-VAT registered entities', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(69, 'Liabilities', 'Withholding Tax Payable', 214400, 0, 214000, 'General WTC', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(70, 'Liabilities', 'Withholding Tax Payable – Expanded', 214500, 0, 214000, 'WTE (e.g., for freelancers, rentals)', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(71, 'Liabilities', 'Withholding Tax Payable – Compensation', 214600, 0, 214000, 'WTC (e.g. employees)', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(72, 'Liabilities', 'Final Tax Payable', 214700, 0, 214000, 'For final tax types (e.g., bank interest)', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(73, 'Liabilities', 'Income Tax Payable', 214800, 0, 214000, 'After quarterly/annual tax filing', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(74, 'Liabilities', 'Government Contributions Payable', 215000, 0, 210000, 'Control account for SSS, PhilHealth, Pag-IBIG', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(75, 'Liabilities', 'SSS Contributions Payable', 215100, 0, 215000, 'Mandatory benefit', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(76, 'Liabilities', 'PhilHealth Contributions Payable', 215200, 0, 215000, 'Health insurance', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(77, 'Liabilities', 'Pag-Ibig Contributions Payable', 215300, 0, 215000, 'Housing fund', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(78, 'Liabilities', 'Unearned Revenue', 216000, 0, 210000, 'Advance collections for future service/product delivery', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(79, 'Liabilities', 'Advances from Customers', 217000, 0, 210000, 'Customer deposits or down payments', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(80, 'Liabilities', 'Other Current Liabilities', 218000, 0, 210000, 'Miscellaneous', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(81, 'Liabilities', 'Non Current Liabilities', 220000, 1, 200000, 'Header', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(82, 'Liabilities', 'Notes Payable – Long-Term', 221000, 0, 220000, 'Formal signed obligations payable over 1 year', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(83, 'Liabilities', 'Loans Payable – Long-Term', 221100, 0, 220000, 'Bank loans and financing payable after 1 year', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(84, 'Liabilities', 'Lease Liabilities – Long-Term', 222000, 0, 220000, 'For capital/finance lease agreements', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(85, 'Liabilities', 'Deferred Tax Liability', 223000, 0, 220000, 'Tax payable in future periods due to timing differences', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(86, 'Liabilities', 'Retirement Benefit Obligations', 224000, 0, 220000, 'Estimated benefits due under retirement plans', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(87, 'Liabilities', 'Other Non-Current Liabilities', 225000, 0, 220000, 'Miscellaneous long-term obligations', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(88, 'Equity', 'Equity', 300000, 1, NULL, 'Total Equity control account', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(89, 'Equity', 'For Sole Proprietorship', NULL, 1, 300000, '', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(90, 'Equity', 'Owner\'s Capital - Beginning Balance', 310000, 1, 300000, 'Start of year balance', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(91, 'Equity', 'Owner\'s Additional Investment', 310100, 0, 310000, 'Investments during the year', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(92, 'Equity', 'Onwer\'s Drawing / Dividends', 310200, 0, 310000, 'Withdrawals during the year', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(93, 'Equity', 'For Partnerships', NULL, 1, 300000, '', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(94, 'Equity', 'Partner [Name] Capital - Beginning Balance', 311000, 1, 300000, 'For each partner', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(95, 'Equity', 'Partner [Name] Additional Investment', 311100, 0, 311000, 'New capital injected', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(96, 'Equity', 'Partner [Name] Drawings / Dividends', 311200, 0, 311000, 'Withdrawals', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(97, 'Equity', 'For Corporations/OPC', NULL, 1, 300000, '', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(98, 'Equity', 'Share Capital – Common', 312000, 1, 300000, 'Common stock', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(99, 'Equity', 'Share Capital – Preferred', 312100, 0, 312000, 'Preferred stock (if any)', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(100, 'Equity', 'Subscription Receivable', 313000, 0, 300000, 'For subscribed shares not yet paid', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(101, 'Equity', 'Additional Paid-In Capital', 314000, 0, 300000, 'Excess paid over par', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(102, 'Equity', 'Treasury Shares', 315000, 0, 300000, 'Contra-equity account', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(103, 'Equity', 'Common to All Entities (Retained Earnings & Net Income)', NULL, 1, 300000, '', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(104, 'Equity', 'Retained Earnings – Beginning Balance', 316000, 1, 300000, 'Prior period retained income', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(105, 'Equity', 'Retained Earnings – Appropriated', 316100, 0, 316000, 'Restricted retained earnings', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(106, 'Equity', 'Retained Earnings – Unappropriated', 316200, 0, 316000, 'Available for dividends', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(107, 'Equity', 'Net Income for the Period (Current Year Earnings)', 317000, 0, 300000, 'Temporary account before closing', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(108, 'Equity', 'Dividends Declared / Payable', 318000, 0, 300000, 'For Corporations/OPC', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(109, 'Equity', 'Other Equity Adjustments', 319000, 0, 300000, 'Revaluations, translation, reserves', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(110, 'Revenue', 'Revenue', 400000, 1, NULL, 'Major Group', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(111, 'Revenue', 'Revenue from Sale of Goods', 410000, 1, 400000, 'Header only', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(112, 'Revenue', 'Domestic Sales – VATable', 411000, 0, 410000, 'Sales subject to 12% VAT', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(113, 'Revenue', 'Domestic Sales – Non-VAT', 412000, 0, 410000, 'Sales under 3% (non-VAT registered) or 1% under CREATE', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(114, 'Revenue', 'Sales – Zero Rated', 413000, 0, 410000, 'Export sales (0% VAT), PEZA or BOI-qualified', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(115, 'Revenue', 'Sales – Tax Exempt', 414000, 0, 410000, 'Items/services exempt under Sec 109 of NIRC', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(116, 'Revenue', 'Sales Returns and Allowances', 415000, 0, 410000, 'Contra-revenue for goods sold', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(117, 'Revenue', 'Revenue from Services', 420000, 1, 400000, 'Header only', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(118, 'Revenue', 'Service Income – VATable', 421000, 0, 420000, 'Services subject to 12% VAT', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(119, 'Revenue', 'Service Income – Non-VAT', 422000, 0, 420000, 'Non-VAT registered service income (usually 3%/1%)', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(120, 'Revenue', 'Service Income – Zero Rated', 423000, 0, 420000, 'BPO/ITO export services (0% VAT)', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(121, 'Revenue', 'Service Income – Tax Exempt', 424000, 0, 420000, 'Medical, educational, or other exempt services', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(122, 'Revenue', 'Service Income Returns / Discounts', 425000, 0, 420000, 'Contra-revenue for service refunds or adjustments', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(123, 'Revenue', 'Other Operating Income', 430000, 1, 400000, 'Header for non-core revenue', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(124, 'Revenue', 'Commission Income', 431000, 0, 430000, 'Example: reseller or agent fees', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(125, 'Revenue', 'Rental Income', 432000, 0, 430000, 'From leasing property or equipment', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(126, 'Revenue', 'Consulting or Professional Fees', 433000, 0, 430000, 'Non-regular consulting engagements', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(127, 'Revenue', 'Franchise Fees', 434000, 0, 430000, 'If applicable', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(128, 'Revenue', 'Royalty Income', 435000, 0, 430000, 'Intellectual property revenue', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(129, 'Revenue', 'Miscellaneous Income', 436000, 0, 430000, 'Catch-all for other income', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(130, 'Revenue', 'Other Income – Tax Exempt', 439000, 0, 430000, 'Grants, donations, etc.', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(131, 'Cost of Sales', 'Cost of Sales', 500000, 1, NULL, 'Major Group', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(132, 'Cost of Sales', 'Cost of Sales – Goods', 510000, 1, 500000, 'Header', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(133, 'Cost of Sales', 'Merchandise Inventory – Beginning', 511000, 0, 510000, 'Starting inventory', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(134, 'Cost of Sales', 'Purchases', 511100, 0, 510000, 'Inventory bought for resale', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(135, 'Cost of Sales', 'Freight In', 511200, 0, 510000, 'Delivery cost of goods purchased', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(136, 'Cost of Sales', 'Direct Materials Consumed', 511300, 0, 510000, 'For manufacturers', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(137, 'Cost of Sales', 'Direct Labor – Production', 511400, 0, 510000, 'For manufacturers', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(138, 'Cost of Sales', 'Manufacturing Overhead', 511500, 0, 510000, 'Factory utilities, depreciation, etc.', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(139, 'Cost of Sales', 'Inventory Adjustments', 511600, 0, 510000, 'Write-downs, stock losses, etc.', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(140, 'Cost of Sales', 'Merchandise Inventory – Ending', 511700, 0, 510000, 'Ending inventory for COGS calculation', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(141, 'Cost of Sales', 'Cost of Goods Sold (computed)', 511900, 0, 510000, 'Total COGS = Beginning + Purchases – Ending', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(142, 'Cost of Sales', 'Cost of Sales – Services', 520000, 1, 500000, 'Header', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(143, 'Cost of Sales', 'Direct Labor – Service Staff', 521000, 1, 520000, 'E.g., therapists, agents, developers', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(144, 'Cost of Sales', 'Service Subcontractors / Freelancers', 521100, 1, 520000, 'Outsourced services', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(145, 'Cost of Sales', 'Service Materials & Consumables', 521200, 1, 520000, 'Oils, linens, office supplies directly used', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(146, 'Cost of Sales', 'Direct Travel & Transportation', 521300, 1, 520000, 'Related to service delivery', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(147, 'Cost of Sales', 'Utilities – Direct (Internet, Power, Water)', 521400, 1, 520000, 'Direct use in service', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(148, 'Cost of Sales', 'Depreciation – Service Equipment', 521500, 1, 520000, 'Massage beds, computers, etc.', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(149, 'Cost of Sales', 'Other Direct Costs – Services', 521900, 1, 520000, 'Any other directly attributable cost', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(150, 'Operating Expenses', 'Operating Expenses', 600000, 1, NULL, 'Major Group', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(151, 'Operating Expenses', 'Salaries and Wages – Ops', 610000, 1, 600000, 'Total gross pay for operations team', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(152, 'Operating Expenses', 'Basic Pay', 611000, 0, 610000, 'Regular base salary of operations staff', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(153, 'Operating Expenses', 'Overtime Pay', 611100, 0, 610000, 'Overtime rendered by ops team', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(154, 'Operating Expenses', 'Allowances – Regular', 611200, 0, 610000, 'Monthly/weekly allowances (e.g., phone, food)', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(155, 'Operating Expenses', 'Commissions – Regular', 611300, 0, 610000, 'Commission for recurring sales/service targets', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(156, 'Operating Expenses', 'Allowances – On-Call', 611400, 0, 610000, 'Pay for standby staff (spa, security, etc.)', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(157, 'Operating Expenses', 'Commissions – On-Call', 611500, 0, 610000, 'Commission for on-call or emergency service delivery', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(158, 'Operating Expenses', 'Employee Benefits – Ops', 620000, 1, 600000, 'All non-cash/indirect benefits', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(159, 'Operating Expenses', 'SSS Premium Contribution', 621000, 0, 620000, 'Employer share for SSS', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(160, 'Operating Expenses', 'PHIC Premium Contribution', 621100, 0, 620000, 'Employer share for PhilHealth', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(161, 'Operating Expenses', 'HDMF Premium Contribution', 621200, 0, 620000, 'Employer share for Pag-IBIG', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(162, 'Operating Expenses', 'Cola', 621300, 0, 620000, 'Cost of Living Allowance', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(163, 'Operating Expenses', 'Rice Subsidy', 621400, 0, 620000, 'Rice subsidy to operations staff', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(164, 'Operating Expenses', 'Meal Allowance', 621500, 0, 620000, 'Meals provided to operations staff', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(165, 'Operating Expenses', 'Uniform/Clothing Allowance', 621600, 0, 620000, 'Uniforms for operations staff', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(166, 'Operating Expenses', 'Laundry Allowance', 621700, 0, 620000, 'Laundry Allowance', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(167, 'Operating Expenses', 'Medical Allowance', 621800, 0, 620000, 'Medical allowance', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(168, 'Operating Expenses', 'Collective Bargaining Agreement', 621900, 0, 620000, 'Collective Bargaining Agreement', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(169, 'Operating Expenses', '13th Month Pay', 622000, 0, 620000, 'Year-end admin bonus', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(170, 'Operating Expenses', 'Service Incentive Leaves', 622100, 0, 620000, 'Mandatory Service Incentive Leaves', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(171, 'Operating Expenses', 'Paid Time-Off', 622200, 0, 620000, 'Paid time-offs', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(172, 'Operating Expenses', 'Other Allowances/Bonuses', 622300, 0, 620000, 'Performance or seasonal bonuses', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(173, 'Operating Expenses', 'HMO', 622400, 0, 620000, 'Health insurance premiums', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(174, 'Operating Expenses', 'Salaries – Admin', 630000, 1, 600000, 'Office/admin staff salaries', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(175, 'Operating Expenses', 'Basic Pay', 631000, 0, 630000, 'Base salary of admin team', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(176, 'Operating Expenses', 'Overtime Pay', 631100, 0, 630000, 'Overtime for admin staff', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(177, 'Operating Expenses', 'Allowances – Regular', 631200, 0, 630000, 'Admin team\'s recurring allowances', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(178, 'Operating Expenses', 'Commissions – Regular', 631300, 0, 630000, 'Commission tied to admin-based sales', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(179, 'Operating Expenses', 'Allowances – On-Call', 631400, 0, 630000, 'Standby/on-call pay for admin team', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(180, 'Operating Expenses', 'Commissions – On-Call', 631500, 0, 630000, 'On-call commissions for admins', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(181, 'Operating Expenses', 'Employee Benefits – Admin', 640000, 1, 600000, 'Benefits for admin personnel', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(182, 'Operating Expenses', 'SSS Premium Contribution', 641000, 0, 640000, 'Employer share – admin', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(183, 'Operating Expenses', 'PHIC Premium Contribution', 641100, 0, 640000, 'Employer share – admin', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(184, 'Operating Expenses', 'HDMF Premium Contribution', 641200, 0, 640000, 'Employer share – admin', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(185, 'Operating Expenses', 'Fixed Representation Allowance', 641300, 0, 640000, 'Taxable Representation Allowance - admin', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(186, 'Operating Expenses', 'Fixed Transportation Allowance', 641400, 0, 640000, 'Taxable Transportation Allowance - admin', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(187, 'Operating Expenses', 'Fixed Housing Allowance', 641500, 0, 640000, 'Taxable Housing Allowance - admin', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(188, 'Operating Expenses', 'Car/Vehicle Allowance', 641600, 0, 640000, 'Taxable Car/Vehicle Allowance - admin', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(189, 'Operating Expenses', 'Educational Assistance', 641700, 0, 640000, 'Taxable Educational Assistance - admin', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(190, 'Operating Expenses', 'Medical Assistance', 641800, 0, 640000, 'Medical Assistance - admin', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(191, 'Operating Expenses', 'Insurance', 641900, 0, 640000, 'Taxable Insurance - Admin', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(192, 'Operating Expenses', 'Membership', 642000, 0, 640000, 'Taxable Membership - Admin', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(193, 'Operating Expenses', 'Household Personnel', 642100, 0, 640000, 'Taxable Household Personnel - Admin', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(194, 'Operating Expenses', 'Holiday and Vacation Expense', 642200, 0, 640000, 'Taxable Holiday and Vacation Expense - Admin', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(195, 'Operating Expenses', 'Foreign Travel Expense', 642300, 0, 640000, 'Taxable Foreign Travel Expense - Admin', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(196, 'Operating Expenses', 'Commissions', 642400, 0, 640000, 'Taxable Commissions - Admin', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(197, 'Operating Expenses', 'Fees', 642500, 0, 640000, 'Taxable Fees - Admin', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(198, 'Operating Expenses', '13th Month Pay', 642600, 0, 640000, 'Taxable Year-end admin bonus', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(199, 'Operating Expenses', 'Other Taxable Supplementary Compensation', 642700, 0, 640000, 'Other Taxable Supplementary Compensation', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(200, 'Operating Expenses', 'Cola', 642800, 0, 640000, 'Cost of Living Allowance', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(201, 'Operating Expenses', 'Rice Subsidy', 642900, 0, 640000, 'Rice subsidy to operations staff', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(202, 'Operating Expenses', 'Meal Allowance', 643000, 0, 640000, 'Meals provided to operations staff', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(203, 'Operating Expenses', 'Uniform/Clothing Allowance', 643100, 0, 640000, 'Uniforms for operations staff', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(204, 'Operating Expenses', 'Laundry Allowance', 643200, 0, 640000, 'Laundry Allowance', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(205, 'Operating Expenses', 'Medical Allowance', 643300, 0, 640000, 'Medical allowance', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(206, 'Operating Expenses', 'Collective Bargaining Agreement', 643400, 0, 640000, 'Collective Bargaining Agreement', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(207, 'Operating Expenses', 'Service Incentive Leaves', 643500, 0, 640000, 'Mandatory Service Incentive Leaves', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(208, 'Operating Expenses', 'Paid Time-Off', 643600, 0, 640000, 'Paid time-offs', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(209, 'Operating Expenses', 'Other Allowances', 643700, 0, 640000, 'Performance or seasonal bonuses', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(210, 'Operating Expenses', 'HMO', 643800, 0, 640000, 'Health insurance premiums', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(211, 'Operating Expenses', 'Sales & Marketing', 650000, 1, 600000, 'Header', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(212, 'Operating Expenses', 'Sales Commission – Hotel/Resort', 651000, 0, 650000, 'Incentives for referring partners', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(213, 'Operating Expenses', 'Marketing and Advertising', 651100, 0, 650000, 'Paid ads, sponsorships, flyers, SEO', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(214, 'Operating Expenses', 'Travel – Marketing/Sales', 651200, 0, 650000, 'Travel for field campaigns or client visits', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(215, 'Operating Expenses', 'Gasoline, Oil, Lubricant', 651300, 0, 650000, 'Vehicle fuel/maintenance for sales team', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(216, 'Operating Expenses', 'Representation Expense', 651400, 0, 650000, 'Meals or client meeting costs', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(217, 'Operating Expenses', 'Utilities & Rent', 660000, 1, 600000, 'Header', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(218, 'Operating Expenses', 'Rent Expense', 661000, 0, 660000, 'Office or spa facility rent', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(219, 'Operating Expenses', 'Electricity', 661100, 0, 660000, 'Power bills', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(220, 'Operating Expenses', 'Water', 661200, 0, 660000, 'Water consumption', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(221, 'Operating Expenses', 'Internet', 661300, 0, 660000, 'Fixed broadband or mobile data', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(222, 'Operating Expenses', 'Communications', 661400, 0, 660000, 'Landline, mobile, email services', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(223, 'Operating Expenses', 'Laundry Expense', 661500, 0, 660000, 'Towel and linen services (spa)', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(224, 'Operating Expenses', 'Garbage Hauling Expense', 661600, 0, 660000, 'Garbage Expense', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(225, 'Operating Expenses', 'Depreciation & Amortization', 670000, 1, 600000, 'Header', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(226, 'Operating Expenses', 'Depreciation Expense', 671000, 0, 670000, 'For physical assets (furniture, equipment)', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(227, 'Operating Expenses', 'Amortization Expense', 671100, 0, 670000, 'For intangible assets (software, rights)', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(228, 'Operating Expenses', 'Software and Applications', 671200, 0, 670000, 'SaaS subscriptions amortized over time', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(229, 'Operating Expenses', 'Admin Services', 680000, 1, 600000, 'Header', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(230, 'Operating Expenses', 'Office Supplies', 681000, 0, 680000, 'Pens, paper, toner, etc.', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(231, 'Operating Expenses', 'Property Insurance Expense', 681100, 0, 680000, 'Insurance on office/spa property', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(232, 'Operating Expenses', 'Outside Services', 681200, 0, 680000, 'Contracted or freelance services', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(233, 'Operating Expenses', 'Contracted Manpower Expense', 681300, 0, 681200, 'Agency-hired support', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(234, 'Operating Expenses', 'Consultant Expense', 681400, 0, 681200, 'Marketing, tech, business strategy consultants', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(235, 'Operating Expenses', 'Legal Services Expense', 681500, 0, 681200, 'Lawyers, retainer fees', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(236, 'Operating Expenses', 'Accounting & Bookkeeping', 681600, 0, 681200, 'Outsourced finance work', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(237, 'Operating Expenses', 'IT Services Expense', 681700, 0, 681200, 'Web, hosting, tech support', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(238, 'Operating Expenses', 'Security Services Expense', 681800, 0, 681200, 'Guards, CCTV maintenance', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(239, 'Operating Expenses', 'Trainings and Seminars', 681900, 0, 680000, 'Continuing education or certification', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(240, 'Operating Expenses', 'Capital-Funded Improvements', 690000, 1, 600000, 'For CAPEX funding (not regular repair)', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(241, 'Operating Expenses', 'Improvements, Repairs & Maintenance – CapEx', 691000, 0, 690000, 'Major renovations (building, systems)', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(242, 'Operating Expenses', 'Office/Furniture/Equipment', 691100, 0, 691000, 'New or major acquisitions', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(243, 'Operating Expenses', 'Other Capital-Intensive Projects', 691200, 0, 691000, 'Catch-all for big spends not in OPEX', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(244, 'Operating Expenses', 'Other OPEX', 612000, 1, 600000, 'Header', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(245, 'Operating Expenses', 'Taxes and Licenses', 612100, 0, 612000, 'LGU permits, DTI/SEC fees, BIR forms', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(246, 'Operating Expenses', 'Trainings and Seminar Expense', 612200, 0, 612000, 'Professional development', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(247, 'Operating Expenses', 'Partner\'s Net Income Share', 612300, 0, 612000, 'Share in profit (for partnerships)', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(248, 'Operating Expenses', 'Cash Advances – Regular', 612400, 0, 612000, 'Cash advance for normal business expenses', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(249, 'Operating Expenses', 'Cash Advances – On-Call', 612500, 0, 612000, 'Cash advance for on-call business expenses', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(250, 'Operating Expenses', 'Miscellaneous Expense', 612900, 0, 612000, 'Expenses that don\'t fall under existing categories', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(251, 'Other Expenses', 'Other Expenses', 700000, 1, NULL, 'Header for non-operational costs', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(252, 'Other Expenses', 'Other Expenses', 710000, 0, 700000, '', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(253, 'Other Expenses', 'Interest Expense', 711000, 0, 710000, 'Interest on loans, credit lines, or financing', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(254, 'Other Expenses', 'Bank Charges', 712000, 0, 710000, 'Fees for bank transactions, penalties, transfers', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(255, 'Other Expenses', 'Penalties & Surcharges', 713000, 0, 710000, 'Penalties and surcharges', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(256, 'Other Expenses', 'Bad Debts/Write-Offs', 714000, 0, 710000, 'Bad Debts/Write-Offs', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(257, 'Other Expenses', 'FX Losses/Other Losses', 715000, 1, 700000, 'FX Losses/Other Losses', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(258, 'Other Income', 'Other Income', 80000, 1, NULL, 'Header for non-core revenue', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(259, 'Other Income', 'Miscellaneous Income', 810000, 1, 80000, 'Income not falling under defined revenue categories', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(260, 'Other Income', 'Rental Income', 811000, 0, 810000, 'Income from leasing property, space, or equipment', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(261, 'Other Income', 'Gain on Sale of Assets', 812000, 0, 810000, 'Net profit from selling fixed assets (e.g., vehicles, equipment)', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(262, 'Other Income', 'Foreign Exchange Gain', 813000, 0, 810000, 'Profit due to currency conversion differences', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(263, 'Other Income', 'Rebates and Discounts', 820000, 1, 80000, 'Header for earned discounts or rebates', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(264, 'Other Income', 'Purchase Discounts Earned', 821000, 0, 820000, 'Discounts received from suppliers (usually for early payment)', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(265, 'Other Income', 'Sales Rebates Earned', 822000, 0, 820000, 'Incentives or refunds received from volume purchases or loyalty programs', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(266, 'Year-End Adjustments & Closing Entries', 'Year-End Adjustments & Closing Entries', 900000, 1, NULL, 'Header for Year-End Adjustments & Closing Entries', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(267, 'Year-End Adjustments & Closing Entries', 'Adjusting Entries', 910000, 0, 900000, 'Header', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(268, 'Year-End Adjustments & Closing Entries', 'Accrued Expenses', 911000, 0, 910000, 'Expenses incurred but not yet recorded (e.g., utilities payable)', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(269, 'Year-End Adjustments & Closing Entries', 'Prepaid Expenses', 912000, 0, 910000, 'Expenses paid in advance (e.g., rent, insurance)', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(270, 'Year-End Adjustments & Closing Entries', 'Unearned Revenue', 913000, 0, 910000, 'Revenue received but not yet earned (liability)', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(271, 'Year-End Adjustments & Closing Entries', 'Accrued Revenue', 914000, 0, 910000, 'Income earned but not yet billed or received', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(272, 'Year-End Adjustments & Closing Entries', 'Closing Entries', 920000, 1, 900000, 'Header', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(273, 'Year-End Adjustments & Closing Entries', 'Income Summary', 921000, 0, 920000, 'Temporary holding account for total revenue and expenses', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(274, 'Year-End Adjustments & Closing Entries', 'Retained Earnings - Closing', 921100, 0, 920000, 'Where net income/loss is transferred after closing', '2025-04-11 16:02:40', '2025-04-11 16:02:40'),
(283, 'Assets', 'hello', 100010, 0, NULL, '', '2025-04-14 10:48:19', '2025-04-14 10:48:19'),
(284, 'Assets', 'gabriel', 100020, 0, NULL, '', '2025-04-14 10:52:23', '2025-04-14 10:52:23'),
(285, 'Revenue', 'Sales Discounts', 416000, 0, NULL, 'Contra-revenue for sales discounts', '2025-04-14 13:38:40', '2025-04-14 13:38:40'),
(286, 'Assets', 'wee', 100030, 0, NULL, '', '2025-04-14 14:47:58', '2025-04-14 14:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` enum('client','vendor') DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `type`, `email`, `phone`) VALUES
(1, 'John Doe', 'client', 'john@example.com', '09171234567'),
(2, 'Jane Smith', 'client', 'jane@example.com', '09181234567'),
(3, 'Acme Supplies', 'vendor', 'acme@supplies.com', '09221234567'),
(4, 'Global Imports', 'vendor', 'global@imports.com', '09231234567');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `location` varchar(150) DEFAULT NULL,
  `orders` int(11) DEFAULT 0,
  `spent` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `location`, `orders`, `spent`) VALUES
(1, 'Test Customer', 'test@example.com', '123 Test Street, Testville', 5, 999.99),
(2, 'Justine Dimalanta', 'dimajustine0@gmail.com', 'Olongapo', 100, 1.00),
(3, 'Dowelle Mon', 'mondowelle00@gmail.com', 'Gabaya', 500, 1.00),
(4, 'Miko Oliva', '202110207@gordoncollege.edu.ph', 'Meat and Eat', 5, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `Department_Id` int(11) NOT NULL,
  `Department` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`Department_Id`, `Department`) VALUES
(1234, 'Stafify'),
(1235, 'Sm Department'),
(1236, 'IT'),
(1237, 'Ningnangan'),
(1238, 'DOE'),
(1239, 'Spasify');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` int(11) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_presets`
--

CREATE TABLE `discount_presets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `is_default` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_rates`
--

CREATE TABLE `discount_rates` (
  `id` int(11) NOT NULL,
  `discount_name` varchar(100) NOT NULL,
  `discount_value` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `discount_rates`
--

INSERT INTO `discount_rates` (`id`, `discount_name`, `discount_value`, `created_at`) VALUES
(1, 'No Discount', '0', '2025-04-15 12:28:38'),
(2, 'Standard Discount', '10%', '2025-04-15 12:28:38'),
(3, 'Special Offer', '100', '2025-04-15 12:28:38'),
(4, 'Free', '100%', '2025-04-15 14:21:12');

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `category_name`, `created_at`) VALUES
(1, 'Office Supplies', '2025-05-09 03:56:23'),
(2, 'Transportation', '2025-05-09 03:56:23'),
(3, 'Meals and Entertainment', '2025-05-09 03:56:23'),
(4, 'Utilities', '2025-05-09 03:56:23'),
(5, 'Postage and Shipping', '2025-05-09 03:56:23'),
(6, 'Repairs and Maintenance', '2025-05-09 03:56:23'),
(7, 'Miscellaneous', '2025-05-09 03:56:23');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_db`
--

CREATE TABLE `inventory_db` (
  `Title` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Qty` int(11) NOT NULL,
  `Media` varchar(255) NOT NULL,
  `Item ID` int(11) NOT NULL,
  `Status` enum('pending','approved','rejected') NOT NULL,
  `Cost` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `Invoice_Id` int(11) NOT NULL,
  `Customer_Name` text NOT NULL,
  `Customer_Email` varchar(100) NOT NULL,
  `Billing_Address` varchar(100) NOT NULL,
  `Item_Name` varchar(100) NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  `Quantity` int(100) NOT NULL,
  `Discount` varchar(20) DEFAULT NULL,
  `Tax` float DEFAULT NULL,
  `Terms` text DEFAULT NULL,
  `Notes` varchar(100) NOT NULL,
  `invoice_mode` varchar(20) DEFAULT 'VAT',
  `tax_type_at_creation` varchar(50) DEFAULT 'VAT (12%)',
  `tax_id` int(11) DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`Invoice_Id`, `Customer_Name`, `Customer_Email`, `Billing_Address`, `Item_Name`, `Price`, `Quantity`, `Discount`, `Tax`, `Terms`, `Notes`, `invoice_mode`, `tax_type_at_creation`, `tax_id`, `discount_id`) VALUES
(132, 'Justine Dimalanta', 'dimalantajustine8@gmail.com', 'La Union', 'Nike Shoes', 100, 5, '10', 15, '', 'test lang', 'VAT', 'VAT (12%)', NULL, NULL),
(133, 'Miko Oliva', '202110207@gordoncollege.edu.ph', 'Meat and Eat', 'Inventory', 100000, 1, '5', 1, 'lopit', 'ewan', 'VAT', 'VAT (12%)', NULL, NULL),
(134, 'Justine', '202110893@gordoncollege.edu.ph', 'baliw', 'Keyboard', 150, 5, '1', 10, 'ewanq', '', 'VAT', 'VAT (12%)', NULL, NULL),
(136, 'Allen Lim', 'stafify@gmail.com', 'La Union', 'Keyboard', 150, 5, '10%', 10, 'test', '', 'VAT', 'VAT (12%)', NULL, NULL),
(137, 'Justine Dimalanta', 'dimalantajustine8@gmail.com', 'La Union Street, Brgy. Barretto\r\nLa Union', 'test', 123, 123, '0', 5, 'awawea', '', 'NON-VAT', 'Non-VAT (3%)', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `Location_Id` int(100) NOT NULL,
  `Location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`Location_Id`, `Location`) VALUES
(1, '0'),
(2, 'Subic'),
(3, 'Pampanga'),
(4, 'Barretto'),
(5, 'Sikret'),
(6, 'Olongapo');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_approvals`
--

CREATE TABLE `order_approvals` (
  `id` int(11) NOT NULL,
  `po_number` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `comment` text DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `method_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `method_name`, `created_at`) VALUES
(1, 'Cash', '2025-05-09 03:55:52'),
(2, 'Check', '2025-05-09 03:55:52'),
(3, 'Bank Transfer', '2025-05-09 03:55:52'),
(4, 'Credit Card', '2025-05-09 03:55:52'),
(5, 'Debit Card', '2025-05-09 03:55:52'),
(6, 'Mobile Payment', '2025-05-09 03:55:52');

-- --------------------------------------------------------

--
-- Table structure for table `petty_cash_voucher`
--

CREATE TABLE `petty_cash_voucher` (
  `voucher_id` int(11) NOT NULL,
  `voucher_number` varchar(50) NOT NULL,
  `date_issued` date NOT NULL,
  `payee_name` varchar(255) NOT NULL,
  `payee_email` varchar(255) NOT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `purpose` text NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `category_id` int(11) NOT NULL,
  `payment_method` varchar(50) DEFAULT 'Cash',
  `approved_by` varchar(255) DEFAULT NULL,
  `received_by` varchar(255) DEFAULT NULL,
  `receipt_attached` tinyint(1) DEFAULT 0,
  `notes` text DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_signed` tinyint(1) DEFAULT 0,
  `signature_token` varchar(255) DEFAULT NULL,
  `signature_date` datetime DEFAULT NULL,
  `signature_ip` varchar(45) DEFAULT NULL,
  `signature_image` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petty_cash_voucher`
--

INSERT INTO `petty_cash_voucher` (`voucher_id`, `voucher_number`, `date_issued`, `payee_name`, `payee_email`, `contact_number`, `department`, `position`, `purpose`, `amount`, `category_id`, `payment_method`, `approved_by`, `received_by`, `receipt_attached`, `notes`, `status`, `created_at`, `is_signed`, `signature_token`, `signature_date`, `signature_ip`, `signature_image`) VALUES
(3, '20250808-001', '2025-08-07', 'Justine', 'dimalantajustine8@gmail.com', '09616219737', 'test', 'test', 'testing', 123.00, 5, 'Bank Transfer', 'me', 'me', 0, 'test', 'pending', '2025-08-08 10:32:07', 0, NULL, NULL, NULL, NULL),
(5, '20251010-001', '2025-10-10', 'Justine', 'dimalantajustine8@gmail.com', '09616219737', 'asd', 'asd', 'asd', 213.00, 1, 'Bank Transfer', 'asd', 'da', 1, 'sdada', 'pending', '2025-10-10 06:47:49', 1, 'a438462a2ff91970b8879d2968254b98', '2025-10-10 08:49:52', '127.0.0.1', 'data:image/png;base64,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');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `media_url` varchar(200) DEFAULT NULL,
  `item_id` int(100) NOT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `location` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `type` enum('Tangible','Intangible') NOT NULL,
  `status` enum('In Use','For Repair','Disposed') NOT NULL DEFAULT 'In Use',
  `useful_life` int(11) DEFAULT NULL COMMENT 'Years of useful life',
  `depreciation_rate` decimal(5,2) DEFAULT NULL COMMENT 'Depreciation rate in %',
  `registration_date` date DEFAULT NULL,
  `registration_id` varchar(100) DEFAULT NULL,
  `asset_id` varchar(100) DEFAULT NULL,
  `requestor` varchar(100) DEFAULT NULL,
  `approver` varchar(100) DEFAULT NULL,
  `assigned_personnel` varchar(100) DEFAULT NULL,
  `asset_group` enum('Current','Non-Current') NOT NULL,
  `supplier_vendor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`title`, `description`, `category`, `price`, `qty`, `media_url`, `item_id`, `cost`, `location`, `department`, `type`, `status`, `useful_life`, `depreciation_rate`, `registration_date`, `registration_id`, `asset_id`, `requestor`, `approver`, `assigned_personnel`, `asset_group`, `supplier_vendor`) VALUES
('Round Dining Table', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', '', 200.00, 5, 'uploads/1755526951_Tate60inRndDiningTbl3QSSF23_3D_1200x1200.webp', 1316, 200.00, '', '', '', 'In Use', 6, 16.67, '2025-08-18', 'REG-20250818-5669', 'AST-202508-52229', '', '', '', '', ''),
('GeForce RTX 5090', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', '', 40000.00, 5, 'uploads/1755527045_Png.png', 1317, 40000.00, '', '', '', 'In Use', 6, 16.67, '2025-08-18', 'REG-20250818-2643', 'AST-202508-32673', '', '', '', '', ''),
('Tsunami Massage', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', '', 1000.00, 5, 'uploads/1755527135_TsunamiMassage_540x.jpg', 1318, 1000.00, '', '', '', 'In Use', 10, 10.00, '2025-08-18', 'REG-20250818-7472', 'AST-202508-28786', '', '', '', '', ''),
('IPS Gaming Monitor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', '', 3000.00, 15, 'uploads/1755527248_27M1N5200P_71-IMS-en_PH_800x.webp', 1319, 3000.00, '', '', '', 'In Use', 5, 20.00, '2025-08-18', 'REG-20250818-7234', 'AST-202508-27509', '', '', '', '', ''),
('Swedish Massage', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 'Hygiene', 0.00, 1, 'uploads/1755527344_SwedishMassage_23ab0c61-553d-4979-a0ed-738cccbd65be_540x.jpg', 1320, 1000.00, '0', 'Stafify', 'Intangible', 'In Use', 7, 14.29, '2025-08-18', 'REG-20250818-7955', 'AST-202508-91333', 'Amil Musa', 'Allen Lim', 'Miko Oliva', 'Non-Current', NULL),
('Office Desk', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 'Furniture', 0.00, 6, 'uploads/1755527468_jefferson2_1200x1200.webp', 1322, 1200.00, '0', 'Spasify', 'Tangible', 'In Use', 8, 12.50, '2025-08-18', 'REG-20250818-3546', 'AST-202508-38429', 'Alsherette Ramos', 'Allen Lim', 'Justine Dimalanta', 'Current', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` int(11) NOT NULL,
  `po_number` varchar(100) NOT NULL,
  `order_date` date DEFAULT NULL,
  `purchase_request_id` varchar(100) DEFAULT NULL,
  `delivery_location` varchar(255) DEFAULT NULL,
  `asset_type` varchar(100) DEFAULT NULL,
  `asset_category` varchar(100) DEFAULT NULL,
  `asset_name` text DEFAULT NULL,
  `asset_description` text DEFAULT NULL,
  `asset_quantity` int(11) DEFAULT NULL,
  `cost` decimal(15,2) DEFAULT NULL,
  `supplier_name` varchar(255) DEFAULT NULL,
  `preferred_payment_method` varchar(100) DEFAULT NULL,
  `requested_payment_terms` varchar(100) DEFAULT NULL,
  `expected_delivery_date` date DEFAULT NULL,
  `order_placed` datetime DEFAULT NULL,
  `payment_confirmed` datetime DEFAULT NULL,
  `shipped_out` datetime DEFAULT NULL,
  `order_received` datetime DEFAULT NULL,
  `completed` datetime DEFAULT NULL,
  `returned` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_orders`
--

INSERT INTO `purchase_orders` (`id`, `po_number`, `order_date`, `purchase_request_id`, `delivery_location`, `asset_type`, `asset_category`, `asset_name`, `asset_description`, `asset_quantity`, `cost`, `supplier_name`, `preferred_payment_method`, `requested_payment_terms`, `expected_delivery_date`, `order_placed`, `payment_confirmed`, `shipped_out`, `order_received`, `completed`, `returned`, `status`, `notes`) VALUES
(124, 'PO-20251022-17256', '2025-10-22', 'REQ-20251022-d2f85', 'test', 'test', 'test', 'XD', 'test', 5, 122.00, 'Justine', 'Maya', 'weqwe', '2025-10-30', '2025-10-22 21:33:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_requests`
--

CREATE TABLE `purchase_requests` (
  `id` int(11) NOT NULL,
  `request_date` date NOT NULL,
  `request_id` varchar(50) NOT NULL,
  `requestor_name` varchar(255) NOT NULL,
  `requestor_location` varchar(255) NOT NULL,
  `requestor_department` varchar(255) NOT NULL,
  `asset_type` varchar(100) NOT NULL,
  `asset_category` varchar(100) NOT NULL,
  `asset_name` varchar(255) NOT NULL,
  `asset_description` text DEFAULT NULL,
  `asset_quantity` int(11) DEFAULT 1,
  `estimated_cost` decimal(12,2) DEFAULT NULL,
  `supplier_vendor` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  `approver_comment` text DEFAULT NULL,
  `reviewed_by` varchar(255) DEFAULT NULL,
  `reviewed_date` datetime DEFAULT NULL,
  `archived` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_requests`
--

INSERT INTO `purchase_requests` (`id`, `request_date`, `request_id`, `requestor_name`, `requestor_location`, `requestor_department`, `asset_type`, `asset_category`, `asset_name`, `asset_description`, `asset_quantity`, `estimated_cost`, `supplier_vendor`, `status`, `approver_comment`, `reviewed_by`, `reviewed_date`, `archived`) VALUES
(1, '2025-05-08', 'REQ-20250508-6f099', '123', '123', '123', '312', '123', '123132', '13123', 1132, 10.00, '123', 'Pending', NULL, NULL, NULL, 1),
(2, '2025-10-22', 'REQ-20251022-1ff04', 'Justine DImalanta', 'test', 'test', 'test', 'test', 'test', 'test', 5, 100.00, 'Stafify', 'Approved', 'ocakes', 'Miko2', '2025-10-22 21:11:44', 0),
(3, '2025-10-22', 'REQ-20251022-d2f85', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 1, 50.00, 'test', 'Approved', 'test', 'Miko1', '2025-10-22 21:17:08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales_toolkit`
--

CREATE TABLE `sales_toolkit` (
  `sales_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sales_title` varchar(255) NOT NULL,
  `form_url` text DEFAULT NULL,
  `response_url` text DEFAULT NULL,
  `icon` varchar(255) DEFAULT 'communication.gif',
  `type` enum('Form+Sheet','Form','Sheet','Video','Slides','Folder') DEFAULT 'Form+Sheet',
  `is_approved` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_toolkit`
--

INSERT INTO `sales_toolkit` (`sales_id`, `user_id`, `sales_title`, `form_url`, `response_url`, `icon`, `type`, `is_approved`, `created_at`, `updated_at`) VALUES
(3, 125, 'asd', '', 'https://docs.google.com/spreadsheets/d/1_gr7kXx3t6JxY_QxV_fX8_zWC1D8WC5yf8NOCMDShjQ/edit?gid=0#gid=0', 'communication.gif', 'Sheet', 0, '2025-10-10 05:26:29', '2025-10-10 05:26:29'),
(4, 125, 'asd', '', 'https://docs.google.com/spreadsheets/d/1_gr7kXx3t6JxY_QxV_fX8_zWC1D8WC5yf8NOCMDShjQ/edit?gid=0#gid=0', 'communication.gif', 'Sheet', 0, '2025-10-10 05:26:31', '2025-10-10 05:26:31');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `numbering` int(11) NOT NULL,
  `supplier_type` varchar(50) DEFAULT NULL,
  `materials_type` varchar(50) DEFAULT NULL,
  `name` text NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `contact_person` text DEFAULT NULL,
  `bank_name` text DEFAULT NULL,
  `bank_type` text DEFAULT NULL,
  `account_name` text DEFAULT NULL,
  `account_number` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `numbering`, `supplier_type`, `materials_type`, `name`, `address`, `email`, `contact`, `contact_person`, `bank_name`, `bank_type`, `account_name`, `account_number`) VALUES
(1, 1, 'vendor', 'finished goods', 'Justine Dimalanta', 'La Union Street, Brgy. Barretto', 'dimalantajustine8@gmail.com', '123', '123', '123123', '123', '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `tax_presets`
--

CREATE TABLE `tax_presets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `is_default` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tax_presets`
--

INSERT INTO `tax_presets` (`id`, `name`, `rate`, `is_default`) VALUES
(1, '', 10.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int(11) NOT NULL,
  `tax_name` varchar(50) DEFAULT NULL,
  `tax_rate` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tax_rates`
--

INSERT INTO `tax_rates` (`id`, `tax_name`, `tax_rate`) VALUES
(1, 'No Tax', 0.00),
(2, 'Standard VAT', 12.00),
(3, 'Reduced VAT', 5.00),
(4, 'try', 1.00);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `reference_number` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `transaction_type` enum('deposit','withdrawal','adjustment') NOT NULL,
  `method` varchar(50) DEFAULT NULL,
  `payee` varchar(255) DEFAULT NULL,
  `bank_account_id` int(11) NOT NULL,
  `status` enum('cleared','pending','outstanding') NOT NULL,
  `adjustment_type` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `transaction_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `date`, `reference_number`, `description`, `amount`, `transaction_type`, `method`, `payee`, `bank_account_id`, `status`, `adjustment_type`, `created_at`, `transaction_date`) VALUES
(19, '0000-00-00', '123', 'test', 567.00, 'deposit', 'Check', NULL, 16, 'pending', NULL, '2025-08-18 06:11:38', '2025-08-18'),
(20, '0000-00-00', '788', 'pay', 678.00, 'deposit', 'Bank transfer', NULL, 7, 'pending', NULL, '2025-08-18 06:12:00', '2025-08-18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `user_email` varchar(150) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `country` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_pin` varchar(50) DEFAULT NULL,
  `company` varchar(100) NOT NULL,
  `user_dept` varchar(100) DEFAULT 'Unassigned',
  `user_position` varchar(100) DEFAULT 'Unassigned',
  `is_archived` tinyint(1) DEFAULT 0,
  `access_level` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `image_path` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `full_name`, `user_email`, `phone_number`, `address`, `country`, `user_password`, `user_pin`, `company`, `user_dept`, `user_position`, `is_archived`, `access_level`, `created_at`, `image_path`) VALUES
(123, 'tintin21', 'Son Calcy', 'dimalantajustine8@gmail.com', '09388035079', 'La Union', 'Philippines', '12345', '2423', 'Stafify', 'Stafify', 'Admin', 0, 1, '2025-04-09 16:00:00', NULL),
(124, 'justinedima21', 'Justine Dimalanta', 'dimajustine0@gmail.com', '09989139488', 'La Union', 'Philippines', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', '', 'Stafify', 'Unassigned', 'God', 0, 1, '2025-04-10 09:57:16', 'uploads/akame.jpg'),
(125, '_scytine', 'Justine Perez', 'justineperezz0215@gmail.com', '09616219737', 'na, na', 'Philippines', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', '', 'na', 'Unassigned', 'God', 0, 1, '2025-05-08 08:58:11', 'uploads/akame.jpg'),
(126, 'Celestine', 'Celestine Vega', 'celestinevega21@gmail.com', '09616219737', 'La Union Street, Brgy0073 Salang St Matain, . Barretto', 'Canada', 'e606e38b0d8c19b24cf0ee3808183162ea7cd63ff7912dbb22b5e803286b4446', '', 'Salinterpret', 'Unassigned', 'Unassigned', 0, 0, '2025-08-18 10:01:30', NULL),
(127, 'Amil21', 'Amil Musa', 'amilmusa@gmail.com', '09616219737', 'Sbfz', 'Canada', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', '', 'Stafify', 'Unassigned', 'Unassigned', 0, 3, '2025-08-18 14:37:21', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_payable`
--
ALTER TABLE `accounts_payable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_id` (`contact_id`);

--
-- Indexes for table `accounts_receivable`
--
ALTER TABLE `accounts_receivable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_id` (`contact_id`);

--
-- Indexes for table `acknowledgment_receipt`
--
ALTER TABLE `acknowledgment_receipt`
  ADD PRIMARY KEY (`Receipt_Id`),
  ADD KEY `Payment_Method_Id` (`Payment_Method_Id`);

--
-- Indexes for table `active_banks_ph`
--
ALTER TABLE `active_banks_ph`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`Area_Id`);

--
-- Indexes for table `asset_assignments`
--
ALTER TABLE `asset_assignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_reco`
--
ALTER TABLE `bank_reco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_id` (`bank_id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Category_Id`);

--
-- Indexes for table `chart_of_accounts`
--
ALTER TABLE `chart_of_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_number` (`account_number`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`Department_Id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_presets`
--
ALTER TABLE `discount_presets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_rates`
--
ALTER TABLE `discount_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`Invoice_Id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`Location_Id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_approvals`
--
ALTER TABLE `order_approvals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `petty_cash_voucher`
--
ALTER TABLE `petty_cash_voucher`
  ADD PRIMARY KEY (`voucher_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_requests`
--
ALTER TABLE `purchase_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_toolkit`
--
ALTER TABLE `sales_toolkit`
  ADD PRIMARY KEY (`sales_id`),
  ADD KEY `user_id_index` (`user_id`),
  ADD KEY `is_approved_index` (`is_approved`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_presets`
--
ALTER TABLE `tax_presets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_account_id` (`bank_account_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_payable`
--
ALTER TABLE `accounts_payable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `accounts_receivable`
--
ALTER TABLE `accounts_receivable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `acknowledgment_receipt`
--
ALTER TABLE `acknowledgment_receipt`
  MODIFY `Receipt_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `active_banks_ph`
--
ALTER TABLE `active_banks_ph`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `Area_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1243;

--
-- AUTO_INCREMENT for table `asset_assignments`
--
ALTER TABLE `asset_assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bank_reco`
--
ALTER TABLE `bank_reco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `Category_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1247;

--
-- AUTO_INCREMENT for table `chart_of_accounts`
--
ALTER TABLE `chart_of_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `Department_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1240;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_presets`
--
ALTER TABLE `discount_presets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_rates`
--
ALTER TABLE `discount_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `Invoice_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `Location_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_approvals`
--
ALTER TABLE `order_approvals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `petty_cash_voucher`
--
ALTER TABLE `petty_cash_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `item_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1324;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `purchase_requests`
--
ALTER TABLE `purchase_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sales_toolkit`
--
ALTER TABLE `sales_toolkit`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tax_presets`
--
ALTER TABLE `tax_presets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_payable`
--
ALTER TABLE `accounts_payable`
  ADD CONSTRAINT `accounts_payable_ibfk_1` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`);

--
-- Constraints for table `accounts_receivable`
--
ALTER TABLE `accounts_receivable`
  ADD CONSTRAINT `accounts_receivable_ibfk_1` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`);

--
-- Constraints for table `acknowledgment_receipt`
--
ALTER TABLE `acknowledgment_receipt`
  ADD CONSTRAINT `acknowledgment_receipt_ibfk_1` FOREIGN KEY (`Payment_Method_Id`) REFERENCES `payment_methods` (`id`);

--
-- Constraints for table `bank_reco`
--
ALTER TABLE `bank_reco`
  ADD CONSTRAINT `bank_reco_ibfk_1` FOREIGN KEY (`bank_id`) REFERENCES `active_banks_ph` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `petty_cash_voucher`
--
ALTER TABLE `petty_cash_voucher`
  ADD CONSTRAINT `petty_cash_voucher_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `expense_categories` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`bank_account_id`) REFERENCES `bank_reco` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
