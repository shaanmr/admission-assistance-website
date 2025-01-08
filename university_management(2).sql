-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2023 at 06:30 PM
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
-- Database: `university_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic`
--

CREATE TABLE `academic` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `university_id` int(11) NOT NULL,
  `web` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `academic`
--

INSERT INTO `academic` (`id`, `name`, `university_id`, `web`) VALUES
(1, '                                                        Computer Science & Engineering (UITS)                                                        ', 1, '                                                      https://uits.edu.bd/department-of-computer-science-engineering/                                                          '),
(2, 'Department of Civil Engineering', 1, 'https://uits.edu.bd/department-of-civil-engineering/'),
(3, 'Department of Accounting & Information Systems', 2, ''),
(4, '                            Computer Science & Engineering (BRAC)                            ', 6, '                                                        ');

-- --------------------------------------------------------

--
-- Table structure for table `achievement`
--

CREATE TABLE `achievement` (
  `id` int(11) NOT NULL,
  `university_id` int(11) NOT NULL,
  `academic_id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `achievement`
--

INSERT INTO `achievement` (`id`, `university_id`, `academic_id`, `description`, `image`) VALUES
(1, 1, 1, 'UITS Secured 2nd Position In National Inter University Cyber Drill Competition Among All The Universities Of Bangladesh', 'uploads/achivement1.jpeg'),
(2, 1, 1, 'হ্যাকাথন ”কোড ফর অ্যা কজ” ২.০ এ ইউআইটিইএস এর সাফল্য', 'uploads/achivement2.jpg'),
(3, 1, 1, 'Googler Meets With The Student Of UITS', 'uploads/achivement3.jpg'),
(4, 1, 1, 'Successful Graduate Of The CSE&IT Department', 'uploads/achivement4.jpg'),
(5, 1, 1, 'Outstanding Performance In Programming Contest (NCPC)', 'uploads/achivement5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `university_id` int(11) NOT NULL,
  `academic_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `university_id`, `academic_id`, `description`, `image`) VALUES
(1, 1, 1, 'UITS Computer Club', 'uploads/computerclub.jpg'),
(2, 1, 1, 'Epic Cyber Clash                            ', 'uploads/ctf.png'),
(3, 1, 1, 'ICPC Asia Dhaka Regional', 'uploads/icpc.png'),
(4, 1, 1, 'Zero One Fest', 'uploads/zeroone.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `administrative`
--

CREATE TABLE `administrative` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `web` varchar(255) NOT NULL,
  `university_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administrative`
--

INSERT INTO `administrative` (`id`, `name`, `web`, `university_id`) VALUES
(1, '                                                        Office of the Board of Trustees                                                   ', '                                                        https://uits.edu.bd/office-of-the-board-of-trustees/                                                        ', 1),
(2, 'Office of the Vice Chancellor', 'https://uits.edu.bd/office-of-the-vice-chancellor/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `web` varchar(255) NOT NULL,
  `university_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`id`, `name`, `web`, `university_id`) VALUES
(1, '                                                        Undergraduate Programs                   ', '                                                        https://uits.edu.bd/undergraduate-programs/                                                        ', 1),
(2, 'Graduate Programs', 'https://uits.edu.bd/graduate-programs/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admission_go`
--

CREATE TABLE `admission_go` (
  `id` int(11) NOT NULL,
  `university_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admission_go`
--

INSERT INTO `admission_go` (`id`, `university_id`, `name`, `title`, `description`, `date`, `link`) VALUES
(2, 2, 'University of Dhaka', 'DU', '', '23 February, 2024', 'https://admission.eis.du.ac.bd/'),
(3, 4, '                                                        Jagannath University                                                        ', '                                                        JnU                                                        ', '                                                                                                                ', '                                                   12 February, 2024                                     ', '                                                                               '),
(4, 1, 'University of Information Technology & Sciences ', 'UITS', '', '20 January, 2024', ''),
(5, 5, '                                                        The University of Rajshahi                                                        ', '                                                        RU                                                        ', '                                                                                                                ', '                                                                                    23 February, 2024                     ', '                                                                                                                '),
(6, 9, '                            Comilla University                            ', '                            Comilla University                            ', '                                                        ', '                            15 February, 2024', '                                                        '),
(8, 10, 'Islamic University, Bangladesh', '', '', '1 February, 2024 ', ''),
(9, 11, '                            Khulna University                             ', '                                       KU                 ', '                                                        ', '                            3 February, 2024', '                                                        ');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `id` int(11) NOT NULL,
  `university_id` int(11) NOT NULL,
  `academic_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `post` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`id`, `university_id`, `academic_id`, `name`, `designation`, `post`, `image`) VALUES
(1, 1, 1, 'Md. Zahidul Islam', 'Assistant Director', 'Bangladesh Telecommunication Regulatory Commission (BTRC)', 'uploads/zahidul alumni.jpg'),
(2, 1, 1, 'MD SOHEL RANA', 'Doctoral Research Student', 'Shanghai Jiao Tong University', 'uploads/Sohel-Rana-1-1-150x150.jpg'),
(3, 1, 1, 'Mahmuda Khatun Mishu', 'Research Fellow', 'Institute of Sustainable Energy at Universiti Tenaga Nasional of Malaysia', 'uploads/mishu-150x150.png'),
(4, 1, 1, 'Md. Rokonuzzaman', 'PhD Research Fellow', 'Institute of Sustainable Energy of The National Energy University of Malaysia', 'uploads/testimonial5-150x150.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `university_id` int(11) NOT NULL,
  `academic_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`id`, `university_id`, `academic_id`, `image`) VALUES
(1, 1, 1, 'uploads/Screenshot (70).png'),
(2, 1, 1, 'uploads/Screenshot (71).png'),
(3, 1, 1, 'uploads/Screenshot (72).png'),
(4, 1, 1, 'uploads/Screenshot (73).png'),
(5, 1, 1, 'uploads/Screenshot (74).png'),
(6, 1, 1, 'uploads/Screenshot (75).png'),
(7, 1, 1, 'uploads/Screenshot (76).png'),
(8, 1, 1, 'uploads/Screenshot (77).png'),
(9, 1, 1, 'uploads/Screenshot (78).png'),
(10, 1, 1, 'uploads/Screenshot (79).png'),
(11, 1, 1, 'uploads/Screenshot (80).png'),
(12, 1, 1, 'uploads/Screenshot (81).png'),
(13, 1, 1, 'uploads/Screenshot (82).png'),
(14, 1, 1, 'uploads/Screenshot (83).png');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`) VALUES
(1, 'CSE   ', 'Computer Science Engineering                ', 'uploads/cse.png'),
(2, 'BBA', 'Bachelor of Business Administration', 'uploads/bba.png'),
(3, 'Law                                                                     ', 'Bachelor of Laws                                                                                                      ', 'uploads/law.png'),
(4, 'EEE', 'Electrical and Electronic Engineering   ', 'uploads/eee.png'),
(5, 'CIVIL', 'construction investigation and various information levelling                   ', 'uploads/civil.png'),
(6, 'English', 'Bachelor of English', 'uploads/english.jpg'),
(7, 'PHARMACY', 'Bachelor of Pharmacy', 'uploads/fermacy.png');

-- --------------------------------------------------------

--
-- Table structure for table `compare`
--

CREATE TABLE `compare` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `compare`
--

INSERT INTO `compare` (`id`, `subject_id`, `name`) VALUES
(1, 1, 'CSE'),
(2, 5, 'CSE   '),
(3, 2, 'AIS');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `text`) VALUES
(1, 'Ritu', 'ritu@gmail.com', 1970950845, 'A medical college or medical association is a trade association that brings together practitioners of a particular geographical area'),
(2, 'Iaj', '70iaj.sentinel@gmail.com', 1717950845, 'uryjwkfhjwfiw;hafo;hifhwoie');

-- --------------------------------------------------------

--
-- Table structure for table `dept_review`
--

CREATE TABLE `dept_review` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `full_title` varchar(255) NOT NULL,
  `about` longtext NOT NULL,
  `why` longtext NOT NULL,
  `need` longtext NOT NULL,
  `important` longtext NOT NULL,
  `work` longtext NOT NULL,
  `review_name` varchar(255) NOT NULL,
  `review_date` date NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dept_review`
--

INSERT INTO `dept_review` (`id`, `title`, `full_title`, `about`, `why`, `need`, `important`, `work`, `review_name`, `review_date`, `image`) VALUES
(1, ' CSE                                                        ', 'Computer Science & Engineering                                     ', '   বাংলাদেশে অত্যান্ত  ডিমান্ডেবল ও জনপ্রিয় সাবজেক্টগুলোর মধ্যে অন্যতম একটি নাম হলো CSE (Computer Science & Engineering)।এ এটি শুধু বাংলাদেশেই না সারা বিশ্বে জনপ্রিয়। কারন বর্তমান প্রযুক্তির যুগে কম্পিউটার সাইন্স ছাড়া চিন্তা করাও যায় না। তাই এই সাবজেক্ট এর কদর সারা বিশ্বেই রয়েছে । তাই সিএস‌ই ইন্জিনিয়ারদের কদর‌ই আলাদা। আর বর্তমান সময়ে বাংলাদেশে প্রতিনিয়ত প্রযুক্তির ব্যবহারের দিকে ঝুঁকে পড়ছে। তাই CSE ইন্জিনিয়ারিং এর গুরুত্ব‌ই আলাদা।                                                         ', 'আমরা আগেই জেনেছি যে  CSE এর চাহিদা সারা বিশ্বজুরে বয়েছে । তাই এখানে অনেক ভালো কিছু করতে গেলে সবার আগে যে জিনিসটা লাগবে সেটা হলো ধৈর্য। কারন এখানে ধৈর্য ধরে কোডিং করতে হয়।  তারপরে হলো দক্ষতা অর্জন। এখানে CGPA এতোটা ম্যাটার করেনা যদি তোমার দক্ষতা ভালো থাকে। দক্ষতাই হলো প্রধান অ‌শ্র। তোমাকে কোডিং এর মজাটা জানতে হবে।  তাছাড়া যদি  তোমার কোডিং এর প্রতি ভালোবাসা থাকে তাহলেই হবে। এই  CSE সাবজেক্টটা ইঞ্জিনিয়ারিং ও প্রযুক্তি বিশ্ববিদ্যালয়গুলো ছাড়াও যে কোন পাবলিক বিশ্ববিদ্যালয় এ পড়ানো হলেও অন্যান্য সাবজেক্ট থেকে CSE সাবজেক্টটির অনেক বেশি পার্থক্য রয়েছে। তাই CSE সম্পর্কে বিস্তারিত না জেনে সাবজেক্ট নেওয়াটা ঠিক না। কারণ তোমাকে আগে দেখতে হবে যে তুমি এই সাবজেক্ট এর সাথে মানিয়ে নিতে পারবে কি না।                                                         ', '১. গণিতের উপর দক্ষতা, ২.  উদ্ভাবনী চিন্তা নতুন কিছু করার,  ৩. প্রোগ্রামিং করার ইচ্ছা  এবং ধৈর্য্য।                                                        ', 'সবকিছু মিলিয়ে বর্তমান বাংলাদেশ এখন ডিজিটাল বাংলাদেশ। ত‌ই এই ডিজিটাল বাংলাদেশ রূপকল্প বাস্তবায়নের জন্য সবচেয়ে বেশি দরকার সিএস‌ই ইন্জিনিয়ার। বাংলাদেশের বর্তমান সময়ের উন্নয়ন প্রকল্প  প্রযুক্তির মাধ্যমেই হচ্ছে। এর সবচেয়ে ভালো উদাহরণ হলো বঙ্গবন্ধু স্যাটেলাইট। আমাদের দেশে এখনো চাহিদার তুলনায় দক্ষ কম্পিউটার সায়েন্স ইন্জিনিয়ার  গ্র্যাজুয়েট অনেক কম। উন্নয়নশীল দেশ হিসেবে বাংলাদেশে তথ্য-প্রযুক্তির ব্যবহার বাড়ছে। তাই প্রতিটি সেক্টরের‌ই দরকার পড়ছে কম্পিউটার ইঞ্জিনিয়ার এর। সেই  সাথে সাথে বাংলাদেশ শিল্পে আধুনিকায়ন হচ্ছে। পরমাণু শক্তি কমিশন, Satellite Transmission থেকে Traffic Controlling, E-governance, রেল যোগাযোগ সহ সকল ক্ষেত্রেই কম্পিউটার এর ব্যবহার দিন দিন বাড়ছে। ফলে সকল ক্ষেত্রেই CSE এর চাহিদা প্রচুর। এর ফলে তৈরি হচ্ছে অফুরন্ত কর্মক্ষেত্র। তাই একজন দক্ষ কম্পিউটার ইঞ্জিনিয়ার এর কোনো ভয় নেই যে সে কর্মক্ষেত্রে সফল হতে পারবে না।                                                         ', '◾বিভিন্ন ফার্মে Software Engineer & ◾Programmer, IT Professional হতে পারবে।  ◾সামরিক বাহিনী কম্পিউটার প্রকৌশলী হিসেবে যোগ দিতে পারবে।  ◾সকল আধুনিক শিল্পকারখানায় প্রসেস কন্ট্রোলিং এ যোগ দিতে পারবে।  ◾সরকারী বিভিন্ন বিভাগ- যেমন বিদ্যুৎজনস্বাস্থ্য অধিদপ্তর, উন্নয়ন অধিদপ্তর, পল্লীবিদ্যুতায়ন বোর্ড,  গণপূর্ত বিভাগ, দূর্যোগ ব্যবস্থাপনা অধিদপ্তর, পরিবেশ অধিদপ্তর, আবহাওয়া অধিদপ্তর প্রভৃতিতে কম্পিউটার প্রকৌশলী হিসেবে। ◾Nasa, সার্নের মত বিভিন্ন বিখ্যাত গবেষনা ইন্সটিটিউটে। এছাড়া সরকারী ও প্রাইভেট বিশ্ববিদ্যালয়ের শিক্ষকতা তো আছেই। ◾Network Administration, System Analyst. ◾Web Mastering & Developing Company ◾Graphics Designer. ◾Film Industry তে Simulation & Animation ডিরেক্টর। ◾Microsoft, Google, Yahoo, Facebook, Intel এর মত জায়ান্ট কোম্পানিগুলোতে। ◾বিভিন্ন টেলিকমিউনিকেশন কম্পানিতে।                                                        ', ' Eva                                                       ', '2023-11-30', 'uploads/cse.jpg'),
(2, 'EEE', 'Electrical and electronic Engineering', 'ইইই হলো Electrical and Electronic Engineering. বর্তমান বাংলাদেশের ইঞ্জিনিয়ারিং বিষয়গুলোর মধ্যে ইইই বা EEE অন্যতম টপ লেভেলের একটি সাবজেক্ট । বর্তমান বিশ্ব ও বাংলাদেশের চারদিকে ইলেক্ট্রনিক্সের বিপ্লব দেখে নিশ্চয়ই এই সাবজেক্ট যারা পড়ে তাদের গুরুত্ব বা চাহিদা যে অতুলনীয় ও আকাশচুম্বী সে কথা নিশ্চই কাকে বলে দিতে হবে না।  ইলেক্ট্রিসিটি ছাড়া যদি বিশ্ব অচল হয় তবে ইইই ছাড়াও তাই। কারণ ইলেক্ট্রিক্যাল ইঞ্জিনিয়ার না থাকলে বিশ্বের অন্যতম শক্তি বিদুৎ এর রক্ষণাবেক্ষণ এর কাজ করার মতো কেউ থাকবে না। পুরো পৃথিবী অচল হয়ে পড়বে। তাই নিঃসন্দেহে এটি একটি গুরুত্বপূর্ণ সাবজেক্ট যা দেশের উন্নয়নে ব্যাপক ভূমিকা পালন করে। ', 'তোমাদের যাদের এইচএসসিতে প্রিয় বিষয়  Math বা Physics হয়ে থাকে তাহলে তোমাদের সবথেকে প্রিয় ইন্জিনিয়াররিং হবার কথা ইইই। কারণ গণিত ও পদার্থবিজ্ঞান ই হলো EEE এর মূল ভিত্তি। Math বা Physics যাদের ভালো লাগে তাদের  EEE সাবজেক্ট  পড়া নিয়ে কোন ভয় নেই। নিঃসন্দেহে তোমরা এখানে খুব সহজেই মানিয়ে নিতে পারবে। কোনো সমস্যা হবে না।  তোমদের যদি গণিত, পদার্থবিজ্ঞান এর  Equation Solve করতে মজা লাগে, ফিজিক্স সেকেন্ড পেপারের বিদ্যুতের চ্যাপ্টারগুলো যদি তোমার কাছে অনেক ভালো  লাগে, তাহলে ইইই তোদের কাছে একদম সহজ মনে হবে, হতাশ হবে না কোনদিন। ইলেক্ট্রনিক্স  সার্কিট নিয়ে যাদের ঘাটাঘাটি করতে মজা লাগে, রোধের সমান্তরাল সন্নিবেশ, ‌শ্রেনী সন্নিবেশ,  হুইটস্টোন কার্শফের ম্যাথ করতে যাদের ভালো লাগে , আবারো তাদের বলবো তোমরা  ইইই নাও। তোমার যদি উদ্ভাবনী ক্ষমতা থাকে, আর থাকে লেগে থাকার ইচ্ছা তবে তুমি ইইই পড়ে অনেক বড় কিছু করে দেখাতে পারবে। ইঞ্জিনিয়ারিং বা প্রকৌশলী, নিজের উদ্ভাবনী ক্ষমতা  সবচেয়ে চমকপ্রদভাবে দেখানোর উপযুক্ত জায়গা হলো ইলেক্ট্রিক্যাল এন্ড ইলেক্ট্রনিক ইঞ্জিনিয়ারিং। আপাতদৃষ্টিতে দেখতে যেমন মনে হয়, ইইই আসলে তেমন ছোট পরিসরের কোন সাবজেক্ট না। এর পরিধি ব্যাপক, ক্ষেত্র অসীম। ', 'বিদ্যুৎ উৎপাদন করা, স্থানান্তর করা ও বিতরন করা এবং এর সাথে সম্পর্কিত যন্ত্র যেমন : ট্রান্সফর্মার, জেনারেটর, বিভিন্ন ইলেক্ট্রনিক্স যন্ত্র,  মোটর প্রভৃতি ডিজাইন ও তৈরি করা নিয়েই ইলেক্ট্রিক্যাল ইঞ্জিনিয়ারিং। এছাড়া মাইক্রোইলেক্ট্রনিক্স, ন্যানোটেকনোলজি, টেলিকম্যুনিকেশন প্রভৃতি বিষয়ও এই সাবজেক্টে পড়ানো হয়। চাপ, তাপমাত্রা, প্রবাহ ইত্যাদি ফিজিক্যাল কোয়ান্টিটি পরিমাপের সেন্সর ও মিটার ডিজাইন নিয়ে কাজ করা ইন্সট্রুমেন্টেশন ইঞ্জিনিয়ারিং ও EEE বিষয়ের অন্তর্ভুক্ত। অত্যাধুনিক কম্পিউটার হার্ডওয়্যার ডিজাইন ও মেশিন ল্যাঙ্গুয়েজের ব্যবহারও এই বিষয়ে পড়তে হয়। বিভিন্ন ধরনের IC দিয়ে তৈরি যন্ত্র  যেমন : ট্রানজিস্টার, ডায়োড, ট্রান্সমিটার, রেডিও-টেলিভিশন থেকে শুরু করে স্মার্টফোন, আইপ্যাড, নোটপ্যাড, ল্যাপটপ তৈরি ও ডিজাইন নিয়ে কাজ হচ্ছে ইলেক্ট্রনিক্স ইঞ্জিনিয়ারিং।', 'ইইই একটি চাহিদাসম্পন্ন জনপ্রিয় সাবজেক্ট। যে সকল বিষয়ের ব্যাপক চাহিদা অতীতেও সব সময় ছিল, বর্তমানেও আছে এবং ভবিষ্যতেও থাকবে, তার মধ্যে EEE একটি। চারদিকে ইলেক্ট্রনিক্সের বিপ্লব দেখে নিশ্চয়ই এই সাবজেক্ট যারা পড়ে তাদের গুরুত্ব অনেক। সেটা সবার‌ই জানা।  গ্লোবাল পজিশনিং সিস্টেম থেকে শুরু করে বিদ্যুৎশক্তি উৎপাদন পর্যন্ত তড়িৎ প্রকৌশলীরা প্রযুক্তির একটি বিশাল স্থান দখল করে আছেন। তারা বৈদ্যুতিক ব্যবস্থা এবং ইলেকট্রনিক যন্ত্রাংশের নকশা প্রণয়ন, আবিষ্কার বা উদ্ভাবন, নিরীক্ষণ করা এবং রক্ষণাবেক্ষণ করে থাকেন। টেলিযোগাযোগ ব্যবস্থার নকশা প্রণয়ন করতে পারেন, বিদ্যুৎ উৎপাদন কেন্দ্রের কার্যক্রম দেখাশুনা করতে পারেন, ঘরবাড়ির আলো ও বিদ্যুৎ বন্টন ব্যবস্থা দেখাশুনা করতে পারেন, গৃহকর্মে ব্যবহার্য যন্ত্রের নকশা প্রণয়ন করতে পারেন অথবা শিল্পকারখানার যন্ত্রপাতির বৈদ্যুতিক নিয়ন্ত্রণ প্রতিষ্ঠা করতে পারেন।  EEE হলো একটা Everlasting Subject. যতদিন পৃথিবী টিকে থাকবে অতদিন এর ডিমান্ড কমবে না। এই সাবজেক্ট পড়ে দেশে থাকতে পারলে ভালো, যদি তা সম্ভব না হয়, তোমার জন্য আছে বাইরে যেয়ে পড়াশোনা করার অফুরন্ত সুযোগ ও ক্ষেত্র। দেশে বিদেশে সবজায়গাতেই তোমার সম্মানজনক অবস্থান থাকবে। চাকরি নেই, হাজার হাজার স্টুডেন্ট হয়ে গেছে, এমন শোনা কথায় কান দিতে যেয়ো না। তোমার যদি যোগ্যতা আর মেধা থাকে, তবে EEE পড়ে তোমাকে একদিনও বসে থাকতে হবে না। তুমি ঠিকই তোমার Deserving পজিশনে যেতে পারবে।', 'ইলেকট্রনিক যন্ত্রাংশ তৈরির কারখানার পরিষ্কার পরিচ্ছন্ন অত্যাধুনিক গবেষণাগারে যেমন তড়িৎ প্রকৌশলীদেরকে দেখা যায়, তেমনি তড়িৎ প্রকৌশলীদেরকে পাওয়া যায় কোন পরামর্শ প্রদানকারী সংস্থার কর্মকর্তা হিসেবে অথবা কোন ভূ-গর্ভস্থ খনিতে। কর্মক্ষেত্রে তড়িৎ প্রকৌশলীগনকে প্রায়ই বিজ্ঞানী, ইলেকট্রিশিয়ান, কম্পিউটার প্রোগ্রামার বা অন্যান্য প্রকৌশলী ইত্যাদি বিভিন্ন পেশার লোকজনদের কাজকর্ম দেখাশোনা করতে হয়।', 'Zalish', '2023-11-30', 'uploads/eee.jpg'),
(3, '                                                                                    Civil                                                                               ', '                                                                                    Civil Engineering                                                                                    ', '                             পরিকল্পনা, ডিজাইন, গঠন এবং রক্ষনাবেক্ষন করার কাজ করের সিভিল ইঞ্জিনিয়ার। সিভিল ইঞ্জিনিয়ার জরিপের কাজ করে থাকে, প্রযুক্তিগত প্রতিবেদন দেয়, এমনকি প্রকল্প ব্যবস্হাপক এর কাজও করে থাকে। সিভিল ইঞ্জিনিয়ার এর পরিসর যেহেতু সময়ের সাথে সাথে সিভিল ইঞ্জিনিয়ার এর পরিসর বাড়ছে তাই এর অনেক শাখা বের হয়েছে। এদের উল্লেখযোগ্য হলক স্ট্রাকচারাল, জিওটেক, ট্রান্সপোর্টসন, হাইড্রলিক, এনভায়রনমেনটাল, ইত্যাদি। সিভিল ইঞ্জিনিয়ার এর গুরুত্ত্ব এবং প্রয়োগ সময়ের সাথে সাথে সিভিল ইঞ্জিনিয়ার এর গুরুত্ত্ব বাড়ছে। বর্তমানে তারা আগুন নিয়ন্ত্রণ নিয়েও কাজ করে। তারা আগুনে ক্ষয় ক্ষতি যেন কম হয় সেই বিষয়েও কাজ করে। পুরাতন মিশর এর পিরামিড বা রাস্তা নির্মাণে সিভিল ইঞ্জিনিয়ার এর ভূমিকা উল্ল্যেখযোগ্য অবদান ছিল। প্রকৌশল বিজ্ঞান এর মধ্যে সবচেয়ে পুরানো হলো সিভিল ইঞ্জিনিয়ারিং। পানি, বাতাস এবং মাটি পরিশোধনের বিভিন্ন উপায় নিয়েও সজাগ।                                                        ', '                            পরিকল্পনা, ডিজাইন, গঠন এবং রক্ষনাবেক্ষন করার কাজ করের সিভিল ইঞ্জিনিয়ার। সিভিল ইঞ্জিনিয়ার জরিপের কাজ করে থাকে, প্রযুক্তিগত প্রতিবেদন দেয়, এমনকি প্রকল্প ব্যবস্হাপক এর কাজও করে থাকে। সিভিল ইঞ্জিনিয়ার এর পরিসর যেহেতু সময়ের সাথে সাথে সিভিল ইঞ্জিনিয়ার এর পরিসর বাড়ছে তাই এর অনেক শাখা বের হয়েছে। এদের উল্লেখযোগ্য হলক স্ট্রাকচারাল, জিওটেক, ট্রান্সপোর্টসন, হাইড্রলিক, এনভায়রনমেনটাল, ইত্যাদি। সিভিল ইঞ্জিনিয়ার এর গুরুত্ত্ব এবং প্রয়োগ সময়ের সাথে সাথে সিভিল ইঞ্জিনিয়ার এর গুরুত্ত্ব বাড়ছে। বর্তমানে তারা আগুন নিয়ন্ত্রণ নিয়েও কাজ করে। তারা আগুনে ক্ষয় ক্ষতি যেন কম হয় সেই বিষয়েও কাজ করে। পুরাতন মিশর এর পিরামিড বা রাস্তা নির্মাণে সিভিল ইঞ্জিনিয়ার এর ভূমিকা উল্ল্যেখযোগ্য অবদান ছিল। প্রকৌশল বিজ্ঞান এর মধ্যে সবচেয়ে পুরানো হলো সিভিল ইঞ্জিনিয়ারিং। পানি, বাতাস এবং মাটি পরিশোধনের বিভিন্ন উপায় নিয়েও সজাগ।                            ', '                             একজন সফল সিভিল ইঞ্জিনিয়ার হওয়া যেমন একজন ইঞ্জিনিয়ারিং পড়া শিক্ষার্থীর লক্ষ্য তেমনি সদ্য পাস করা ইঞ্জিনিয়ার বা প্রফেশনাল লাইফে কাজ করা ইঞ্জিনিয়ারের ও লক্ষ্য। আপনি যদি একজন সফল সিভিল ইঞ্জিনিয়ার হিসেবে ক্যারিয়ারে সফলতা অর্জন করতে চান তাহলে কিছু বিষয় মনের ভিতর গেথে রাখলে ক্যারিয়ারে সফল হতে পারবেন। তাই নিচে কিছু গুরুত্বপূর্ণ বিষয়ের উপর আলোচনা করা হলঃ ১) ড্রয়িং সম্পর্কে বিস্তারিত জ্ঞান ২) বিল্ডিং ম্যাটেরিয়াল টেস্ট ৩) কোয়ালিটি কন্ট্রোল ৪) এস্টিমেশন এবং বিল ৫) কনস্ট্রাকশন কাজের স্ট্যান্ডার্ড কোড জানা                                                        ', '                            সরকারি-বেসরকারি প্রায় সব প্রতিষ্ঠানে সহকারী ইঞ্জিনিয়ার হিসাবে আপনার ক্যারিয়ার শুরু হবে। চাকরির ৩-৫ বছরের মধ্যে পদোন্নতি পাবেন। এ ক্যারিয়ারে সর্বোচ্চ পর্যায়ের সরকারি পদ হলো প্রধান প্রকৌশলী। প্রাইভেট ফার্ম বা কোম্পানির ক্ষেত্রে একজন ব্যবস্থাপনা নির্বাহী হিসাবে নিয়োগ পেতে পারেন। যেমনঃ সরকারী চাকরিঃ পানি উন্নয়ন বোর্ড, সড়ক ও জনপদ বিভাগ, এলজিইডি, এলজিডি, বাংলাদেশ রেলওয়ে, বাংলাদেশ সড়ক, পরিবহন কর্তৃপক্ষ বিআরটিএ, সিটি করপোরেশন, পৌরসভা, গৃহায়ন ও গণপূর্ত মন্ত্রণালয়, সেনাবাহিনী, মিলিটারী ইঞ্জিনিয়ারিং সার্ভিস, ইউনিভার্সিটির ইঞ্জিনিয়ারিং সেকশন, বিভিন্ন বন্দর, ব্যাংকের ইঞ্জিনিয়ারিং সেকশন, স্বাস্থ্য প্রকৌশল অধিদপ্তর, ঢাকা বিদ্যুৎ বিতরণ কোম্পানি লিমিটেড, আশুগঞ্জ পাওয়ার স্টেশন কোম্পানী লি, ইলেক্ট্রিসিটি জেনারেশন কোম্পানি অব বাংলাদেশ লিঃ, ওয়েষ্ট জোন পাওয়ার ডিস্ট্রিবিউশন কোম্পানি লি, বাংলাদেশ পল্লী বিদ্যুতায়ন বোর্ড, পল্লী বিদ্যুৎ কোম্পানি লিমিটেড, পাওয়ার গ্রিড কোম্পানি অব বাংলাদেশ লিঃ, বাংলাদেশ বিদ্যুৎ উন্নয়ন বোর্ড, বাখরাবাদ গ্যাস ডিস্ট্রিবিউশন কোম্পানী লিমিটেড বাংলাদেশ সেতু কর্তৃপক্ষ, শিক্ষা প্রকৌশল অধিদপ্তর, মৎস্য অধিদপ্তর, ডিপার্টমেন্ট অফ পাবলিক হেলথ ইঞ্জিনিয়ারিং ইত্যাদি।                            ', '                            অবগকাঠামোগত নির্মাণের যেকোন কাজ ও প্রকল্পের সাথে সিভিল ইঞ্জিনিয়াররা যুক্ত থাকেন। যেমনঃ ব্যক্তিগত বাড়ি নির্মাণ। আবাসন প্রকল্প। অফিস নির্মাণ প্রকল্প। বাণিজ্যিক ভবন নির্মাণ প্রকল্প। সড়ক-মহাসড়ক নির্মাণ ও মেরামত প্রকল্প। রেলপথ নির্মাণ ও মেরামত প্রকল্প। সেতু নির্মাণ প্রকল্প। বাঁধ নির্মাণ প্রকল্প। কলকারখানা নির্মাণ প্রকল্প। বন্দর নির্মাণ প্রকল্প।                            ', '                            MIH Shanto                            ', '0000-00-00', 'uploads/civil.png'),
(4, '                                                        ME', '                                                        Mechanical Engineering', '                            মেকানিক্যাল ইঞ্জিনিয়ারিং পৃথিবীর প্রথম ইঞ্জিনিয়ারিং। ইলেকট্রিক্যাল, ইলেকট্রনিক্স, কম্পিউটার, টেক্সটাইল, সিভিল টেকনোলজি এর সিংহভাগ মেকানিক্যাল টেকনোলজির সাথে যেকোন ভাবেই জড়িয়ে রয়েছে। বর্তমান সময়ে সকল আধুনিক যন্ত্রপাতি পরিচালনার জন্য মেকানিক্যাল টেকনোলজির গুরুত্ব অপরিসীম।                            ', '                            বর্তমান সময়ে আধুনিক যন্ত্রপাতির ব্যাপক ব্যবহার আর সকল আধুনিক যন্ত্রপাতি পরিচালনা রক্ষণাবেক্ষণের জন্য প্রয়োজন দক্ষ জনবল। এই দক্ষ জনবল হিসেবে নিজেকে গড়ে তুলতে ডিপ্লোমা ইন মেকানিক্যাল টেকনোলজি হতে পারে আপনার মূল সহায়ক।  একটি দেশ উন্নয়নের জন্য যে বিষয়টি জড়িত থাকে তা হচ্ছে দক্ষ প্রকৌশলী মানে কারিগরি শিক্ষা, তাই এই শিক্ষার অন্যতম শিখড় হলো মেকানিক্যাল ইঞ্জিনিয়ারিং, যাকে প্রকৌশলীদের মা বলা হয়। বর্তমানে বাংলাদেশে প্রতিনিয়ত শিল্প ব্যবস্থা গড়ে উঠছে। এই শিল্পকে পরিচলনা করার জন্য মেকানিক্যাল ইঞ্জিনিয়ারের প্রয়োজনীয়তা সবচেয়ে জরুরী। তাই বলা হয় যেখানে মেশিন সেখানে মানুষ তথা মেকানিক্যাল ইঞ্জিনিয়ার।                            ', '                            বাংলাদেশের মেকানিক্যাল ইঞ্জিনিয়ারিং এর পাঠ্যক্রম সাধারণত ক্ষেত্র সম্পর্কিত মূল বিষয় এবং ইলেকটিভ কোর্সের একটি পরিসীমা কভার করে। মূল বিষয় অন্তর্ভুক্ত:  ইঞ্জিনিয়ারিং মেকানিক্স তাপগতিবিদ্যা ফ্লুইড মেকানিক্স তাপ স্থানান্তর উপাদানের শক্তি মেশিন ডিজাইন উৎপাদন প্রক্রিয়া কন্ট্রোল সিস্টেম রোবোটিক্স অটোমোটিভ ইঞ্জিনিয়ারিং শক্তি সিস্টেম প্রকৌশল সামগ্রী ইঞ্জিনিয়ারিং ড্রয়িং এবং সিএডি (কম্পিউটার-এডেড ডিজাইন) এবং ইঞ্জিনিয়ারিং গণিত এবং ফলিত বিজ্ঞান এই মূল বিষয়গুলি ছাড়াও, ছাত্ররা তাদের আগ্রহের অনেক ক্ষেত্র গুলি যেমন পুনর্নবীকরণ যোগ্য শক্তি, মেকাট্রনিক্স, কম্পিউটেশনাল ফ্লুইড ডাইনামিকস, বা সীমিত উপাদান বিশ্লেষণের মতো বিকল্প কোর্স গুলি বেছে নেওয়ার সুযোগ পেতে পারে এবং সঠিক নিয়মে মেকানিক্যাল ইঞ্জিনিয়ারিং কি তা জানতে পারে।  তাত্ত্বিক কোর্স ওয়ার্ক ছাড়াও, বাংলাদেশে মেকানিক্যাল ইঞ্জিনিয়ারিং প্রোগ্রামে প্রায়ই ব্যবহারিক অভিজ্ঞতা প্রদানের জন্য ল্যাবরেটরি সেশন, ওয়ার্কশপ এবং ডিজাইন প্রকল্প অন্তর্ভুক্ত থাকে।                            ', '                            ক্রমবর্ধমান পরিবেশ সচেতনতার যুগে, যান্ত্রিক প্রকৌশলীরা তাদের নকশার পরিবেশগত প্রভাব বিবেচনা করে এবং টেকসই সমাধান বিকাশের জন্য প্রচেষ্টা করে।  তারা শক্তি-দক্ষ সিস্টেম, পুনর্নবীকরণ যোগ্য শক্তি প্রযুক্তি এবং যান্ত্রিক সিস্টেমের পরিবেশগত পদচিহ্ন গুলো কমানোর জন্য পরিবেশ-বান্ধব অনুশীলনের উপর কাজ করে।  যান্ত্রিক প্রকৌশলের এই ফাংশন গুলি স্বয়ংচালিত, মহাকাশ, শক্তি, উৎপাদন, রোবোটিক্স, বায়োমেডিকাল এবং আরও অনেকগুলি সহ বিস্তৃত শিল্পে প্রযোজ্য।  যান্ত্রিক প্রকৌশলীরা আমাদের আধুনিক বিশ্বকে চালিত করে এমন যান্ত্রিক সিস্টেম এবং প্রযুক্তির ডিজাইন, উন্নতি এবং রক্ষণাবেক্ষণের মাধ্যমে সমাজে অবদান রাখে।                            ', '                            সরকারি প্রতিষ্ঠান: Roads and Highway Department (R & HD), Public Work Department (PWD),  BADC ,LGED, ইত্যাদিতে উপ-সহকারী প্রকৌশলী পদে চাকরির সুযোগ রয়েছে ।  স্বায়ত্তশাসিত প্রতিষ্ঠান: Water Development Board (WDB), Power Development Board (PDB), DESCO, BRTC, PGCB, WASA, পরমানু শক্তি কমিশন, বাংলাদেশ বিজ্ঞান ও প্রযুক্তি গবেষণা কেন্দ্র, বাংলাদেশ পাট উন্নয়ন বোর্ড, বাংলাদেশ শিপিং কর্পোরেশন ও বিভিন্ন গ্যাস ফিল্ড ইত্যাদিতেও উপ-সহকারী প্রকৌশলী পদে চাকরির সুযোগ রয়েছে।  এছাড়া দেশের বিভিন্ন মেডিকেল ইন্সট্রুমেন্ট, টেক্সটাইল সেক্টর, অটোমোবাইল কোম্পানি, টিভি চ্যানেল, গার্মেন্টস শিল্প, ওষুধ কোম্পানী, সিমেন্ট ও রড কোম্পানী এবং যেকোন ইন্ডাস্ট্রিয়াল ফ্যাক্টরীতে চাকরির সুযোগ রয়েছে।  অন্যদিকে, সরকারি ও বেসরকারি পলিটেকনিকগুলোতে জুনিয়ার ইনস্ট্রাক্টর এবং ভোকেশনাল ইনস্টিটিউটগুলোতে ইনস্ট্রাক্টর পদেও চাকরির সুযোগ রয়েছে।                            ', '                                                        ', '0000-00-00', 'uploads/a53ae7960469392e6eac7dc780f4ec2d.jpg'),
(5, 'BBA', 'Bachelor of Business Administration.', '', '', '', '', '', '', '0000-00-00', 'uploads/download.jpeg'),
(6, 'Pharmacy ', 'Department of Pharmacy ', '', '', '', '', '', '', '0000-00-00', 'uploads/360_F_319066235_Fdylj9xUmQVGGr3pgiBeuChq5NjyJ4tP.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `web` varchar(255) NOT NULL,
  `university_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `name`, `web`, `university_id`) VALUES
(1, '                             Civil Engineering                                    ', '                             https://uits.edu.bd/faculty-members-of-civil/                                                        ', 1),
(2, 'Computer Science & Engineering (CSE)', 'https://uits.edu.bd/faculty-members-of-cse/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_member`
--

CREATE TABLE `faculty_member` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `university_id` int(11) NOT NULL,
  `academic_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_member`
--

INSERT INTO `faculty_member` (`id`, `name`, `designation`, `university_id`, `academic_id`, `image`) VALUES
(1, '                                                        Dr. Md. Ashraful Islam                                                      ', '                                                        Professor and Dean, Faculty of Science & Engineering                                                      ', 1, 1, 'uploads/Ashrafil.jpg'),
(2, 'Professor Dr. Md. Abu Hashan Bhuiyan', 'Professor (Vice Chancellor-Acting)', 1, 1, 'uploads/Dr.-Abu-Hasan-pro-vc-1.jpg'),
(3, 'Ms. Sultana Rokeya Nahar', 'Assistant Professor', 1, 1, 'uploads/36.jpg'),
(4, 'A. S. M. Shafi', 'Assistant Professor & Director, ICT Cell', 1, 1, 'uploads/A.-S.-M.-Shafi.jpg'),
(5, 'Ferdaus Anam Jibon', 'Assistant Professor', 1, 1, 'uploads/Ferdaus-Anam-Jibon.jpg'),
(6, '                            Dr. Riazur Rahman Chowdhury                            ', '                            Professor                          ', 2, 3, 'uploads/acc_riazchowdhury62.jpg'),
(7, '                            Md. Maksudur Rahman Sarker                            ', '                            Professor                          ', 2, 3, 'uploads/acc_maksudsarkar.jpg'),
(8, 'Dr. Mahmuda Akter', 'Professor', 2, 3, 'uploads/acc_mahmuda.akter.du.jpg'),
(9, 'Dr. Md. Ashraful Islam', 'Professor and Dean Faculty of Science and Engineering', 1, 2, 'uploads/Ashrafil.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`) VALUES
(7, 'uploads/Weekend-Programme-at-Jahangirnagar-University.jpg'),
(9, 'uploads/HD-wallpaper-curzon-hall-asia-bangladesh-castles-dhaka-dhaka-university-du-heritage-history-university-of-dhaka.jpg'),
(10, 'uploads/sust-photo.jpg'),
(11, 'uploads/uits-1.jpg'),
(12, 'uploads/1566588110_1.jpg'),
(14, 'uploads/UITS-Students.jpg'),
(15, 'uploads/HD-wallpaper-raju-sculpturedu-asia-bangladesh-dhaka-dhaka-university-du-memorial-sculpture.jpg'),
(16, 'uploads/vrr.png'),
(17, 'uploads/SUST_1_km_entrance_way.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `graduate`
--

CREATE TABLE `graduate` (
  `id` int(11) NOT NULL,
  `university_id` int(11) NOT NULL,
  `academic_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `guideline` longtext NOT NULL,
  `distribution` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `graduate`
--

INSERT INTO `graduate` (`id`, `university_id`, `academic_id`, `name`, `description`, `guideline`, `distribution`) VALUES
(1, 1, 1, 'M.Sc. in Computer Science & Engineering:', 'The Department of Computer Science & Engineering offers Masters of Science (M.Sc.) and  Masters of Engineering (M.Engg.) degree program for prospective graduate students.  The Master of Engineering is designed for students who pursue to join the engineering profession following graduation to head start a career. This accelerated program is designed to develop professional engineering leaders of the future who can integrate economically, and social values of technology to cope with the challenges of 21st Century.', 'The minimum duration of the M. Sc. Engg. / M. Engg. Course shall normally span over three semesters (six months each). A candidate pursues for the Master’s degree must fulfill all the requirements for the degree within the duration of maximum five academic years (session) from the date of the first admission in the respective program.  Academic progress shall be ensured regarding credit hours achieved by a student. One credit hour subject shall normally be equivalent to one hour long of class presence per week for the semester concerned. The one credit hour of thesis/project/laboratory should ensure three hours of work per week for the concerned semester. The syllabus should precisely specify the number of credit hours for each subject.  The university will create opportunities for the  full-time students and part-time students. Students, serving in different organizations, maybe admitted as part-time students with written consent of the employer. A part-time student may be assigned a maximum of 9 credit hours of course including thesis/project work in any semester.  Full-time students must register for a minimum of 12 credit hours and a maximum of 15 credit hours per semester. A full-time student shall not be allowed to be in the employment of any organization (even as a part-time employee). However, they may be employed as teaching / research assistant at the University. If a full-time student becomes an employee (full-time or part-time) of any other organization in the middle of a semester, he may, with the approval of the Head of the department and his employer, be allowed to continue as a full time student for that semester.  The courses of study are recommended by the Department of CSE, UITS, and Faculty and approved by the Academic Council. The Department of CSE, UITS may review the curriculum from time to time and recommend any changes as may be considered necessary. The courses to be offered in any semester shall also be as determined by the academic committee of the Department of CSE, UITS.  A student on recommendation of the Department of CSE and as approved by the Faculty of Engineering, UITS may be allowed a transfer of credits of the courses completed by the student at a recognized institution provided that the courses were not taken earlier than five calendar years from the date of his first enrollment in the respective program at UITS and that the student obtained a minimum GPA of 3.0 out of 4.0 or its equivalent and that the courses are equivalent to the approved courses of UITS.', 'For admission to the courses leading to a degree of M. Sc. Engg., a student must earn a minimum of 36 credit hours including a thesis for which 18 credit hours shall be assigned. The courses will be offered keeping in mind for the students who have obtained B.Sc. Engg. Degree in CSE from any recognized institution.  For admission to the courses leading to a degree of M. Engg., a student must earn a minimum of 36 credit hours including a project for which 6 credit hours shall be assigned. An applicant with a B.Sc. Engg. degree in other branches of engineering who have strong technical background may also be eligible for admission to the courses leading to the degree of M. Engg.');

-- --------------------------------------------------------

--
-- Table structure for table `nav`
--

CREATE TABLE `nav` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nav`
--

INSERT INTO `nav` (`id`, `name`) VALUES
(1, 'Public University'),
(2, 'Medical College'),
(3, 'Private University'),
(4, 'Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `university_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `review` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `university_id`, `name`, `review`) VALUES
(5, 1, 'Ritu', 'This University is good..');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `department_head` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `cost` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `credit` varchar(255) NOT NULL,
  `deadline` varchar(255) NOT NULL,
  `start` varchar(255) NOT NULL,
  `addmission_fee` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `university_id` int(11) NOT NULL,
  `academic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`, `department_head`, `image`, `cost`, `year`, `credit`, `deadline`, `start`, `addmission_fee`, `description`, `university_id`, `academic_id`) VALUES
(1, 'UITS                                                                                    ', ' Mr. Al-Imtiaz                                                                                                                                                                                                                     ', 'uploads/imtiaz (1).jpg', 560700, 4, '144                                                                                                                            ', '5 Jan                                                    ', '15 Jan                                                    ', '10000                                                        ', ' Established in 13 September 2005, the department has a growing, dynamic, research-oriented faculty who take great pride in their longstanding record of excellence in teaching styles in undergraduate education.  It is a 144 credit-hour program requiring about four years completing the undergraduate objective. CSE holds the inspiration and ideology of the slogan “divine blessings, mixed with hard work, backed by good intentions, make miracles.” from Alhaj Sufi Mizanur Rahman, the leading humanitarian entrepreneur of Bangladesh and Chairman of the leading business conglomerate in Bangladesh PHP family. The CSE seeks to quest of the ideology Peace, Happiness & Prosperity for the nation with the objectives of imparting quality education in the field of Computer Science and Engineering. With rapidly evolving technology and the continuous need for innovation, the department has always produced quality professionals, holding essential positions in the Information Technology industry in Bangladesh and abroad. The department has started with the aim to develop core competence in Computer Science and prepare the students to carry out development works, as well as take up challenges in research. The goals of the CSE Department is to use input from students, faculty, industry, and professional societies to improve the CSE curriculum; to maintain accreditation for Computer Science programs; to provide up-to-date laboratory software and equipment in support of CSE program learning outcomes and to promote faculty creative and scholarly activities, and the integration of those activities with curriculum development.                                                                                                ', 1, 1),
(2, '          DU                                              ', '                            Dr. Dhiman Kumar Chowdhury                            ', 'uploads/image_368_new.jpg', 2000, 4, '               120                                         ', '', '', '', '', 2, 3),
(3, '                                                        UITS', '                            Ms. Aysha Akter                            ', 'uploads/24-150x150.jpg', 497700, 4, '                     150                                   ', '', '', '', '', 1, 2),
(5, 'BRAC                           ', ' Sumaiya                            ', 'uploads/', 10000000, 3, '156                            ', '1 Jan                                                ', '20 Jan                                                  ', '25000                                                        ', 'As per Doctors prescription and calorie restriction                            ', 6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sub_review`
--

CREATE TABLE `sub_review` (
  `id` int(11) NOT NULL,
  `academic_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `review` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_review`
--

INSERT INTO `sub_review` (`id`, `academic_id`, `name`, `dept`, `review`) VALUES
(3, 1, 'Ritu', 'CSE,47th', 'Good'),
(4, 4, 'Jalish', 'CSE,47th', 'This Good');

-- --------------------------------------------------------

--
-- Table structure for table `top_university`
--

CREATE TABLE `top_university` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `top_university`
--

INSERT INTO `top_university` (`id`, `category_id`, `name`, `full_name`, `image`) VALUES
(1, 1, 'UITS', 'University of Information Technology & Sciences', 'uploads/uits.png'),
(2, 1, 'NSU                      ', '                            North South University                            ', 'uploads/nsu.png');

-- --------------------------------------------------------

--
-- Table structure for table `tution`
--

CREATE TABLE `tution` (
  `id` int(11) NOT NULL,
  `university_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tution`
--

INSERT INTO `tution` (`id`, `university_id`, `image`) VALUES
(1, 1, 'uploads/uits-tutionfee.png');

-- --------------------------------------------------------

--
-- Table structure for table `under_graduate`
--

CREATE TABLE `under_graduate` (
  `id` int(11) NOT NULL,
  `university_id` int(11) NOT NULL,
  `academic_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `vision` longtext NOT NULL,
  `mision` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `under_graduate`
--

INSERT INTO `under_graduate` (`id`, `university_id`, `academic_id`, `name`, `description`, `vision`, `mision`) VALUES
(1, 1, 1, ' Department of Computer Science and Engineering (CSE)                                                        ', 'Established in 13 September 2005, the department has a growing, dynamic, research-oriented faculty who take great pride in their longstanding record of excellence in teaching styles in undergraduate education.  It is a 144 credit-hour program requiring about four years completing the undergraduate objective. CSE holds the inspiration and ideology of the slogan “divine blessings, mixed with hard work, backed by good intentions, make miracles.” from Alhaj Sufi Mizanur Rahman, the leading humanitarian entrepreneur of Bangladesh and Chairman of the leading business conglomerate in Bangladesh PHP family. The CSE seeks to quest of the ideology Peace, Happiness & Prosperity for the nation with the objectives of imparting quality education in the field of Computer Science and Engineering. With rapidly evolving technology and the continuous need for innovation, the department has always produced quality professionals, holding essential positions in the Information Technology industry in Bangladesh and abroad. The department has started with the aim to develop core competence in Computer Science and prepare the students to carry out development works, as well as take up challenges in research. The goals of the CSE Department is to use input from students, faculty, industry, and professional societies to improve the CSE curriculum; to maintain accreditation for Computer Science programs; to provide up-to-date laboratory software and equipment in support of CSE program learning outcomes and to promote faculty creative and scholarly activities, and the integration of those activities with curriculum development.                                                        ', ' The vision of the Department of Computer Science and Engineering is to scaffold the next generation of engineers and scientists in a student-centered learning environment to reach digital fluency in Computer Science & Engineering. The challenge is to make the student’s competent, skilled leader in the wake of the ever-changing and challenging global work environment of the 21st century.                                                        ', ' The mission of the Department of Computer Science is to achieve national prominence by providing outstanding education and research training to our undergraduate students for their productive careers in industry, academia, and government. We will help our students develop the skills to solve the complex technological problems of modern society and also provide a framework for promoting collaborative and multidisciplinary activities. The students should be competent professionals through research, active teaching disciplinary and ethical learning including inculcating moral values and societal concerns and thus attain nation’s premier small research and teaching Computer Science departments to tackle advantage.                                                        ');

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `short_title` varchar(255) NOT NULL,
  `full_title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `web` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `founder` varchar(255) NOT NULL,
  `vc` varchar(255) NOT NULL,
  `nav_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`id`, `image`, `rating`, `short_title`, `full_title`, `description`, `phone`, `email`, `web`, `location`, `founder`, `vc`, `nav_id`) VALUES
(1, 'uploads/uits.png', '63', 'UITS', 'University of Information Technology & Sciences', 'University of Information Technology and Sciences (UITS), the first IT-based private university in Bangladesh was founded on 7 August 2003 as a non-profit organization & EIIN is 136666.  University of Information Technology & Sciences (UITS), a concern of PHP Family headed by Alhaj Sufi Mohamed Mizanur Rahman is the sponsor of UITS. The guiding spirit behind the endeavor is “divine blessings, mixed with hard work, backed by good intentions, make miracles.', '09678008487', 'info@uits.edu.bd', 'https://uits.edu.bd', 'Maddha Nayanagar, Vatara, Dhaka-1212', 'Sufi Mohamed Mizanur Rahman', 'Professor Dr. Md. Abu Hashan Bhuiyan', 3),
(2, 'uploads/Dhaka_University_logo.svg.png', '                            1                            ', '                            DU                            ', '                            Dhaka University                            ', '                            On 31 January a delegation led by Nawab Sir Salimullah,Nawab Syed Nawab Ali Chowdhury and Sher e-Bangla A.K. Fazlul Hug met Viceroy Lord Hardinge on his visit to Dhaka (then Dacca) and raised the demand of the establishment of a University in the region.On 2 February a communique was published stating the decision of the Government of India to recommend the Constitution of a University at Dhaka.On 4 April the Government of British India invited the Government of Bengal to submit a complete scheme of the University.On 27 May the Government of Bengal published resolution in regard to the proposed University and appointed a Committee of thirteen members with Sir Robert Nathaniel as President to frame the scheme. The Committee, known as Nathan committee, submitted the scheme in the same year.                            ', '', 'registrar@du.ac.bd', '                            https://www.du.ac.bd                            ', '                            Administrative Building (Ground Floor) Dhaka-1000, Bangladesh                            ', '                            Nawab Bahadur Sir Khwaja Salimullah                            ', '                            ASM Maksud Kamal                            ', 1),
(3, 'uploads/observerbd.com_1552834507.jpg', '                                                        15                                                        ', '                                                        JU                                                        ', '                                                        Jahangirnagar University                                                        ', '                                                        Jahangirnagar University accustomed as a fully residential public university established in 1970 has now 36 departments and Six Faculties along with Four institutes, with added than fifteen thousand students, and about Five hundred academics adherent to teaching and research. The sprawling arresting campus is anchored 30 kilometres from the basic Dhaka, able-bodied affiliated with a civic highway. The aboriginal assembly of Independent Bangladesh accepted the university its Charter in 1973 beneath which the university is getting operated.                                                        ', '', 'registrar@juniv.edu', '                                                        https://juniv.edu/custom/slug/about-ju                                                        ', '                                                        Savar, Dhaka, Bangladesh, 1342                                                        ', '                                                        The Government of Pakistan                                                        ', '                                                        Professor Dr. Md. Nurul Alam                                                        ', 1),
(4, 'uploads/1200px-JnUlogo.svg.png', '                            29                            ', '                            JnU', '                            Jagannath University                            ', '                            Jagannath University as a govt. financed full pledged public university of Bangladesh is situated in the southern part of the city of Dhaka near the Buriganga. This prestigious educational establishment has a history of about 156 years which started in 1858 when Dhaka Brahma School was founded in 1858 by Dinanath Sen, Prabhaticharan Roy, Anathbandhu Mallik and Brajasundar Kaitra. The name Jagannath school was given by Kishorilal Chowdhury, the Zamindar of Baliadi who took over the school in 1872 and renamed it after his fathers name. In 1884, it was raised to a second grade college. Law was one of the first courses introduced in the college. A common management committee administered the school and college until 1887, when the school section was separated to form an independent school named Kishore Jubilee School. It is now known as K L Jubilee School. The administration of the college was transferred to a board of trustees in 1907. In the following year, it became a first grade college.                            ', '01632067489', 'mihshanto.9@gmail.com', '                            https://jnu.ac.bd/portal/index                            ', '                            9-10, Chittaranjan Avenue, Dhaka 1100                            ', '                            Jagannath Roy Chowdhury                            ', '                            Professor Dr. Md. Imdadul Hoque                            ', 1),
(5, 'uploads/1200px-রাজশাহী_বিশ্ববিদ্যালয়ের_লোগো.svg.png', '4', 'RU', 'Rajshahi University', 'The University of Rajshahi is one of the largest universities in the country and the largest with the highest seat of learning in the northern region of Bangladesh. After its foundation on July 6, 1953, the university has passed 69 years providing higher education and research.', '588865011', 'registrar@ru.ac.bd', 'https://www.ru.ac.bd/', ' Shahid Syed Nazrul Islam Administration Building University of Rajshahi, Rajshahi 6205, Bangladesh', 'East Pakistan provincial Assembly ', 'Professor Dr. Golam Shabbir Sattar', 1),
(6, 'uploads/bracu_logo.png', '2', 'BRAC', 'BRAC University', 'Brac University (BracU) established in 2001 is located in Dhaka Bangladesh. BracU follows a liberal arts approach to education which nurtures fresh ideas and gives new impetus to the field of tertiary education. It ensures a high quality of education and aims to meet the demands of contemporary times. Building on BRACs experience of seeking solutions to challenges posed by extreme poverty, BracU hopes to instill in its students a commitment to working towards national development and progress. The medium of instruction and examination at Brac University is English. BracU is accredited by the University Grants Commission (UGC) and approved by the Ministry of Education, Government of Bangladesh.', '01708812609', 'info@bracu.ac.bd', 'https://www.bracu.ac.bd/', '66 Mohakhali Dhaka 1212 Bangladesh', 'Sir Fazle Hasan Abed', '  Professor Syed Mahfuzul Aziz', 3),
(7, 'uploads/buet.png', '3', 'BUET', 'Bangladesh University of Engineering and Technology', 'Bangladesh University of Engineering and Technology (BUET) is a pioneer in engineering education in Bangladesh. The history of BUET dates back to 1876 when the Dhaka Survey School was founded. Later in 1947, it became an engineering college and gained independent university status in 1962. It is located on a compact 83.9-acre land in the heart of Dhaka, the capital of Bangladesh.', '01797329125', 'support@iict.buet.ac.bd', 'https://www.buet.ac.bd/web/#/', 'ECE Building,Azimpur Rd  Dhaka-1205  Bangladesh', 'Nawab Sir Khwaja Ahsanullah Bahadur', 'Prof. Satya Prasad Majumder', 4),
(8, 'uploads/Morogram_of_Dhaka_Medical_College.svg.png', '51', 'DMC', 'Dhaka Medical College', 'Dhaka Medical College Hospital (DMCH) is the oldest tertiary-level hospital located at the heart of Dhaka., Bangladesh. This hospital started its journey on 10 July 1946 as 200 bedded field hospital for the British Indian armed forces.', '0255165001', 'dmch@hospi.dghs.gov.bd', 'https://dmch.gov.bd/', 'Dhaka Medical College Hospital,Bangladesh', 'Major W. J. Virgin', 'Brig. Gen. Md. Nazmul Haque', 2),
(9, 'uploads/png-transparent-creative-university-of-chittagong-premier-university-chittagong-hathazari-upazila-public-university-higher-education-education-college.png', '19', 'CU', ' Chittagong University', '', '', '', '', '', '', '', 1),
(10, 'uploads/Screenshot 2023-12-17 213904.png', '                            6                            ', '                            IU                            ', '                            Islamic University, Bangladesh                            ', '                                                        ', '', '', '                                                        ', '                                                        ', '                                                        ', '                                                        ', 1),
(11, 'uploads/k.jpg', '                                                        ', '                            KU                            ', '                            Khulna University                             ', '                                                        ', '', '', '                                                        ', '                                                        ', '                                                        ', '                                                        ', 1),
(12, 'uploads/1630577748807.jpeg', '', 'CU', 'Comilla University', '', '', '', '', '', '', '', 1),
(13, 'uploads/North_South_University_Monogram.svg.png', '', 'NSU', 'North South University', '', '', '', '', '', '', '', 3),
(14, 'uploads/United_International_University_Monogram.svg.png', '', 'UIU', 'United International University', '', '', '', '', '', '', '', 3),
(15, 'uploads/images.jpeg', '                                                        ', '                            IUB                            ', '                            Independent University, Bangladesh                            ', '                                                        ', '', '', '                                                        ', '                                                        ', '                                                        ', '                                                        ', 3),
(16, 'uploads/images (1).jpeg', '', 'EWU', 'East West University', '', '', '', '', '', '', '', 3),
(17, 'uploads/images.png', '', 'SUB', 'Stamford University Bangladesh ', '', '', '', '', '', '', '', 3),
(19, 'uploads/University_of_Asia_Pacific_(Bangladesh)_logo.png', '', 'UAP', 'University of Asia Pacific', '', '', '', '', '', '', '', 3),
(20, 'uploads/Sir_Salimullah_Medical_College_Logo.svg.png', '', 'SSMC', 'Sir Salimullah Medical College', '', '', '', '', '', '', '', 2),
(21, 'uploads/Official_Monogram_Of_MMC.jpg', '', 'MMC', 'Mymensingh Medical College', '', '', '', '', '', '', '', 2),
(23, 'uploads/Sher_e_Bangla_Medical_College_Logo.jpg', '', 'SBMC', 'Sher-e-Bangla Medical College', '', '', '', '', '', '', '', 2),
(24, 'uploads/BSMMC_Logo_-_English_Version.png', '', 'BSMMC', 'Bangabandhu Sheikh Mujib Medical College', '', '', '', '', '', '', '', 2),
(25, 'uploads/Shaheed_Ziaur_Rahman_Medical_College_logo.png', '                                                        ', '                             SZRMC                            ', '                            Shaheed Ziaur Rahman Medical College                            ', '                                                        ', '', '', '                                                        ', '                                                        ', '                                                        ', '                                                        ', 2),
(28, 'uploads/JMC_Logo_Official.png', '                                                        ', '                            JMC                            ', '                                             Jashore Medical College                                                ', '                                                        ', '', '', '                                                        ', '                                                        ', '                                                        ', '                                                        ', 2),
(29, 'uploads/Shahid_Syed_Nazrul_Islam_Medical_College_logo.png', '', 'SSNIMC', 'Shahid Syed Nazrul Islam Medical College', '', '', '', '', '', '', '', 2),
(30, 'uploads/CUET_Vector_ogo.svg.png', '', 'CUET', 'Chittagong University of Engineering & Technology', '', '', '', '', '', '', '', 4),
(31, 'uploads/Logo_KUET.svg.png', '', 'KUET', 'Khulna University of Engineering & Technology', '', '', '', '', '', '', '', 4),
(32, 'uploads/RUET_logo.svg.png', '', 'RUET', 'Rajshahi University of Engineering & Technology', '', '', '', '', '', '', '', 4),
(33, 'uploads/Military_Institute_of_Science_and_Technology_Monogram.svg.png', '', 'Military Institute of Science and Technology', 'MISC', '', '', '', '', '', '', '', 4),
(34, 'uploads/BSMRAU_Logo.png', '', 'BSMRAAU', 'Bangabandhu Sheikh Mujibur Rahman Aviation and Aerospace University', '', '', '', '', '', '', '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_form`
--

CREATE TABLE `user_form` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_form`
--

INSERT INTO `user_form` (`id`, `name`, `email`, `password`, `user_type`, `phone`) VALUES
(1, 'ritu', 'ritu@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'user', 1970950845),
(9, 'rekha', 'rekha@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'admin', 1235667);

-- --------------------------------------------------------

--
-- Table structure for table `wish`
--

CREATE TABLE `wish` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wish`
--

INSERT INTO `wish` (`id`, `name`, `full_name`, `image`) VALUES
(1, 'UITS', 'University of Information Technology & Sciences', 'uploads/uits.png'),
(2, 'DU', 'Dhaka University', 'uploads/DU-logo-300x168.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic`
--
ALTER TABLE `academic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `university_id` (`university_id`);

--
-- Indexes for table `achievement`
--
ALTER TABLE `achievement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uuuuuuuuuuuuuid` (`university_id`),
  ADD KEY `accccccccid` (`academic_id`);

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uuuuuuuuuuuuuuid` (`university_id`),
  ADD KEY `acccccccccid` (`academic_id`);

--
-- Indexes for table `administrative`
--
ALTER TABLE `administrative`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u_id` (`university_id`);

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `un_id` (`university_id`);

--
-- Indexes for table `admission_go`
--
ALTER TABLE `admission_go`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uui` (`university_id`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uuuuid` (`university_id`),
  ADD KEY `ac-id` (`academic_id`);

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uuuuuuuuuuuuid` (`university_id`),
  ADD KEY `accccccid` (`academic_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compare`
--
ALTER TABLE `compare`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dept_review`
--
ALTER TABLE `dept_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uni_id` (`university_id`);

--
-- Indexes for table `faculty_member`
--
ALTER TABLE `faculty_member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `university-id` (`university_id`),
  ADD KEY `aca-id` (`academic_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `graduate`
--
ALTER TABLE `graduate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uuuuuuuuuuuid` (`university_id`),
  ADD KEY `acccccid` (`academic_id`);

--
-- Indexes for table `nav`
--
ALTER TABLE `nav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uuid` (`university_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academic_id` (`academic_id`),
  ADD KEY `un-id` (`university_id`);

--
-- Indexes for table `sub_review`
--
ALTER TABLE `sub_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `acid` (`academic_id`);

--
-- Indexes for table `top_university`
--
ALTER TABLE `top_university`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `tution`
--
ALTER TABLE `tution`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uuuuuid` (`university_id`);

--
-- Indexes for table `under_graduate`
--
ALTER TABLE `under_graduate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uuuuuuuid` (`university_id`),
  ADD KEY `accccid` (`academic_id`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nav_id` (`nav_id`);

--
-- Indexes for table `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wish`
--
ALTER TABLE `wish`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic`
--
ALTER TABLE `academic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `achievement`
--
ALTER TABLE `achievement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `administrative`
--
ALTER TABLE `administrative`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admission_go`
--
ALTER TABLE `admission_go`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `compare`
--
ALTER TABLE `compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dept_review`
--
ALTER TABLE `dept_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `faculty_member`
--
ALTER TABLE `faculty_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `graduate`
--
ALTER TABLE `graduate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nav`
--
ALTER TABLE `nav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_review`
--
ALTER TABLE `sub_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `top_university`
--
ALTER TABLE `top_university`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tution`
--
ALTER TABLE `tution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `under_graduate`
--
ALTER TABLE `under_graduate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `university`
--
ALTER TABLE `university`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `user_form`
--
ALTER TABLE `user_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wish`
--
ALTER TABLE `wish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic`
--
ALTER TABLE `academic`
  ADD CONSTRAINT `university_id` FOREIGN KEY (`university_id`) REFERENCES `university` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `achievement`
--
ALTER TABLE `achievement`
  ADD CONSTRAINT `accccccccid` FOREIGN KEY (`academic_id`) REFERENCES `academic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `uuuuuuuuuuuuuid` FOREIGN KEY (`university_id`) REFERENCES `university` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `acccccccccid` FOREIGN KEY (`academic_id`) REFERENCES `academic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `uuuuuuuuuuuuuuid` FOREIGN KEY (`university_id`) REFERENCES `university` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `administrative`
--
ALTER TABLE `administrative`
  ADD CONSTRAINT `u_id` FOREIGN KEY (`university_id`) REFERENCES `university` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `admission`
--
ALTER TABLE `admission`
  ADD CONSTRAINT `un_id` FOREIGN KEY (`university_id`) REFERENCES `university` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `admission_go`
--
ALTER TABLE `admission_go`
  ADD CONSTRAINT `uui` FOREIGN KEY (`university_id`) REFERENCES `university` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `alumni`
--
ALTER TABLE `alumni`
  ADD CONSTRAINT `ac-id` FOREIGN KEY (`academic_id`) REFERENCES `academic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `uuuuid` FOREIGN KEY (`university_id`) REFERENCES `university` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `catalog`
--
ALTER TABLE `catalog`
  ADD CONSTRAINT `accccccid` FOREIGN KEY (`academic_id`) REFERENCES `academic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `uuuuuuuuuuuuid` FOREIGN KEY (`university_id`) REFERENCES `university` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `compare`
--
ALTER TABLE `compare`
  ADD CONSTRAINT `subject_id` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `uni_id` FOREIGN KEY (`university_id`) REFERENCES `university` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty_member`
--
ALTER TABLE `faculty_member`
  ADD CONSTRAINT `aca-id` FOREIGN KEY (`academic_id`) REFERENCES `academic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `university-id` FOREIGN KEY (`university_id`) REFERENCES `university` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `graduate`
--
ALTER TABLE `graduate`
  ADD CONSTRAINT `acccccid` FOREIGN KEY (`academic_id`) REFERENCES `academic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `uuuuuuuuuuuid` FOREIGN KEY (`university_id`) REFERENCES `university` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `uuid` FOREIGN KEY (`university_id`) REFERENCES `university` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `academic_id` FOREIGN KEY (`academic_id`) REFERENCES `academic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `un-id` FOREIGN KEY (`university_id`) REFERENCES `university` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_review`
--
ALTER TABLE `sub_review`
  ADD CONSTRAINT `acid` FOREIGN KEY (`academic_id`) REFERENCES `academic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `top_university`
--
ALTER TABLE `top_university`
  ADD CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tution`
--
ALTER TABLE `tution`
  ADD CONSTRAINT `uuuuuid` FOREIGN KEY (`university_id`) REFERENCES `university` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `under_graduate`
--
ALTER TABLE `under_graduate`
  ADD CONSTRAINT `accccid` FOREIGN KEY (`academic_id`) REFERENCES `academic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `uuuuuuuid` FOREIGN KEY (`university_id`) REFERENCES `university` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `university`
--
ALTER TABLE `university`
  ADD CONSTRAINT `nav_id` FOREIGN KEY (`nav_id`) REFERENCES `nav` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
