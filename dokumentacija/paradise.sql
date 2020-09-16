-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2020 at 07:16 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

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
(1, 'Tarmi Ricmi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed egestas enim vitae sodales mollis. Donec volutpat imperdiet enim, pellentesque pharetra ligula vestibulum tincidunt. Maecenas volutpat condimentum scelerisque. Sed nec placerat lacus. Aenean ex diam, mollis a pellentesque sed, elementum blandit augue. Proin id mollis elit, auctor lacinia justo. Nullam urna magna, ultricies at lobortis in, blandit at neque. Proin at dictum orci, in sagittis felis. Etiam vestibulum, elit id auctor euismod, augue augue volutpat ante, ut tincidunt risus dui non tellus. Suspendisse eleifend tortor id tortor ullamcorper, non convallis libero tincidunt. Nam ac tincidunt tellus. Nunc et maximus velit, eu feugiat nulla. Sed efficitur erat in mauris sagittis, ut tincidunt tortor euismod.', 'IMG_0618-815x458.jpg'),
(2, 'Balkanski Spijun', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed egestas enim vitae sodales mollis. Donec volutpat imperdiet enim, pellentesque pharetra ligula vestibulum tincidunt. Maecenas volutpat condimentum scelerisque. Sed nec placerat lacus. Aenean ex diam, mollis a pellentesque sed, elementum blandit augue. Proin id mollis elit, auctor lacinia justo. Nullam urna magna, ultricies at lobortis in, blandit at neque. Proin at dictum orci, in sagittis felis. Etiam vestibulum, elit id auctor euismod, augue augue volutpat ante, ut tincidunt risus dui non tellus. Suspendisse eleifend tortor id tortor ullamcorper, non convallis libero tincidunt. Nam ac tincidunt tellus. Nunc et maximus velit, eu feugiat nulla. Sed efficitur erat in mauris sagittis, ut tincidunt tortor euismod.', 'film_2168_57013_cover.jpg'),
(3, 'Petar Petrovic', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed egestas enim vitae sodales mollis. Donec volutpat imperdiet enim, pellentesque pharetra ligula vestibulum tincidunt. Maecenas volutpat condimentum scelerisque. Sed nec placerat lacus. Aenean ex diam, mollis a pellentesque sed, elementum blandit augue. Proin id mollis elit, auctor lacinia justo. Nullam urna magna, ultricies at lobortis in, blandit at neque. Proin at dictum orci, in sagittis felis. Etiam vestibulum, elit id auctor euismod, augue augue volutpat ante, ut tincidunt risus dui non tellus. Suspendisse eleifend tortor id tortor ullamcorper, non convallis libero tincidunt. Nam ac tincidunt tellus. Nunc et maximus velit, eu feugiat nulla. Sed efficitur erat in mauris sagittis, ut tincidunt tortor euismod.', '68204_petar-petrovic-njegos_ff.jpg'),
(4, 'Ana Marija', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed egestas enim vitae sodales mollis. Donec volutpat imperdiet enim, pellentesque pharetra ligula vestibulum tincidunt. Maecenas volutpat condimentum scelerisque. Sed nec placerat lacus. Aenean ex diam, mollis a pellentesque sed, elementum blandit augue. Proin id mollis elit, auctor lacinia justo. Nullam urna magna, ultricies at lobortis in, blandit at neque. Proin at dictum orci, in sagittis felis. Etiam vestibulum, elit id auctor euismod, augue augue volutpat ante, ut tincidunt risus dui non tellus. Suspendisse eleifend tortor id tortor ullamcorper, non convallis libero tincidunt. Nam ac tincidunt tellus. Nunc et maximus velit, eu feugiat nulla. Sed efficitur erat in mauris sagittis, ut tincidunt tortor euismod.', '08de2ac8630b46068449cc9dae3d8ebf.jpeg');

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
(5, 'Kavos', 'Nudimo Vam savršenu priliku da otkrijete zašto je bog mora Posejdon doveo svoju ženu  prelepu nimfu, Kerkiru baš na ovo ostrvo, koje danas sa ponosom nosi njeno ime i zašto je Odisej posle svih lutanja svoj konačni mir pronašao baš ovde. Krf krije mnoge tajne, ali jedno sigurno više nije tajna – Krf je jedno od najpopularnijih ostrva u Jonskom arhipelagu u kombinaciji sa dobrom hranom i još boljom zabavom pravi je izbor.', 189);

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
  MODIFY `putovanjeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
