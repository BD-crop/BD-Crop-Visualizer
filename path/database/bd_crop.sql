-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2026 at 05:29 AM
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
-- Database: `bd_crop`
--

-- --------------------------------------------------------

--
-- Table structure for table `crops`
--

CREATE TABLE `crops` (
  `crop name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `District_name` varchar(100) NOT NULL,
  `description` varchar(1000) DEFAULT '',
  `imagePath` varchar(1000) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`District_name`, `description`, `imagePath`) VALUES
('Bogra', 'Bogra District, officially Bogura District[3] (Bengali: বগুড়া জেলা), is a district in the northern part of Bangladesh, in Rajshahi Division.[4] Bogra is an industrial city where many small and mid-sized companies are sited. Bogra was a part of the Pundravardhana territory of ancient Bengal and the ruins of its capital can be found in northern Bogra. Bogra is named after the independent sultan of Bengal Nasiruddin Bughra Khan (1287–1291).', 'https://upload.wikimedia.org/wikipedia/commons/9/91/Kherua_Mosque_Sherpur.jpg;https://upload.wikimedia.org/wikipedia/commons/8/8c/Mahasthangar_Gokul_Medh_Bogra_Bangladesh_%283%29.JPG;https://upload.wikimedia.org/wikipedia/commons/e/e1/Sannasir_Vita_%28Front%29.jpg;https://en.wikipedia.org/wiki/Bogra_District#/map/0'),
('Dinajpur', 'Dinajpur District (Bengali: দিনাজপুর জেলা) is a district in Rangpur Division of northern Bangladesh. Dinajpur is the largest among all sixteen northern districts of Bangladesh.', 'https://upload.wikimedia.org/wikipedia/commons/7/7e/Nawabganj_National_Park_Dinajpur_3254.jpg;https://upload.wikimedia.org/wikipedia/commons/6/6e/West_side_of_Sura_Mosque.jpg;https://upload.wikimedia.org/wikipedia/commons/2/22/Dinajpur_Railway_Bridge.jpg;https://upload.wikimedia.org/wikipedia/commons/7/7e/BD_Dinajpur_District_locator_map.svg'),
('Gaibandha', 'Gaibandha District (Bengali: গাইবান্ধা জেলা) is a district in northern Bangladesh, located within Rangpur Division. Covering an area of 2,179.27 square kilometers (841.42 sq mi), it had a population of 2,562,232 as of the 2022 census. The district\'s administrative headquarters and largest urban center is Gaibandha town. Originally established as a subdivision in 1875 under the name Bhabaniganj, it was renamed Gaibandha in the same year. On February 15, 1984, Gaibandha was officially upgraded to district status. The district is known for its agricultural production, particularly rice, jute, and vegetables, and is situated at the confluence of several major rivers, including the Jamuna, Teesta, and Brahmaputra.', 'https://en.wikipedia.org/wiki/Gaibandha#/media/File:Friendship_Centre_Gaibandha,_December_2016_07.jpg;https://upload.wikimedia.org/wikipedia/commons/f/ff/BD_Gaibandha_District_locator_map.svg;https://upload.wikimedia.org/wikipedia/commons/0/07/Fulsori_Ghat_Gaibandha.jpg'),
('Jamalpur', 'Jamalpur District (Bengali: জামালপুর জেলা) is a district in Bangladesh, and part of Mymensingh Division. It was established in 1978 during the rule of Ziaur Rahman. It has its headquarters in Jamalpur', 'https://upload.wikimedia.org/wikipedia/commons/d/d7/Zilla_Shilpakala_Academy%2C_Jamalpur_%282%29_%28cropped%29.jpg;https://en.wikipedia.org/wiki/Jamalpur_District#/media/File:Sarishabari,_Jamalpur,_Bangladesh_(31245373515).jpg;https://upload.wikimedia.org/wikipedia/commons/6/67/View_in_a_Village_of_Bangladesh.jpg;https://upload.wikimedia.org/wikipedia/commons/2/29/BD_Jamalpur_District_locator_map.svg'),
('Joypurhat', 'Joypurhat District (Bengali: জয়পুরহাট জেলা) is a district in northern Bangladesh, and part of Rajshahi Division.', 'https://upload.wikimedia.org/wikipedia/commons/0/00/Green_City_of_Bangladesh.jpg;https://upload.wikimedia.org/wikipedia/commons/3/36/BD_Joypurhat_District_locator_map.svg'),
('Kurigram', 'Kurigram District (Bengali: কুড়িগ্রাম জেলা) is a district of Bangladesh in Rangpur Division. The district is located in northern Bangladesh along the country\'s border with India.[4] Under British rule, the area was organized as a mahakuma and was not established as a district until 1984 under Chief Martial Law Administrator, Hussain Muhammad Ershad\'s decentralization programme.', 'https://upload.wikimedia.org/wikipedia/commons/a/a1/Chandamari_mosqu1.jpg;https://upload.wikimedia.org/wikipedia/commons/c/cf/Munshibari.jpg;https://upload.wikimedia.org/wikipedia/commons/3/3d/BD_Kurigram_District_locator_map.svg'),
('Lalmonirhat', 'Lalmonirhat District (Bengali: লালমনিরহাট জেলা) is a District, situated at the northern border of Bangladesh. It is a part of the Rangpur Division.[2] Lalmonirhat mahakuma was established as a district on 1 February 1984. To the north of Lalmonirhat lie Cooch Behar and Jalpaiguri districts of West Bengal; to the south lies Rangpur, to the east lie Kurigram and Cooch Behar; and to the west of lie Rangpur and Nilphamari District. The international border line of Lalmonirhat district is 281.6 km long.', 'https://upload.wikimedia.org/wikipedia/commons/1/1c/Tista_Barrage_-_panoramio_%284%29.jpg;https://upload.wikimedia.org/wikipedia/commons/7/7b/Tin_Bigha_Corridor_%28%E0%A6%A4%E0%A6%BF%E0%A6%A8%E0%A6%AC%E0%A6%BF%E0%A6%98%E0%A6%BE_%E0%A6%95%E0%A6%B0%E0%A6%BF%E0%A6%A1%E0%A6%B0%29_144.jpg;https://upload.wikimedia.org/wikipedia/commons/f/f0/Tista_River_%2834824169324%29.jpg;https://upload.wikimedia.org/wikipedia/commons/0/04/BD_Lalmonirhat_District_locator_map.svg'),
('Mymensingh', 'Mymensingh District (Bengali: ময়মনসিংহ জেলা) is a district in Mymensingh Division Bangladesh, and is bordered in the north by Meghalaya, India and the Garo Hills, in the south by Gazipur District, in the east by the districts of Netrokona and Kishoreganj and in the west by the districts of Sherpur, Jamalpur and Tangail.[4] Mymensingh is the 8th administrative divisional headquarters and 12th city corporation of Bangladesh. According to Ministry of Public Administration, Mymensingh is ranked 4th in district status. The density of Mymensingh city is 44,458/km2 (115,150/sq mi) which is the second most densely populated city in Bangladesh. Mymensingh attracts 25 percent of health tourists visiting Bangladesh. It was once known as the largest district of the Indian subcontinent. Mymensingh town is the district headquarters.', 'https://upload.wikimedia.org/wikipedia/commons/9/90/A_front_view_of_Shashi_Lodge_4.jpg;https://upload.wikimedia.org/wikipedia/commons/a/a7/JKKNIU_Top_View.jpg;https://upload.wikimedia.org/wikipedia/commons/0/0b/Rayhan_29_Sep_17_08.png;https://en.wikipedia.org/wiki/Mymensingh_District#/media/File:BD_Mymensingh_District_locator_map.svg'),
('Naogaon', 'Naogaon District (Bengali: নওগাঁ জেলা) is a district in northern Bangladesh, and part of Rajshahi Division.[4] It is named after its headquarters, the city of Naogaon in Naogaon Sadar Upazila.', 'https://upload.wikimedia.org/wikipedia/commons/9/9f/NaogaonDistrict_Bangladesh.jpg;https://upload.wikimedia.org/wikipedia/commons/2/28/BD_Naogaon_District_locator_map.svg'),
('Natore', 'Natore District (Bengali: নাটোর জেলা) is a district in Rajshahi Division located in northern Bangladesh. It borders the metropolitan city of Rajshahi and used to be a part of Rajshahi District.', 'https://upload.wikimedia.org/wikipedia/commons/a/ad/Uttara_Gonobhaban_01-Porag61.jpg;https://upload.wikimedia.org/wikipedia/commons/9/9b/Chalon_Bil%2C_Natore.JPG;https://upload.wikimedia.org/wikipedia/commons/5/50/BD_Natore_District_locator_map.svg'),
('Nawabganj', 'Chapai Nawabganj or Chapainawabganj District (Bengali: চাঁপাইনবাবগঞ্জ জেলা), often colloquially simply called Chapai (Bengali: চাঁপাই) is a district of the Rajshahi Division. It is located in the north-western part of Bangladesh. The north and western-part of Chapainawabganj is bounded by Malda and Murshidabad districts of India, the east by Naogaon District, and south-east by Rajshahi District.', 'https://upload.wikimedia.org/wikipedia/commons/c/ce/BD_Chapai_Nawabganj_District_locator_map.svg;https://upload.wikimedia.org/wikipedia/commons/7/7e/Chapai_%E0%A6%8F%E0%A6%B0_%E0%A6%9B%E0%A7%8B%E0%A6%9F_%E0%A6%B8%E0%A7%8B%E0%A6%A8%E0%A6%BE%E0%A6%AE%E0%A6%B8%E0%A6%9C%E0%A6%BF%E0%A6%A6.jpg;https://upload.wikimedia.org/wikipedia/commons/3/3e/%E0%A6%A4%E0%A6%BE%E0%A6%B9%E0%A6%96%E0%A6%BE%E0%A6%A8%E0%A6%BE.jpg'),
('Netrakone', 'Netrokona District, also spelt Netrakona District (Bengali: নেত্রকোণা জেলা), is a district of Mymensingh Division in north-eastern Bangladesh.', 'https://upload.wikimedia.org/wikipedia/commons/c/ca/Beautiful_Durgapur.jpg;https://upload.wikimedia.org/wikipedia/commons/a/a1/%E0%A6%95%E0%A7%87%E0%A6%A8%E0%A7%8D%E0%A6%A6%E0%A7%81%E0%A6%AF%E0%A6%BC%E0%A6%BE%E0%A6%B0_%E0%A6%B0%E0%A7%8B%E0%A6%AF%E0%A6%BC%E0%A6%BE%E0%A6%87%E0%A6%B2_%E0%A6%AC%E0%A6%BE%E0%A6%A1%E0%A6%BC%E0%A6%BF_%E0%A6%97%E0%A7%8D%E0%A6%B0%E0%A6%BE%E0%A6%AE%E0%A7%87_%E0%A6%B0%E0%A7%8B%E0%A6%AF%E0%A6%BC%E0%A6%BE%E0%A6%87%E0%A6%B2_%E0%A6%A6%E0%A7%81%E0%A6%B0%E0%A7%8D%E0%A6%97_%E0%A6%85%E0%A6%AC%E0%A6%B8%E0%A7%8D%E0%A6%A5%E0%A6%BF%E0%A6%A4.jpg;https://upload.wikimedia.org/wikipedia/commons/d/da/Birishiri_Durgapur_Netrokona.jpg;https://upload.wikimedia.org/wikipedia/commons/7/7d/BD_Netrokona_District_locator_map.svg'),
('Nilphamari', 'Nilphamari District (Bengali: নীলফামারী জেলা) is a district in Northern Bangladesh. It is a part of Rangpur Division. It is about 350 kilometers to the northwest of the capital Dhaka. It has an area of 1,580.85 square kilometres (610.37 sq mi). Nilphamari is bounded by Rangpur and Lalmonirhat in east, Rangpur and Dinajpur in south, Dinajpur and Panchagarh in west, Cooch Behar of India in north.[3] The headquarters of the district is in Nilphamari city, which is widely regarded as the industrial city of Northern Bangladesh. Saidpur which is major business center of the district also serves as connecting hub of Rangpur.', 'https://upload.wikimedia.org/wikipedia/commons/6/60/%E0%A6%9A%E0%A6%BF%E0%A6%A8%E0%A6%BF_%E0%A6%AE%E0%A6%B8%E0%A6%9C%E0%A6%BF%E0%A6%A6.jpg;https://upload.wikimedia.org/wikipedia/commons/e/ec/Kangchenjunga_From_Teesta_Barrage.jpg;https://upload.wikimedia.org/wikipedia/commons/c/c8/Saidpurairport-renovated.jpg;https://upload.wikimedia.org/wikipedia/commons/c/c9/BD_Nilphamari_District_locator_map.svg'),
('Panchagargh', 'Panchagarh District (Bengali: পঞ্চগড় জেলা) is a district of the Rangpur Division in Northern Bangladesh. Panchagarh is the northernmost district of Bangladesh. It lies between 26º00\' and 26º38\' north latitudes and between 88º19\' and 88º49\' east longitudes. It was established as a district on 1 February 1984.', 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Kanchenjunga_view_from_Bangladesh.jpg;https://upload.wikimedia.org/wikipedia/commons/0/0a/Beautifull_Mirzapur_Mosque.jpg;https://upload.wikimedia.org/wikipedia/commons/3/3b/Tea_Garden_at_Tetulia.jpg;https://upload.wikimedia.org/wikipedia/commons/3/31/BD_Panchagarh_District_locator_map.svg'),
('Rajshahi', 'ajshahi (Bengali: রাজশাহী, pronounced [radʒ.ʃaɦi] ⓘ) is a metropolitan city and a major urban, administrative, commercial and educational centre of Bangladesh. It is also the administrative seat of the eponymous division and district. It is also the largest city of North Bengal. Located on the north bank of the Padma River, near the Bangladesh–India border, the city is surrounded by the satellite towns of Nowhata and Katakhali of Paba Upazila, which together build an urban agglomeration of about 1 million population', 'https://en.wikipedia.org/wiki/Rajshahi#/media/File:Rajshahi_city_(3).jpg;https://upload.wikimedia.org/wikipedia/commons/0/08/Varendra_Research_Museum_10.jpg;https://upload.wikimedia.org/wikipedia/commons/e/ee/Bangladesh_Rajshahi_district_locator_map.svg'),
('Rangpur', 'Rangpur (/rɒŋpʊər/; Bengali: রংপুর, romanized: Rongpur; pronounced [rɔŋpuɾ] ⓘ) is a major metropolitan city in Bangladesh. This city serves as the administrative center of the Rangpur Division. It is strategically located on the banks of the Ghaghat River and near the Teesta River.[4] It is the second-largest city corporation in Bangladesh.', 'https://upload.wikimedia.org/wikipedia/commons/5/5d/Tajhat_Rajbari_-_Side_View_%28cropped%29.jpg;https://upload.wikimedia.org/wikipedia/commons/9/98/Rangpur_Town_Hall.jpg;https://upload.wikimedia.org/wikipedia/commons/2/29/Rangpur_City_Corporation_in_Rangpur_division_%28Bangladesh%29.svg'),
('Sherpur', 'Sherpur District (Bengali: শেরপুর জেলা) is a district in northern Bangladesh. It is a part of Mymensingh Division. Sherpur District was a sub-division of Jamalpur District before 1984. It was upgraded to a district on February 22, 1984 under Hussain Muhammad Ershad\'s decentralization programme. Sherpur City is located about 197–199 kilometres (122–124 mi) north of Dhaka, the capital of Bangladesh.', 'https://upload.wikimedia.org/wikipedia/commons/5/51/Mai_Saheba_Mosque_-_2.jpg;https://upload.wikimedia.org/wikipedia/commons/9/93/%E0%A6%98%E0%A6%BE%E0%A6%98%E0%A6%A1%E0%A6%BC%E0%A6%BE_%E0%A6%96%E0%A6%BE%E0%A6%A8_%E0%A6%AC%E0%A6%BE%E0%A6%A1%E0%A6%BC%E0%A6%BF_%E0%A6%9C%E0%A6%BE%E0%A6%AE%E0%A7%87_%E0%A6%AE%E0%A6%B8%E0%A6%9C%E0%A6%BF%E0%A6%A6%E0%A7%87%E0%A6%B0_%E0%A6%A1%E0%A6%BE%E0%A6%A8_%E0%A6%AA%E0%A6%BE%E0%A6%B6.jpg;https://upload.wikimedia.org/wikipedia/commons/5/58/BD_Sherpur_District_locator_map.svg'),
('Thakurgaon', 'Thakurgaon District (Bengali: ঠাকুরগাঁও জেলা) is a district in northwestern Bangladesh. It is part of Rangpur Division and borders India to the west.[3] It was established as a mahakuma in 1860 consisting of 7 thanas named Thakurgaon sadar, Baliadangi, Pirganj, Ranishankail, Haripur, Bhulli and Ruhia. In 1947, it was re-established as a mahakuma including 3 thanas of Jalpaiguri and a thana of Kochbihar of India. In 1981, Atwari was included in the new Panchagarh District and the area was shrunk in just 5 thanas. It was established as a district on 1 February 1984', 'https://upload.wikimedia.org/wikipedia/commons/3/38/%E0%A6%AC%E0%A6%BE%E0%A6%B2%E0%A6%BF%E0%A6%AF%E0%A6%BC%E0%A6%BE_%E0%A6%AE%E0%A6%B8%E0%A6%9C%E0%A6%BF%E0%A6%A6.jpg;https://en.wikipedia.org/wiki/Thakurgaon_District#/media/File:Over_view_the_biggest_mango_tree_in_asia_situated_at_Thakurgaon_in_bangladesh.png;https://upload.wikimedia.org/wikipedia/commons/0/0d/BD_Thakurgaon_District_locator_map.svg');

-- --------------------------------------------------------

--
-- Table structure for table `district wise production of crop`
--

CREATE TABLE `district wise production of crop` (
  `District name` varchar(20) NOT NULL,
  `Area` decimal(10,5) DEFAULT 0.00000,
  `production` decimal(10,5) DEFAULT 0.00000,
  `Financial Year` varchar(20) NOT NULL,
  `Year midpoint` decimal(5,2) NOT NULL,
  `Crop name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `year wise crop production`
--

CREATE TABLE `year wise crop production` (
  `Financial Year` varchar(20) NOT NULL,
  `year_midpoint` decimal(5,1) NOT NULL,
  `crop_name` varchar(100) NOT NULL,
  `crop_type` varchar(100) NOT NULL,
  `area` decimal(10,5) DEFAULT 0.00000,
  `Total production` decimal(10,10) DEFAULT 0.0000000000,
  `Yield Rate` decimal(10,10) DEFAULT 0.0000000000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crops`
--
ALTER TABLE `crops`
  ADD PRIMARY KEY (`crop name`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`District_name`);

--
-- Indexes for table `district wise production of crop`
--
ALTER TABLE `district wise production of crop`
  ADD KEY `Crop name` (`Crop name`);

--
-- Indexes for table `year wise crop production`
--
ALTER TABLE `year wise crop production`
  ADD KEY `crop_name` (`crop_name`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `district wise production of crop`
--
ALTER TABLE `district wise production of crop`
  ADD CONSTRAINT `district wise production of crop_ibfk_1` FOREIGN KEY (`Crop name`) REFERENCES `crops` (`crop name`);

--
-- Constraints for table `year wise crop production`
--
ALTER TABLE `year wise crop production`
  ADD CONSTRAINT `year wise crop production_ibfk_1` FOREIGN KEY (`crop_name`) REFERENCES `crops` (`crop name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
