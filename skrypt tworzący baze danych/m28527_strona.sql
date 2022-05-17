-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 07 Maj 2022, 02:06
-- Wersja serwera: 8.0.29
-- Wersja PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `sklep`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gry`
--

CREATE TABLE `gry` (
  `id` int NOT NULL,
  `nazwa` text CHARACTER SET utf8mb3 COLLATE utf8_polish_ci NOT NULL,
  `logo` text CHARACTER SET utf8mb3 COLLATE utf8_polish_ci NOT NULL,
  `cena` text CHARACTER SET utf8mb3 COLLATE utf8_polish_ci NOT NULL,
  `tapeta` text CHARACTER SET utf8mb3 COLLATE utf8_polish_ci NOT NULL,
  `opis` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `gry`
--

INSERT INTO `gry` (`id`, `nazwa`, `logo`, `cena`, `tapeta`, `opis`) VALUES
(1, 'Elden Ring PS5', 'okladki/elden_ring_ps5.jpg', '299,99', 'okladki/duze/elden.jpg', 'Elden Ring to gra RPG akcji autorstwa japońskiego studia FromSoftware. Tym razem twórcy postanowili nawiązać współpracę ze znaną osobistością spoza branży gier wideo – pisarzem George’em R. R. Martinem, autorem sagi Pieśń Lodu i Ognia.'),
(2, 'Resident Evil Village PS5', 'okladki/resident_evil_village_ps5.jpg', '159,99', 'okladki/duze/resident.jpg', 'Resident Evil Village to przygodowa gra akcji, będąca ósmą już odsłoną głównego cyklu popularnych survival horrorów, tworzonych od 1996 roku przez japońskie studio Capcom. Praca nad nową częścią została oficjalnie ogłoszona w czerwcu 2020 roku, podczas prezentacji PlayStation 5. Tytuł stanowi bezpośrednią kontynuację Resident Evil VII: Biohazard, choć w odróżnieniu do siódemki akcja sequelu osadzona została w okrytej śniegiem rumuńskiej wiosce oraz jej otoczeniu, w tym w górującym nad nią zamczysku. Gracz ponownie wciela się w postać Ethana Wintersa, śledząc poczynania przeciwników z perspektywy pierwszej osoby (FPP).\r\nŹródło: https://www.gry-online.pl/gry/resident-evil-village/ze5beb'),
(3, 'Fifa 22 PS4', 'okladki/fifa.jpg', '99,99', 'okladki/duze/fifa.jpg', 'FIFA 22 to kolejna odsłona corocznego cyklu gier piłkarskich autorstwa studia EA Sports. W grze ponownie bierzemy udział w meczach i turniejach piłki nożnej, próbując zajść na szczyt. Tytuł zawiera autentyczne drużyny, ligi i zawodników.'),
(4, 'Elden Ring PS5 (używana)', 'okladki/elden_ring_ps5.jpg', '259,99', 'okladki/duze/elden.jpg', 'Elden Ring to gra RPG akcji autorstwa japońskiego studia FromSoftware. Tym razem twórcy postanowili nawiązać współpracę ze znaną osobistością spoza branży gier wideo – pisarzem George’em R. R. Martinem, autorem sagi Pieśń Lodu i Ognia.'),
(5, 'Resident Evil Village PS5 (używana)', 'okladki/resident_evil_village_ps5.jpg', '119,99', 'okladki/duze/resident.jpg', 'Resident Evil Village to przygodowa gra akcji, będąca ósmą już odsłoną głównego cyklu popularnych survival horrorów, tworzonych od 1996 roku przez japońskie studio Capcom. Praca nad nową częścią została oficjalnie ogłoszona w czerwcu 2020 roku, podczas prezentacji PlayStation 5. Tytuł stanowi bezpośrednią kontynuację Resident Evil VII: Biohazard, choć w odróżnieniu do siódemki akcja sequelu osadzona została w okrytej śniegiem rumuńskiej wiosce oraz jej otoczeniu, w tym w górującym nad nią zamczysku. Gracz ponownie wciela się w postać Ethana Wintersa, śledząc poczynania przeciwników z perspektywy pierwszej osoby (FPP).\r\nŹródło: https://www.gry-online.pl/gry/resident-evil-village/ze5beb'),
(6, 'Fifa 22 PS4 (używana)', 'okladki/fifa.jpg', '69,99', 'okladki/duze/fifa.jpg', 'FIFA 22 to kolejna odsłona corocznego cyklu gier piłkarskich autorstwa studia EA Sports. W grze ponownie bierzemy udział w meczach i turniejach piłki nożnej, próbując zajść na szczyt. Tytuł zawiera autentyczne drużyny, ligi i zawodników.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `newsy`
--

CREATE TABLE `newsy` (
  `id` int NOT NULL,
  `tytul` text CHARACTER SET utf8mb3 COLLATE utf8_polish_ci NOT NULL,
  `opis` text CHARACTER SET utf8mb3 COLLATE utf8_polish_ci NOT NULL,
  `logo` text CHARACTER SET utf8mb3 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `newsy`
--

INSERT INTO `newsy` (`id`, `tytul`, `opis`, `logo`) VALUES
(1, 'Witamy na stronie', 'Informuję, że z dniem 27.04.2022 strona ruszyła. Zapraszamy do naszego sklepu stacjonarnego oraz do zapoznania się z regulaminem', 'newsy/powitanie.jpg'),
(2, 'Sifu już dostępne!', 'Zapraszamy do naszego sklepu po niezwykle emocjonującą bijatykę. Sifu od dzisiaj dostępne na Playstation 4 oraz 5.', 'newsy/sifu.jpg'),
(3, 'Zamów już dziś!', 'Zachęcamy od składania preorderów na grę Sniper Elite 5. Piąta już odsłona snajperskiego cyklu poprawia grafikę oraz mechaniki znane z poprzednich części. Premiera gry 26.05', 'newsy/sniper.jpg');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `gry`
--
ALTER TABLE `gry`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `newsy`
--
ALTER TABLE `newsy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `gry`
--
ALTER TABLE `gry`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `newsy`
--
ALTER TABLE `newsy`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
