-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 13 nov 2023 om 22:30
-- Serverversie: 10.4.28-MariaDB
-- PHP-versie: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `huisartssysteem`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `notitie`
--

CREATE TABLE `notitie` (
  `notitie_id` int(5) NOT NULL,
  `datum` date NOT NULL,
  `onderwerp` varchar(50) NOT NULL,
  `tekst` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(5) NOT NULL,
  `voor_naam` varchar(100) NOT NULL,
  `achter_naam` varchar(255) NOT NULL,
  `adres` varchar(150) NOT NULL,
  `huisnummer` varchar(4) NOT NULL,
  `postcode` varchar(30) NOT NULL,
  `plaats` varchar(255) NOT NULL,
  `telefoonnummer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `patient`
--

INSERT INTO `patient` (`patient_id`, `voor_naam`, `achter_naam`, `adres`, `huisnummer`, `postcode`, `plaats`, `telefoonnummer`) VALUES
(1, 'Trevar', 'Askin', '98063 Arrowood Hill', '94', '87', 'Dongshandi', '+86 129 984 6768'),
(2, 'Jolyn', 'Beamish', '76 Harper Terrace', '73', '1', 'Berlin', '+49 747 263 7660'),
(3, 'Elbertine', 'Faulds', '485 Meadow Vale Trail', '49', '814', 'Al Ḩarf', '+967 449 509 2958'),
(4, 'Blondell', 'MacSherry', '2 Namekagon Park', '49', '442', 'Saint-Lô', '+33 412 514 8144'),
(5, 'Mitchael', 'Chenery', '0985 West Hill', '88', '3260', 'Basar', '+86 410 982 6645'),
(6, 'Ado', 'Casarili', '5 Myrtle Road', '13', '143', 'Pemberton', '+1 154 889 2348'),
(7, 'Gaultiero', 'Boatman', '64542 Messerschmidt Plaza', '75', '6', 'Yunxi', '+86 581 465 3686'),
(8, 'Lisha', 'Durtnal', '15344 Briar Crest Alley', '32', '3203', 'Szombathely', '+36 214 618 3693'),
(9, 'Sterne', 'Pagin', '4728 Tony Trail', '94', '31', 'Göteborg', '+46 813 611 7218'),
(10, 'Haily', 'Herculeson', '1179 South Trail', '53', '9310', 'Kertai', '+86 155 853 7460'),
(11, 'Antoinette', 'Challenor', '619 Lindbergh Avenue', '58', '2147', 'Ritaebang', '+62 737 242 4161'),
(12, 'Maritsa', 'Loines', '424 Schiller Parkway', '25', '5650', 'Västerås', '+46 274 836 6986'),
(13, 'Ingram', 'Ianitti', '479 Charing Cross Terrace', '75', '77900', 'Semīrom', '+98 332 846 8848'),
(14, 'Sylvester', 'Braybrook', '4420 Lakewood Gardens Hill', '4', '8', 'Dongli', '+86 820 355 6732'),
(15, 'Annecorinne', 'Pietri', '7 Farragut Circle', '33', '81064', 'Caspisapa', '+51 290 556 3773'),
(16, 'Claudell', 'Bollands', '4 Farwell Drive', '35', '8', 'Saint-Denis', '+262 185 789 8673'),
(17, 'Deva', 'Wennington', '24092 Darwin Point', '91', '062', 'Sorang', '+7 424 205 3424'),
(18, 'Allayne', 'Barfoot', '991 Parkside Crossing', '40', '3', 'Prokuplje', '+381 980 362 9122'),
(19, 'Kaja', 'Szymanowicz', '2240 Ridge Oak Terrace', '59', '52429', 'Taocun', '+86 464 986 5537'),
(20, 'Marcelia', 'Lavielle', '868 Arizona Way', '81', '56837', 'Trambalan', '+62 596 697 5545'),
(21, 'Ada', 'Binch', '87 West Crossing', '63', '4646', 'Guansheng', '+86 573 580 6665'),
(22, 'Neal', 'Atlee', '93104 Larry Court', '37', '8', 'Trucuk', '+62 482 805 2607'),
(23, 'Kathrine', 'Ringe', '90 Ronald Regan Lane', '52', '778', 'Xia’ertai', '+86 523 409 9347'),
(24, 'Audi', 'Gemeau', '98170 Lillian Crossing', '66', '655', 'Hengfeng', '+86 255 602 5026'),
(25, 'Dorie', 'Fossitt', '8333 Barnett Trail', '100', '2', 'Sonzacate', '+503 727 861 6735'),
(26, 'Rolland', 'Betun', '94 Morrow Park', '26', '981', 'Qīr', '+98 529 640 0460'),
(27, 'Nisse', 'Meanwell', '470 Service Alley', '1', '020', 'Ust’-Kachka', '+7 451 341 8807'),
(28, 'Araldo', 'Maker', '05 Scoville Court', '34', '7131', 'Beijiang', '+86 840 733 3254'),
(29, 'Brynne', 'Alforde', '0574 West Circle', '79', '79861', 'Belém', '+55 594 844 1517'),
(30, 'Lynde', 'Cranage', '8 Prairie Rose Plaza', '61', '3', 'Lingdi', '+86 755 830 2182'),
(31, 'Remington', 'Bassil', '1 Dakota Circle', '94', '5693', 'Ebene', '+230 294 728 0519'),
(32, 'Benoit', 'Matovic', '956 Weeping Birch Circle', '90', '97', 'Lewolere', '+62 275 297 5027'),
(33, 'Cyndi', 'Leivers', '4633 Mesta Drive', '41', '35', 'Pocohuanca', '+51 166 381 4083'),
(34, 'Tan', 'Aspinall', '7813 Tennessee Court', '43', '2', 'Saint David’s', '+1 954 544 5976'),
(35, 'Koren', 'Trunks', '8818 7th Court', '17', '6', 'Damatulan', '+63 617 814 7618'),
(36, 'Harriette', 'Haddow', '742 Washington Trail', '45', '2', 'Zango', '+234 461 304 0707'),
(37, 'Nikolos', 'Durnill', '1 Green Ridge Center', '79', '769', 'Boto', '+62 390 621 5081'),
(38, 'Wat', 'Offill', '274 Dakota Junction', '23', '56243', 'Hanyuan', '+86 581 615 3315'),
(39, 'Lilas', 'Billingsly', '2 Haas Hill', '49', '02', 'Boca do Acre', '+55 466 162 3769'),
(40, 'Sallee', 'Castells', '06 Londonderry Pass', '100', '99182', 'Alcala', '+63 887 758 6876'),
(41, 'Teodoor', 'People', '1 Emmet Avenue', '10', '877', 'Hanušovice', '+420 864 213 5245'),
(42, 'Maud', 'Reuther', '78 Fieldstone Alley', '32', '21', 'Zblewo', '+48 779 792 3013'),
(43, 'Kelcy', 'Dunphy', '53 Sachtjen Point', '60', '334', 'Cueto', '+53 346 193 0498'),
(44, 'Sherrie', 'Bristow', '0494 Grim Alley', '37', '72560', 'Springbok', '+27 115 624 3553'),
(45, 'Ivett', 'Coey', '2912 Lukken Place', '34', '304', 'Guanbuqiao', '+86 365 506 9894'),
(46, 'Leisha', 'Stopp', '31034 Huxley Way', '63', '17', 'Xingou', '+86 693 675 4167'),
(47, 'Elliot', 'Hinkensen', '53485 Springs Avenue', '86', '44', 'Rasskazovo', '+7 390 896 3841'),
(48, 'Vaughan', 'Semkins', '5 Russell Way', '52', '39785', 'Andoany', '+261 509 598 1802'),
(49, 'Phylys', 'Campo', '79154 Bashford Trail', '67', '3246', 'Duiwelskloof', '+27 621 596 3657'),
(50, 'Cross', 'Powton', '3115 Marcy Hill', '76', '037', 'Matangshan', '+86 448 934 3219'),
(51, 'Wesley', 'Stockings', '1457 Armistice Park', '98', '67715', 'Xihe', '+86 173 995 5267'),
(52, 'Nadeen', 'Purple', '64 Butterfield Center', '77', '3', 'Eger', '+36 719 587 2976'),
(53, 'Codee', 'Yoxen', '74 Oakridge Court', '77', '88', 'Mafra', '+55 280 836 0393'),
(54, 'Jeremiah', 'Heinrici', '674 Karstens Avenue', '70', '51', 'Genève', '+41 417 419 9016'),
(55, 'Joyan', 'Bleier', '132 Saint Paul Hill', '42', '7', 'Évreux', '+33 873 292 4504'),
(56, 'Charil', 'Schwier', '48 Summer Ridge Plaza', '71', '5101', 'Västra Frölunda', '+46 228 352 2969'),
(57, 'Mendel', 'Fairham', '882 Truax Road', '25', '0', 'Ávato', '+30 991 289 4350'),
(58, 'Joline', 'Salack', '43 Lawn Parkway', '80', '4', 'Kassándreia', '+30 297 392 8706'),
(59, 'Datha', 'Vasilic', '0 Anhalt Trail', '21', '086', 'Langzhong', '+86 661 504 8970'),
(60, 'Pansy', 'Round', '06704 Granby Park', '92', '6', 'Teplice', '+420 819 540 0882'),
(61, 'Meggie', 'Callington', '72239 Maple Point', '58', '9', 'Vidovci', '+385 353 877 9424'),
(62, 'Corty', 'Huggens', '9 New Castle Alley', '19', '0', 'Jiulongshan', '+86 163 641 9771'),
(63, 'Roslyn', 'MacMurray', '429 Summer Ridge Avenue', '38', '3', 'Nueva Gorgona', '+507 267 769 9141'),
(64, 'Chickie', 'Boddie', '76834 Morningstar Plaza', '18', '1', 'Oenunu', '+62 773 741 5895'),
(65, 'Tomaso', 'Knowlden', '0117 Ridgeview Avenue', '82', '2', 'Lela', '+62 897 319 7680'),
(66, 'Adel', 'Boak', '78854 Carey Lane', '6', '9', 'Memphis', '+1 901 653 8500'),
(67, 'Nickolaus', 'Caldron', '49795 Lawn Plaza', '45', '2154', 'Al Wajh', '+966 137 119 8110'),
(68, 'Ramsay', 'Trusler', '808 Veith Place', '55', '72777', 'Huangqiang', '+86 585 404 3404'),
(69, 'Rosco', 'Gunningham', '715 American Parkway', '10', '4562', 'Shimoda', '+81 693 622 3925'),
(70, 'Zelda', 'Perulli', '46854 Larry Hill', '79', '4', 'Kompóti', '+30 303 208 2181'),
(71, 'Raymund', 'Criple', '72 Truax Point', '78', '924', 'Mizunami', '+81 321 964 7628'),
(72, 'Barton', 'Bewlay', '09970 Johnson Crossing', '93', '87', 'Soras', '+51 234 499 6196'),
(73, 'Rosemarie', 'Potten', '8293 Shopko Road', '92', '43', 'Staré Křečany', '+420 378 426 3623'),
(74, 'Wainwright', 'Beers', '93782 Cherokee Place', '28', '5', 'Jiangzhou', '+86 947 685 5121'),
(75, 'Marv', 'Considine', '9 Brentwood Parkway', '83', '21', 'Conception Bay South', '+1 447 849 1307'),
(76, 'Gard', 'Falkner', '4899 Sheridan Point', '61', '3', 'Nong Muang', '+66 510 119 9138'),
(77, 'Douglass', 'Kays', '3251 Menomonie Center', '40', '76', 'Duncan', '+1 829 382 8906'),
(78, 'Artur', 'Ingyon', '96427 Iowa Lane', '13', '9738', 'Mojokerto', '+62 358 730 2820'),
(79, 'Fulvia', 'Compfort', '7560 Kennedy Trail', '69', '57282', 'Toužim', '+420 904 781 1698'),
(80, 'Jonell', 'Sudlow', '705 Oakridge Terrace', '97', '9179', 'Harian', '+62 278 564 5552'),
(81, 'Cris', 'Galfour', '772 Tennyson Center', '38', '257', 'Kiffa', '+222 454 718 3199'),
(82, 'Jess', 'McGovern', '8 Huxley Road', '97', '2507', 'Coari', '+55 337 403 1024'),
(83, 'Florencia', 'Browse', '04 Fuller Way', '3', '35954', 'Racine', '+1 262 998 3959'),
(84, 'Nicko', 'Dreghorn', '488 Nancy Terrace', '33', '6', 'Evinayong', '+240 937 793 5870'),
(85, 'Danit', 'Parnby', '56544 Waywood Street', '30', '42', 'Las Minas', '+507 597 151 8325'),
(86, 'Conney', 'De Lacey', '6887 Mifflin Plaza', '32', '560', 'Dostoyevka', '+7 131 905 4379'),
(87, 'Clarence', 'Clows', '3 Esker Terrace', '51', '98065', 'Toledo', '+1 419 724 6477'),
(88, 'Austin', 'Mordecai', '1000 Carberry Plaza', '77', '70304', 'Nguru', '+234 743 429 3374'),
(89, 'Alva', 'Iskov', '5711 Summer Ridge Street', '22', '8674', 'Batarasa', '+63 163 792 0111'),
(90, 'Langston', 'Ambroisin', '52 Springview Way', '6', '92', 'Uppsala', '+46 939 131 3246'),
(91, 'Vally', 'Defond', '08 Warbler Crossing', '100', '45', 'Nan', '+66 423 325 2004'),
(92, 'Guillaume', 'Kolak', '84 Luster Road', '56', '49', 'Bến Tre', '+84 885 940 6137'),
(93, 'Gert', 'Rowatt', '17640 Cascade Circle', '67', '5', 'Huanggu', '+86 319 473 0264'),
(94, 'Gregorius', 'Mussen', '85 Shelley Way', '90', '258', 'Budapest', '+36 164 788 7022'),
(95, 'Faina', 'Bellhanger', '73 Barby Hill', '6', '507', 'Oslo', '+47 499 396 1981'),
(96, 'Tanner', 'Eyckel', '52678 Calypso Drive', '10', '4', 'Qiagai', '+86 870 503 3480'),
(97, 'Alden', 'Cunio', '509 Twin Pines Lane', '35', '60', 'Odolena Voda', '+420 704 925 2143'),
(98, 'Cherey', 'MacCallister', '3 Butterfield Circle', '75', '7', 'Batawa', '+62 896 671 7752'),
(99, 'Emeline', 'Bowley', '7 Pennsylvania Lane', '48', '89', 'Amagasaki', '+81 366 839 7692'),
(100, 'Tara', 'Spraberry', '63832 American Ash Hill', '65', '5574', 'Panaytayon', '+63 747 537 5900'),
(101, 'Krystle', 'Aitken', '26 Briar Crest Junction', '80', '9', 'President Roxas', '+63 972 475 1650'),
(102, 'Wilie', 'Faucherand', '571 Merry Plaza', '41', '39295', 'Bålsta', '+46 190 201 4521'),
(103, 'Odie', 'Giacovazzo', '9 Johnson Center', '23', '5', 'San José de Río Tinto', '+504 574 396 8630'),
(104, 'Dani', 'Glenny', '751 Crescent Oaks Place', '14', '19795', 'Santa Ana', '+58 659 680 8327'),
(105, 'Indira', 'Farres', '74 Clarendon Court', '46', '17', 'Feodosiya', '+380 775 671 6714'),
(106, 'Fanny', 'Jurges', '28 International Trail', '41', '90041', 'Nouâdhibou', '+222 314 393 3355'),
(107, 'Kitti', 'Cribbins', '82839 Fisk Avenue', '65', '184', 'Dongzaogang', '+86 463 531 7175'),
(108, 'Ailene', 'Gladden', '74866 Sherman Way', '65', '168', 'Alderetes', '+54 172 376 1624'),
(109, 'Kakalina', 'Chark', '32 Eggendart Hill', '63', '39190', 'Arujá', '+55 996 543 2017'),
(110, 'Almira', 'Winnett', '3099 Quincy Pass', '99', '0057', 'Karlstad', '+46 968 244 7236'),
(111, 'Betti', 'Stanlack', '2 Pleasure Point', '41', '590', 'Ke’erlun', '+86 448 435 0530'),
(112, 'Farley', 'Learman', '15 Westridge Lane', '15', '80045', 'Jianping', '+86 305 686 9465'),
(113, 'Rani', 'Ludlom', '0 Lawn Parkway', '40', '03857', 'Concordia', '+51 523 661 8639'),
(114, 'Sallie', 'Wike', '34374 Monica Street', '22', '5103', 'Ludu', '+86 741 377 7726'),
(115, 'Christabel', 'Archbell', '69 Eagan Center', '77', '4821', 'Toulouse', '+33 805 821 0572'),
(116, 'Astrid', 'Franzoli', '671 Dorton Trail', '87', '6860', 'Cortes', '+63 218 638 5851'),
(117, 'Berke', 'McMorran', '8 Fisk Drive', '49', '42', 'Protección', '+504 318 570 0313'),
(118, 'Winona', 'Elden', '666 Birchwood Lane', '57', '37', 'Río Guayabal de Yateras', '+53 342 927 9180'),
(119, 'Baxy', 'Styan', '85 Scofield Plaza', '88', '1', 'Ulricehamn', '+46 633 677 4344'),
(120, 'Berke', 'Ennor', '78987 Quincy Trail', '30', '88522', 'Aguazul', '+57 366 394 5805'),
(121, 'Veriee', 'Leathard', '75 Tennessee Avenue', '23', '0', 'Muli', '+86 464 416 1044'),
(122, 'Thalia', 'Duncan', '060 Jackson Road', '67', '8530', 'Zangbi', '+86 502 735 5411'),
(123, 'Alissa', 'Canacott', '136 8th Avenue', '69', '50445', 'Mashan', '+86 859 451 4200'),
(124, 'Melly', 'Mamwell', '59 Darwin Place', '6', '1', 'Yola', '+234 867 221 3540'),
(125, 'Valaree', 'Hollyer', '27 Glacier Hill Hill', '61', '17', 'Khon Buri', '+66 552 625 5608'),
(126, 'Margaretha', 'Lount', '4 Eggendart Circle', '22', '12427', 'Arrufó', '+54 819 255 1581'),
(127, 'Vally', 'Heimann', '7 Clemons Plaza', '98', '3577', 'Kolwezi', '+242 875 358 7810'),
(128, 'Josey', 'McEvoy', '28 Melody Park', '51', '77435', 'Inđija', '+381 997 659 3374'),
(129, 'Tybie', 'Gelardi', '22 Sheridan Center', '58', '48986', 'Vityazevo', '+7 138 581 4924'),
(130, 'Jessalyn', 'Dibdale', '642 Prairieview Parkway', '56', '00', 'Villa Gesell', '+54 596 340 0126'),
(131, 'Ferdinande', 'Legat', '91503 Arrowood Way', '70', '94242', 'Bacong', '+63 878 882 2510'),
(132, 'Charyl', 'Geikie', '3493 Messerschmidt Alley', '46', '15401', 'Trbovlje', '+386 409 216 3919'),
(133, 'Valdemar', 'Dancer', '22976 Starling Road', '67', '7', 'Kalisangkrah Lor', '+62 620 517 7873'),
(134, 'Charmian', 'Guerner', '55925 Gateway Pass', '88', '06', 'Jami', '+62 242 345 6785'),
(135, 'Gael', 'Spreckley', '8885 Sage Crossing', '59', '74800', 'Skórzec', '+48 661 417 0794'),
(136, 'Joete', 'Gosnell', '666 School Junction', '98', '251', 'Boguszów-Gorce', '+48 709 787 1456'),
(137, 'Jazmin', 'Stainland', '915 Fremont Point', '11', '7864', 'Nagrog', '+62 296 916 7817'),
(138, 'Stanford', 'Pickvance', '2020 Morning Circle', '28', '595', 'Fengshan', '+886 665 555 4477'),
(139, 'Gay', 'Leppard', '57 Onsgard Avenue', '34', '1577', 'Milove', '+380 286 821 3991'),
(140, 'Holden', 'MacFadin', '64916 Cherokee Road', '23', '8', 'Chmielno', '+48 644 862 3397'),
(141, 'Denise', 'Redwall', '62 Dayton Circle', '94', '4943', 'Sanxing', '+86 178 295 6416'),
(142, 'Amii', 'Howgill', '810 Saint Paul Street', '49', '00', 'Beauvais', '+33 587 709 2254'),
(143, 'Henri', 'Thebeaud', '6 Shoshone Point', '6', '38959', 'Huangascar', '+51 143 242 3847'),
(144, 'Candida', 'MacAindreis', '6 High Crossing Way', '23', '43673', 'Woshui', '+86 941 747 1802'),
(145, 'Steffane', 'Spalding', '33 Prentice Parkway', '26', '28114', 'Camplong', '+62 210 494 1798'),
(146, 'Jud', 'Seeney', '54203 Sommers Circle', '17', '01339', 'Manevychi', '+380 795 406 5280'),
(147, 'Eli', 'Ballintyne', '22393 Badeau Place', '46', '12', 'Ciduren', '+62 191 532 5921'),
(148, 'Nigel', 'Stedall', '47625 Grover Alley', '11', '9390', 'Picoto', '+351 737 411 9964'),
(149, 'Verge', 'Winchcombe', '7 Sutteridge Center', '44', '19', 'Novopokrovskaya', '+7 981 510 2006'),
(150, 'Garey', 'Checcuzzi', '39 Upham Plaza', '66', '10', 'Yuncao', '+86 298 363 3584'),
(151, 'Bethina', 'Swindin', '798 Forest Dale Park', '2', '00780', 'Novovoronezh', '+7 812 595 4178'),
(152, 'Brenna', 'Westmore', '43181 Grover Pass', '17', '89', 'Portelinha', '+351 661 134 0385'),
(153, 'Rowney', 'Fosdick', '948 Summer Ridge Place', '21', '61074', 'San Isidro', '+63 667 949 7978'),
(154, 'Brockie', 'O\'Donoghue', '06679 Briar Crest Junction', '55', '5', 'Yulin', '+86 913 882 3013'),
(155, 'Shirlee', 'Bifield', '87695 Valley Edge Plaza', '24', '6', 'Campos', '+55 210 790 1672'),
(156, 'Roxi', 'Waslin', '567 Blaine Circle', '9', '6867', 'Gaotai', '+86 491 732 0453'),
(157, 'Annamarie', 'Hannond', '22 Gale Point', '20', '2824', 'U Minh', '+84 278 889 5260'),
(158, 'Erminia', 'Niaves', '57394 Acker Street', '98', '5451', 'Vilkija', '+370 265 267 5337'),
(159, 'Dana', 'Huller', '29223 Thackeray Pass', '8', '48276', 'Banraeaba Village', '+686 201 518 4949'),
(160, 'Wallie', 'Croisier', '8 Chinook Pass', '7', '62828', 'Sơn Tịnh', '+84 475 625 1800'),
(161, 'Axe', 'Gallaher', '44979 Brickson Park Trail', '53', '2767', 'Nevers', '+33 160 369 6972'),
(162, 'Willie', 'Fann', '2861 Little Fleur Lane', '81', '9', 'Lukavec', '+420 415 124 4455'),
(163, 'Henryetta', 'O\' Donohue', '45054 Grover Point', '5', '0', 'Al Wuday‘', '+967 624 946 5086'),
(164, 'Ike', 'Rutledge', '2 Fairfield Point', '44', '42', 'Nam Som', '+66 105 587 1305'),
(165, 'Angie', 'Hiley', '6325 Pepper Wood Road', '98', '481', 'Wangjing', '+86 434 275 4521'),
(166, 'Maryjane', 'Abbots', '7961 Calypso Terrace', '12', '8748', 'Kitami', '+81 249 481 5244'),
(167, 'Sheila', 'Vlies', '705 Straubel Center', '91', '1', 'Zhob', '+92 496 459 0191'),
(168, 'Mariana', 'Girk', '0445 Stang Junction', '3', '37', 'Springfield', '+1 217 405 2938'),
(169, 'Budd', 'Tidmas', '040 Coleman Way', '50', '50', 'Naha-shi', '+81 684 342 6727'),
(170, 'Adele', 'Fritche', '57437 Moose Circle', '73', '2', 'Beyla', '+224 513 622 7159'),
(171, 'Parrnell', 'Trighton', '05 Ryan Plaza', '64', '217', 'Al Karmil', '+970 565 720 0107'),
(172, 'Evangelina', 'Kelling', '625 Tony Drive', '23', '6', 'Bautista', '+63 315 921 3937'),
(173, 'Melba', 'Ogborne', '744 Hallows Drive', '1', '40196', 'Ḩalāwah', '+962 322 506 5582'),
(174, 'Jacinthe', 'Pinnigar', '21303 Blue Bill Park Center', '46', '19019', 'Wangunjaya', '+62 579 647 4754'),
(175, 'Ernst', 'Piecha', '58454 Welch Road', '71', '0607', 'Bagenalstown', '+353 424 573 9932'),
(176, 'Bridgette', 'Beswick', '05 Continental Park', '20', '4433', 'Yūki', '+81 193 223 7023'),
(177, 'Gerry', 'Lapping', '78 Roth Road', '63', '233', 'Gaohong', '+86 985 404 2954'),
(178, 'Sully', 'Dykas', '1435 Granby Road', '2', '061', 'Jing’an', '+86 629 602 0741'),
(179, 'Keri', 'Garrigan', '14867 Rockefeller Park', '75', '99', 'Göteborg', '+46 138 614 6230'),
(180, 'Alanson', 'Jados', '2 Memorial Avenue', '34', '4526', 'Rio Negrinho', '+55 968 966 5557'),
(181, 'Theda', 'Power', '2498 Jay Hill', '96', '828', 'Raffingora', '+263 376 226 7979'),
(182, 'Meagan', 'Oxnam', '5 Manley Way', '5', '89481', 'Hejiabao', '+86 579 438 4214'),
(183, 'Mariska', 'Willerton', '518 Spohn Trail', '43', '68174', 'Manhuaçu', '+55 781 686 0391'),
(184, 'Natalee', 'MacPadene', '7546 Dakota Drive', '16', '4', 'Macau', '+55 361 283 9556'),
(185, 'Merilyn', 'Jeffes', '298 Cottonwood Trail', '89', '70', 'Lacabamba', '+51 684 222 1988'),
(186, 'Meris', 'Ricardot', '81422 Sachs Junction', '40', '0', 'Březová nad Svitavou', '+420 844 212 2031'),
(187, 'Hollyanne', 'MacEntee', '06069 Fairview Alley', '39', '580', 'Lesnoye', '+7 446 201 9933'),
(188, 'Judah', 'Georgeau', '41310 Thackeray Junction', '48', '4', 'Néos Oropós', '+30 786 158 1332'),
(189, 'Lonny', 'Legen', '778 Fair Oaks Place', '41', '3317', 'Balayong', '+63 390 467 3454'),
(190, 'Nariko', 'Baxstare', '78361 Maple Wood Terrace', '67', '2', 'Zhaixi', '+86 623 288 5784'),
(191, 'Dennet', 'Tildesley', '25 Menomonie Trail', '60', '64', 'Wangcun', '+86 719 574 0066'),
(192, 'Ephraim', 'Charke', '471 Bartillon Pass', '46', '1', 'Fershampenuaz', '+7 159 871 5500'),
(193, 'Sergio', 'Walewski', '15 Eastlawn Alley', '7', '01', 'Ijuí', '+55 748 116 9969'),
(194, 'Auria', 'Bendix', '111 Center Avenue', '39', '695', 'Aborlan', '+63 872 507 9910'),
(195, 'Willdon', 'Squibbs', '2860 Hudson Park', '21', '12', 'Shidong', '+86 154 422 1622'),
(196, 'Martelle', 'Vinton', '9866 Golf View Circle', '39', '40599', 'Klutuk', '+62 597 161 8274'),
(197, 'Avivah', 'Axelby', '96524 Bonner Alley', '79', '6319', 'Hisya', '+963 762 416 7576'),
(198, 'Jeramie', 'Latchmore', '8293 Farragut Avenue', '52', '97410', 'Dalongdong', '+86 546 887 1239'),
(199, 'Davida', 'Spurdle', '058 Havey Point', '85', '791', 'Salanegara', '+62 791 766 6534'),
(200, 'Penni', 'Oakwood', '79153 Reindahl Crossing', '1', '60', 'La Purisima', '+52 150 497 8030'),
(201, 'Dimitry', 'Pennoni', '7355 Dexter Trail', '84', '3', 'Limeil-Brévannes', '+33 155 340 2884'),
(202, 'Fletch', 'Chasen', '46133 Hoepker Center', '85', '058', 'Kawęczyn', '+48 667 252 9595'),
(203, 'Emlyn', 'Bigrigg', '0949 Sutherland Point', '37', '6', 'Shemursha', '+7 243 588 3856'),
(204, 'Kyla', 'Derham', '124 Killdeer Terrace', '3', '77227', 'Šmarje pri Jelšah', '+386 715 405 0253'),
(205, 'Agnes', 'Jzhakov', '65131 Dwight Court', '38', '85', 'Hagonoy', '+63 850 778 4391'),
(206, 'Linnell', 'Blanckley', '4 Emmet Crossing', '31', '4', 'West Jerusalem', '+972 460 857 1934'),
(207, 'Catlaina', 'Kuhnke', '5665 Summit Parkway', '16', '16', 'Hanover', '+1 444 823 1891'),
(208, 'Jorry', 'Barstow', '49 Luster Way', '23', '958', 'Novo Aripuanã', '+55 235 861 9652'),
(209, 'Constantine', 'Ponting', '46 Tomscot Alley', '75', '2', 'Koror', '+680 133 516 1230'),
(210, 'Hilde', 'Glading', '791 Magdeline Court', '69', '92452', 'Houten', '+31 562 726 9093'),
(211, 'Brittne', 'Flaonier', '675 Lunder Way', '35', '2297', 'Ulsan', '+82 746 565 8370'),
(212, 'Caprice', 'Classen', '53 Crownhardt Center', '7', '04', 'Asahikawa', '+81 161 705 3586'),
(213, 'Magda', 'Gaule', '7287 Pond Plaza', '77', '257', 'Angoulême', '+33 899 826 9279'),
(214, 'Vincents', 'Keattch', '9893 Cherokee Plaza', '32', '098', 'Baro', '+63 928 913 3256'),
(215, 'Mathian', 'Turbefield', '45479 Veith Pass', '65', '7', 'Marādah', '+218 700 940 8754'),
(216, 'Husain', 'Golborne', '20 Clemons Court', '43', '31', 'Tsotsin-Yurt', '+7 603 115 1905'),
(217, 'Osborne', 'Oloman', '5 Parkside Court', '40', '935', 'Chacarita', '+506 960 889 4473'),
(218, 'Blane', 'Matlock', '5494 Hollow Ridge Point', '54', '4746', 'Xingshou', '+86 891 502 9633'),
(219, 'Lark', 'Scamerdine', '2 Rutledge Alley', '58', '5107', 'Saint-Quentin', '+33 965 878 8196'),
(220, 'Reinold', 'Croft', '07468 American Circle', '57', '43435', 'Dayr al Ghuşūn', '+970 659 621 9206'),
(221, 'Rolland', 'Heersema', '8216 Green Ridge Drive', '14', '724', 'Sremčica', '+381 321 389 9240'),
(222, 'Pietra', 'Smallacombe', '56969 Linden Junction', '97', '838', 'Akron', '+1 330 180 6078'),
(223, 'Bevin', 'Hamblyn', '1 Maple Parkway', '10', '9', 'Xingbin', '+86 781 468 7829'),
(224, 'Carol-jean', 'Kenworthey', '59 Jackson Park', '14', '1', 'Kindersley', '+1 684 218 0936'),
(225, 'Maximilien', 'Fathers', '258 Maple Trail', '38', '668', 'Murmashi', '+7 260 517 1754'),
(226, 'Amaleta', 'Abbay', '3 Crest Line Trail', '33', '509', 'Liangshan', '+86 675 792 8037'),
(227, 'Katusha', 'Krier', '862 Hintze Place', '64', '51', 'Costa Sacate', '+54 753 758 3916'),
(228, 'Margit', 'Arnout', '981 Daystar Center', '17', '15', 'Lusigang', '+86 629 938 4005'),
(229, 'Cammy', 'Petrolli', '35 Moland Street', '50', '45815', 'Benzilan', '+86 777 527 2481'),
(230, 'Caria', 'Farra', '1 Prairieview Pass', '48', '54796', 'Gyōda', '+81 726 157 1184'),
(231, 'Minna', 'Frensche', '0954 Fuller Point', '65', '6', 'Tarakan', '+62 929 858 6215'),
(232, 'Adore', 'Newbigging', '8 Independence Hill', '84', '038', 'Fada N\'gourma', '+226 866 868 4082'),
(233, 'Kaye', 'Vinson', '888 Manitowish Junction', '64', '19749', 'Jiushe', '+86 983 549 2749'),
(234, 'Kent', 'Eliaz', '97105 Badeau Place', '43', '92336', 'Hongchuan', '+86 955 354 5191'),
(235, 'Anette', 'Mosby', '7 Charing Cross Avenue', '14', '4', 'Kota Kinabalu', '+60 798 726 0589'),
(236, 'Ira', 'Patterson', '9842 Bartelt Place', '82', '945', 'Khiv', '+7 921 376 2989'),
(237, 'Jaimie', 'Perkin', '0587 Old Gate Court', '75', '96561', 'Paris 02', '+33 524 444 1248'),
(238, 'Alon', 'Geekie', '2 Division Avenue', '86', '22', 'Vichy', '+33 955 929 9335'),
(239, 'Franky', 'Dono', '72499 North Hill', '14', '215', 'Komprachcice', '+48 284 855 7896'),
(240, 'Westleigh', 'Ilewicz', '17 Cordelia Center', '73', '4', 'Las Flores', '+52 914 310 2571'),
(241, 'Debora', 'Taffee', '682 Autumn Leaf Pass', '72', '00', 'Changliu', '+86 494 917 1119'),
(242, 'Eimile', 'Brummitt', '479 Merrick Drive', '90', '0965', 'Delães', '+351 721 163 6248'),
(243, 'Brnaba', 'Goulder', '432 Bowman Junction', '61', '04', 'Pokhara', '+977 832 299 7031'),
(244, 'Zackariah', 'Fuente', '606 Schurz Point', '98', '9036', 'Deir Ḥannā', '+972 614 367 1539'),
(245, 'Vida', 'Golbourn', '824 Morrow Terrace', '36', '40', 'Nanyang', '+86 686 612 8401'),
(246, 'Gail', 'Semorad', '95361 Eggendart Hill', '38', '2717', 'Slobodskoy', '+7 780 763 1024'),
(247, 'Reiko', 'Wassung', '204 Jackson Way', '19', '9418', 'Jabungsisir', '+62 549 482 4909'),
(248, 'Giorgi', 'Waith', '9754 Thompson Way', '79', '6123', 'Pitrufquén', '+56 989 751 1942'),
(249, 'Christel', 'Cromer', '4176 Bellgrove Drive', '9', '97049', 'Marinhais', '+351 599 683 0475'),
(250, 'Carleton', 'Maddox', '6 Bultman Point', '23', '63904', 'Batudulang', '+62 180 265 5369'),
(251, 'Marcelia', 'Goghin', '26977 Roth Street', '68', '84112', 'Nanding', '+86 802 614 2845'),
(252, 'Georgena', 'Pellingar', '98374 Iowa Circle', '1', '132', 'Luhačovice', '+420 998 747 2654'),
(253, 'Fletcher', 'Brady', '07379 Loomis Way', '35', '58617', 'Makariv', '+380 565 866 4777'),
(254, 'Mitchael', 'Lodden', '9 Schiller Parkway', '75', '5', 'Zhuangxing', '+86 760 134 6600'),
(255, 'Filippa', 'Bruntje', '53 Hudson Hill', '34', '4282', 'Baturaden', '+62 948 395 0208'),
(256, 'Keene', 'Lehon', '730 Kennedy Hill', '45', '163', 'Marantao', '+63 205 825 5045'),
(257, 'Nanon', 'Reckless', '6978 Dahle Junction', '45', '315', 'Porsgrunn', '+47 146 584 8288'),
(258, 'Bevon', 'MacCard', '85483 Utah Terrace', '20', '00515', 'Auray', '+33 712 149 7976'),
(259, 'Simone', 'Stolworthy', '84 Novick Drive', '35', '7101', 'San Jose', '+63 435 875 4897'),
(260, 'Vidovic', 'Bawles', '71 Hayes Junction', '8', '73', 'Kista', '+46 316 126 9392'),
(261, 'Fabian', 'Walter', 'Swammerdamlaan', '6', '6721 BK', 'Bennekom', '+31 123 456 789'),
(262, 'Max', 'Elzerman', 'Weeldijk', '1', '8888 AA', 'Standdaarbuiten', '+31 123 456 789');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `patient_has_notitie`
--

CREATE TABLE `patient_has_notitie` (
  `patient_patient_id` int(5) NOT NULL,
  `notitie_notitie_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `notitie`
--
ALTER TABLE `notitie`
  ADD PRIMARY KEY (`notitie_id`);

--
-- Indexen voor tabel `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexen voor tabel `patient_has_notitie`
--
ALTER TABLE `patient_has_notitie`
  ADD KEY `patient_patient_id` (`patient_patient_id`,`notitie_notitie_id`),
  ADD KEY `notitie_notitie_id` (`notitie_notitie_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `notitie`
--
ALTER TABLE `notitie`
  MODIFY `notitie_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `patient_has_notitie`
--
ALTER TABLE `patient_has_notitie`
  ADD CONSTRAINT `patient_has_notitie_ibfk_1` FOREIGN KEY (`patient_patient_id`) REFERENCES `patient` (`patient_id`),
  ADD CONSTRAINT `patient_has_notitie_ibfk_2` FOREIGN KEY (`notitie_notitie_id`) REFERENCES `notitie` (`notitie_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
