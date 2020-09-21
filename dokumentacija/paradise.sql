-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2020 at 09:06 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paradise`
--

-- --------------------------------------------------------

--
-- Table structure for table `komentari`
--

CREATE TABLE `komentari` (
  `komentarID` int(11) NOT NULL,
  `ime` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slika` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komentari`
--

INSERT INTO `komentari` (`komentarID`, `ime`, `text`, `slika`) VALUES
(1, 'Tarmi Ricmi', 'Zanzibar, najlepse mesto preko najbolje agencije', 'IMG_0618-815x458.jpg'),
(2, 'Balkanski Spijun', 'Jos se nisam otreznio od zurki', 'film_2168_57013_cover.jpg'),
(3, 'Petar Petrovic', 'Najbolji vodici od svih agencija sa kojima sam isao', '68204_petar-petrovic-njegos_ff.jpg'),
(4, 'Ana Marija', 'Nije Ana nije Marija', '08de2ac8630b46068449cc9dae3d8ebf.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `putovanja`
--

CREATE TABLE `putovanja` (
  `putovanjeID` int(11) NOT NULL,
  `nazivPutovanja` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `opis` varchar(1500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cena` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `putovanja`
--

INSERT INTO `putovanja` (`putovanjeID`, `nazivPutovanja`, `opis`, `cena`) VALUES
(1, 'Lefkada', 'Jedno od najzelenijhih ostrva Jonskog mora poznato po egzotičnim plažama i mirnim uvalama.\r\nOstrvo Lefkada, zajedno sa Krfom, Kefalonijom i Itakom, pripada grupi jonskih ostrva. Sa kontinentalnim delom Grčke Lefkada je povezana pokretnim mostom što ga čini jedinim ostrvom u Jonskom moru do koga se može doći kopnenim putem. Ukupna površina ostvrva je preko 300 km2. Živopisno ostrvo prepuno je prelepih plaža i malih mirnih uvala do kojih se može doći brodićima. Lefkada u doslovnom prevodu znači “Belo ostrvo“, a zapravo je jedno od najzelenijih. Na zapadnoj strani obale nižu se plaže koje su godinama proglašavane za najbolje ne samo u Evropi, već na celom svetu kao što su Porto Katsiki, Egremni ili Katisma.', 289),
(2, 'Hurgada', 'Na peščanoj obali u dužini od skoro 40 kilometara su hoteli koji sadržajm i komforom mame turiste iz celog sveta u toku cele godine jer temperature vazduha ne spada ispod 23 stepena\r\n\r\nHurgada predstavlja biser egipatske obale, zbog bogatstva biljnog i životinjskog sveta pa su turisti koji iz godine u godinu u sve većem broju posećuju ovo prelepo letovalište na Crvenom moru sa razlogom nadenuli naziv “more sa sedam boja”.\r\n\r\nU zalivima Makadi i Soma nikli su fascinannti turistički centri sa neophodnom infrastrukturom i modernim hotelima. Nešto dalje od gradskog jezgra nalaze se još tri popularna letovališta: El Guna, Safaga i Makadi.\r\n\r\nČarolija mora sa fantastičnom florom i faunom, bezbroj zadovoljstava u toku dana i večeri, ćekaju da ih otkrijete i doživite.', 399),
(3, 'Antalija', 'Antalija je jedno od najposećenijih letovališta južne Turske, koje krase duge, peščane plaže, tirkizno more i luksuzni hoteli. Ova dvomilionska metropola, zahvaljujući svojoj mediteranskoj klimi i fascinantnim plažama, već godinama privlači nove posetioce i vraća one stare. Kao druga najposećenija destinacija u Turskoj od strane turista, predstavlja srce turizma Turske i glavni grad Antalijske regije.', 439),
(5, 'Kavos', 'Nudimo Vam savršenu priliku da otkrijete zašto je bog mora Posejdon doveo svoju ženu  prelepu nimfu, Kerkiru baš na ovo ostrvo, koje danas sa ponosom nosi njeno ime i zašto je Odisej posle svih lutanja svoj konačni mir pronašao baš ovde. Krf krije mnoge tajne, ali jedno sigurno više nije tajna – Krf je jedno od najpopularnijih ostrva u Jonskom arhipelagu u kombinaciji sa dobrom hranom i još boljom zabavom pravi je izbor.', 189),
(7, 'Evia', 'Evia ili Eubeja je drugo ostrvo po veličini u Grčkoj, odmah posle Krita. Obuhvata površinu od oko čak 3 700km2 istočne obale Grčke i udaljeno je samo sat vremena vožnje od glavnog grada Atine. Prostire se od južnih delova obale Beotije i Atike pa sve do ostrva  Andros i Kea, smeštenih u blizini Kiklada, sa kojima nažalost ne postoji trajektna veza.', 159),
(8, 'Zanzibar', 'Zanzibar u prevodu sa arapskog jezika znači ostrvo crnaca. Ovaj tropski raj je sastavni deo kopnene Tanzanije, smešten na istočnoj obali Afrike, a zapljuskuju ga vode Indijskog okeana. Prostire se na površini od 2461 km2, a broji oko 1 300 000 stanovnika, većinom Bantu crnaca, Arapa i Indusa.  Kada je u pitanju veroispovest, 98% stanovništva su muslimani. Stoga je potrebno voditi računa o oblačenju prilikom posete nekih kulturnih centara i znamenitosti, kao i konzumiranju alkohola u javnosti, naročito za vreme njihovih praznika. Zvaničan jezik ovog koralnog ostrva je Svahili, ali ne brinite, meštani odlično znaju i engleski.  Glavni grad se takođe zove Zanzibar, nalazi se na zapadnoj strani ostrva, a deli se na dva dela: stari deo, takozvani Kameni grad – Stone Town i novi deo Ng’ambo što u prevodu znači Druga strana.', 1089),
(9, 'Maldivi', 'Možda ovo nekima zvuči kao kliše, ali moramo priznati da su Maldivi odavno postali sinonim za luksuz, hedonizam i onu poznatu frazu ‘’raj na zemlji’’. Ova ostrvska država Indijskog okeana je smeštena u Južnoj Aziji, na oko 700km udaljenosti od obale Šri Lanke.  Sastoji se od skoro 1200 malih koralnih ostrva koja su grupisana u 26 maldivskih atola. Svako od ovih ostrva predstavlja pravi egzotični raj, jedinstvene lepote netaknute prirode i bujne tropske vegetacije. Mnoga od njih su pusta i nenaseljena, a na najlepšim su izgrađeni impozantni turistički objekti.', 1259);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `imePrezime` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isAdmin` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `imePrezime`, `username`, `password`, `isAdmin`) VALUES
(1, 'Gogara', 'GogAdmin', 'rakovica', 1),
(2, 'Mali Kljaja', 'KljajaUser', 'zarkovo', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komentari`
--
ALTER TABLE `komentari`
  ADD PRIMARY KEY (`komentarID`);

--
-- Indexes for table `putovanja`
--
ALTER TABLE `putovanja`
  ADD PRIMARY KEY (`putovanjeID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komentari`
--
ALTER TABLE `komentari`
  MODIFY `komentarID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `putovanja`
--
ALTER TABLE `putovanja`
  MODIFY `putovanjeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
