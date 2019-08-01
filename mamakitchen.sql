-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Jul 2019 pada 16.22
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mamakitchen`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Makanan', 'makanan', '2019-07-25 15:40:28', '2019-07-25 15:49:57'),
(2, 'Minuman', 'minuman', '2019-07-25 15:55:55', '2019-07-25 15:55:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `items`
--

INSERT INTO `items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Nasi Goreng Ikan Asin', 'Ikan asin bukan hanya enak dijadikan lauk, tapi juga nikmat dijadikan campuran nasi goreng.', 15000, 'nasi-goreng-ikan-asin-2019-07-25-5d3a32710af59.jpg', '2019-07-25 15:42:39', '2019-07-28 20:09:54'),
(2, 1, 'Nasi Goreng Kambing', 'Nasi goreng dengan campuran daging kambing empuk terasa nikmat. Apalagi dibalut bumbu rempah yang sedap.', 18000, 'nasi-goreng-kambing-2019-07-25-5d3a32b69b46e.jpg', '2019-07-25 15:52:38', '2019-07-28 20:15:05'),
(3, 1, 'Nasi Goreng Seafood', 'Pecinta seafood sudah pasti suka sama yang satu ini, Nasi goreng yang ditambahkan udang, bakso, ikan, dll.', 28000, 'nasi-goreng-seafood-2019-07-25-5d3a32fb05569.jpg', '2019-07-25 15:53:47', '2019-07-28 20:17:54'),
(4, 1, 'Nasi Goreng Spesial', 'Nasi goreng spesial adalah menu favorit bagi semua orang karena bisa dimakan bersama orang yang spesial juga', 25000, 'nasi-goreng-spesial-2019-07-25-5d3a3332b5a5d.jpg', '2019-07-25 15:54:42', '2019-07-28 20:22:27'),
(5, 1, 'Nasi Goreng Kunyit', 'Nasi goreng kunyit dengan bumbu kuning berikut ini akan menjadi menu makan di pagi hari yang cukup istimewa', 20000, 'nasi-goreng-kunyit-2019-07-25-5d3a33582a2e2.jpg', '2019-07-25 15:55:20', '2019-07-28 20:26:57'),
(6, 2, 'Es Campur', 'Es Campur adalah salah satu hidangan minuman yang sangat enak apalagi jika diminum pada saat kumpul bersama keluarga atau teman', 10000, 'es-campur-2019-07-25-5d3a33b567b27.jpg', '2019-07-25 15:56:53', '2019-07-28 20:30:23'),
(7, 2, 'Jus Buah', 'Minuman jus buah adalah salah satu produk olahan buah-buahan yang kaya akan kandungan gizi dan memiliki rasa yang sangat lezat', 15000, 'jus-buah-2019-07-25-5d3a33e679b06.jpg', '2019-07-25 15:57:42', '2019-07-28 20:32:48'),
(8, 2, 'Es Kelapa Muda', 'Es Kelapa muda adalah minuman segar penyejuk dahaga yang terbuat dari daging dan air kelapa yang masih muda', 15000, 'es-kelapa-muda-2019-07-25-5d3a3420abbda.jpg', '2019-07-25 15:58:40', '2019-07-28 20:34:07'),
(9, 2, 'Es rumput laut', 'rumput laut merupakan salah satu sumber daya hayati yang terdapat di wilayah pesisir dan laut.', 18000, 'es-rumput-laut-2019-07-25-5d3a345e5f507.jpg', '2019-07-25 15:59:42', '2019-07-28 20:49:48'),
(10, 2, 'Sop Buah', 'sop buah adalah es buah yang disajikan dengan menggunakan susu dan dengan buah-buahan yang lebih bervariasi.', 20000, 'sop-buah-2019-07-25-5d3a3482ca386.jpg', '2019-07-25 16:00:18', '2019-07-28 20:51:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_02_14_154912_create_sliders_table', 1),
(4, '2018_02_18_143201_create_categories_table', 1),
(5, '2018_02_19_144026_create_items_table', 1),
(6, '2018_03_06_113535_create_reservations_table', 1),
(7, '2018_03_06_151601_create_contacts_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservations`
--

CREATE TABLE `reservations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_and_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `sub_title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Aneka Makanan', 'makanan', 'aneka-makanan-2019-07-27-5d3c2883ae231.jpg', '2019-07-25 16:11:47', '2019-07-27 03:33:39'),
(2, 'Aneka Minuman', 'minuman', 'aneka-minuman-2019-07-27-5d3c289d81d19.jpg', '2019-07-25 16:13:38', '2019-07-27 03:34:05'),
(3, 'Aneka Buah', 'Buah-buahan', 'aneka-buah-2019-07-30-5d3fcc968ff05.jpg', '2019-07-29 21:50:30', '2019-07-29 21:50:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'thofa', 'admin1@admin.com', '$2y$10$qJrtzspoMZMBSGW7f0GVaeIqm5CVymyYtGJhDULGU1O.QT439HNju', '6cRU78zuZjbZeTQfwzcuWSXod5AaJffxpepUeaRHJrv3A9kYTj3YctLFM6b6', '2019-07-25 15:39:55', '2019-07-25 15:39:55'),
(2, 'user', 'user123@gmail.com', '$2y$10$Nmj3Jz0Cj4fkOvmn3Mai9.vhuVUmijp0nulT1.vUFHLbkHPsTkxkq', 'BQmighTpNzmLWe42N0tql8eHKbdCoARCLO6oYrlpKM2wQD6m9OGMGl8uMn9o', '2019-07-26 02:43:06', '2019-07-26 02:43:06');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
