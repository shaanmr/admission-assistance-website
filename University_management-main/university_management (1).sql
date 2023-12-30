-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 09, 2023 at 09:09 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

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
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `university_id` int NOT NULL,
  `web` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `academic`
--

INSERT INTO `academic` (`id`, `name`, `university_id`, `web`) VALUES
(1, '                            Computer Science & Engineering (CSE)                            ', 1, '                          https://uits.edu.bd/department-of-computer-science-engineering/                              '),
(2, 'Department of Civil Engineering', 1, 'https://uits.edu.bd/department-of-civil-engineering/'),
(3, 'Department of Accounting & Information Systems', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `administrative`
--

CREATE TABLE `administrative` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `web` varchar(255) NOT NULL,
  `university_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `web` varchar(255) NOT NULL,
  `university_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`id`, `name`, `web`, `university_id`) VALUES
(1, '                                                        Undergraduate Programs                   ', '                                                        https://uits.edu.bd/undergraduate-programs/                                                        ', 1),
(2, 'Graduate Programs', 'https://uits.edu.bd/graduate-programs/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int NOT NULL,
  `text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `text`) VALUES
(1, 'Ritu', 'ritu@gmail.com', 1970950845, 'A medical college or medical association is a trade association that brings together practitioners of a particular geographical area'),
(2, 'Inzamam islam raj', '70inzamam.sentinel@gmail.com', 1717950845, 'uryjwkfhjwfiw;hafo;hifhwoie');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `web` varchar(255) NOT NULL,
  `university_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `university_id` int NOT NULL,
  `academic_id` int NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `id` int NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`) VALUES
(1, 'uploads/JU-campus.png'),
(2, 'uploads/DHAKA-MEDICAL.png'),
(3, 'uploads/KU-campus.png'),
(4, 'uploads/UITS-campus.png'),
(5, 'uploads/UIU-campus.png'),
(6, 'uploads/dhaka_university_01.png');

-- --------------------------------------------------------

--
-- Table structure for table `nav`
--

CREATE TABLE `nav` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `nav`
--

INSERT INTO `nav` (`id`, `name`) VALUES
(1, 'Public University'),
(2, 'Medical College'),
(3, 'Privet University'),
(4, 'Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int NOT NULL,
  `department_head` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `cost` int NOT NULL,
  `year` int NOT NULL,
  `university_id` int NOT NULL,
  `academic_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `department_head`, `image`, `cost`, `year`, `university_id`, `academic_id`) VALUES
(1, '                             Mr. Al-Imtiaz                                                                                                                 ', 'uploads/imtiaz.jpg', 560700, 4, 1, 1),
(2, 'Dr. Dhiman Kumar Chowdhury', 'uploads/image_368_new.jpg', 2000, 0, 2, 3),
(3, 'Ms. Aysha Akter', 'uploads/24-150x150.jpg', 497700, 4, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `top_university`
--

CREATE TABLE `top_university` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `id` int NOT NULL,
  `cost` int NOT NULL,
  `year` int NOT NULL,
  `university_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `id` int NOT NULL,
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
  `nav_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`id`, `image`, `rating`, `short_title`, `full_title`, `description`, `phone`, `email`, `web`, `location`, `founder`, `vc`, `nav_id`) VALUES
(1, 'uploads/uits.png', '63', 'UITS', 'University of Information Technology & Sciences', 'University of Information Technology and Sciences (UITS), the first IT-based private university in Bangladesh was founded on 7 August 2003 as a non-profit organization & EIIN is 136666.  University of Information Technology & Sciences (UITS), a concern of PHP Family headed by Alhaj Sufi Mohamed Mizanur Rahman is the sponsor of UITS. The guiding spirit behind the endeavor is “divine blessings, mixed with hard work, backed by good intentions, make miracles.', '09678008487', 'info@uits.edu.bd', 'https://uits.edu.bd', 'Maddha Nayanagar, Vatara, Dhaka-1212', 'Sufi Mohamed Mizanur Rahman', 'Professor Dr. Md. Abu Hashan Bhuiyan', 3),
(2, 'uploads/Dhaka_University_logo.svg.png', '                            1                            ', '                            DU                            ', '                            Dhaka University                            ', '                            On 31 January a delegation led by Nawab Sir Salimullah,Nawab Syed Nawab Ali Chowdhury and Sher e-Bangla A.K. Fazlul Hug met Viceroy Lord Hardinge on his visit to Dhaka (then Dacca) and raised the demand of the establishment of a University in the region.On 2 February a communique was published stating the decision of the Government of India to recommend the Constitution of a University at Dhaka.On 4 April the Government of British India invited the Government of Bengal to submit a complete scheme of the University.On 27 May the Government of Bengal published resolution in regard to the proposed University and appointed a Committee of thirteen members with Sir Robert Nathaniel as President to frame the scheme. The Committee, known as Nathan committee, submitted the scheme in the same year.                            ', '', 'registrar@du.ac.bd', '                            https://www.du.ac.bd                            ', '                            Administrative Building (Ground Floor) Dhaka-1000, Bangladesh                            ', '                            Nawab Bahadur Sir Khwaja Salimullah                            ', '                            ASM Maksud Kamal                            ', 1),
(3, 'uploads/JU_logo.png', '15', 'JU', 'Jahangirnagar University', 'Jahangirnagar University accustomed as a fully residential public university established in 1970 has now 36 departments and Six Faculties along with Four institutes, with added than fifteen thousand students, and about Five hundred academics adherent to teaching and research. The sprawling arresting campus is anchored 30 kilometres from the basic Dhaka, able-bodied affiliated with a civic highway. The aboriginal assembly of Independent Bangladesh accepted the university its Charter in 1973 beneath which the university is getting operated.', '02224491045', 'registrar@juniv.edu', 'https://juniv.edu/custom/slug/about-ju', 'Savar, Dhaka, Bangladesh, 1342', 'The Government of Pakistan', 'Professor Dr. Md. Nurul Alam', 1),
(4, 'uploads/1200px-JnUlogo.svg.png', '29', 'JNU', 'Jagannath University', 'Jagannath University as a govt. financed full pledged public university of Bangladesh is situated in the southern part of the city of Dhaka near the Buriganga. This prestigious educational establishment has a history of about 156 years which started in 1858 when Dhaka Brahma School was founded in 1858 by Dinanath Sen, Prabhaticharan Roy, Anathbandhu Mallik and Brajasundar Kaitra. The name Jagannath school was given by Kishorilal Chowdhury, the Zamindar of Baliadi who took over the school in 1872 and renamed it after his fathers name. In 1884, it was raised to a second grade college. Law was one of the first courses introduced in the college. A common management committee administered the school and college until 1887, when the school section was separated to form an independent school named Kishore Jubilee School. It is now known as K L Jubilee School. The administration of the college was transferred to a board of trustees in 1907. In the following year, it became a first grade college.', '029534255', 'info@jnu.ac.bd', 'https://jnu.ac.bd/portal/index', '9-10, Chittaranjan Avenue, Dhaka 1100', 'Jagannath Roy Chowdhury', 'Professor Dr. Md. Imdadul Hoque', 1),
(5, 'uploads/1200px-রাজশাহী_বিশ্ববিদ্যালয়ের_লোগো.svg.png', '4', 'RU', 'Rajshahi University', 'The University of Rajshahi is one of the largest universities in the country and the largest with the highest seat of learning in the northern region of Bangladesh. After its foundation on July 6, 1953, the university has passed 69 years providing higher education and research.', '588865011', 'registrar@ru.ac.bd', 'https://www.ru.ac.bd/', ' Shahid Syed Nazrul Islam Administration Building University of Rajshahi, Rajshahi 6205, Bangladesh', 'East Pakistan provincial Assembly ', 'Professor Dr. Golam Shabbir Sattar', 1),
(6, 'uploads/bracu_logo.png', '2', 'BRAC', 'BRAC University', 'Brac University (BracU) established in 2001 is located in Dhaka Bangladesh. BracU follows a liberal arts approach to education which nurtures fresh ideas and gives new impetus to the field of tertiary education. It ensures a high quality of education and aims to meet the demands of contemporary times. Building on BRACs experience of seeking solutions to challenges posed by extreme poverty, BracU hopes to instill in its students a commitment to working towards national development and progress. The medium of instruction and examination at Brac University is English. BracU is accredited by the University Grants Commission (UGC) and approved by the Ministry of Education, Government of Bangladesh.', '01708812609', 'info@bracu.ac.bd', 'https://www.bracu.ac.bd/', '66 Mohakhali Dhaka 1212 Bangladesh', 'Sir Fazle Hasan Abed', '  Professor Syed Mahfuzul Aziz', 3),
(7, 'uploads/buet.png', '3', 'BUET', 'Bangladesh University of Engineering and Technology', 'Bangladesh University of Engineering and Technology (BUET) is a pioneer in engineering education in Bangladesh. The history of BUET dates back to 1876 when the Dhaka Survey School was founded. Later in 1947, it became an engineering college and gained independent university status in 1962. It is located on a compact 83.9-acre land in the heart of Dhaka, the capital of Bangladesh.', '01797329125', 'support@iict.buet.ac.bd', 'https://www.buet.ac.bd/web/#/', 'ECE Building,Azimpur Rd  Dhaka-1205  Bangladesh', 'Nawab Sir Khwaja Ahsanullah Bahadur', 'Prof. Satya Prasad Majumder', 4),
(8, 'uploads/Morogram_of_Dhaka_Medical_College.svg.png', '51', 'DMC', 'Dhaka Medical College', 'Dhaka Medical College Hospital (DMCH) is the oldest tertiary-level hospital located at the heart of Dhaka., Bangladesh. This hospital started its journey on 10 July 1946 as 200 bedded field hospital for the British Indian armed forces.', '0255165001', 'dmch@hospi.dghs.gov.bd', 'https://dmch.gov.bd/', 'Dhaka Medical College Hospital,Bangladesh', 'Major W. J. Virgin', 'Brig. Gen. Md. Nazmul Haque', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_form`
--

CREATE TABLE `user_form` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `phone` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_form`
--

INSERT INTO `user_form` (`id`, `name`, `email`, `password`, `user_type`, `phone`) VALUES
(4, 'ritu', 'ritu@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'user', 1970950845),
(5, 'Inzamam islam raj', 'raj@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'admin', 1865016322);

-- --------------------------------------------------------

--
-- Table structure for table `wish`
--

CREATE TABLE `wish` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
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
-- Indexes for table `nav`
--
ALTER TABLE `nav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academic_id` (`academic_id`),
  ADD KEY `un-id` (`university_id`);

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
  ADD KEY `u-id` (`university_id`);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `administrative`
--
ALTER TABLE `administrative`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `faculty_member`
--
ALTER TABLE `faculty_member`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nav`
--
ALTER TABLE `nav`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `top_university`
--
ALTER TABLE `top_university`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tution`
--
ALTER TABLE `tution`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `university`
--
ALTER TABLE `university`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_form`
--
ALTER TABLE `user_form`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wish`
--
ALTER TABLE `wish`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic`
--
ALTER TABLE `academic`
  ADD CONSTRAINT `university_id` FOREIGN KEY (`university_id`) REFERENCES `university` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `academic_id` FOREIGN KEY (`academic_id`) REFERENCES `academic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `un-id` FOREIGN KEY (`university_id`) REFERENCES `university` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `top_university`
--
ALTER TABLE `top_university`
  ADD CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tution`
--
ALTER TABLE `tution`
  ADD CONSTRAINT `u-id` FOREIGN KEY (`university_id`) REFERENCES `university` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `university`
--
ALTER TABLE `university`
  ADD CONSTRAINT `nav_id` FOREIGN KEY (`nav_id`) REFERENCES `nav` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
