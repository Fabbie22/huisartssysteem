-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 16 nov 2023 om 21:40
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
-- Tabelstructuur voor tabel `account`
--

CREATE TABLE `account` (
  `account_id` int(5) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `account`
--

INSERT INTO `account` (`account_id`, `user_name`, `password`, `email`) VALUES
(3, 'admin', 'admin', 'admin@admin.nl');

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

--
-- Gegevens worden geëxporteerd voor tabel `notitie`
--

INSERT INTO `notitie` (`notitie_id`, `datum`, `onderwerp`, `tekst`) VALUES
(2, '2023-11-15', 'Hoofdpijn', '- Paracetamol tegen de pijn\r\n- Zalfje tegen de pijn'),
(3, '2023-11-15', 'Hoofdpijn', '- Paracetamol voor de pijn'),
(5, '2023-11-15', 'Inmiddels overleden', '--'),
(6, '2023-11-15', 'Hoofdpijn', '- Paracetamol gegeven tegen de pijn');

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
  `telefoonnummer` varchar(100) NOT NULL,
  `actief` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `patient`
--

INSERT INTO `patient` (`patient_id`, `voor_naam`, `achter_naam`, `adres`, `huisnummer`, `postcode`, `plaats`, `telefoonnummer`, `actief`) VALUES
(1, 'Bas', 'Kuijper', 'Visserdijk', '59', '3989 VB', 'Nieuw-Weerdinge', '95-59285182', 0),
(2, 'Niels', 'Van der Zee', 'Neptunusstraat', '15', '7168 EJ', 'Gorinchem', '51-53880882', 1),
(3, 'Thijs', 'De Koning', 'Acacialaan', '61', '4797 UV', 'Hendrik-Ido-Ambacht', '51-85639518', 1),
(4, 'Bart', 'Van der Sloot', 'Schoolstraat', '45', '3469 WW', 'Heerenveen', '39-93229308', 1),
(5, 'Mathijs', 'Van der Kraan', 'Callenburgstraat', '72', '7048 HN', 'Zaanstad', '47-32803157', 1),
(6, 'Michiel', 'Van der Meer', 'Rembrandtlaan', '26', '5864 FF', 'Vierakker', '26-04083764', 1),
(7, 'Teun', 'Van der Westen', 'Beukenhof', '7', '9658 KY', 'Sint-Oedenrode', '79-79978623', 0),
(8, 'Edwin', 'Smeets', 'Beatrixstraat', '29', '4936 NN', 'Uithuizen', '76-53635157', 1),
(9, 'Hugo', 'Van den Brink', 'Marnixstraat', '37', '3029 UA', 'Vianen', '96-89139305', 1),
(10, 'Edwin', 'Van der Stoep', 'Binnenweg', '80', '6877 ZL', 'Losser', '82-01580177', 1),
(11, 'Roy', 'Van der Kamp', 'Lindenlaan', '64', '4239 UY', 'Hilversum', '81-42770897', 1),
(12, 'Thijs', 'Van Leeuwen', 'Beethovenstraat', '92', '3182 NC', 'Woubrugge', '95-95762899', 1),
(13, 'Tom', 'Van der Schoot', 'Anna Paulownastraat', '15', '9610 GZ', 'Loon op Zand', '69-48209120', 1),
(14, 'Mart', 'Van der Voort', 'Beukenhof', '65', '6198 WE', 'Tiel', '48-61118986', 1),
(15, 'Arjan', 'Van der Vaart', 'Havenstraat', '88', '1705 DM', 'Maassluis', '42-81849325', 1),
(16, 'Niek', 'Vos', 'Dokter van Doornplein', '39', '3364 JR', 'Gouda', '06-46682270', 0),
(17, 'Chris', 'Van der Vliet', 'Graaf Florisstraat', '2', '4727 CW', 'Geldrop', '27-08391565', 1),
(18, 'Thomas', 'Martijnse', 'Spoorstraat', '22', '1397 GG', 'Sittard', '70-74131295', 1),
(19, 'Jelle', 'De Bruin', 'Zeeheldenstraat', '1', '0729 IU', 'Gouda', '80-40536146', 1),
(20, 'Ferry', 'Van der Hoorn', 'Esdoornlaan', '9', '2968 GP', 'Velsen-Zuid', '62-23465698', 0),
(21, 'Stefan', 'Martens', 'Narcissenstraat', '19', '0037 FY', 'Haaksbergen', '14-79207546', 1),
(22, 'Hugo', 'Van den Broek', 'Admiraal de Ruyterweg', '41', '9242 OW', 'Zwijndrecht', '29-41025945', 1),
(23, 'Daan', 'Van der Pluijm', 'Churchilllaan', '52', '9891 SV', 'Geldermalsen', '71-38364084', 1),
(24, 'Arjan', 'Van der Horst', 'Van Limburg Stirumstraat', '100', '2230 TD', 'Nieuw-Lekkerland', '97-91631224', 1),
(25, 'Luuk', 'Van der Vlist', 'Narcissenstraat', '73', '1526 PA', 'Driebergen-Rijsenburg', '79-89261624', 0),
(26, 'Arjan', 'Van der Vegt', 'Koningstraat', '79', '9929 ML', 'Rhoon', '09-69575992', 0),
(27, 'Raymond', 'Hendrikx', 'Tegelbergstraat', '6', '0617 ZG', 'Zwijndrecht', '74-42219956', 1),
(28, 'Bas', 'Van Dam', 'Korte Groenendaal', '71', '5196 PY', 'Oss', '79-46056256', 1),
(29, 'Justin', 'Vis', 'Albert Cuypstraat', '80', '7413 NO', 'Utrecht', '38-48708071', 1),
(30, 'Bas', 'Martijnse', 'Brahmsstraat', '42', '8643 PZ', 'Zwolle', '53-12953267', 1),
(31, 'Ronald', 'De Vries', 'Mozartlaan', '2', '7147 QE', 'Sliedrecht', '32-97805167', 1),
(32, 'Sjoerd', 'Van der Waal', 'Acacialaan', '50', '3537 FG', 'Vries', '37-43976554', 1),
(33, 'Joost', 'Van der Waal', 'Patrijsstraat', '48', '7833 KM', 'Elst', '79-69104884', 0),
(34, 'Martijn', 'Van der Steeg', 'Dorpsstraat', '26', '9029 ZA', 'Leerdam', '43-87948992', 1),
(35, 'Hugo', 'Martens', 'Goudsbloemstraat', '59', '2106 JY', 'Wierden', '47-25832682', 1),
(36, 'Edwin', 'Driessen', 'Berkenlaan', '11', '4285 SL', 'Woerden', '93-03108472', 1),
(37, 'Timo', 'Gerritsen', 'Sint Agathaplein', '22', '3886 RV', 'Naaldwijk', '13-06920957', 1),
(38, 'Gerben', 'Van den Broek', 'Trompstraat', '13', '8665 EV', 'Nijkerk', '73-11712408', 1),
(39, 'Gerard', 'Van Dijk', 'Koningstraat', '65', '2245 JX', 'Hoofddorp', '83-90202208', 1),
(40, 'Wouter', 'Van der Sanden', 'Van Limburg Stirumstraat', '2', '1378 JT', 'Rotterdam', '79-97599074', 1),
(41, 'Arno', 'Van der Velden', 'Korte Groenendaal', '83', '7355 JH', 'Oss', '33-75288645', 1),
(42, 'Thijs', 'Van de Velde', 'Kerkstraat', '24', '3351 VS', 'Boxtel', '19-91395268', 1),
(43, 'Wilco', 'Van den Heuvel', 'Mozartlaan', '81', '0262 CQ', 'Boxtel', '32-58640419', 1),
(44, 'Ferry', 'De Jong', 'Schubertstraat', '57', '7379 TB', 'Kampen', '94-23268666', 1),
(45, 'Bas', 'Kuijpers', 'Thorbeckestraat', '71', '8827 ZY', 'Borne', '93-14164680', 0),
(46, 'Jochem', 'De Graaf', 'Lijsterbeslaan', '38', '5137 AV', 'Roderesch', '45-88850600', 1),
(47, 'Bram', 'Van der Aa', 'Abraham Kuyperstraat', '87', '8959 JN', 'Assen', '83-27532611', 1),
(48, 'Timo', 'Van Rooij', 'Grote Markt', '34', '9355 TZ', 'Venlo', '65-14973532', 1),
(49, 'Lars', 'Verdonk', 'Tuinstraat', '87', '0202 AO', 'Maassluis', '17-37116900', 1),
(50, 'Rens', 'Van der Lelie', 'Zuiderstraat.', '40', '3971 JS', 'Roermond', '17-67443828', 1),
(51, 'Bas', 'Smit', 'Tuinstraat', '89', '7982 NX', 'Veghel', '49-03356611', 1),
(52, 'Bas', 'De Haan', 'Koningstraat', '71', '2218 PU', 'Olst', '01-40475997', 1),
(53, 'Pascal', 'Petersen', 'Acacialaan', '94', '2022 WQ', 'Leeuwarden', '77-54825601', 1),
(54, 'Willem', 'Van der Munnik', 'Anjelierstraat', '58', '1614 KB', 'Waalwijk', '28-82586884', 1),
(55, 'Niek', 'Van der Schelde', 'Jacob Catsstraat', '76', '2305 PD', 'Voorburg', '58-88101613', 1),
(56, 'Johan', 'De Vries', 'Albert Cuypstraat', '54', '8274 IX', 'Assen', '79-41216130', 1),
(57, 'Edwin', 'Vis', 'Dorpsstraat', '30', '1152 ZB', 'Gouda', '40-50040282', 1),
(58, 'Gijs', 'Van der Schoot', 'Marnixstraat', '35', '1884 BI', 'Oosterhout', '92-48291359', 1),
(59, 'Ferry', 'Van der Wal', 'De Hooghstraat', '17', '5600 ZW', 'Borne', '33-96963161', 1),
(60, 'Martijn', 'Van der Wal', 'Vierambachtstraat', '65', '2672 GG', 'Woubrugge', '68-03254976', 1),
(61, 'Richard', 'Van der Zee', 'Zeeheldenstraat', '10', '9958 PB', 'Alkmaar', '42-37196756', 1),
(62, 'Tom', 'Van der Ploeg', 'Vondelstraat', '1', '3033 NG', 'Hoogerheide', '40-25309694', 1),
(63, 'Teun', 'Jansen', 'Vierambachtstraat', '61', '8135 RZ', 'Winterswijk', '14-01115262', 1),
(64, 'Thijs', 'Van der Noord', 'Prins Bernhardstraat', '38', '3020 XU', 'Houten', '48-72336840', 1),
(65, 'Pascal', 'Mulder', 'Damstraat', '26', '4039 TL', 'Culemborg', '81-60436168', 1),
(66, 'Ferry', 'Van der Westen', 'Brahmsstraat', '63', '7803 NS', 'Doetinchem', '94-00875079', 1),
(67, 'Willem', 'Van der Heijen', 'Hoge Rijndijk', '59', '4802 PT', 'Boxtel', '91-75873613', 1),
(68, 'Jorn', 'Jacobs', 'Sweelinckstraat', '44', '0516 JG', 'Leiden', '05-93751721', 1),
(69, 'Maarten', 'Van der Kolk', 'Akkerstraat', '76', '3396 LB', 'Den Helder', '20-89027214', 1),
(70, 'Bas', 'Van der Meulen', 'Berkenlaan', '63', '7712 DI', 'Oss', '29-43697635', 1),
(71, 'Joost', 'Van der Vlist', 'Beekstraat', '15', '1721 OX', 'Breukelen', '20-32479984', 1),
(72, 'Luuk', 'De Klerk', 'Goudsbloemstraat', '17', '2366 WR', 'Nieuw-Lekkerland', '04-57576735', 1),
(73, 'Gerard', 'Van Dam', 'Tegelbergstraat', '64', '8735 XE', 'Someren', '89-40539412', 1),
(74, 'Joost', 'Van der Poel', 'Albert Cuypstraat', '38', '6834 RB', 'Willemstad', '92-44751479', 1),
(75, 'Jasper', 'Van der Post', 'Callenburgstraat', '91', '3581 IP', 'Borssele', '25-14990634', 1),
(76, 'Sander', 'Van der Zanden', 'De Vriesstraat', '12', '6388 PF', 'Tilburg', '12-43540618', 1),
(77, 'Timo', 'Verbeek', 'Zonnebloemstraat', '32', '6218 NX', 'Meppel', '44-69056463', 1),
(78, 'Arjan', 'Driessen', 'Havenstraat', '88', '9167 JT', 'Castricum', '36-05857113', 1),
(79, 'Ronald', 'Janssens', 'Hugo de Grootstraat', '90', '2699 NJ', 'Nieuw-Lekkerland', '54-78681625', 1),
(80, 'Ruud', 'Vink', 'Steijnstraat', '88', '7286 BF', 'Zevenaar', '57-85780725', 1),
(81, 'Dennis', 'Van der Meer', 'Julianalaan', '18', '7862 LK', 'Meppel', '58-92714033', 1),
(82, 'Mathijs', 'De Klerk', 'Bloemenstraat', '33', '4849 YD', 'Vlissingen', '33-59678807', 1),
(83, 'Leon', 'Van der Kraaij', 'Havenstraat', '63', '9573 MZ', 'Venray', '37-98704847', 1),
(84, 'Joost', 'Dijkstra', 'Nassaulaan', '73', '4840 FV', 'Boxtel', '05-96409936', 1),
(85, 'Sander', 'Van der Scheur', 'Anjelierstraat', '68', '8612 IC', 'Driebergen-Rijsenburg', '27-21179630', 1),
(86, 'Jorn', 'Van Beek', 'Churchilllaan', '48', '2554 LC', 'Hengelo', '21-23439971', 1),
(87, 'Joost', 'Van der Hoorn', 'Galileistraat', '53', '1012 IE', 'Amsterdam-Zuidoost', '98-46157734', 1),
(88, 'Jasper', 'Van der Zwaan', 'Handelskade', '93', '8770 YU', 'Barendrecht', '33-06212278', 1),
(89, 'Hugo', 'Peters', 'Beukenhof', '78', '7434 YP', 'Nieuw-Weerdinge', '79-24126532', 1),
(90, 'Alexander', 'Van der Klaauw', 'Hendriklaan', '3', '1854 BV', 'Spijkenisse', '04-57463465', 1),
(91, 'Maarten', 'Van Dijk', 'Zandstraat', '1', '5323 PN', 'Harderwijk', '36-78529495', 1),
(92, 'Gijs', 'Smeets', 'Rozenstraat', '96', '0239 FA', 'Amersfoort', '95-60848481', 1),
(93, 'Hugo', 'Smit', 'Havenstraat', '58', '0881 LG', 'Tilburg', '56-62836963', 1),
(94, 'Ronald', 'Van der Laak', 'Nassaulaan', '8', '1276 MS', 'Woerden', '82-79550376', 1),
(95, 'Pascal', 'Van der Velden', 'Marnixstraat', '32', '8551 FC', 'Zeewolde', '22-43385021', 1),
(96, 'Bart', 'Van der Laan', 'Cornelis de Wittstraat', '36', '8908 ZM', 'Helmond', '14-20949198', 1),
(97, 'Martijn', 'Van der Linden', 'Nassaulaan', '44', '9134 AE', 'Hoogeveen', '35-62011946', 1),
(98, 'Arjan', 'Van der Schoot', 'Korenstraat', '18', '9157 NM', 'Boxtel', '67-37101616', 1),
(99, 'Bas', 'Van der Velde', 'Hugo de Grootstraat', '1', '1677 KM', 'Spijkenisse', '58-17441796', 1),
(100, 'Kevin', 'Vink', 'Eikenlaan', '58', '1528 CH', 'Elburg', '48-88220463', 1),
(101, 'Jorn', 'Van der Plas', 'Colijnstraat', '16', '0790 ZE', 'Winterswijk', '48-53377924', 1),
(102, 'Jim', 'Verbeek', 'Zeeheldenstraat', '1', '0159 LM', 'Bergen op Zoom', '07-68745634', 1),
(103, 'Bas', 'Van der Kolk', 'Parkstraat', '54', '6341 ZG', 'Groningen', '21-52548943', 1),
(104, 'Michel', 'Koster', 'Koningstraat', '82', '5288 YK', 'Oldenzaal', '87-33099534', 1),
(105, 'Timo', 'Hendriksen', 'Fahrenheitstraat', '56', '1203 IB', 'Vlissingen', '80-68191990', 1),
(106, 'Harm', 'Koster', 'Prinses Irenelaan', '75', '1819 XG', 'Vianen', '80-08581641', 1),
(107, 'Jasper', 'Van der Westen', 'Anjelierstraat', '92', '7149 GA', 'Vierakker', '65-53086060', 1),
(108, 'Rik', 'Van der Zanden', 'Van Swietenstraat', '46', '0166 PG', 'Naarden', '96-29869207', 1),
(109, 'Michel', 'Van der Laar', 'Simon Carmiggeltstraat', '15', '8767 UV', 'Renswoude', '12-76500141', 1),
(110, 'Ronald', 'Van den Heuvel', 'Anna Paulownastraat', '46', '3680 KB', 'Veldhoven', '47-71056810', 1),
(111, 'Peter', 'Verbeke', 'Westerstraat', '20', '8162 DK', 'Maarssen', '21-32096438', 1),
(112, 'Stefan', 'Hendriks', 'Schuttersveld', '17', '4435 FG', 'Kerkrade', '13-23818777', 1),
(113, 'Jelle', 'Van der Stoep', 'Hazelaarlaan', '40', '7845 VT', 'Wolvega', '02-98563195', 1),
(114, 'Marco', 'Van der Westen', 'Jasmijnstraat', '57', '0503 CB', 'Losser', '43-28551666', 1),
(115, 'Casper', 'Van der Wijk', 'Vierambachtstraat', '26', '6776 FY', 'Pijnacker', '78-55313742', 1),
(116, 'Alexander', 'Van Dijk', 'Prins Bernhardstraat', '65', '9443 ML', 'Voorschoten', '40-46260549', 1),
(117, 'Niek', 'Van der Vorst', 'Handelskade', '64', '9064 DM', 'Almere', '11-60880916', 1),
(118, 'Stefan', 'Van der Plas', 'Stadhoudersweg', '11', '5240 HJ', 'Zwijndrecht', '11-72923707', 1),
(119, 'Jelle', 'Van der Velde', 'Esdoornlaan', '19', '8244 RT', 'Noordwijk-Binnen', '08-64713398', 1),
(120, 'Lucas', 'Kramer', 'Bachstraat', '71', '6920 HC', 'Olst', '38-92619012', 1),
(121, 'Gijs', 'Van der Westen', 'Anna Paulownastraat', '80', '1081 XG', 'Kampen', '51-67622985', 1),
(122, 'Sjoerd', 'Mulder', 'Damstraat', '49', '0518 IT', 'Beverwijk', '70-24891451', 1),
(123, 'Vincent', 'De Haan', 'Singel', '94', '2047 FT', 'Losser', '71-06429749', 1),
(124, 'Chris', 'Van der Noord', 'Prins Bernhardstraat', '17', '7996 CF', 'Leeuwarden', '56-29785355', 1),
(125, 'Fabian', 'Schouten', 'Prins Bernhardstraat', '79', '4209 SW', 'Veenendaal', '99-60283299', 1),
(126, 'Guus', 'Van den Akker', 'Stadhoudersweg', '65', '7437 PW', 'Wassenaar', '05-60383493', 1),
(127, 'Ruben', 'Van der Klaauw', 'De Houtmanstraat', '41', '7770 AM', 'Uden', '74-13292791', 1),
(128, 'Roel', 'Van der Scheur', 'Parkstraat', '27', '9452 ZP', 'Benthuizen', '45-37305590', 1),
(129, 'Alexander', 'Hendriks', 'Van Limburg Stirumstraat', '17', '5060 VF', 'Zwolle', '50-24228654', 1),
(130, 'Simon', 'Jacobsen', 'Dennenlaan', '58', '3791 AT', 'Harderwijk', '72-42001160', 1),
(131, 'Bas', 'De Rooij', 'Simon Carmiggeltstraat', '45', '2808 ZP', 'Beuningen', '60-55594254', 1),
(132, 'Simon', 'De Rooij', 'Neptunusstraat', '42', '1633 DI', 'Gemert', '62-45554812', 1),
(133, 'Maarten', 'Van der Weide', 'Korte Mare', '37', '0955 XM', 'Hilversum', '62-02962334', 1),
(134, 'Julian', 'Van der Laan', 'Tegelbergstraat', '15', '6405 IM', 'Venlo', '11-46169136', 1),
(135, 'Harm', 'Van der Pluijm', 'Goudsbloemstraat', '61', '1043 ZS', 'Pijnacker', '48-18620108', 1),
(136, 'Thomas', 'Verbeke', 'Veerstraat', '35', '3942 VZ', 'Elst', '53-73315345', 1),
(137, 'Mathijs', 'Van der Lelie', 'Kanaalstraat', '93', '0373 HM', 'Almelo', '74-06302407', 1),
(138, 'Arno', 'Van der Harst', 'Grote Markt', '75', '4487 OZ', 'Helmond', '45-89484937', 1),
(139, 'Simon', 'Koning', 'Steijnstraat', '39', '8773 MF', 'Nederhorst den Berg', '96-93193802', 1),
(140, 'Joris', 'Maes', 'Olivier van Noortstraat', '1', '3120 MA', 'Pijnacker', '93-00989328', 1),
(141, 'Pascal', 'Van der Voort', 'Dreef', '46', '1716 MF', 'Olst', '48-08722019', 1),
(142, 'Leon', 'Van den Brink', 'Binnenweg', '61', '9637 QX', 'Vlaardingen', '63-80644991', 1),
(143, 'Jesse', 'Van der Noord', 'Wilhelminapark', '16', '1159 YL', 'Lelystad', '31-01698110', 1),
(144, 'Ferry', 'Gerritsen', 'Kerkstraat', '35', '0359 WT', 'Pijnacker', '79-21256396', 1),
(145, 'Kevin', 'Van der Stoep', 'Steijnstraat', '7', '9955 OD', 'Lisse', '93-17065263', 1),
(146, 'Hugo', 'Van der Laan', 'Nachtegaalstraat', '94', '6862 JU', 'Geertruidenberg', '06-92179810', 1),
(147, 'Stan', 'Van der Zee', 'Korte Mare', '72', '5111 BI', 'Woerden', '13-45592694', 1),
(148, 'Michel', 'Vink', 'Pieter Corneliszoon Hooftstraat', '94', '3950 KM', 'Leiderdorp', '24-12090124', 1),
(149, 'Dennis', 'De Bruin', 'Koningstraat', '86', '4518 US', 'Zwijndrecht', '45-86377214', 1),
(150, 'Ferry', 'Van der Neut', 'Voorstraat', '96', '4598 NM', 'Hellevoetsluis', '62-22896217', 1),
(151, 'Jasper', 'Van der Velden', 'Korenstraat', '36', '0534 VJ', 'Waarder', '85-85992760', 1),
(152, 'Tom', 'Van der Klaauw', 'Crocusstraat', '89', '9343 XO', 'Vaassen', '47-39478886', 1),
(153, 'Niels', 'Van der Laak', 'Maerten van Heemskerckstraat', '2', '1263 BM', 'Geertruidenberg', '59-67363121', 1),
(154, 'Thijs', 'Willems', 'Van Oldenbarneveltstraat', '26', '8877 HT', 'Leerdam', '04-16918540', 1),
(155, 'Joost', 'Van der Reijden', 'Clausstraat', '23', '0672 PX', 'Zwolle', '28-24124385', 1),
(156, 'Joost', 'Van der Horst', 'Galileistraat', '16', '0799 HC', 'Woerden', '61-16453035', 1),
(157, 'Justin', 'Van der Wal', 'Vinkenstraat', '65', '9387 JO', 'Boxtel', '57-57341506', 1),
(158, 'Alexander', 'Peeters', 'Hugo de Grootstraat', '42', '2304 YW', 'Lelystad', '77-86307659', 1),
(159, 'Kevin', 'Wouters', 'Albert Cuypstraat', '15', '0602 TO', 'Amsterdam-Zuidoost', '94-73471975', 1),
(160, 'Jorn', 'Van der Linden', 'Hazelaarlaan', '82', '6513 CU', 'Waddinxveen', '20-05918397', 1),
(161, 'Gerard', 'Van der Schelde', 'Zonnebloemstraat', '66', '8374 JB', 'Oud-Beijerland', '64-52798629', 1),
(162, 'Bas', 'Van den Bosch', 'Irisstraat', '73', '5004 QK', 'Woerden', '71-46594826', 1),
(163, 'Edwin', 'Van der Noord', 'Nassaulaan', '95', '9136 QW', 'Uithuizen', '42-23580911', 1),
(164, 'Arjan', 'Janssen', 'Admiraal de Ruyterweg', '56', '2941 VJ', 'Den Helder', '63-92858571', 1),
(165, 'Roel', 'Van der Vaart', 'Clausstraat', '72', '5077 VS', 'Delft', '26-42851974', 1),
(166, 'Vincent', 'Van der Meer', 'Sweelinckstraat', '29', '2869 NE', 'Vlissingen', '71-11478405', 1),
(167, 'Laurens', 'De Haan', 'Hugo de Grootstraat', '45', '4731 CJ', 'Vries', '42-41417088', 1),
(168, 'Martijn', 'Van der Hout', 'Zonnebloemstraat', '95', '7354 EF', 'Wolvega', '11-74055859', 1),
(169, 'Arjan', 'Van der Beek', 'Rhijnvis Feithstraat', '22', '0060 KI', 'Voorschoten', '78-88847106', 1),
(170, 'Frank', 'Van der Zanden', 'Iepenlaan', '93', '2698 YJ', 'Velsen-Zuid', '27-53254973', 1),
(171, 'Roel', 'Teunissen', 'Bredeweg', '69', '7137 AL', 'Gouda', '95-56536363', 1),
(172, 'Jan-Willem', 'Jansen', 'Beatrixstraat', '42', '3047 FA', 'Tegelen', '69-87526385', 1),
(173, 'Niek', 'Van der Munnik', 'Cornelis de Wittstraat', '64', '1220 VE', 'Losser', '81-27531367', 1),
(174, 'Jordi', 'Van der Broek', 'Bredeweg', '8', '3609 JK', 'Scheveningen', '63-77708036', 1),
(175, 'Martijn', 'Koster', 'Parkstraat', '79', '8386 CY', 'Eindhoven', '01-30604798', 1),
(176, 'Michiel', 'Van der Zanden', 'Bredeweg', '12', '3948 QJ', 'Hellevoetsluis', '53-43442766', 1),
(177, 'Chris', 'Van der Wal', 'Tegelbergstraat', '47', '6529 CV', 'Renswoude', '34-04251300', 1),
(178, 'Jochem', 'Van der Molen', 'De Vriesstraat', '10', '7488 WK', 'Sliedrecht', '18-69349101', 1),
(179, 'Danny', 'Van der Steen', 'Parkstraat', '73', '9498 PC', 'Schiedam', '66-93298329', 1),
(180, 'Henk', 'Vos', 'Dahliastraat', '18', '3410 CQ', 'Maarssen', '72-16789820', 1),
(181, 'Jan', 'De Bruin', 'Vlietweg', '72', '0713 WO', 'Goes', '78-61220825', 1),
(182, 'Jeroen', 'Van der Sanden', 'Veerstraat', '80', '3841 SU', 'Geldrop', '88-46369923', 1),
(183, 'Thomas', 'Van der Hoek', 'Rozenstraat', '21', '1363 GP', 'Wijlre', '52-36538677', 1),
(184, 'Vincent', 'Hendriksen', 'De Hooghstraat', '3', '2210 IA', 'Alphen aan den Rijn', '80-43013221', 1),
(185, 'Edwin', 'Van der Sanden', 'Apollolaan', '25', '7103 CS', 'Medemblik', '46-69042311', 1),
(186, 'Alexander', 'Van der Kolk', 'Stationsweg', '88', '6889 CB', 'Sprundel', '74-44143267', 1),
(187, 'Lars', 'Van der Noord', 'Galileistraat', '31', '4236 JB', 'Hoogerheide', '02-27031250', 1),
(188, 'Daan', 'Koster', 'Zonnebloemstraat', '53', '5363 XL', 'Uden', '12-14242733', 1),
(189, 'René', 'Van der Laan', 'Pieter Corneliszoon Hooftstraat', '99', '3990 XK', 'Weesp', '52-90547402', 1),
(190, 'Mathijs', 'Van der Laan', 'Prinses Beatrixstraat', '41', '2511 PQ', 'Baarn', '95-47349261', 1),
(191, 'Harm', 'Van der Ven', 'Hoge Rijndijk', '53', '7402 BG', 'Middelburg', '34-44710774', 1),
(192, 'Joost', 'De Boer', 'Zonnebloemstraat', '46', '2094 UF', 'Nieuw-Weerdinge', '16-90513031', 1),
(193, 'Dennis', 'Peeters', 'Olivier van Noortstraat', '94', '3942 IY', 'Maarssen', '10-38586728', 1),
(194, 'Maarten', 'Willemsen', 'Patrijsstraat', '12', '6794 EA', 'Soest', '41-43936429', 1),
(195, 'Vincent', 'De Koning', 'Parkstraat', '71', '5845 HV', 'Gouda', '14-87563607', 1),
(196, 'Wouter', 'Hoekstra', 'De Houtmanstraat', '62', '4407 MX', 'Culemborg', '65-40656612', 1),
(197, 'Jelle', 'Van der Pol', 'Beatrixstraat', '37', '7343 DM', 'Ypenburg', '44-11655343', 1),
(198, 'Martin', 'De Bruin', 'Sweelinckstraat', '22', '5044 IQ', 'Woerden', '17-37723116', 1),
(199, 'Bas', 'Van der Pluijm', 'Voscuyl', '42', '8038 II', 'Berkel en Rodenrijs', '25-65397249', 1),
(200, 'Jelle', 'Van der Schelde', 'Parkstraat', '25', '4461 MN', 'Borssele', '27-22858412', 1),
(201, 'Bart', 'Meijer', 'De Vriesstraat', '21', '1468 GN', 'Enschede', '81-70438730', 1),
(202, 'René', 'Van der Neut', 'Fahrenheitstraat', '91', '5325 QX', 'Heemstede', '50-12548512', 1),
(203, 'Jorn', 'Van der Linde', 'Kruisweg', '55', '8312 QE', 'Uithuizen', '06-51325620', 1),
(204, 'Boris', 'Van der Reijden', 'Sweelinckstraat', '64', '2285 WF', 'Rijswijk', '26-73020858', 1),
(205, 'Stefan', 'Van der Heide', 'Vlietweg', '75', '6411 BX', 'Pijnacker', '70-06482202', 1),
(206, 'Alexander', 'Smeets', 'Peperstraat', '96', '7077 WZ', 'Maarssen', '94-58594047', 1),
(207, 'Erik', 'Van Loon', 'Dreef', '54', '2339 FK', 'Wijchen', '27-50125235', 1),
(208, 'Jeroen', 'Van den Broek', 'Crocusstraat', '35', '6229 GJ', 'Rotterdam', '31-68954969', 1),
(209, 'Mark', 'Van der Wal', 'Colijnstraat', '8', '2971 KX', 'Purmerend', '30-03193732', 1),
(210, 'Thomas', 'Van der Heijen', 'Wilhelminapark', '38', '6392 XD', 'Zevenaar', '19-65022148', 1),
(211, 'Sjoerd', 'Willemsen', 'Schubertstraat', '74', '5960 DK', 'Sint-Oedenrode', '69-82981034', 1),
(212, 'Ivo', 'Scholten', 'Beethovenstraat', '81', '3463 XQ', 'Zoetermeer', '47-52615663', 1),
(213, 'Guus', 'Van Dijk', 'Spoorstraat', '87', '6748 RZ', 'Wassenaar', '90-75802825', 1),
(214, 'Jan', 'Van der Leij', 'Dokter van Doornplein', '23', '9948 EN', 'Apeldoorn', '22-97713088', 1),
(215, 'Ronald', 'Bosman', 'Callenburgstraat', '89', '3887 TB', 'Eersel', '90-69176336', 1),
(216, 'Tom', 'Van der Vorst', 'Admiraal de Ruyterweg', '17', '0881 FV', 'Eindhoven', '70-64206700', 1),
(217, 'Ruben', 'Van der Sloot', 'Zuiderstraat.', '53', '6704 JT', 'Woerden', '24-29959969', 1),
(218, 'Gerben', 'Van der Broek', 'Berkenlaan', '73', '5856 XQ', 'Vriezenveen', '93-52818655', 1),
(219, 'Jelle', 'Van der Velde', 'Rembrandtlaan', '42', '6130 TG', 'Beverwijk', '96-19190813', 1),
(220, 'Tim', 'Van den Heuvel', 'Wagnerstraat', '96', '6500 VO', 'Gorinchem', '18-11519177', 1),
(221, 'Matthijs', 'Bosman', 'Laan van Nieuw Oost-Indië', '37', '9864 DX', 'Leusden', '48-98407519', 1),
(222, 'Maarten', 'Van der Velden', 'De Ruijterstraat', '7', '9386 ZS', 'Geldermalsen', '58-67073718', 1),
(223, 'Ruben', 'Van der Ploeg', 'Industrieweg', '25', '5125 YS', 'Nieuw-Weerdinge', '40-79519303', 1),
(224, 'Jordi', 'Van der Vegt', 'Dahliastraat', '71', '2259 BR', 'Hengelo', '14-16572793', 1),
(225, 'Sander', 'Van der Wal', 'De Vriesstraat', '91', '8449 BU', 'Zwolle', '74-46910089', 1),
(226, 'Gijs', 'Van der Kamp', 'De Savornin Lohmanlaan', '61', '0549 WM', 'Vlissingen', '81-20734276', 1),
(227, 'Mark', 'Smeets', 'Sweelinckstraat', '34', '5483 GA', 'Hoogeveen', '23-32301895', 1),
(228, 'Jesse', 'Van der Vegt', 'Wagnerstraat', '97', '1780 UZ', 'Vries', '71-02124565', 1),
(229, 'Thijs', 'Kuijper', 'Veerstraat', '10', '6408 SC', 'Ternaard', '74-60068040', 1),
(230, 'Olivier', 'Van der Wal', 'Korte Mare', '62', '7144 RD', 'Maassluis', '50-07715176', 1),
(231, 'Dirk', 'Van der Hoorn', 'Noorderstraat', '91', '6642 HT', 'Goirle', '71-97456747', 1),
(232, 'Daan', 'Van den Heuvel', 'Narcissenstraat', '31', '9647 OE', 'Ede', '36-01483734', 0),
(233, 'Bram', 'Van der Meer', 'Jacob Catsstraat', '92', '4177 SC', 'Bergen op Zoom', '73-97422696', 1),
(234, 'Daan', 'Van der Stok', 'Apollolaan', '82', '3422 FA', 'Dronten', '72-80499699', 1),
(235, 'Guus', 'Veenstra', 'Nassaulaan', '65', '5937 HI', 'Zutphen', '14-02890202', 1),
(236, 'Sander', 'Van der Aar', 'Veerstraat', '48', '6225 NC', 'Hellevoetsluis', '20-38715949', 1),
(237, 'Olivier', 'Hendrikx', 'Verlengde Haagweg', '35', '6320 LE', 'Sint-Oedenrode', '18-85354449', 1),
(238, 'Jorn', 'Van Dam', 'Heemraadstraat', '98', '3789 KY', 'Geertruidenberg', '78-05356974', 1),
(239, 'Bram', 'Van der Steen', 'Nassaulaan', '55', '6468 VM', 'Heemskerk', '80-38033794', 1),
(240, 'Hugo', 'Scholten', 'Dokter van Doornplein', '32', '0584 IP', 'Kampen', '26-58702938', 1),
(241, 'Simon', 'Van der Heijen', 'Grote Markt', '5', '9511 BC', 'Bunnik', '16-03526772', 1),
(242, 'Danny', 'De Bruin', 'Binnenweg', '42', '0460 KC', 'Wijlre', '25-63301767', 1),
(243, 'Sander', 'De Koning', 'Vierambachtstraat', '32', '2321 IE', 'Maarssen', '04-35537974', 1),
(244, 'Timo', 'Van der Lelie', 'Kruisweg', '24', '7865 VJ', 'Boxtel', '75-52172365', 1),
(245, 'Jelle', 'Van der Kamp', 'Prins Bernhardstraat', '48', '3981 IW', 'Hellevoetsluis', '16-63121895', 1),
(246, 'Timo', 'Van den Brink', 'Bloemenstraat', '72', '9965 UH', 'Hendrik-Ido-Ambacht', '07-28632397', 1),
(247, 'Timo', 'Van der Sanden', 'Schubertstraat', '79', '1289 TP', 'Uithuizen', '89-10148262', 1),
(248, 'Timo', 'Van der Vlist', 'Prinses Beatrixstraat', '44', '4965 MB', 'Oldenzaal', '19-02096408', 1),
(249, 'Boris', 'Smit', 'Damstraat', '47', '4022 HV', 'Noordwijk-Binnen', '61-58137095', 1),
(250, 'Mark', 'Van der Laan', 'Pieter Corneliszoon Hooftstraat', '34', '1908 EG', 'Woerden', '35-24597235', 1),
(251, 'Ferry', 'Van der Leij', 'Sint Agathaplein', '65', '7121 GG', 'Tilburg', '31-17838854', 1),
(252, 'Dennis', 'Van der Leest', 'Crocusstraat', '94', '1062 FU', 'Weiteveen', '90-72492018', 1),
(253, 'Simon', 'Martijnse', 'Van Limburg Stirumstraat', '36', '6189 AN', 'Medemblik', '89-79366937', 1),
(254, 'Tristan', 'Van der Munnik', 'Wilhelminapark', '7', '5521 XD', 'Zeist', '51-71188177', 1),
(255, 'Mart', 'Van der Steen', 'Abraham Kuyperstraat', '91', '0501 NA', 'Eindhoven', '07-91067346', 1),
(256, 'Tom', 'Van der Harst', 'Schubertstraat', '80', '2887 HG', 'Leiderdorp', '09-63650646', 1),
(257, 'Hugo', 'Van Dam', 'Anna Paulownastraat', '33', '2657 YI', 'Almere', '70-68161928', 1),
(258, 'Tim', 'Van der Stok', 'Professor Teldersweg', '91', '7682 HX', 'Geldrop', '16-77500235', 0),
(259, 'Stan', 'Vink', 'Wilhelminapark', '15', '1161 OY', 'Sneek', '21-43008900', 1),
(260, 'Rick', 'Van der Stoep', 'Industrieweg', '61', '4724 ZI', 'Spaarndam', '18-90442770', 1),
(267, 'Yucan', 'Ye', 'Henkiswegx', '2', '6888 KL', 'Henkiszoek', '33-89845678', 1),
(268, 'Max', 'Elzerman', 'Weeldijk ', '1', '4758 TK', 'Standdaarbuiten', '+31 123 456 78', 1),
(269, 'Fabian', 'Walter', 'Swammerdamlaan', '6', '6721 BK', 'Bennekom', '+31 123 456 78', 1),
(270, 'Luuk', 'Nieuwkoop', 'Knoopkruid ', '22', '6721 RA', 'Bennekom', '+31 123 456 789', 1),
(271, 'Sam', 'de Wilde', 'Bovenbuurtweg', '1', '5050 KK', 'Ede', '+31 123 456 789', 1),
(272, 'Jippe', 'Visser', 'Toon Kokhof', '8', '1944 PE', 'Beverwijk', '+31 123 456 78', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `patient_has_notitie`
--

CREATE TABLE `patient_has_notitie` (
  `patient_patient_id` int(5) NOT NULL,
  `notitie_notitie_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `patient_has_notitie`
--

INSERT INTO `patient_has_notitie` (`patient_patient_id`, `notitie_notitie_id`) VALUES
(1, 3),
(1, 5),
(270, 2),
(272, 6);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`);

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
-- AUTO_INCREMENT voor een tabel `account`
--
ALTER TABLE `account`
  MODIFY `account_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `notitie`
--
ALTER TABLE `notitie`
  MODIFY `notitie_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT voor een tabel `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

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
