-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 21 nov 2025 om 12:29
-- Serverversie: 10.4.32-MariaDB
-- PHP-versie: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wouldyourather`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `choice1` varchar(255) NOT NULL,
  `choice2` varchar(255) NOT NULL,
  `votes1` int(11) DEFAULT 0,
  `votes2` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `questions`
--

INSERT INTO `questions` (`id`, `question`, `choice1`, `choice2`, `votes1`, `votes2`) VALUES
(1, 'Would you rather have telekinesis or telepathy?', 'Telekinesis', 'Telepathy', 32, 7),
(2, 'Would you rather have the ability to see 10 minutes into the future or 150 years into the future?', '10 Minutes', '150 Years', 15, 6),
(3, 'Would you rather team up with Wonder Woman or Captain Marvel?', 'Wonder Woman', 'Captain Marvel', 15, 6),
(4, 'Would you rather be forced to sing along or dance to every single song you hear?', 'Sing Along', 'Dance', 9, 4),
(5, 'Would you rather find true love today or win the lottery next year?', 'True Love', 'Win the Lottery', 10, 3),
(6, 'Would you rather be in jail for five years or be in a coma for a decade?', 'Jail for 5 Years', 'Coma for 10 Years', 10, 3),
(7, 'Would you rather have another 10 years with your partner or a one-night stand with your celebrity crush?', '10 More Years', 'One-Night Stand', 10, 3),
(8, 'Would you rather be chronically under-dressed or overdressed?', 'Under-dressed', 'Overdressed', 10, 3),
(9, 'Would you rather have everyone you know be able to read your thoughts or have access to your Internet history?', 'Read Thoughts', 'Internet History', 12, 4),
(10, 'Would you rather lose your sight or your memories?', 'Lose Sight', 'Lose Memories', 11, 5),
(11, 'Would you rather have universal respect or unlimited power?', 'Universal Respect', 'Unlimited Power', 11, 5),
(12, 'Would you rather give up air conditioning and heating for the rest of your life or give up the Internet for the rest of your life?', 'Give Up AC/Heating', 'Give Up Internet', 13, 4);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`ID`, `username`, `password`) VALUES
(0, 'cesur60', '$2y$10$Q3dcKKCmEow0apeTPX0.AuvguvcZd2BZXEbtt2kjsFXGN09dH9zEy'),
(0, 'john123', '$2y$10$ERc6exj1oAwLEyzQT2CkdOKxvGWWwyE0KwixofL9yUgaCz8wBP8iO'),
(0, '123', '$2y$10$YewWUhXYkyMXjAjoJYygz.rwL1BTm4vo6b63Z3cz4gJYZzSv/1VV.'),
(0, 'john12345', '$2y$10$p4zVwpOkAl9juIted0nRa.AGHRfN4B4.Xz2M2zJiMEXsNhcB/QPwG');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
