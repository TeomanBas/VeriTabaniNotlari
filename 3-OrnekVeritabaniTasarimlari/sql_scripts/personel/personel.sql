-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 05 Ağu 2023, 00:54:49
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `personel`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personel`
--

CREATE TABLE `personel` (
  `per_id` int(11) NOT NULL,
  `adsoyad` varchar(30) NOT NULL,
  `yonetici` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `personel`
--

INSERT INTO `personel` (`per_id`, `adsoyad`, `yonetici`) VALUES
(1, 'ahmet demir', NULL),
(2, 'büşra uçar', 1),
(3, 'fuat cebe', 2),
(4, 'deniz mum', 3),
(5, 'berna kuru', 2),
(6, 'faruk yaman', 5);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `personel`
--
ALTER TABLE `personel`
  ADD PRIMARY KEY (`per_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `personel`
--
ALTER TABLE `personel`
  MODIFY `per_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

CREATE TABLE personel_maas(
per_id INT NOT NULL,
maas INT,
FOREIGN KEY (per_id) REFERENCES personel(per_id)
)


INSERT INTO personel_maas VALUES(1,1200);
INSERT INTO personel_maas VALUES(2,2200);
INSERT INTO personel_maas VALUES(3,3000);
INSERT INTO personel_maas VALUES(4,1000);
INSERT INTO personel_maas VALUES(5,5000);
INSERT INTO personel_maas VALUES(6,2000);

CREATE TABLE personel_gorev(
per_id INT NOT NULL,
gorev VARCHAR(30),
FOREIGN KEY (per_id) REFERENCES personel(per_id)
);

INSERT INTO personel_gorev VALUES(1,"MÜHENDİS");
INSERT INTO personel_gorev VALUES(2,"MÜHENDİS");
INSERT INTO personel_gorev VALUES(3,"TEKNİKER");
INSERT INTO personel_gorev VALUES(4,"TEKNİKER");
INSERT INTO personel_gorev VALUES(5,"HİZMETLİ");
INSERT INTO personel_gorev VALUES(6,"BAKIMCI");