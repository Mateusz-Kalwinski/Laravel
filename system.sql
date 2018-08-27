-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 27 Sie 2018, 17:21
-- Wersja serwera: 10.1.34-MariaDB
-- Wersja PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `system`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2018_08_10_103452_add_users_details', 2),
(5, '2018_08_10_104506_add_specilizations_table', 3),
(6, '2018_08_10_104553_add_visits_table', 3),
(7, '2018_08_16_070250_add_foreign_doctors_to_visits', 4),
(8, '2018_08_16_070329_add_foreign_patients_to_visits', 4),
(9, '2018_08_16_084318_create_specialization_users_table', 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `specializations`
--

CREATE TABLE `specializations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `specializations`
--

INSERT INTO `specializations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'oncology', NULL, NULL),
(2, 'surgeon', NULL, NULL),
(3, 'internist', NULL, NULL),
(4, 'cardiology', '2018-08-23 09:18:58', '2018-08-23 09:18:58');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `specialization_users`
--

CREATE TABLE `specialization_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `specialization_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `specialization_users`
--

INSERT INTO `specialization_users` (`id`, `specialization_id`, `user_id`) VALUES
(1, 1, 10),
(2, 2, 10),
(5, 3, 10);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pesel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`, `address`, `status`, `pesel`, `type`) VALUES
(1, 'Jevon Reinger', 'shayne85@yahoo.com', '$2y$10$yBFNwequxks7mZUtfE.u0em/ROaKabs38zeB0FjuzmIPRabUvvC.e', 'BTWsRn7Ogc', '2018-08-11 14:38:54', '2018-08-11 14:38:54', '1-880-294-5639 x792', '86658 Ankunding Brooks\nWest Carlee, TX 46886-7811', 'active', '0235819738381', 'admin'),
(2, 'Prof. Ben Denesik', 'reese90@hotmail.com', '$2y$10$vVrY7f7rxiYtEiSDe/UGeuVt/e2t1gRXaEYuawuVMVYs7ceYFGime', 'uJFpmKjUkE', '2018-08-11 14:38:54', '2018-08-11 14:38:54', '264-650-2826 x501', '9047 Pfannerstill Ramp Suite 651\nLurlinechester, IL 88400', 'active', '1567686517011', 'patient'),
(3, 'Domenick Little', 'stanton.jennie@yahoo.com', '$2y$10$pclknaG0RXOj91IBglu4nOeYWEyFelCoa4sOTHGqTcGxWYjSwhdoO', '0MJID70f0X', '2018-08-11 14:38:55', '2018-08-11 14:38:55', '+1.285.661.1074', '8559 Antoinette Port Apt. 079\nMollieborough, IL 45902-6137', 'active', '4189501047557', 'patient'),
(4, 'Jolie Orn', 'lkeebler@macejkovic.com', '$2y$10$CFdqloTP9L97W8DUXr23i.iDf1vsAf7dPUr2VfmU8srhvOLZKEmAi', '1OMzl2nErO', '2018-08-11 14:38:55', '2018-08-11 14:38:55', '704.385.5379', '2458 Jess Land Suite 482\nNaderport, OR 24025', 'active', '9712250490883', 'patient'),
(5, 'Alvina Gutkowski Sr.', 'zackery70@huel.org', '$2y$10$8BYfBt8gKKxH38OaVHtZheLSzS9Q7J9/1.SQHI30upIuoA9.x/77C', 'ObtycbPydT', '2018-08-11 14:38:55', '2018-08-11 14:38:55', '+1-512-933-1319', '4822 Michael Course\nPort Junetown, WY 51003-2337', 'active', '2922567545467', 'patient'),
(6, 'Trevor Pagac', 'otorp@hotmail.com', '$2y$10$gWZRIf//7XKL7p7P2Cktu.oyXppqsttRD12hDlhStJQP6EUuD31Wi', '7TQEke2uOD', '2018-08-11 14:38:55', '2018-08-11 14:38:55', '428.784.4150 x47328', '1506 Sauer Valleys Suite 354\nBorerville, MA 33345', 'active', '1605799110498', 'patient'),
(7, 'Ms. Ophelia McDermott', 'bella.rowe@herzog.com', '$2y$10$lDWgsUEE.ETAmpUNJrgQNeuI/dC/T/PpYh24klYhQVsQzW1J2u7x2', '32a1IlOO0L', '2018-08-11 14:38:55', '2018-08-11 14:38:55', '1-440-691-5004', '522 Parisian Prairie\nWest Mireya, TX 44419', 'active', '6489155641209', 'patient'),
(8, 'Prof. Tyrell Cruickshank Jr.', 'yasmin.parker@yahoo.com', '$2y$10$vk5GOfyHINRtaUET5Fit6ufndbesD/NOsNvIxM7FgGSsvW/KOzUpe', '8AcpXFqvkh', '2018-08-11 14:38:55', '2018-08-11 14:38:55', '369-346-7000 x810', '4871 Javonte Ridge Suite 780\nNew Calistaport, SC 25976-2144', 'active', '5449609601013', 'doctor'),
(9, 'Sid Jonee', 'jeramie.beier@hotmail.com', '$2y$10$ra0/7A5.Be5TSPnS3uBwheTvASjc6ePz67AzfSfupHEXgrf2wdgTy', 'rRhnPDEXrt', '2018-08-11 14:38:55', '2018-08-25 15:19:09', '(495) 288-0154 x583', '32417 Caesar SquaresKshlerinberg, LA 45324-9741', 'active', '4331761493555', 'doctor'),
(10, 'Mike Hessel', 'zprosacco@hotmail.com', '$2y$10$Ha9mKohl7RLnUM3POlxqpOR9rbFTM5.weUIlovUHN61WFsFKl9aea', 'CGGryjEhoK', '2018-08-11 14:38:55', '2018-08-25 09:35:24', '1-523-910-2738', '6290 Labadie Motorway Suite 046New Novaburgh, FL 05294-7392', 'active', '3633720734220', 'doctor'),
(11, 'Allan Johnson', 'allan@johnson.com', '$2y$10$5cLmo5ZTwg.W5umTewbtmu6Lm4CxW56ZDBXJ3o7Nyde.7h7F/yx.G', 'Hse3VrHXACLOPc9zdHsUukO345URiOZZ3DehjEyVR1eezHjm4VWamEvhzAWg', '2018-08-13 07:07:29', '2018-08-14 07:49:01', '123123123', '27 Colmore Row, Birmingham, England, B3 2EW', 'inactive', '18293021', 'doctor'),
(13, 'Matuesz Kałwiński', 'mateusz@kalwinski.com', '$2y$10$c9dmYgY.1UkY0NBn.Iygm.VjwL.O1DkBul1BXXckczoYpFvfOXkQO', 'wsUGFLOoK39u171oioFXSQJF6gXpLPcCdtr8lznB0ptyTnJYe4U5va8f9pIK', '2018-08-25 15:03:22', '2018-08-25 15:03:22', '723121412', 'Puskowie, 5a', 'active', '95050550354', 'patient'),
(14, 'Klaudia Szymkowiak', 'klaudia@szymkowiak.com', '$2y$10$iscZjpxCOPLtKPwFMTkfVOV89yR6pwJKJm6EF/0t/g2/KLH64Fyp.', 'ACQc4CRKuCrX2ysEpGHBoU98UBCkUWK15hFGcmZxJJA5VksgDaJboTNKYceN', '2018-08-25 15:06:14', '2018-08-25 15:06:14', '4862482486', 'Częstochowa ul. Poprzeczna', 'active', '95050550353', 'patient'),
(15, 'Damian Marek', 'Mateucz27@gmail.com', '$2y$10$tyvfwB7BWHtZRcbRKqJXUuDnZTJAmho5GuiKX5LXMqd4hDJl7oil6', NULL, '2018-08-26 12:40:58', '2018-08-26 12:40:58', '723587456', 'Ostrów Wielkopolski ul Grabowska', 'active', '789456132123', 'patient');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `visits`
--

CREATE TABLE `visits` (
  `id` int(10) UNSIGNED NOT NULL,
  `doctor_id` int(10) UNSIGNED NOT NULL,
  `patient_id` int(10) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `visits`
--

INSERT INTO `visits` (`id`, `doctor_id`, `patient_id`, `date`, `created_at`, `updated_at`) VALUES
(1, 10, 2, '2018-08-12 09:00:00', NULL, NULL),
(2, 11, 3, '2018-08-08 03:16:00', NULL, NULL),
(3, 11, 15, '2018-08-28 00:00:00', '2018-08-26 12:41:31', '2018-08-26 12:41:31');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeksy dla tabeli `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `specialization_users`
--
ALTER TABLE `specialization_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specialization_users_specialization_id_foreign` (`specialization_id`),
  ADD KEY `specialization_users_user_id_foreign` (`user_id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeksy dla tabeli `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visits_patient_id_foreign` (`patient_id`),
  ADD KEY `visits_doctor_id_foreign` (`doctor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `specialization_users`
--
ALTER TABLE `specialization_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `visits`
--
ALTER TABLE `visits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `specialization_users`
--
ALTER TABLE `specialization_users`
  ADD CONSTRAINT `specialization_users_specialization_id_foreign` FOREIGN KEY (`specialization_id`) REFERENCES `specializations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `specialization_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `visits_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
