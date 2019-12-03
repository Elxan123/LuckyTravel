-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 02 Ara 2019, 23:07:23
-- Sunucu sürümü: 10.4.8-MariaDB
-- PHP Sürümü: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `luckytravel`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `desc_az` varchar(255) NOT NULL,
  `desc_en` varchar(255) NOT NULL,
  `desc_ru` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `about`
--

INSERT INTO `about` (`id`, `desc_az`, `desc_en`, `desc_ru`) VALUES
(1, '<p>asdasdasdasd</p>\r\n', '<p>asdasdasdas</p>\r\n', '<p>dasdasdasdasads</p>\r\n');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `additional_slide`
--

CREATE TABLE `additional_slide` (
  `id` int(11) NOT NULL,
  `title1_az` varchar(255) NOT NULL,
  `title1_en` varchar(255) NOT NULL,
  `title1_ru` varchar(255) NOT NULL,
  `title2_az` varchar(255) NOT NULL,
  `title2_en` varchar(255) NOT NULL,
  `title2_ru` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `additional_slide`
--

INSERT INTO `additional_slide` (`id`, `title1_az`, `title1_en`, `title1_ru`, `title2_az`, `title2_en`, `title2_ru`, `link`, `img`) VALUES
(1, 'asda', 'asd', 'sd', 'asdsadasdas', 'asd', 'asd', 'asd', 'asd.jpeg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `name_az` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_ru` varchar(255) NOT NULL,
  `desc_az` text NOT NULL,
  `desc_en` text NOT NULL,
  `desc_ru` text NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `blog`
--

INSERT INTO `blog` (`id`, `name_az`, `name_en`, `name_ru`, `desc_az`, `desc_en`, `desc_ru`, `img`) VALUES
(1, 'asdas', 'asda', 'aasd', '<p>asdsaa</p>\r\n', '<p>asdsa</p>\r\n', '<p>asdas</p>\r\n', 'all-kinds-electronic-equipment-testing-instruments-electronic-laboratory-laboratory-electronic-equipment-device-134261658.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `whatsapp` varchar(255) NOT NULL,
  `linkedln` varchar(255) NOT NULL,
  `phone_img` varchar(255) NOT NULL,
  `address_img` varchar(255) NOT NULL,
  `email_img` varchar(255) NOT NULL,
  `linkedln_img` varchar(255) NOT NULL,
  `facebook_img` varchar(255) NOT NULL,
  `instagram_img` varchar(255) NOT NULL,
  `youtube_img` varchar(255) NOT NULL,
  `twitter_img` varchar(255) NOT NULL,
  `whatsapp_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `contact`
--

INSERT INTO `contact` (`id`, `phone`, `address`, `email`, `facebook`, `instagram`, `youtube`, `twitter`, `whatsapp`, `linkedln`, `phone_img`, `address_img`, `email_img`, `linkedln_img`, `facebook_img`, `instagram_img`, `youtube_img`, `twitter_img`, `whatsapp_img`) VALUES
(1, '32242342332', 'asdasdasasd', 'asdasd@asdasd', 'asdasd', 'asdasd', 'asdaasdasdaad', 'sdasasdasd', 'dasdasd', 'asdasdasdasdasd', '190501_wnt_index_cruise_hpMain_16x9_992.jpg', 'all-kinds-electronic-equipment-testing-instruments-electronic-laboratory-laboratory-electronic-equipment-device-134261658.jpg', 'Mercedes-Logo.jpg', 'blue-sea-travel-wallpapers-hd-wallpaper-hd-download-free-background-images-mac-desktop-wallpapers-amazing-high-definition-1920x1080.jpg', 'avatar.png', 'bmv.jpg', 'mercedes.jpg', 'bmw-logo.png', 'Turkish-Journal-of-Botany.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `logo`
--

INSERT INTO `logo` (`id`, `img`) VALUES
(1, 'logo1.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `main_slide`
--

CREATE TABLE `main_slide` (
  `id` int(11) NOT NULL,
  `title1_az` varchar(255) NOT NULL,
  `title1_en` varchar(255) NOT NULL,
  `title1_ru` varchar(255) NOT NULL,
  `title2_az` varchar(255) NOT NULL,
  `title2_en` varchar(255) NOT NULL,
  `title2_ru` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `offers`
--

CREATE TABLE `offers` (
  `id` int(11) NOT NULL,
  `name_az` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_ru` varchar(255) NOT NULL,
  `desc_az` varchar(255) NOT NULL,
  `desc_en` varchar(255) NOT NULL,
  `desc_ru` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `offers`
--

INSERT INTO `offers` (`id`, `name_az`, `name_en`, `name_ru`, `desc_az`, `desc_en`, `desc_ru`, `img`) VALUES
(3, 'asdas', 'asdas', 'asdsa', '<p>asda</p>\r\n', '', '', '190501_wnt_index_cruise_hpMain_16x9_992.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `name_az` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_ru` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name_az` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_ru` varchar(255) NOT NULL,
  `desc_az` varchar(255) NOT NULL,
  `desc_en` varchar(255) NOT NULL,
  `desc_ru` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `services`
--

INSERT INTO `services` (`id`, `name_az`, `name_en`, `name_ru`, `desc_az`, `desc_en`, `desc_ru`, `img`) VALUES
(3, 'asd', 'asd', 'asd', '<p><iframe frameborder=\"0\" height=\"720\" src=\"https://www.youtube.com/embed/3m1DEuHtQ5I\" width=\"1280\">&amp;l</iframe></p>\r\n', '', '', 'default.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tours`
--

CREATE TABLE `tours` (
  `id` int(11) NOT NULL,
  `services_id` int(11) NOT NULL,
  `offers_id` int(11) NOT NULL,
  `name_az` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_ru` varchar(255) NOT NULL,
  `desc_az` text NOT NULL,
  `desc_en` text NOT NULL,
  `desc_ru` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `end_date` date NOT NULL,
  `tour_price` int(11) NOT NULL,
  `tour_code` varchar(255) NOT NULL,
  `click_times` int(11) NOT NULL,
  `summary` text NOT NULL,
  `temperature` int(11) NOT NULL,
  `link` text NOT NULL,
  `map_long` varchar(255) NOT NULL,
  `map_lat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `tours`
--

INSERT INTO `tours` (`id`, `services_id`, `offers_id`, `name_az`, `name_en`, `name_ru`, `desc_az`, `desc_en`, `desc_ru`, `img`, `date`, `end_date`, `tour_price`, `tour_code`, `click_times`, `summary`, `temperature`, `link`, `map_long`, `map_lat`) VALUES
(94, 3, 3, 'asdsa', 'asdas', 'sd', '<p>asdas</p>\r\n', '<p>asdasd</p>\r\n', '<p>asda</p>\r\n', '190501_wnt_index_cruise_hpMain_16x9_992.jpg', '2019-12-27', '2019-12-13', 130, '#30000', 0, 'Gün boyu əsasən buludlu olacaq.', 1, 'https://www.google.com/maps/place/Ming%C9%99%C3%A7evir,+Az%C9%99rbaycan/@40.7634319,46.9988245,13z/data=!3m1!4b1!4m5!3m4!1s0x4038c0167a73481b:0xd57ec8576d39862c!8m2!3d40.7702563!4d47.0496015?hl=az', '40.7634319', '46.9988245');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tour_and_tour_includes`
--

CREATE TABLE `tour_and_tour_includes` (
  `id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `tour_includes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `tour_and_tour_includes`
--

INSERT INTO `tour_and_tour_includes` (`id`, `tour_id`, `tour_includes_id`) VALUES
(6, 92, 2),
(7, 92, 1),
(8, 93, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tour_gallery`
--

CREATE TABLE `tour_gallery` (
  `id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tour_includes`
--

CREATE TABLE `tour_includes` (
  `id` int(11) NOT NULL,
  `name_az` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_ru` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `tour_includes`
--

INSERT INTO `tour_includes` (`id`, `name_az`, `name_en`, `name_ru`, `img`) VALUES
(1, 'asda', 'sd', 'asdsa', '804A1250.jpg'),
(2, 'hghg', 'ghghg', 'ghgh', 'asd.jpeg'),
(3, 'asda', 'asdsa', 'sdas', 'wordpresssecurityguide.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `isAdmin`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(3, 'admin2', 'c84258e9c39059a89ab77d846ddab909', 0);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `additional_slide`
--
ALTER TABLE `additional_slide`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `main_slide`
--
ALTER TABLE `main_slide`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_id` (`services_id`,`offers_id`);

--
-- Tablo için indeksler `tour_and_tour_includes`
--
ALTER TABLE `tour_and_tour_includes`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tour_gallery`
--
ALTER TABLE `tour_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tour_id` (`tour_id`);

--
-- Tablo için indeksler `tour_includes`
--
ALTER TABLE `tour_includes`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `additional_slide`
--
ALTER TABLE `additional_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `main_slide`
--
ALTER TABLE `main_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `tours`
--
ALTER TABLE `tours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- Tablo için AUTO_INCREMENT değeri `tour_and_tour_includes`
--
ALTER TABLE `tour_and_tour_includes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `tour_gallery`
--
ALTER TABLE `tour_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `tour_includes`
--
ALTER TABLE `tour_includes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `tour_gallery`
--
ALTER TABLE `tour_gallery`
  ADD CONSTRAINT `tour_gallery_ibfk_1` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
