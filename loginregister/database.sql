-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 17 mrt 2020 om 18:56
-- Serverversie: 10.4.11-MariaDB
-- PHP-versie: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_thewall`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `accounts`
--

CREATE TABLE `accounts` (
  `id` int(200) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 1,
  `profilepicture` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `email`, `verified`, `profilepicture`) VALUES
(1, 'Adidas', 'sadida123', 'adidas@support.com', 1, NULL),
(2, 'Atmos', 'somta123', 'atmos@imfo.com', 1, NULL),
(3, 'BSTN', 'ntsb123', 'Basket@infosupport.com', 1, NULL),
(4, 'Concrete', 'etercnoc123', 'info@Concrete.com', 1, NULL),
(5, 'Consortium', 'muitrosnoc123', 'info@consortium.uk', 1, NULL),
(6, 'HypeBeast', 'tsaebepyh', 'press@hypebeast.com', 1, NULL),
(7, 'NorthFace', 'ecafhtron123', 'support@northface.com', 1, NULL),
(8, 'SnS', 'sns123', 'sns@info.com', 1, NULL),
(9, 'Suppa', 'appus123', 'suppa@information.com', 1, NULL),
(10, 'SupTalk', 'klatpus123', 'supreme@newyork.com', 1, NULL),
(11, 'Wellgosh', 'hsogllew', 'wellgosh@gmail.com', 1, NULL),
(12, 'ertgret', '$2y$10$XRdLGCLgQ6PKQ9wkROpQrOBSOZI4unRVvgFv8Vz2lZTKD4S4wzfcS', 'gert@f', 0, NULL),
(15, 'ferf', '$2y$10$JKVfXnUtK0bDqbtxbt.hEuX0ohInp0ByyXlWwbJkf.2XdigRiY22u', 'gert@z', 0, NULL),
(16, 'grtgre', '$2y$10$OXV1zfer0y9DefnkzUX1Xu8obb5x8IbenfjGHl8Ut0M/Ul1ehnzJq', 'gert@i', 0, NULL),
(17, 'frwefe', '$2y$10$8l.wvx44O2ojPIb85R0z0Oh5l0YpxIOtyG0lm2kU1BvZDB9zWec2.', 'gert@p', 0, NULL),
(18, 'justin', '$2y$10$FuXUkFfewaapZIRe0as8FemBI6N/GIFNBVEcxvQtRUw1is1O2S3Nm', 'gert@h', 1, NULL),
(19, 'hoi', '$2y$10$ahc731PZ5UR0GbcMHGe1x.1YmfPQ3chzTwwCn6OHq3eI8H1WlwiVa', 'gert@l', 1, NULL),
(20, 'justin1', '$2y$10$PBUZpcQBs5tiC2tpOpdMKeCpFgpPlgKlb2kbHJirlq.uRJrggiER2', '28454@ma-web.nl', 1, NULL),
(21, 'justin3', '$2y$10$iGD99ZdHszoMFdQOqHIrsuEX.ALfR64zclZS2rRZ0c1jYsS4oXm8q', 'justrom104@gmail.comf', 1, NULL),
(22, 'ruvu', '$2y$10$l.0iS6bLMBpeKqBIKUcoZebVTXOmCtXGDwmSv2Gn0F8RN4aPiY7sC', 'zehbi@gmail.com', 1, NULL),
(23, 'ruvu2', '$2y$10$hZqXU7ubq2BGNaYnFEDj0OzZW1eBsqMAn2fLzi4vjXlOQTojbVXPS', 'ruvu3@gmail.com', 1, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `uploads`
--

CREATE TABLE `uploads` (
  `id` int(200) NOT NULL,
  `auteur` varchar(50) NOT NULL,
  `titel` varchar(100) NOT NULL,
  `caption` varchar(200) NOT NULL,
  `image` varchar(2000) DEFAULT NULL,
  `Likes` int(200) NOT NULL,
  `date` varchar(20) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `uploads`
--

INSERT INTO `uploads` (`id`, `auteur`, `titel`, `caption`, `image`, `Likes`, `date`) VALUES
(1, 'NorthFace', 'The North Face Back Series capsule collection', 'Black Series capsule, Born on the highest peaks, reimagined for the city.', 'https://scontent-ams4-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/87547229_808331243019447_7661952798871835831_n.jpg?_nc_ht=scontent-ams4-1.cdninstagram.com&_nc_cat=103&_nc_ohc=t7VYjhq5rP0AX-DV6jv&oh=f1e400e0abb8c8c3422b5d30be52d6bf&oe=5E8AA88D', 50, '2020-03-12 11:00:51'),
(2, 'BSTN', 'Ralph Lauren x Carhartt', 'Carhartt WIP meets Polo Ralph Lauren to collaborate', 'https://scontent-ams4-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/87740525_191727465413498_4868163905584137233_n.jpg?_nc_ht=scontent-ams4-1.cdninstagram.com&_nc_cat=1&_nc_ohc=vCh61CECTxcAX_gjWFa&oh=9347444b535879dbb08f7c79e8fcdd75&oe=5E89E527', 1, '2020-03-12 11:00:51'),
(3, 'Suppa', 'Adidas classic silhouette', 'Straight from the court archives, but this version adds pops of colour for when you\'re feeling bold.', 'https://scontent-amt2-1.cdninstagram.com/v/t51.2885-15/fr/e15/s1080x1080/87594317_3259268244101409_8586872214249371187_n.jpg?_nc_ht=scontent-amt2-1.cdninstagram.com&_nc_cat=109&_nc_ohc=tOe7WmHh-ukAX-hHGkA&oh=1eb711d5c32f549ca2ee8d733e28468e&oe=5E8D5A9A', 23, '2020-03-12 11:00:51'),
(4, 'SnS', 'Grid Azura 2000', 'Strong waves', 'https://scontent-amt2-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/87707905_2628289290788105_6508744738971197447_n.jpg?_nc_ht=scontent-amt2-1.cdninstagram.com&_nc_cat=105&_nc_ohc=Dlis6x69FiUAX8bZdDq&oh=81d43535e88a87a3dc9bf437de54184c&oe=5E89CB13', 70, '2020-03-12 11:00:51'),
(5, 'SNS', 'Air Jordan 3 Retro \'UNC\'', 'High obsidian UNC', 'https://scontent-ams4-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/84126763_202378380826780_1708069652538807756_n.jpg?_nc_ht=scontent-ams4-1.cdninstagram.com&_nc_cat=1&_nc_ohc=opmCYSPj7JAAX8UOuda&oh=8dd81ba24aa9aac75a27fac0af0ad64d&oe=5E8A2923', 34, '2020-03-12 11:00:51'),
(6, 'Adidas', 'Adidas x BED FORD', 'Adidas reunites with buzzy new-gen Japanese fashion brand for street-ready apparel and footwear, inspired by the design heritage of adicolor.', 'https://scontent-ams4-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/87723020_206132984090471_6317257326461993012_n.jpg?_nc_ht=scontent-ams4-1.cdninstagram.com&_nc_cat=111&_nc_ohc=a8zAd_1_alUAX-60EDk&oh=316ba80fbf8ae5f2c964d97ba08ca341&oe=5E9814DD', 56, '2020-03-12 11:00:51'),
(7, 'Wellgosh', 'Pine Green', 'Still in the Christmas feeling...', 'https://scontent-amt2-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/87630083_138513844339447_2846496651007839911_n.jpg?_nc_ht=scontent-amt2-1.cdninstagram.com&_nc_cat=107&_nc_ohc=hpFvVePIhD8AX9OkM8P&oh=8f38020382531ff2216cfe53dbd1b561&oe=5E8478C9', 76, '2020-03-12 11:00:51'),
(8, 'Wellgosh', 'Brain Dead’s', 'Spring ’20 collection', 'https://scontent-ams4-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/88194248_3135736819810935_2726210308587796578_n.jpg?_nc_ht=scontent-ams4-1.cdninstagram.com&_nc_cat=103&_nc_ohc=5LMtfqLBW_YAX-m6p89&oh=14949730550317ff20a8dd4900297d5b&oe=5E85CD23', 76, '2020-03-12 11:00:51'),
(9, 'Consortium', 'Hack Pack', 'Nike SB Zoom Blazer Mid Edge ‘Hack Pack’', 'https://scontent-amt2-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/87425557_186322922787124_8125743010210855461_n.jpg?_nc_ht=scontent-amt2-1.cdninstagram.com&_nc_cat=104&_nc_ohc=yGej63lS8f8AX-t8KIj&oh=61e870b376bc16797045675255529d3b&oe=5E82B0C7', 43, '2020-03-12 11:00:51'),
(10, 'SnS', 'Sonokochan x Stussy', 'Too good --> @stussy ⁠', 'https://scontent-amt2-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/87327452_3407936935899967_1581206850572121382_n.jpg?_nc_ht=scontent-amt2-1.cdninstagram.com&_nc_cat=107&_nc_ohc=WWvs6lQ6UcMAX9mW6tc&oh=1e070b3fccc96520a3db663716adc9c9&oe=5E874F02', 21, '2020-03-12 11:00:51'),
(11, 'Concrete', 'Mesh Shirring MA-1 Jacket', 'White Mountaineering is the brand of Japanese designer Yosuke Aizawa. Taking the great outdoors as inspiration.', 'https://scontent-amt2-1.cdninstagram.com/v/t51.2885-15/e35/s1080x1080/88203693_819696061769270_7432723541541483781_n.jpg?_nc_ht=scontent-amt2-1.cdninstagram.com&_nc_cat=102&_nc_ohc=STznO57C-2UAX8NFFI7&oh=c1b487872b118fb7208fa6747408a025&oe=5E87DB0C', 91, '2020-03-12 11:00:51'),
(12, 'HypeBeast', 'UNIQLO Lifewear', 'Themed around \"British Country Style\", the collection sees Anderson rework traditional British patterns including gingham checks and patchworks.', 'https://scontent-amt2-1.cdninstagram.com/v/t51.2885-15/e35/84122134_518425252144399_4615088324809354359_n.jpg?_nc_ht=scontent-amt2-1.cdninstagram.com&_nc_cat=107&_nc_ohc=DU47slvTQr8AX-V6Dip&oh=2c466ffc4246089276338c1a3c51eb9d&oe=5E8A45B0', 68, '2020-03-12 11:00:51'),
(13, 'Atmos', 'Atmoslab x Coca-Cola', 'for a concise three-way capsule of graphic-heavy outdoor goods.', 'https://scontent-amt2-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/88916272_848944305551746_8643845432675847410_n.jpg?_nc_ht=scontent-amt2-1.cdninstagram.com&_nc_cat=110&_nc_ohc=sWCNRLwcE_gAX-nNz1w&oh=060cf9065b088a933b9104f5ca159996&oe=5E98D5D7', 87, '2020-03-12 11:00:51'),
(14, 'HypeBeast', 'Pop Smoke‘s ‘Meet The Woo Vol. 2’', 'According to reports, his streams shot up by 392% following his passing, resulting to 24.7 million on-demand streams with “Dior” garnering 5.2 million of that number alone. ⁠', 'https://scontent-ams4-1.cdninstagram.com/v/t51.2885-15/fr/e15/p1080x1080/87822081_633410007475364_1164777553954885932_n.jpg?_nc_ht=scontent-ams4-1.cdninstagram.com&_nc_cat=108&_nc_ohc=c_1K2q0pClkAX98_-Ja&oh=cca74d8f83a143857558a79e967bf305&oe=5E992234', 113, '2020-03-12 11:00:51'),
(15, 'HypeBeast', 'Supreme x Keith Haring', 'Supreme is once again teaming up with the estates of Keith Haring and Jean-Michel Basquiat for the fifth installment of its limited-edition BE@RBRICK collaboration.', 'https://scontent-ams4-1.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/87854877_174874427294015_5814940877089236791_n.jpg?_nc_ht=scontent-ams4-1.cdninstagram.com&_nc_cat=111&_nc_ohc=uuQ6eHL7oUEAX_5Th7b&oh=47798b8fbc67d59be0b1ed6b05c54985&oe=5E827310', 36, '2020-03-12 11:00:51'),
(16, 'HypeBeast', 'Travis Scott x Pop Smoke', 'unclear if the collaboration will see an official release.⁠', 'https://scontent-ams4-1.cdninstagram.com/v/t51.2885-15/fr/e15/s1080x1080/85229112_137915304416999_8202076081709389229_n.jpg?_nc_ht=scontent-ams4-1.cdninstagram.com&_nc_cat=111&_nc_ohc=I4YEOzsIjJ4AX-qW2HY&oh=80faec517ceded0911129b9ed4982f26&oe=5E891B25', 21, '2020-03-12 11:00:51'),
(17, 'SupTalk', 'Supreme Poncho', 'Supreme unveils a Ballpark Poncho that’s expected to come as a gift with random orders. ⁠', 'https://scontent-amt2-1.cdninstagram.com/v/t51.2885-15/fr/e15/p1080x1080/85180050_519121718742814_8950922444514904013_n.jpg?_nc_ht=scontent-amt2-1.cdninstagram.com&_nc_cat=110&_nc_ohc=CBgTDJlubDAAX9qUiJ_&oh=79ce9ebdb3a6b24f392c7fd1c3ec2962&oe=5E98D1A5', 146, '2020-03-12 11:00:51'),
(18, 'root', 'H5HY5', 'reff', NULL, 0, '2020-03-12 12:20:54'),
(19, 'justin', 'frewferw', 'fewrfewf', NULL, 0, '2020-03-12 12:22:27'),
(20, 'justin', 'tegerg', 'erge', NULL, 0, '2020-03-13 12:07:31'),
(21, 'justin', 'fref', 'ferfewf', NULL, 0, '2020-03-13 12:07:56');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT voor een tabel `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
