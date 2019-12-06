-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 06 Ara 2019, 16:32:04
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
  `desc_az` text NOT NULL,
  `desc_en` text NOT NULL,
  `desc_ru` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `about`
--

INSERT INTO `about` (`id`, `desc_az`, `desc_en`, `desc_ru`) VALUES
(1, '<p><span style=\"font-size:18px\">D&uuml;nyanın b&uuml;t&uuml;n istiqamətlərinə.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Baku Holiday Travel b&uuml;t&uuml;n aviaşirkətlərlə əməkdaşlıq edir və İATA sertifikatlaşdırılaraq global bilet sisteminə giriş imkanına malikdir və bununla m&uuml;ştərilərə hər bir istiqamətdə ən sərfəli qiymətlə və zaman baxımından ən rahat aviabiletləri təqdim edir.</span></p>\r\n\r\n<p><span style=\"font-size:18px\"><strong>&Ouml;z sahəsində m&uuml;təxəssis tur menecerlərimiz d&uuml;nyanın b&uuml;t&uuml;n istiqamətlərində turlara ən m&uuml;nasib qiymətləri alaraq m&uuml;ştərilərinə &nbsp;taqdim edir</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px\">Baku Holiday Travel Azərbaycan vətəndaşlarına və xarici vətəndaşlara iş və turizm vizalarının alınmasında k&ouml;məklik g&ouml;stərir. Habelə bizim təcr&uuml;bəli komanda &uuml;zvləri Shengen, USA və digər &ouml;lkələrə viza almaq &uuml;&ccedil;&uuml;n b&uuml;t&uuml;n zəruri sənədləri hazırlamaqda k&ouml;mək edəcək</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Baku Holiday Travel olaraq m&uuml;ştərilərimizə g&ouml;stərdiyimiz peşəkar xidmətlə m&uuml;ştərilərin və əməkdaşlıq etdiyimiz şirkətlərin g&uuml;vənini əldə etmişik.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">M&uuml;ştərilərimizin istəklərinə uyğun peşəkarcasına və qiymət baxımından sərfəli səyahət paketlərini hazırlayaraq &ouml;lkənin ən b&ouml;y&uuml;k və ən etibarlı Səyahət Təşkilatı olmuşuq.</span></p>\r\n', '<p>asd</p>\r\n', '<p>asd</p>\r\n');

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

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `additional_slide2`
--

CREATE TABLE `additional_slide2` (
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
-- Tablo için tablo yapısı `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `blog_category_id` int(11) NOT NULL,
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

INSERT INTO `blog` (`id`, `blog_category_id`, `name_az`, `name_en`, `name_ru`, `desc_az`, `desc_en`, `desc_ru`, `img`) VALUES
(1, 1, 'asd', 'asdsa', 'asdas', '<p>asdasd</p>\r\n', '', '', '2.jpg'),
(2, 2, 'asdsa', 'dasd', 'sda', '<p><img alt=\"Əbu Dabi ilə tanışlıq\" src=\"https://www.bht.az/img/photos/730/440/5db1631542278.jpg\" /></p>\r\n\r\n<p>Səyahət etməzdən əvvəl Əbu Dabi haqqında o qədər məlumatlı deyildim. Amma səyahətim zamanı bu &ouml;lkəyə aşiq olduğumu və səyahət etdiyim &ouml;lkələr sırasında ən yaxşılar siyahısına daxil edə bilərəm. <br />\r\n--------- &nbsp;</p>\r\n\r\n<p>Səyahətin ən maraqlı tərəflərindən biri isə odur ki, əgər siz &ldquo;ETIHAD&rdquo; hava yolları ilə səyahət edirisinizsə təyyarəyə girər girməz siz Əbu Dabinin qonaq pərvərliyini və Etihad hava yollarının inanılmaz xidmətindən anlayırsınız ki getdiyiniz &ouml;lkə &ccedil;ox maraqlı və əyləncəlidir. Səyahət etdiyimiz təyyarə &ldquo;Airbus A 320&rdquo; olduqca rahatdır.<br />\r\n<img src=\"https://www.bht.az/uploads/jpg/xp1dnuck5h7jvp1ppsu111fk11klg4.jpg.pagespeed.ic.IfWTg3GCHA.webp\" style=\"width:100%\" />&nbsp;Etihad hava yolları ilə səyahət etmədən &ouml;ncə &ldquo;E Box stream&rdquo; adlı proqramı k&ouml;&ccedil;&uuml;r&uuml;b u&ccedil;uş zamanı kino,musiqi,sport və s. videolara baxa bilərsiniz. Əbu Dabi Aeroportu olduqca b&ouml;y&uuml;k və genişdir, 65 &ccedil;ıxışı vardır. Səyahətdən &ouml;ncə bu &ouml;lkənin adət-ənənələrini və tarixcəsini araşdırsanız g&ouml;rəcəksiniz ki, Əbu Dabini qısa vaxta demək olar ki 0-dan inşa ediblər. Bu g&ouml;zəllikləri bu qədər qısa vaxta inşa etmək olduqca &ccedil;ətindir.<br />\r\n<img src=\"https://www.bht.az/uploads/jpg/xp1dnuck5h917sdm75rcq5rl1mu25.jpg.pagespeed.ic.P2ooGbbnwT.webp\" style=\"width:100%\" /><br />\r\nƏbu Dabidə getdiyimiz ilk otel &ldquo;BAB AL QASR&rdquo; oldu. Bu biznes oteli olduqca səliqəlidir. Otaqları və personalı g&uuml;lər&uuml;z və səmimidir.Oteldə yerləşdikdən sonra biz Əbu Dabinin k&uuml;&ccedil;ələrini kəşf etməyə getdik.Gecə vaxtı o olduqca az adam g&ouml;rərsiniz &ccedil;&ouml;ldə .Olduqca romantik şəhərdir. Təsəvv&uuml;r edin siz sakit və işiqlı k&uuml;cələri gəzirsiniz, xırda qum ayaqlarınıza toxunur. Bu cox g&ouml;zəl bir hiss deyilmi? Bir ne&ccedil;ə g&uuml;n ərzində bir &ccedil;ox otellərə gəzdik:<br />\r\n&bull; Bab Al Qasr,<br />\r\n&bull; ST Regis Saadiyat İsland,<br />\r\n&bull; Rixos Saadiyat İsland,<br />\r\n&bull; Jumeriah Al Wathba,<br />\r\n&bull; Emirates Palace,<br />\r\n&bull; Khalidiya Palace,<br />\r\n&bull; ST Regis Abu Dhabi,<br />\r\n&bull; Ritz Carlton,<br />\r\n&bull; Grand Canal Crowne Plaza,<br />\r\n&bull; Yas Island Saadiyyat Rotana.<br />\r\nQeyd olunan otellər Əbu Dabinin ən yaxşı otellərindən sayılır. Bu otellərdə turistlərə g&ouml;stərilən diqqət və qayğıdan olduqca məmnun qaldım. Bu otelləri sizə rahatlıqla məsləhət edə bilərik. İnsanlar bu &ouml;lkədə olduqca mehriban və diqqətcildilər.<br />\r\nƏbu Dabi haqqında &ccedil;ox danışmaq olar. Amma son olaraq sizə Əbu Dabidə gedə biləcəyiniz 15 yerin siyahısını qeyd edə bilərəm:  <br />\r\n1. Şeyh Zayed Camii<br />\r\n<img src=\"https://www.bht.az/uploads/jpg/xp1dnuck5h9bel1u561dee1q3vp2d6.jpg.pagespeed.ic.p-frbyClPz.webp\" style=\"width:100%\" /><br />\r\n2. Emirates Palace<br />\r\n3. Qasr al-Hosn<br />\r\n4. Heritage Village<br />\r\n5. Corniche Road<br />\r\n6. Yas Adası<br />\r\n7. Ferrari World Abu Dhabi<br />\r\n8. Yas Waterworld<br />\r\n9. Abu Dhabi Falcon Hospital<br />\r\n10. Emirates Park Zoo<br />\r\n11. Marina Mall<br />\r\n12. Jumeirah At Etihad Towers<br />\r\n13. Emirates National Auto Museum<br />\r\n14. (Al Ain Zoo)<br />\r\n15. Rivoli  - Əgər siz Əbu Dabiyə səyahət etmək istəsəniz Baku Holiday Travela m&uuml;raciyyət edə bilərsiniz. Peşakar menecerlərimiz sizin istəyinizə uyğun istənilən turları tez bir zamanda təşkil edəcək!<br />\r\n<strong>Əməkdaşımız Xəyal Səlimovun Əbu Dabi təəss&uuml;ratları</strong><br />\r\n<img src=\"https://www.bht.az/uploads/jpg/xp1dnuichcj146s16ig16c0196m8l34.jpg.pagespeed.ic.XEY0ZaVMrN.webp\" style=\"width:100%\" /></p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"350\" id=\"player\" src=\"https://www.youtube.com/embed/sdwTa19tUYs\" width=\"100%\"></iframe></p>\r\n', '<p>asdsa</p>\r\n', '<p>asdasda</p>\r\n', '804A1250.jpg'),
(3, 1, 'asd', 'asdsa', 'asdas', '<p>asdasd</p>\r\n', '', '', '2.jpg'),
(4, 2, 'asdsa', 'dasd', 'sda', '<p>asdsa</p>\r\n', '<p>asdsa</p>\r\n', '<p>asdasda</p>\r\n', '804A1250.jpg'),
(5, 1, 'asd', 'asdsa', 'asdas', '<p>asdasd</p>\r\n', '', '', '2.jpg'),
(6, 2, 'asdsa', 'dasd', 'sda', '<p>asdsa</p>\r\n', '<p>asdsa</p>\r\n', '<p>asdasda</p>\r\n', '804A1250.jpg'),
(7, 1, 'asd', 'asdsa', 'asdas', '<p>asdasd</p>\r\n', '', '', '2.jpg'),
(8, 2, 'asdsa', 'dasd', 'sda', '<p>asdsa</p>\r\n', '<p>asdsa</p>\r\n', '<p>asdasda</p>\r\n', '804A1250.jpg'),
(9, 1, 'asd', 'asdsa', 'asdas', '<p>asdasd</p>\r\n', '', '', '2.jpg'),
(10, 2, 'asdsa', 'dasd', 'sda', '<p>asdsa</p>\r\n', '<p>asdsa</p>\r\n', '<p>asdasda</p>\r\n', '804A1250.jpg'),
(11, 1, 'asd', 'asdsa', 'asdas', '<p>asdasd</p>\r\n', '', '', '2.jpg'),
(12, 2, 'asdsa', 'dasd', 'sda', '<p>asdsa</p>\r\n', '<p>asdsa</p>\r\n', '<p>asdasda</p>\r\n', '804A1250.jpg'),
(13, 1, 'asd', 'asdsa', 'asdas', '<p>asdasd</p>\r\n', '', '', '2.jpg'),
(14, 2, 'asdsa', 'dasd', 'sda', '<p>asdsa</p>\r\n', '<p>asdsa</p>\r\n', '<p>asdasda</p>\r\n', '804A1250.jpg'),
(15, 1, 'asd', 'asdsa', 'asdas', '<p>asdasd</p>\r\n', '', '', '2.jpg'),
(16, 2, 'asdsa', 'dasd', 'sda', '<p>asdsa</p>\r\n', '<p>asdsa</p>\r\n', '<p>asdasda</p>\r\n', '804A1250.jpg'),
(17, 1, 'asd', 'asdsa', 'asdas', '<p>asdasd</p>\r\n', '', '', '2.jpg'),
(18, 2, 'asdsa', 'dasd', 'sda', '<p>asdsa</p>\r\n', '<p>asdsa</p>\r\n', '<p>asdasda</p>\r\n', '804A1250.jpg'),
(19, 1, 'asd', 'asdsa', 'asdas', '<p>asdasd</p>\r\n', '', '', '2.jpg'),
(20, 2, 'asdsa', 'dasd', 'sda', '<p>asdsa</p>\r\n', '<p>asdsa</p>\r\n', '<p>asdasda</p>\r\n', '804A1250.jpg'),
(21, 1, 'asd', 'asdsa', 'asdas', '<p>asdasd</p>\r\n', '', '', '2.jpg'),
(22, 2, 'asdsa', 'dasd', 'sda', '<p>asdsa</p>\r\n', '<p>asdsa</p>\r\n', '<p>asdasda</p>\r\n', '804A1250.jpg'),
(23, 1, 'asd', 'asdsa', 'asdas', '<p>asdasd</p>\r\n', '', '', '2.jpg'),
(24, 2, 'asdsa', 'dasd', 'sda', '<p>asdsa</p>\r\n', '<p>asdsa</p>\r\n', '<p>asdasda</p>\r\n', '804A1250.jpg'),
(25, 1, 'asd', 'asdsa', 'asdas', '<p>asdasd</p>\r\n', '', '', '2.jpg'),
(26, 2, 'asdsa', 'dasd', 'sda', '<p>asdsa</p>\r\n', '<p>asdsa</p>\r\n', '<p>asdasda</p>\r\n', '804A1250.jpg'),
(27, 1, 'asd', 'asdsa', 'asdas', '<p>asdasd</p>\r\n', '', '', '2.jpg'),
(28, 2, 'asdsa', 'dasd', 'sda', '<p>asdsa</p>\r\n', '<p>asdsa</p>\r\n', '<p>asdasda</p>\r\n', '804A1250.jpg'),
(29, 1, 'asd', 'asdsa', 'asdas', '<p>asdasd</p>\r\n', '', '', '2.jpg'),
(30, 2, 'asdsa', 'dasd', 'sda', '<p>asdsa</p>\r\n', '<p>asdsa</p>\r\n', '<p>asdasda</p>\r\n', '804A1250.jpg'),
(31, 1, 'asd', 'asdsa', 'asdas', '<p>asdasd</p>\r\n', '', '', '2.jpg'),
(32, 2, 'asdsa', 'dasd', 'sda', '<p>asdsa</p>\r\n', '<p>asdsa</p>\r\n', '<p>asdasda</p>\r\n', '804A1250.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog_category`
--

CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL,
  `name_az` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_ru` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `blog_category`
--

INSERT INTO `blog_category` (`id`, `name_az`, `name_en`, `name_ru`, `img`) VALUES
(1, 'asdsd', 'asdsa', 'asdsa', '7.png'),
(2, 'asdsa', 'asdas', 'asdas', '9357103b-c168-4c28-a10c-4c04e6b079d9.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `address_az` varchar(255) NOT NULL,
  `address_en` varchar(255) NOT NULL,
  `address_ru` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
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

INSERT INTO `contact` (`id`, `address_az`, `address_en`, `address_ru`, `phone`, `email`, `facebook`, `instagram`, `youtube`, `twitter`, `whatsapp`, `linkedln`, `phone_img`, `address_img`, `email_img`, `linkedln_img`, `facebook_img`, `instagram_img`, `youtube_img`, `twitter_img`, `whatsapp_img`) VALUES
(1, 'asdasd', 'asdasd', 'asdasd', '1123123123', 'asd@sadasd', 'aasdasd', 'http://localhost/phpmyadmin/tbl_structure.php?db=luckytravel&table=contact', 'asd', 'asd', 'asd', 'asd', 'phone_icon_3_dark.png', 'loc_icon_2_dark.png', 'mail_icon_l_dark.png', 'default.png', 'default.png', 'default.png', 'default.png', 'default.png', 'default.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `name_az` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_ru` varchar(255) NOT NULL,
  `desc_az` text NOT NULL,
  `desc_en` text NOT NULL,
  `desc_ru` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `faqs`
--

INSERT INTO `faqs` (`id`, `name_az`, `name_en`, `name_ru`, `desc_az`, `desc_en`, `desc_ru`) VALUES
(1, 'asd1', 'asd', 'asd', 'asd', 'asd', 'asd'),
(2, 'asd2', 'asd', 'asd', 'asd', 'asd', 'asd'),
(3, 'asd3', 'asd', 'asd', 'asd', 'asd', 'asd'),
(4, 'asd4', 'asd', 'asd', 'asd', 'asd', 'asd');

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
(1, 'default.png');

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
  `desc_az` text NOT NULL,
  `desc_en` text NOT NULL,
  `desc_ru` text NOT NULL,
  `title_az` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ru` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `offers`
--

INSERT INTO `offers` (`id`, `name_az`, `name_en`, `name_ru`, `desc_az`, `desc_en`, `desc_ru`, `title_az`, `title_en`, `title_ru`, `img`) VALUES
(1, 'asd', 'asd', 'asd', '', '', '', 'fff', 'fff', 'fff', '2.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `offers_about`
--

CREATE TABLE `offers_about` (
  `id` int(11) NOT NULL,
  `desc_az` text NOT NULL,
  `desc_en` text NOT NULL,
  `desc_ru` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `offers_about`
--

INSERT INTO `offers_about` (`id`, `desc_az`, `desc_en`, `desc_ru`) VALUES
(1, '<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:24px\">TƏKLİFLƏRİMİZ</span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">D&uuml;nyanın b&uuml;t&uuml;n istiqamətlərinə turizmin b&uuml;t&uuml;n sahələri &uuml;zrə professional xidmətlər</p>\r\n\r\n<p><span style=\"font-size:16px\">Baku Holiday Travel&rdquo; Turizm Şirkəti 2013-c&uuml; il 27 iyul tarixində Mədəniyyət və Turizm Nazirliyinin lisenziyası ilə fəaliyyətə başlamış və professional xidməti ilə qısa m&uuml;ddət ərzində m&uuml;ştərilərin rəğbətini qazanmışdır. Hal - hazırda Azərbaycanda və D&uuml;nyanın bir &ccedil;ox &ouml;lkələrinə Turizmin İstirahət, Biznes, M&uuml;alicəvi və digər sahələri &uuml;zrə təşkilində aktiv və inkişaf edən şirkət olaraq tanınıb.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Baku Holiday Travel-in təmin etdiyi xidmətlərin m&uuml;ştərilər tərəfindən y&uuml;ksək qiymətləndirilməsi, bizi işimizə daha məsuliyyətli yanaşmağa və peşəkar idarə&ccedil;ilyimizi artırmağa daha &ccedil;ox motivasiya yaradır. Bir s&ouml;zlə, şirkətiniz və səyahət&ccedil;iləriniz &uuml;&ccedil;&uuml;n ən peşəkar se&ccedil;im Baku Holiday Travel-dir</span></p>\r\n', '<p>asd</p>\r\n', '<p>asd</p>\r\n');

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

--
-- Tablo döküm verisi `partners`
--

INSERT INTO `partners` (`id`, `name_az`, `name_en`, `name_ru`, `img`, `link`) VALUES
(1, 'asds', 'asd', 'asd', '614.png', 'asdas');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_cabinet`
--

CREATE TABLE `personal_cabinet` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(2552) NOT NULL,
  `surname` varchar(2552) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `status` int(1) NOT NULL
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
  `desc_az` text NOT NULL,
  `desc_en` text NOT NULL,
  `desc_ru` text NOT NULL,
  `title_az` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ru` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `services`
--

INSERT INTO `services` (`id`, `name_az`, `name_en`, `name_ru`, `desc_az`, `desc_en`, `desc_ru`, `title_az`, `title_en`, `title_ru`, `img`) VALUES
(1, ' Korporativ & Biznes Turizmi	', 'sd', 'asd', '<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-size:24px\">ƏN M&Uuml;NASİB QİYMƏTƏ VƏ KOMFORTLU U&Ccedil;UŞLAR</span></strong></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"color:#95a5a6\">Biz ən n&uuml;fuzlu aviaşirkətlərlə əməkdaşlıq edirik</span></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p><span style=\"font-size:18px\">Biz AZAL, Turkish Airlines, Qatar Airways, ETIHAD-la yanaşı digər beynəlxalq Hava Yolu şirkətləri ilə əməkdaşlıq edirik. Bizim Aviabilet menecerlərimiz sizin səyahət etmək istədiyiniz şəhərə, tarixə və saata uyğun olaraq u&ccedil;uş biletinizi operativ şəkildə hazır edəcəklər.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Komfortlu səyahətləri biz ən m&uuml;nasib qiymətə təqdim edirik.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:18px\">&ldquo;Bakı Holiday Travel&ldquo; turizm təşkilatının əsas prioritetlərindən biri korporativ şənliklər, korporativ tədbirlər, işg&uuml;zar g&ouml;r&uuml;şlər, forumlar, seminarlar və sərgilərin təşkil olunmasıdır. Peşakar menecerlər m&uuml;ştərilərin tələblərinin m&uuml;rəkkəblik səviyyəsindən asılı olmayaraq həyata ke&ccedil;irirlər.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">Korporativ m&uuml;ştərilərimiz &uuml;&ccedil;&uuml;n tam biznes səyahət həlli təklif edirik; Biz sizin tələblərinizin hər aspektinə diqqət yetirəcək və sifariş prosesini birbaşa həll edəcəyik. Beləliklə, siz fikrinizi yalnız biznesinizə y&ouml;nləndirəcəksiniz.</span></p>\r\n\r\n<p><span style=\"font-size:18px\">M&uuml;stəqil bir &ouml;zəl şirkət kimi, bizim məsləhətimiz qərəzsiz və tərəfsizdir. Biz turizm bazarındakı ən uyğun se&ccedil;imləri sizin təqdim edəcəyik.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:18px\">Sizin &uuml;&ccedil;&uuml;n u&ccedil;uşlar, otellər, qatarlar, avtomobil icarəsi, sığorta, viza və valyuta daxil olmaqla, səyahətin b&uuml;t&uuml;n aspektlərini əhatə edən tam bir sifariş xidməti təklif edirik.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18px\">--------------------------</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18px\">Aviabilet lazımdır? Zəng edin:<br />\r\n＋994 77 497 77 76 (＋Whatsapp)<br />\r\n＋994 12 599 88 99 (Winter Park Plaza ofis)<br />\r\n＋994 77 497 77 74 (＋Whatsapp)<br />\r\n＋994 12 497 58 21/22 (Caspian Plaza ofis)</span></p>\r\n', '', '', '', '', '', '7.png'),
(2, 'asdsadahd asdjashdk asdkjhasd asdasd', 'sd', 'asd', '<p>asdaaalsdjas asldhkas kasdh aksdh kashdkajshdkas dkajshd asdkhas kdjhas dkjahs dkjash dd</p>\r\n', '', '', '', '', '', '7.png'),
(3, 'asdasasdsa', 'sd', 'asd', '<p>asdaaalsdjas asldhkas kasdh aksdh kashdkajshdkas dkajshd asdkhas kdjhas dkjahs dkjash dd</p>\r\n', '', '', '', '', '', '7.png'),
(4, 'asdsadahd asdjashdk asdkjhasd asdasd', 'sd', 'asd', '<p>asdaaalsdjas asldhkas kasdh aksdh kashdkajshdkas dkajshd asdkhas kdjhas dkjahs dkjash dd</p>\r\n', '', '', '', '', '', '7.png'),
(5, 'asdsadahd asdjashdk asdkjhasd asdasd', 'sd', 'asd', '<p>asdaaalsdjas asldhkas kasdh aksdh kashdkajshdkas dkajshd asdkhas kdjhas dkjahs dkjash dd</p>\r\n', '', '', '', '', '', '7.png'),
(6, 'asdsadahd asdjashdk asdkjhasd asdasd', 'sd', 'asd', '<p>asdaaalsdjas asldhkas kasdh aksdh kashdkajshdkas dkajshd asdkhas kdjhas dkjahs dkjash dd</p>\r\n', '', '', '', '', '', '7.png'),
(7, 'asdsadahd asdjashdk asdkjhasd asdasd', 'sd', 'asd', '<p>asdaaalsdjas asldhkas kasdh aksdh kashdkajshdkas dkajshd asdkhas kdjhas dkjahs dkjash dd</p>\r\n', '', '', '', '', '', '7.png'),
(8, ' VİP xidmətlər	', 'sd', 'asd', '<p>asdaaalsdjas asldhkas kasdh aksdh kashdkajshdkas dkajshd asdkhas kdjhas dkjahs dkjash dd</p>\r\n', '', '', ' Ən yüksək komfort səyahət və lüks istirahət	', ' Ən yüksək komfort səyahət və lüks istirahət	', ' Ən yüksək komfort səyahət və lüks istirahət	', '7.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `services_about`
--

CREATE TABLE `services_about` (
  `id` int(11) NOT NULL,
  `desc_az` text NOT NULL,
  `desc_en` text NOT NULL,
  `desc_ru` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `services_about`
--

INSERT INTO `services_about` (`id`, `desc_az`, `desc_en`, `desc_ru`) VALUES
(1, '<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:24px\">XİDMƏTLƏRİMİZ</span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">D&uuml;nyanın b&uuml;t&uuml;n istiqamətlərinə turizmin b&uuml;t&uuml;n sahələri &uuml;zrə professional xidmətlər</p>\r\n\r\n<p><span style=\"font-size:16px\">Baku Holiday Travel&rdquo; Turizm Şirkəti 2013-c&uuml; il 27 iyul tarixində Mədəniyyət və Turizm Nazirliyinin lisenziyası ilə fəaliyyətə başlamış və professional xidməti ilə qısa m&uuml;ddət ərzində m&uuml;ştərilərin rəğbətini qazanmışdır. Hal - hazırda Azərbaycanda və D&uuml;nyanın bir &ccedil;ox &ouml;lkələrinə Turizmin İstirahət, Biznes, M&uuml;alicəvi və digər sahələri &uuml;zrə təşkilində aktiv və inkişaf edən şirkət olaraq tanınıb.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Baku Holiday Travel-in təmin etdiyi xidmətlərin m&uuml;ştərilər tərəfindən y&uuml;ksək qiymətləndirilməsi, bizi işimizə daha məsuliyyətli yanaşmağa və peşəkar idarə&ccedil;ilyimizi artırmağa daha &ccedil;ox motivasiya yaradır. Bir s&ouml;zlə, şirkətiniz və səyahət&ccedil;iləriniz &uuml;&ccedil;&uuml;n ən peşəkar se&ccedil;im Baku Holiday Travel-dir</span></p>\r\n', '<p style=\"text-align:center\"><span style=\"font-size:18px\">D&uuml;nyanın b&uuml;t&uuml;n istiqamətlərinə turizmin b&uuml;t&uuml;n sahələri &uuml;zrə professional xidmətlər</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18px\">Baku Holiday Travel&rdquo; Turizm Şirkəti 2013-c&uuml; il 27 iyul tarixində Mədəniyyət və Turizm Nazirliyinin lisenziyası ilə fəaliyyətə başlamış və professional xidməti ilə qısa m&uuml;ddət ərzində m&uuml;ştərilərin rəğbətini qazanmışdır. Hal - hazırda Azərbaycanda və D&uuml;nyanın bir &ccedil;ox &ouml;lkələrinə Turizmin İstirahət, Biznes, M&uuml;alicəvi və digər sahələri &uuml;zrə təşkilində aktiv və inkişaf edən şirkət olaraq tanınıb.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18px\">Baku Holiday Travel-in təmin etdiyi xidmətlərin m&uuml;ştərilər tərəfindən y&uuml;ksək qiymətləndirilməsi, bizi işimizə daha məsuliyyətli yanaşmağa və peşəkar idarə&ccedil;ilyimizi artırmağa daha &ccedil;ox motivasiya yaradır. Bir s&ouml;zlə, şirkətiniz və səyahət&ccedil;iləriniz &uuml;&ccedil;&uuml;n ən peşəkar se&ccedil;im Baku Holiday Travel-dir</span></p>\r\n', '<p style=\"text-align:center\"><span style=\"font-size:18px\">D&uuml;nyanın b&uuml;t&uuml;n istiqamətlərinə turizmin b&uuml;t&uuml;n sahələri &uuml;zrə professional xidmətlər</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18px\">Baku Holiday Travel&rdquo; Turizm Şirkəti 2013-c&uuml; il 27 iyul tarixində Mədəniyyət və Turizm Nazirliyinin lisenziyası ilə fəaliyyətə başlamış və professional xidməti ilə qısa m&uuml;ddət ərzində m&uuml;ştərilərin rəğbətini qazanmışdır. Hal - hazırda Azərbaycanda və D&uuml;nyanın bir &ccedil;ox &ouml;lkələrinə Turizmin İstirahət, Biznes, M&uuml;alicəvi və digər sahələri &uuml;zrə təşkilində aktiv və inkişaf edən şirkət olaraq tanınıb.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18px\">Baku Holiday Travel-in təmin etdiyi xidmətlərin m&uuml;ştərilər tərəfindən y&uuml;ksək qiymətləndirilməsi, bizi işimizə daha məsuliyyətli yanaşmağa və peşəkar idarə&ccedil;ilyimizi artırmağa daha &ccedil;ox motivasiya yaradır. Bir s&ouml;zlə, şirkətiniz və səyahət&ccedil;iləriniz &uuml;&ccedil;&uuml;n ən peşəkar se&ccedil;im Baku Holiday Travel-dir</span></p>\r\n');

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
(96, 0, 0, 'Mingecevir Turu', 'Mingecevir Turu En', 'Mingecevir Turu Ru', '<h2 style=\"font-style:italic\"><span style=\"background-color:#8e44ad\">Amsterdamın b&uuml;t&uuml;n g&ouml;zəlliyini g&ouml;rmək &uuml;&ccedil;&uuml;n Yeni İldə səyahət etmək lazımdır.</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">Siz bu səyahəti 1 KART kartı ilə və digər sərfəli kredit şərtlərimizlə əldə edə bilərsiniz.</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">TARİX:</span><br />\r\n<span style=\"background-color:#8e44ad\">30.12.2019 - 04.01.2020</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">OTELLƏR VƏ QİYMƏTLƏR:</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Holiday Inn Express Amsterdam Arena Towers - 1050 usd</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Delta Hotel City Center - 1280 usd</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Best Western Dam Square Inn - 1290 usd</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">QİYMƏTƏ DAXİLDİR:</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Aviabilet (T&uuml;rk Hava yolu)</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Otel (5 gecə/6 g&uuml;n)</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Qidalanma (səhər yeməyi)</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Transfer</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Sığorta</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Viza dəstəyi</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">QEYDLƏR:</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Qiymət 2 nəfərlik səyahət zamanı 1 nəfər &uuml;&ccedil;&uuml;n qeyd edilmişdir.</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; &Ouml;dəniş g&uuml;n&uuml;n məzənnəsinə uyğun olaraq manatla qəbul olunur.</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">Winter Park ofis:</span><br />\r\n<span style=\"background-color:#8e44ad\">+994 77 497 77 77 (Whatsapp ilə əlaqə &uuml;&ccedil;&uuml;n&nbsp;</span><a href=\"https://api.whatsapp.com/send?phone=994774977777\" target=\"_blank\"><strong><span style=\"background-color:#8e44ad\">KLİK EDİN</span></strong></a><span style=\"background-color:#8e44ad\">)</span><br />\r\n<span style=\"background-color:#8e44ad\">+994 12 599 88 99</span><br />\r\n<span style=\"background-color:#8e44ad\">M.Əliyev k&uuml;&ccedil;. 210, Winter Park Plaza, 1-ci mərtəbə, Bakı</span></h2>\r\n', '<p>asdsda</p>\r\n', '<p>asdas</p>\r\n', 'default.png', '2019-12-16', '2019-12-18', 100, '#000000', 7, 'Gün boyu qismən buludlu olacaq.', 2, 'https://www.google.com/maps/place/Minge%C3%A7evir,+Azerbaycan/@40.7634319,46.9988245,13z/data=!3m1!4b1!4m5!3m4!1s0x4038c0167a73481b:0xd57ec8576d39862c!8m2!3d40.7702563!4d47.0496015', '40.7634319', '46.9988245'),
(97, 0, 0, 'Qax Turu', 'Qax Turu En', 'Qax Turu Ru', '<p><span style=\"font-size:24px\">Amsterdamın b&uuml;t&uuml;n g&ouml;zəlliyini g&ouml;rmək &uuml;&ccedil;&uuml;n Yeni İldə səyahət etmək lazımdır.<br />\r\n-----------<br />\r\nSiz bu səyahəti 1 KART kartı ilə və digər sərfəli kredit şərtlərimizlə əldə edə bilərsiniz.<br />\r\n-----------<br />\r\nTARİX:<br />\r\n30.12.2019 - 04.01.2020<br />\r\n-----------<br />\r\nOTELLƏR VƏ QİYMƏTLƏR:<br />\r\n&bull; Holiday Inn Express Amsterdam Arena Towers - 1050 usd<br />\r\n&bull; Delta Hotel City Center - 1280 usd<br />\r\n&bull; Best Western Dam Square Inn - 1290 usd<br />\r\n-----------<br />\r\nQİYMƏTƏ DAXİLDİR:<br />\r\n&bull; Aviabilet (T&uuml;rk Hava yolu)<br />\r\n&bull; Otel (5 gecə/6 g&uuml;n)<br />\r\n&bull; Qidalanma (səhər yeməyi)<br />\r\n&bull; Transfer<br />\r\n&bull; Sığorta<br />\r\n&bull; Viza dəstəyi<br />\r\n-----------<br />\r\nQEYDLƏR:<br />\r\n&bull; Qiymət 2 nəfərlik səyahət zamanı 1 nəfər &uuml;&ccedil;&uuml;n qeyd edilmişdir.<br />\r\n&bull; &Ouml;dəniş g&uuml;n&uuml;n məzənnəsinə uyğun olaraq manatla qəbul olunur.<br />\r\n-----------<br />\r\nWinter Park ofis:<br />\r\n+994 77 497 77 77 (Whatsapp ilə əlaqə &uuml;&ccedil;&uuml;n&nbsp;<a href=\"https://api.whatsapp.com/send?phone=994774977777\" target=\"_blank\"><strong>KLİK EDİN</strong></a>)<br />\r\n+994 12 599 88 99<br />\r\nM.Əliyev k&uuml;&ccedil;. 210, Winter Park Plaza, 1-ci mərtəbə, Bakı</span></p>\r\n', '', '', 'default.png', '2019-12-17', '2019-12-20', 100, '#000001', 2, 'Gün boyu qismən buludlu olacaq.', 2, 'https://www.google.com/maps/place/Kah,+Azerbaycan/@41.4253485,46.9232512,14z/data=!3m1!4b1!4m5!3m4!1s0x4047bddb8deb2619:0x8b2000bbc219140d!8m2!3d41.4206827!4d46.9320184', '41.4253485', '46.9232512'),
(98, 0, 0, 'Lenkeran Turu', 'Lenkeran Turu', 'Lenkeran Turu', '<p>Amsterdamın b&uuml;t&uuml;n g&ouml;zəlliyini g&ouml;rmək &uuml;&ccedil;&uuml;n Yeni İldə səyahət etmək lazımdır.<br />\r\n-----------<br />\r\nSiz bu səyahəti 1 KART kartı ilə və digər sərfəli kredit şərtlərimizlə əldə edə bilərsiniz.<br />\r\n-----------<br />\r\nTARİX:<br />\r\n30.12.2019 - 04.01.2020<br />\r\n-----------<br />\r\nOTELLƏR VƏ QİYMƏTLƏR:<br />\r\n&bull; Holiday Inn Express Amsterdam Arena Towers - 1050 usd<br />\r\n&bull; Delta Hotel City Center - 1280 usd<br />\r\n&bull; Best Western Dam Square Inn - 1290 usd<br />\r\n-----------<br />\r\nQİYMƏTƏ DAXİLDİR:<br />\r\n&bull; Aviabilet (T&uuml;rk Hava yolu)<br />\r\n&bull; Otel (5 gecə/6 g&uuml;n)<br />\r\n&bull; Qidalanma (səhər yeməyi)<br />\r\n&bull; Transfer<br />\r\n&bull; Sığorta<br />\r\n&bull; Viza dəstəyi<br />\r\n-----------<br />\r\nQEYDLƏR:<br />\r\n&bull; Qiymət 2 nəfərlik səyahət zamanı 1 nəfər &uuml;&ccedil;&uuml;n qeyd edilmişdir.<br />\r\n&bull; &Ouml;dəniş g&uuml;n&uuml;n məzənnəsinə uyğun olaraq manatla qəbul olunur.<br />\r\n-----------<br />\r\nWinter Park ofis:<br />\r\n+994 77 497 77 77 (Whatsapp ilə əlaqə &uuml;&ccedil;&uuml;n&nbsp;<a href=\"https://api.whatsapp.com/send?phone=994774977777\" target=\"_blank\"><strong>KLİK EDİN</strong></a>)<br />\r\n+994 12 599 88 99<br />\r\nM.Əliyev k&uuml;&ccedil;. 210, Winter Park Plaza, 1-ci mərtəbə, Bakı</p>\r\n', '', '', 'default.png', '2019-12-17', '2019-12-21', 120, '#000002', 12, 'Gün boyu əsasən buludlu olacaq.', 4, 'https://www.google.com/maps/place/Lenkeran,+Azerbaycan/@38.7649215,48.810056,13z/data=!3m1!4b1!4m5!3m4!1s0x4022ff87bc65fe87:0x2e22247524d53740!8m2!3d38.7528669!4d48.8475015', '38.7649215', '48.810056'),
(99, 0, 0, 'Mingecevir Turu', 'Mingecevir Turu En', 'Mingecevir Turu Ru', '<h2 style=\"font-style:italic\"><span style=\"background-color:#8e44ad\">Amsterdamın b&uuml;t&uuml;n g&ouml;zəlliyini g&ouml;rmək &uuml;&ccedil;&uuml;n Yeni İldə səyahət etmək lazımdır.</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">Siz bu səyahəti 1 KART kartı ilə və digər sərfəli kredit şərtlərimizlə əldə edə bilərsiniz.</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">TARİX:</span><br />\r\n<span style=\"background-color:#8e44ad\">30.12.2019 - 04.01.2020</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">OTELLƏR VƏ QİYMƏTLƏR:</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Holiday Inn Express Amsterdam Arena Towers - 1050 usd</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Delta Hotel City Center - 1280 usd</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Best Western Dam Square Inn - 1290 usd</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">QİYMƏTƏ DAXİLDİR:</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Aviabilet (T&uuml;rk Hava yolu)</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Otel (5 gecə/6 g&uuml;n)</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Qidalanma (səhər yeməyi)</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Transfer</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Sığorta</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Viza dəstəyi</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">QEYDLƏR:</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Qiymət 2 nəfərlik səyahət zamanı 1 nəfər &uuml;&ccedil;&uuml;n qeyd edilmişdir.</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; &Ouml;dəniş g&uuml;n&uuml;n məzənnəsinə uyğun olaraq manatla qəbul olunur.</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">Winter Park ofis:</span><br />\r\n<span style=\"background-color:#8e44ad\">+994 77 497 77 77 (Whatsapp ilə əlaqə &uuml;&ccedil;&uuml;n&nbsp;</span><a href=\"https://api.whatsapp.com/send?phone=994774977777\" target=\"_blank\"><strong><span style=\"background-color:#8e44ad\">KLİK EDİN</span></strong></a><span style=\"background-color:#8e44ad\">)</span><br />\r\n<span style=\"background-color:#8e44ad\">+994 12 599 88 99</span><br />\r\n<span style=\"background-color:#8e44ad\">M.Əliyev k&uuml;&ccedil;. 210, Winter Park Plaza, 1-ci mərtəbə, Bakı</span></h2>\r\n', '<p>asdsda</p>\r\n', '<p>asdas</p>\r\n', 'default.png', '2019-12-16', '2019-12-18', 100, '#000000', 7, 'Gün boyu qismən buludlu olacaq.', 2, 'https://www.google.com/maps/place/Minge%C3%A7evir,+Azerbaycan/@40.7634319,46.9988245,13z/data=!3m1!4b1!4m5!3m4!1s0x4038c0167a73481b:0xd57ec8576d39862c!8m2!3d40.7702563!4d47.0496015', '40.7634319', '46.9988245'),
(100, 0, 0, 'Qax Turu', 'Qax Turu En', 'Qax Turu Ru', '<p><span style=\"font-size:24px\">Amsterdamın b&uuml;t&uuml;n g&ouml;zəlliyini g&ouml;rmək &uuml;&ccedil;&uuml;n Yeni İldə səyahət etmək lazımdır.<br />\r\n-----------<br />\r\nSiz bu səyahəti 1 KART kartı ilə və digər sərfəli kredit şərtlərimizlə əldə edə bilərsiniz.<br />\r\n-----------<br />\r\nTARİX:<br />\r\n30.12.2019 - 04.01.2020<br />\r\n-----------<br />\r\nOTELLƏR VƏ QİYMƏTLƏR:<br />\r\n&bull; Holiday Inn Express Amsterdam Arena Towers - 1050 usd<br />\r\n&bull; Delta Hotel City Center - 1280 usd<br />\r\n&bull; Best Western Dam Square Inn - 1290 usd<br />\r\n-----------<br />\r\nQİYMƏTƏ DAXİLDİR:<br />\r\n&bull; Aviabilet (T&uuml;rk Hava yolu)<br />\r\n&bull; Otel (5 gecə/6 g&uuml;n)<br />\r\n&bull; Qidalanma (səhər yeməyi)<br />\r\n&bull; Transfer<br />\r\n&bull; Sığorta<br />\r\n&bull; Viza dəstəyi<br />\r\n-----------<br />\r\nQEYDLƏR:<br />\r\n&bull; Qiymət 2 nəfərlik səyahət zamanı 1 nəfər &uuml;&ccedil;&uuml;n qeyd edilmişdir.<br />\r\n&bull; &Ouml;dəniş g&uuml;n&uuml;n məzənnəsinə uyğun olaraq manatla qəbul olunur.<br />\r\n-----------<br />\r\nWinter Park ofis:<br />\r\n+994 77 497 77 77 (Whatsapp ilə əlaqə &uuml;&ccedil;&uuml;n&nbsp;<a href=\"https://api.whatsapp.com/send?phone=994774977777\" target=\"_blank\"><strong>KLİK EDİN</strong></a>)<br />\r\n+994 12 599 88 99<br />\r\nM.Əliyev k&uuml;&ccedil;. 210, Winter Park Plaza, 1-ci mərtəbə, Bakı</span></p>\r\n', '', '', 'default.png', '2019-12-17', '2019-12-20', 100, '#000001', 2, 'Gün boyu qismən buludlu olacaq.', 2, 'https://www.google.com/maps/place/Kah,+Azerbaycan/@41.4253485,46.9232512,14z/data=!3m1!4b1!4m5!3m4!1s0x4047bddb8deb2619:0x8b2000bbc219140d!8m2!3d41.4206827!4d46.9320184', '41.4253485', '46.9232512'),
(101, 0, 0, 'Lenkeran Turu', 'Lenkeran Turu', 'Lenkeran Turu', '<p>Amsterdamın b&uuml;t&uuml;n g&ouml;zəlliyini g&ouml;rmək &uuml;&ccedil;&uuml;n Yeni İldə səyahət etmək lazımdır.<br />\r\n-----------<br />\r\nSiz bu səyahəti 1 KART kartı ilə və digər sərfəli kredit şərtlərimizlə əldə edə bilərsiniz.<br />\r\n-----------<br />\r\nTARİX:<br />\r\n30.12.2019 - 04.01.2020<br />\r\n-----------<br />\r\nOTELLƏR VƏ QİYMƏTLƏR:<br />\r\n&bull; Holiday Inn Express Amsterdam Arena Towers - 1050 usd<br />\r\n&bull; Delta Hotel City Center - 1280 usd<br />\r\n&bull; Best Western Dam Square Inn - 1290 usd<br />\r\n-----------<br />\r\nQİYMƏTƏ DAXİLDİR:<br />\r\n&bull; Aviabilet (T&uuml;rk Hava yolu)<br />\r\n&bull; Otel (5 gecə/6 g&uuml;n)<br />\r\n&bull; Qidalanma (səhər yeməyi)<br />\r\n&bull; Transfer<br />\r\n&bull; Sığorta<br />\r\n&bull; Viza dəstəyi<br />\r\n-----------<br />\r\nQEYDLƏR:<br />\r\n&bull; Qiymət 2 nəfərlik səyahət zamanı 1 nəfər &uuml;&ccedil;&uuml;n qeyd edilmişdir.<br />\r\n&bull; &Ouml;dəniş g&uuml;n&uuml;n məzənnəsinə uyğun olaraq manatla qəbul olunur.<br />\r\n-----------<br />\r\nWinter Park ofis:<br />\r\n+994 77 497 77 77 (Whatsapp ilə əlaqə &uuml;&ccedil;&uuml;n&nbsp;<a href=\"https://api.whatsapp.com/send?phone=994774977777\" target=\"_blank\"><strong>KLİK EDİN</strong></a>)<br />\r\n+994 12 599 88 99<br />\r\nM.Əliyev k&uuml;&ccedil;. 210, Winter Park Plaza, 1-ci mərtəbə, Bakı</p>\r\n', '', '', 'default.png', '2019-12-17', '2019-12-21', 120, '#000002', 12, 'Gün boyu əsasən buludlu olacaq.', 4, 'https://www.google.com/maps/place/Lenkeran,+Azerbaycan/@38.7649215,48.810056,13z/data=!3m1!4b1!4m5!3m4!1s0x4022ff87bc65fe87:0x2e22247524d53740!8m2!3d38.7528669!4d48.8475015', '38.7649215', '48.810056'),
(102, 0, 0, 'Mingecevir Turu', 'Mingecevir Turu En', 'Mingecevir Turu Ru', '<h2 style=\"font-style:italic\"><span style=\"background-color:#8e44ad\">Amsterdamın b&uuml;t&uuml;n g&ouml;zəlliyini g&ouml;rmək &uuml;&ccedil;&uuml;n Yeni İldə səyahət etmək lazımdır.</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">Siz bu səyahəti 1 KART kartı ilə və digər sərfəli kredit şərtlərimizlə əldə edə bilərsiniz.</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">TARİX:</span><br />\r\n<span style=\"background-color:#8e44ad\">30.12.2019 - 04.01.2020</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">OTELLƏR VƏ QİYMƏTLƏR:</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Holiday Inn Express Amsterdam Arena Towers - 1050 usd</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Delta Hotel City Center - 1280 usd</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Best Western Dam Square Inn - 1290 usd</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">QİYMƏTƏ DAXİLDİR:</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Aviabilet (T&uuml;rk Hava yolu)</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Otel (5 gecə/6 g&uuml;n)</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Qidalanma (səhər yeməyi)</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Transfer</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Sığorta</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Viza dəstəyi</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">QEYDLƏR:</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Qiymət 2 nəfərlik səyahət zamanı 1 nəfər &uuml;&ccedil;&uuml;n qeyd edilmişdir.</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; &Ouml;dəniş g&uuml;n&uuml;n məzənnəsinə uyğun olaraq manatla qəbul olunur.</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">Winter Park ofis:</span><br />\r\n<span style=\"background-color:#8e44ad\">+994 77 497 77 77 (Whatsapp ilə əlaqə &uuml;&ccedil;&uuml;n&nbsp;</span><a href=\"https://api.whatsapp.com/send?phone=994774977777\" target=\"_blank\"><strong><span style=\"background-color:#8e44ad\">KLİK EDİN</span></strong></a><span style=\"background-color:#8e44ad\">)</span><br />\r\n<span style=\"background-color:#8e44ad\">+994 12 599 88 99</span><br />\r\n<span style=\"background-color:#8e44ad\">M.Əliyev k&uuml;&ccedil;. 210, Winter Park Plaza, 1-ci mərtəbə, Bakı</span></h2>\r\n', '<p>asdsda</p>\r\n', '<p>asdas</p>\r\n', 'default.png', '2019-12-16', '2019-12-18', 100, '#000000', 7, 'Gün boyu qismən buludlu olacaq.', 2, 'https://www.google.com/maps/place/Minge%C3%A7evir,+Azerbaycan/@40.7634319,46.9988245,13z/data=!3m1!4b1!4m5!3m4!1s0x4038c0167a73481b:0xd57ec8576d39862c!8m2!3d40.7702563!4d47.0496015', '40.7634319', '46.9988245'),
(103, 0, 0, 'Qax Turu', 'Qax Turu En', 'Qax Turu Ru', '<p><span style=\"font-size:24px\">Amsterdamın b&uuml;t&uuml;n g&ouml;zəlliyini g&ouml;rmək &uuml;&ccedil;&uuml;n Yeni İldə səyahət etmək lazımdır.<br />\r\n-----------<br />\r\nSiz bu səyahəti 1 KART kartı ilə və digər sərfəli kredit şərtlərimizlə əldə edə bilərsiniz.<br />\r\n-----------<br />\r\nTARİX:<br />\r\n30.12.2019 - 04.01.2020<br />\r\n-----------<br />\r\nOTELLƏR VƏ QİYMƏTLƏR:<br />\r\n&bull; Holiday Inn Express Amsterdam Arena Towers - 1050 usd<br />\r\n&bull; Delta Hotel City Center - 1280 usd<br />\r\n&bull; Best Western Dam Square Inn - 1290 usd<br />\r\n-----------<br />\r\nQİYMƏTƏ DAXİLDİR:<br />\r\n&bull; Aviabilet (T&uuml;rk Hava yolu)<br />\r\n&bull; Otel (5 gecə/6 g&uuml;n)<br />\r\n&bull; Qidalanma (səhər yeməyi)<br />\r\n&bull; Transfer<br />\r\n&bull; Sığorta<br />\r\n&bull; Viza dəstəyi<br />\r\n-----------<br />\r\nQEYDLƏR:<br />\r\n&bull; Qiymət 2 nəfərlik səyahət zamanı 1 nəfər &uuml;&ccedil;&uuml;n qeyd edilmişdir.<br />\r\n&bull; &Ouml;dəniş g&uuml;n&uuml;n məzənnəsinə uyğun olaraq manatla qəbul olunur.<br />\r\n-----------<br />\r\nWinter Park ofis:<br />\r\n+994 77 497 77 77 (Whatsapp ilə əlaqə &uuml;&ccedil;&uuml;n&nbsp;<a href=\"https://api.whatsapp.com/send?phone=994774977777\" target=\"_blank\"><strong>KLİK EDİN</strong></a>)<br />\r\n+994 12 599 88 99<br />\r\nM.Əliyev k&uuml;&ccedil;. 210, Winter Park Plaza, 1-ci mərtəbə, Bakı</span></p>\r\n', '', '', 'default.png', '2019-12-17', '2019-12-20', 100, '#000001', 2, 'Gün boyu qismən buludlu olacaq.', 2, 'https://www.google.com/maps/place/Kah,+Azerbaycan/@41.4253485,46.9232512,14z/data=!3m1!4b1!4m5!3m4!1s0x4047bddb8deb2619:0x8b2000bbc219140d!8m2!3d41.4206827!4d46.9320184', '41.4253485', '46.9232512'),
(104, 0, 0, 'Lenkeran Turu', 'Lenkeran Turu', 'Lenkeran Turu', '<p>Amsterdamın b&uuml;t&uuml;n g&ouml;zəlliyini g&ouml;rmək &uuml;&ccedil;&uuml;n Yeni İldə səyahət etmək lazımdır.<br />\r\n-----------<br />\r\nSiz bu səyahəti 1 KART kartı ilə və digər sərfəli kredit şərtlərimizlə əldə edə bilərsiniz.<br />\r\n-----------<br />\r\nTARİX:<br />\r\n30.12.2019 - 04.01.2020<br />\r\n-----------<br />\r\nOTELLƏR VƏ QİYMƏTLƏR:<br />\r\n&bull; Holiday Inn Express Amsterdam Arena Towers - 1050 usd<br />\r\n&bull; Delta Hotel City Center - 1280 usd<br />\r\n&bull; Best Western Dam Square Inn - 1290 usd<br />\r\n-----------<br />\r\nQİYMƏTƏ DAXİLDİR:<br />\r\n&bull; Aviabilet (T&uuml;rk Hava yolu)<br />\r\n&bull; Otel (5 gecə/6 g&uuml;n)<br />\r\n&bull; Qidalanma (səhər yeməyi)<br />\r\n&bull; Transfer<br />\r\n&bull; Sığorta<br />\r\n&bull; Viza dəstəyi<br />\r\n-----------<br />\r\nQEYDLƏR:<br />\r\n&bull; Qiymət 2 nəfərlik səyahət zamanı 1 nəfər &uuml;&ccedil;&uuml;n qeyd edilmişdir.<br />\r\n&bull; &Ouml;dəniş g&uuml;n&uuml;n məzənnəsinə uyğun olaraq manatla qəbul olunur.<br />\r\n-----------<br />\r\nWinter Park ofis:<br />\r\n+994 77 497 77 77 (Whatsapp ilə əlaqə &uuml;&ccedil;&uuml;n&nbsp;<a href=\"https://api.whatsapp.com/send?phone=994774977777\" target=\"_blank\"><strong>KLİK EDİN</strong></a>)<br />\r\n+994 12 599 88 99<br />\r\nM.Əliyev k&uuml;&ccedil;. 210, Winter Park Plaza, 1-ci mərtəbə, Bakı</p>\r\n', '', '', 'default.png', '2019-12-17', '2019-12-21', 120, '#000002', 12, 'Gün boyu əsasən buludlu olacaq.', 4, 'https://www.google.com/maps/place/Lenkeran,+Azerbaycan/@38.7649215,48.810056,13z/data=!3m1!4b1!4m5!3m4!1s0x4022ff87bc65fe87:0x2e22247524d53740!8m2!3d38.7528669!4d48.8475015', '38.7649215', '48.810056'),
(105, 0, 0, 'Mingecevir Turu', 'Mingecevir Turu En', 'Mingecevir Turu Ru', '<h2 style=\"font-style:italic\"><span style=\"background-color:#8e44ad\">Amsterdamın b&uuml;t&uuml;n g&ouml;zəlliyini g&ouml;rmək &uuml;&ccedil;&uuml;n Yeni İldə səyahət etmək lazımdır.</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">Siz bu səyahəti 1 KART kartı ilə və digər sərfəli kredit şərtlərimizlə əldə edə bilərsiniz.</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">TARİX:</span><br />\r\n<span style=\"background-color:#8e44ad\">30.12.2019 - 04.01.2020</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">OTELLƏR VƏ QİYMƏTLƏR:</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Holiday Inn Express Amsterdam Arena Towers - 1050 usd</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Delta Hotel City Center - 1280 usd</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Best Western Dam Square Inn - 1290 usd</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">QİYMƏTƏ DAXİLDİR:</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Aviabilet (T&uuml;rk Hava yolu)</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Otel (5 gecə/6 g&uuml;n)</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Qidalanma (səhər yeməyi)</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Transfer</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Sığorta</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Viza dəstəyi</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">QEYDLƏR:</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Qiymət 2 nəfərlik səyahət zamanı 1 nəfər &uuml;&ccedil;&uuml;n qeyd edilmişdir.</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; &Ouml;dəniş g&uuml;n&uuml;n məzənnəsinə uyğun olaraq manatla qəbul olunur.</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">Winter Park ofis:</span><br />\r\n<span style=\"background-color:#8e44ad\">+994 77 497 77 77 (Whatsapp ilə əlaqə &uuml;&ccedil;&uuml;n&nbsp;</span><a href=\"https://api.whatsapp.com/send?phone=994774977777\" target=\"_blank\"><strong><span style=\"background-color:#8e44ad\">KLİK EDİN</span></strong></a><span style=\"background-color:#8e44ad\">)</span><br />\r\n<span style=\"background-color:#8e44ad\">+994 12 599 88 99</span><br />\r\n<span style=\"background-color:#8e44ad\">M.Əliyev k&uuml;&ccedil;. 210, Winter Park Plaza, 1-ci mərtəbə, Bakı</span></h2>\r\n', '<p>asdsda</p>\r\n', '<p>asdas</p>\r\n', 'default.png', '2019-12-16', '2019-12-18', 100, '#000000', 7, 'Gün boyu qismən buludlu olacaq.', 2, 'https://www.google.com/maps/place/Minge%C3%A7evir,+Azerbaycan/@40.7634319,46.9988245,13z/data=!3m1!4b1!4m5!3m4!1s0x4038c0167a73481b:0xd57ec8576d39862c!8m2!3d40.7702563!4d47.0496015', '40.7634319', '46.9988245'),
(106, 0, 0, 'Qax Turu', 'Qax Turu En', 'Qax Turu Ru', '<p><span style=\"font-size:24px\">Amsterdamın b&uuml;t&uuml;n g&ouml;zəlliyini g&ouml;rmək &uuml;&ccedil;&uuml;n Yeni İldə səyahət etmək lazımdır.<br />\r\n-----------<br />\r\nSiz bu səyahəti 1 KART kartı ilə və digər sərfəli kredit şərtlərimizlə əldə edə bilərsiniz.<br />\r\n-----------<br />\r\nTARİX:<br />\r\n30.12.2019 - 04.01.2020<br />\r\n-----------<br />\r\nOTELLƏR VƏ QİYMƏTLƏR:<br />\r\n&bull; Holiday Inn Express Amsterdam Arena Towers - 1050 usd<br />\r\n&bull; Delta Hotel City Center - 1280 usd<br />\r\n&bull; Best Western Dam Square Inn - 1290 usd<br />\r\n-----------<br />\r\nQİYMƏTƏ DAXİLDİR:<br />\r\n&bull; Aviabilet (T&uuml;rk Hava yolu)<br />\r\n&bull; Otel (5 gecə/6 g&uuml;n)<br />\r\n&bull; Qidalanma (səhər yeməyi)<br />\r\n&bull; Transfer<br />\r\n&bull; Sığorta<br />\r\n&bull; Viza dəstəyi<br />\r\n-----------<br />\r\nQEYDLƏR:<br />\r\n&bull; Qiymət 2 nəfərlik səyahət zamanı 1 nəfər &uuml;&ccedil;&uuml;n qeyd edilmişdir.<br />\r\n&bull; &Ouml;dəniş g&uuml;n&uuml;n məzənnəsinə uyğun olaraq manatla qəbul olunur.<br />\r\n-----------<br />\r\nWinter Park ofis:<br />\r\n+994 77 497 77 77 (Whatsapp ilə əlaqə &uuml;&ccedil;&uuml;n&nbsp;<a href=\"https://api.whatsapp.com/send?phone=994774977777\" target=\"_blank\"><strong>KLİK EDİN</strong></a>)<br />\r\n+994 12 599 88 99<br />\r\nM.Əliyev k&uuml;&ccedil;. 210, Winter Park Plaza, 1-ci mərtəbə, Bakı</span></p>\r\n', '', '', 'default.png', '2019-12-17', '2019-12-20', 100, '#000001', 2, 'Gün boyu qismən buludlu olacaq.', 2, 'https://www.google.com/maps/place/Kah,+Azerbaycan/@41.4253485,46.9232512,14z/data=!3m1!4b1!4m5!3m4!1s0x4047bddb8deb2619:0x8b2000bbc219140d!8m2!3d41.4206827!4d46.9320184', '41.4253485', '46.9232512'),
(107, 0, 0, 'Lenkeran Turu', 'Lenkeran Turu', 'Lenkeran Turu', '<p>Amsterdamın b&uuml;t&uuml;n g&ouml;zəlliyini g&ouml;rmək &uuml;&ccedil;&uuml;n Yeni İldə səyahət etmək lazımdır.<br />\r\n-----------<br />\r\nSiz bu səyahəti 1 KART kartı ilə və digər sərfəli kredit şərtlərimizlə əldə edə bilərsiniz.<br />\r\n-----------<br />\r\nTARİX:<br />\r\n30.12.2019 - 04.01.2020<br />\r\n-----------<br />\r\nOTELLƏR VƏ QİYMƏTLƏR:<br />\r\n&bull; Holiday Inn Express Amsterdam Arena Towers - 1050 usd<br />\r\n&bull; Delta Hotel City Center - 1280 usd<br />\r\n&bull; Best Western Dam Square Inn - 1290 usd<br />\r\n-----------<br />\r\nQİYMƏTƏ DAXİLDİR:<br />\r\n&bull; Aviabilet (T&uuml;rk Hava yolu)<br />\r\n&bull; Otel (5 gecə/6 g&uuml;n)<br />\r\n&bull; Qidalanma (səhər yeməyi)<br />\r\n&bull; Transfer<br />\r\n&bull; Sığorta<br />\r\n&bull; Viza dəstəyi<br />\r\n-----------<br />\r\nQEYDLƏR:<br />\r\n&bull; Qiymət 2 nəfərlik səyahət zamanı 1 nəfər &uuml;&ccedil;&uuml;n qeyd edilmişdir.<br />\r\n&bull; &Ouml;dəniş g&uuml;n&uuml;n məzənnəsinə uyğun olaraq manatla qəbul olunur.<br />\r\n-----------<br />\r\nWinter Park ofis:<br />\r\n+994 77 497 77 77 (Whatsapp ilə əlaqə &uuml;&ccedil;&uuml;n&nbsp;<a href=\"https://api.whatsapp.com/send?phone=994774977777\" target=\"_blank\"><strong>KLİK EDİN</strong></a>)<br />\r\n+994 12 599 88 99<br />\r\nM.Əliyev k&uuml;&ccedil;. 210, Winter Park Plaza, 1-ci mərtəbə, Bakı</p>\r\n', '', '', 'default.png', '2019-12-17', '2019-12-21', 120, '#000002', 12, 'Gün boyu əsasən buludlu olacaq.', 4, 'https://www.google.com/maps/place/Lenkeran,+Azerbaycan/@38.7649215,48.810056,13z/data=!3m1!4b1!4m5!3m4!1s0x4022ff87bc65fe87:0x2e22247524d53740!8m2!3d38.7528669!4d48.8475015', '38.7649215', '48.810056'),
(108, 0, 0, 'Mingecevir Turu', 'Mingecevir Turu En', 'Mingecevir Turu Ru', '<h2 style=\"font-style:italic\"><span style=\"background-color:#8e44ad\">Amsterdamın b&uuml;t&uuml;n g&ouml;zəlliyini g&ouml;rmək &uuml;&ccedil;&uuml;n Yeni İldə səyahət etmək lazımdır.</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">Siz bu səyahəti 1 KART kartı ilə və digər sərfəli kredit şərtlərimizlə əldə edə bilərsiniz.</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">TARİX:</span><br />\r\n<span style=\"background-color:#8e44ad\">30.12.2019 - 04.01.2020</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">OTELLƏR VƏ QİYMƏTLƏR:</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Holiday Inn Express Amsterdam Arena Towers - 1050 usd</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Delta Hotel City Center - 1280 usd</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Best Western Dam Square Inn - 1290 usd</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">QİYMƏTƏ DAXİLDİR:</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Aviabilet (T&uuml;rk Hava yolu)</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Otel (5 gecə/6 g&uuml;n)</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Qidalanma (səhər yeməyi)</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Transfer</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Sığorta</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Viza dəstəyi</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">QEYDLƏR:</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Qiymət 2 nəfərlik səyahət zamanı 1 nəfər &uuml;&ccedil;&uuml;n qeyd edilmişdir.</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; &Ouml;dəniş g&uuml;n&uuml;n məzənnəsinə uyğun olaraq manatla qəbul olunur.</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">Winter Park ofis:</span><br />\r\n<span style=\"background-color:#8e44ad\">+994 77 497 77 77 (Whatsapp ilə əlaqə &uuml;&ccedil;&uuml;n&nbsp;</span><a href=\"https://api.whatsapp.com/send?phone=994774977777\" target=\"_blank\"><strong><span style=\"background-color:#8e44ad\">KLİK EDİN</span></strong></a><span style=\"background-color:#8e44ad\">)</span><br />\r\n<span style=\"background-color:#8e44ad\">+994 12 599 88 99</span><br />\r\n<span style=\"background-color:#8e44ad\">M.Əliyev k&uuml;&ccedil;. 210, Winter Park Plaza, 1-ci mərtəbə, Bakı</span></h2>\r\n', '<p>asdsda</p>\r\n', '<p>asdas</p>\r\n', 'default.png', '2019-12-16', '2019-12-18', 100, '#000000', 7, 'Gün boyu qismən buludlu olacaq.', 2, 'https://www.google.com/maps/place/Minge%C3%A7evir,+Azerbaycan/@40.7634319,46.9988245,13z/data=!3m1!4b1!4m5!3m4!1s0x4038c0167a73481b:0xd57ec8576d39862c!8m2!3d40.7702563!4d47.0496015', '40.7634319', '46.9988245'),
(109, 0, 0, 'Qax Turu', 'Qax Turu En', 'Qax Turu Ru', '<p><span style=\"font-size:24px\">Amsterdamın b&uuml;t&uuml;n g&ouml;zəlliyini g&ouml;rmək &uuml;&ccedil;&uuml;n Yeni İldə səyahət etmək lazımdır.<br />\r\n-----------<br />\r\nSiz bu səyahəti 1 KART kartı ilə və digər sərfəli kredit şərtlərimizlə əldə edə bilərsiniz.<br />\r\n-----------<br />\r\nTARİX:<br />\r\n30.12.2019 - 04.01.2020<br />\r\n-----------<br />\r\nOTELLƏR VƏ QİYMƏTLƏR:<br />\r\n&bull; Holiday Inn Express Amsterdam Arena Towers - 1050 usd<br />\r\n&bull; Delta Hotel City Center - 1280 usd<br />\r\n&bull; Best Western Dam Square Inn - 1290 usd<br />\r\n-----------<br />\r\nQİYMƏTƏ DAXİLDİR:<br />\r\n&bull; Aviabilet (T&uuml;rk Hava yolu)<br />\r\n&bull; Otel (5 gecə/6 g&uuml;n)<br />\r\n&bull; Qidalanma (səhər yeməyi)<br />\r\n&bull; Transfer<br />\r\n&bull; Sığorta<br />\r\n&bull; Viza dəstəyi<br />\r\n-----------<br />\r\nQEYDLƏR:<br />\r\n&bull; Qiymət 2 nəfərlik səyahət zamanı 1 nəfər &uuml;&ccedil;&uuml;n qeyd edilmişdir.<br />\r\n&bull; &Ouml;dəniş g&uuml;n&uuml;n məzənnəsinə uyğun olaraq manatla qəbul olunur.<br />\r\n-----------<br />\r\nWinter Park ofis:<br />\r\n+994 77 497 77 77 (Whatsapp ilə əlaqə &uuml;&ccedil;&uuml;n&nbsp;<a href=\"https://api.whatsapp.com/send?phone=994774977777\" target=\"_blank\"><strong>KLİK EDİN</strong></a>)<br />\r\n+994 12 599 88 99<br />\r\nM.Əliyev k&uuml;&ccedil;. 210, Winter Park Plaza, 1-ci mərtəbə, Bakı</span></p>\r\n', '', '', 'default.png', '2019-12-17', '2019-12-20', 100, '#000001', 2, 'Gün boyu qismən buludlu olacaq.', 2, 'https://www.google.com/maps/place/Kah,+Azerbaycan/@41.4253485,46.9232512,14z/data=!3m1!4b1!4m5!3m4!1s0x4047bddb8deb2619:0x8b2000bbc219140d!8m2!3d41.4206827!4d46.9320184', '41.4253485', '46.9232512'),
(110, 0, 0, 'Lenkeran Turu', 'Lenkeran Turu', 'Lenkeran Turu', '<p>Amsterdamın b&uuml;t&uuml;n g&ouml;zəlliyini g&ouml;rmək &uuml;&ccedil;&uuml;n Yeni İldə səyahət etmək lazımdır.<br />\r\n-----------<br />\r\nSiz bu səyahəti 1 KART kartı ilə və digər sərfəli kredit şərtlərimizlə əldə edə bilərsiniz.<br />\r\n-----------<br />\r\nTARİX:<br />\r\n30.12.2019 - 04.01.2020<br />\r\n-----------<br />\r\nOTELLƏR VƏ QİYMƏTLƏR:<br />\r\n&bull; Holiday Inn Express Amsterdam Arena Towers - 1050 usd<br />\r\n&bull; Delta Hotel City Center - 1280 usd<br />\r\n&bull; Best Western Dam Square Inn - 1290 usd<br />\r\n-----------<br />\r\nQİYMƏTƏ DAXİLDİR:<br />\r\n&bull; Aviabilet (T&uuml;rk Hava yolu)<br />\r\n&bull; Otel (5 gecə/6 g&uuml;n)<br />\r\n&bull; Qidalanma (səhər yeməyi)<br />\r\n&bull; Transfer<br />\r\n&bull; Sığorta<br />\r\n&bull; Viza dəstəyi<br />\r\n-----------<br />\r\nQEYDLƏR:<br />\r\n&bull; Qiymət 2 nəfərlik səyahət zamanı 1 nəfər &uuml;&ccedil;&uuml;n qeyd edilmişdir.<br />\r\n&bull; &Ouml;dəniş g&uuml;n&uuml;n məzənnəsinə uyğun olaraq manatla qəbul olunur.<br />\r\n-----------<br />\r\nWinter Park ofis:<br />\r\n+994 77 497 77 77 (Whatsapp ilə əlaqə &uuml;&ccedil;&uuml;n&nbsp;<a href=\"https://api.whatsapp.com/send?phone=994774977777\" target=\"_blank\"><strong>KLİK EDİN</strong></a>)<br />\r\n+994 12 599 88 99<br />\r\nM.Əliyev k&uuml;&ccedil;. 210, Winter Park Plaza, 1-ci mərtəbə, Bakı</p>\r\n', '', '', 'default.png', '2019-12-17', '2019-12-21', 120, '#000002', 12, 'Gün boyu əsasən buludlu olacaq.', 4, 'https://www.google.com/maps/place/Lenkeran,+Azerbaycan/@38.7649215,48.810056,13z/data=!3m1!4b1!4m5!3m4!1s0x4022ff87bc65fe87:0x2e22247524d53740!8m2!3d38.7528669!4d48.8475015', '38.7649215', '48.810056'),
(111, 0, 0, 'Mingecevir Turu', 'Mingecevir Turu En', 'Mingecevir Turu Ru', '<h2 style=\"font-style:italic\"><span style=\"background-color:#8e44ad\">Amsterdamın b&uuml;t&uuml;n g&ouml;zəlliyini g&ouml;rmək &uuml;&ccedil;&uuml;n Yeni İldə səyahət etmək lazımdır.</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">Siz bu səyahəti 1 KART kartı ilə və digər sərfəli kredit şərtlərimizlə əldə edə bilərsiniz.</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">TARİX:</span><br />\r\n<span style=\"background-color:#8e44ad\">30.12.2019 - 04.01.2020</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">OTELLƏR VƏ QİYMƏTLƏR:</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Holiday Inn Express Amsterdam Arena Towers - 1050 usd</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Delta Hotel City Center - 1280 usd</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Best Western Dam Square Inn - 1290 usd</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">QİYMƏTƏ DAXİLDİR:</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Aviabilet (T&uuml;rk Hava yolu)</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Otel (5 gecə/6 g&uuml;n)</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Qidalanma (səhər yeməyi)</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Transfer</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Sığorta</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Viza dəstəyi</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">QEYDLƏR:</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; Qiymət 2 nəfərlik səyahət zamanı 1 nəfər &uuml;&ccedil;&uuml;n qeyd edilmişdir.</span><br />\r\n<span style=\"background-color:#8e44ad\">&bull; &Ouml;dəniş g&uuml;n&uuml;n məzənnəsinə uyğun olaraq manatla qəbul olunur.</span><br />\r\n<span style=\"background-color:#8e44ad\">-----------</span><br />\r\n<span style=\"background-color:#8e44ad\">Winter Park ofis:</span><br />\r\n<span style=\"background-color:#8e44ad\">+994 77 497 77 77 (Whatsapp ilə əlaqə &uuml;&ccedil;&uuml;n&nbsp;</span><a href=\"https://api.whatsapp.com/send?phone=994774977777\" target=\"_blank\"><strong><span style=\"background-color:#8e44ad\">KLİK EDİN</span></strong></a><span style=\"background-color:#8e44ad\">)</span><br />\r\n<span style=\"background-color:#8e44ad\">+994 12 599 88 99</span><br />\r\n<span style=\"background-color:#8e44ad\">M.Əliyev k&uuml;&ccedil;. 210, Winter Park Plaza, 1-ci mərtəbə, Bakı</span></h2>\r\n', '<p>asdsda</p>\r\n', '<p>asdas</p>\r\n', 'default.png', '2019-12-16', '2019-12-18', 100, '#000000', 7, 'Gün boyu qismən buludlu olacaq.', 2, 'https://www.google.com/maps/place/Minge%C3%A7evir,+Azerbaycan/@40.7634319,46.9988245,13z/data=!3m1!4b1!4m5!3m4!1s0x4038c0167a73481b:0xd57ec8576d39862c!8m2!3d40.7702563!4d47.0496015', '40.7634319', '46.9988245'),
(112, 0, 0, 'Qax Turu', 'Qax Turu En', 'Qax Turu Ru', '<p><span style=\"font-size:24px\">Amsterdamın b&uuml;t&uuml;n g&ouml;zəlliyini g&ouml;rmək &uuml;&ccedil;&uuml;n Yeni İldə səyahət etmək lazımdır.<br />\r\n-----------<br />\r\nSiz bu səyahəti 1 KART kartı ilə və digər sərfəli kredit şərtlərimizlə əldə edə bilərsiniz.<br />\r\n-----------<br />\r\nTARİX:<br />\r\n30.12.2019 - 04.01.2020<br />\r\n-----------<br />\r\nOTELLƏR VƏ QİYMƏTLƏR:<br />\r\n&bull; Holiday Inn Express Amsterdam Arena Towers - 1050 usd<br />\r\n&bull; Delta Hotel City Center - 1280 usd<br />\r\n&bull; Best Western Dam Square Inn - 1290 usd<br />\r\n-----------<br />\r\nQİYMƏTƏ DAXİLDİR:<br />\r\n&bull; Aviabilet (T&uuml;rk Hava yolu)<br />\r\n&bull; Otel (5 gecə/6 g&uuml;n)<br />\r\n&bull; Qidalanma (səhər yeməyi)<br />\r\n&bull; Transfer<br />\r\n&bull; Sığorta<br />\r\n&bull; Viza dəstəyi<br />\r\n-----------<br />\r\nQEYDLƏR:<br />\r\n&bull; Qiymət 2 nəfərlik səyahət zamanı 1 nəfər &uuml;&ccedil;&uuml;n qeyd edilmişdir.<br />\r\n&bull; &Ouml;dəniş g&uuml;n&uuml;n məzənnəsinə uyğun olaraq manatla qəbul olunur.<br />\r\n-----------<br />\r\nWinter Park ofis:<br />\r\n+994 77 497 77 77 (Whatsapp ilə əlaqə &uuml;&ccedil;&uuml;n&nbsp;<a href=\"https://api.whatsapp.com/send?phone=994774977777\" target=\"_blank\"><strong>KLİK EDİN</strong></a>)<br />\r\n+994 12 599 88 99<br />\r\nM.Əliyev k&uuml;&ccedil;. 210, Winter Park Plaza, 1-ci mərtəbə, Bakı</span></p>\r\n', '', '', 'default.png', '2019-12-17', '2019-12-20', 100, '#000001', 2, 'Gün boyu qismən buludlu olacaq.', 2, 'https://www.google.com/maps/place/Kah,+Azerbaycan/@41.4253485,46.9232512,14z/data=!3m1!4b1!4m5!3m4!1s0x4047bddb8deb2619:0x8b2000bbc219140d!8m2!3d41.4206827!4d46.9320184', '41.4253485', '46.9232512'),
(113, 0, 0, 'Lenkeran Turu', 'Lenkeran Turu', 'Lenkeran Turu', '<p>Amsterdamın b&uuml;t&uuml;n g&ouml;zəlliyini g&ouml;rmək &uuml;&ccedil;&uuml;n Yeni İldə səyahət etmək lazımdır.<br />\r\n-----------<br />\r\nSiz bu səyahəti 1 KART kartı ilə və digər sərfəli kredit şərtlərimizlə əldə edə bilərsiniz.<br />\r\n-----------<br />\r\nTARİX:<br />\r\n30.12.2019 - 04.01.2020<br />\r\n-----------<br />\r\nOTELLƏR VƏ QİYMƏTLƏR:<br />\r\n&bull; Holiday Inn Express Amsterdam Arena Towers - 1050 usd<br />\r\n&bull; Delta Hotel City Center - 1280 usd<br />\r\n&bull; Best Western Dam Square Inn - 1290 usd<br />\r\n-----------<br />\r\nQİYMƏTƏ DAXİLDİR:<br />\r\n&bull; Aviabilet (T&uuml;rk Hava yolu)<br />\r\n&bull; Otel (5 gecə/6 g&uuml;n)<br />\r\n&bull; Qidalanma (səhər yeməyi)<br />\r\n&bull; Transfer<br />\r\n&bull; Sığorta<br />\r\n&bull; Viza dəstəyi<br />\r\n-----------<br />\r\nQEYDLƏR:<br />\r\n&bull; Qiymət 2 nəfərlik səyahət zamanı 1 nəfər &uuml;&ccedil;&uuml;n qeyd edilmişdir.<br />\r\n&bull; &Ouml;dəniş g&uuml;n&uuml;n məzənnəsinə uyğun olaraq manatla qəbul olunur.<br />\r\n-----------<br />\r\nWinter Park ofis:<br />\r\n+994 77 497 77 77 (Whatsapp ilə əlaqə &uuml;&ccedil;&uuml;n&nbsp;<a href=\"https://api.whatsapp.com/send?phone=994774977777\" target=\"_blank\"><strong>KLİK EDİN</strong></a>)<br />\r\n+994 12 599 88 99<br />\r\nM.Əliyev k&uuml;&ccedil;. 210, Winter Park Plaza, 1-ci mərtəbə, Bakı</p>\r\n', '', '', 'default.png', '2019-12-17', '2019-12-21', 120, '#000002', 12, 'Gün boyu əsasən buludlu olacaq.', 4, 'https://www.google.com/maps/place/Lenkeran,+Azerbaycan/@38.7649215,48.810056,13z/data=!3m1!4b1!4m5!3m4!1s0x4022ff87bc65fe87:0x2e22247524d53740!8m2!3d38.7528669!4d48.8475015', '38.7649215', '48.810056');

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
(11, 98, 5),
(12, 98, 4),
(13, 98, 6),
(14, 98, 7);

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
(4, 'UÇUŞ BİLET', 'UÇUŞ BİLET', 'UÇUŞ BİLET', '614.png'),
(5, 'asdsa', 'asd', 'asd', 'all-kinds-electronic-equipment-testing-instruments-electronic-laboratory-laboratory-electronic-equipment-device-134261658.jpg'),
(6, 'asdasdas', 'asdsa', 'sdas', '6141.png'),
(7, 'asdsa', 'asda', 'sdas', '7.png');

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
(1, 'super_admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3', 0);

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
-- Tablo için indeksler `additional_slide2`
--
ALTER TABLE `additional_slide2`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `faqs`
--
ALTER TABLE `faqs`
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
-- Tablo için indeksler `offers_about`
--
ALTER TABLE `offers_about`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `personal_cabinet`
--
ALTER TABLE `personal_cabinet`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `services_about`
--
ALTER TABLE `services_about`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `additional_slide2`
--
ALTER TABLE `additional_slide2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Tablo için AUTO_INCREMENT değeri `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `main_slide`
--
ALTER TABLE `main_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `offers_about`
--
ALTER TABLE `offers_about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `personal_cabinet`
--
ALTER TABLE `personal_cabinet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `services_about`
--
ALTER TABLE `services_about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `tours`
--
ALTER TABLE `tours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- Tablo için AUTO_INCREMENT değeri `tour_and_tour_includes`
--
ALTER TABLE `tour_and_tour_includes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `tour_gallery`
--
ALTER TABLE `tour_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `tour_includes`
--
ALTER TABLE `tour_includes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
