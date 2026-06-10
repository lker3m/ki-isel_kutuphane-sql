-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 10 Haz 2026, 23:32:35
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `kisiselkutuphane`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategoriler`
--

CREATE TABLE `kategoriler` (
  `KategoriID` int(11) NOT NULL,
  `KategoriAdi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `kategoriler`
--

INSERT INTO `kategoriler` (`KategoriID`, `KategoriAdi`) VALUES
(1, 'Klasik'),
(2, 'Macera'),
(3, 'Dystopia'),
(4, 'Biyografi'),
(5, 'Popüler Bilim'),
(6, 'Epik Fantastik'),
(7, 'Bilim Kurgu'),
(8, 'Yazılım/Teknoloji'),
(9, 'Psikoloji'),
(10, 'Felsefe');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitaplar`
--

CREATE TABLE `kitaplar` (
  `KitapID` int(11) NOT NULL,
  `KitapAdi` varchar(200) NOT NULL,
  `SayfaSayisi` int(11) NOT NULL,
  `YayinYili` int(11) DEFAULT NULL,
  `KategoriID` int(11) DEFAULT NULL,
  `YayinEviID` int(11) DEFAULT NULL,
  `YazarID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `kitaplar`
--

INSERT INTO `kitaplar` (`KitapID`, `KitapAdi`, `SayfaSayisi`, `YayinYili`, `KategoriID`, `YayinEviID`, `YazarID`) VALUES
(1, 'Sefiller', 1724, 2016, 1, 1, 1),
(2, 'Yaşlı Adam ve Deniz', 136, 2012, 1, 2, 2),
(3, 'Beyaz Diş', 248, 2015, 2, 1, 3),
(4, 'Otomatik Portakal', 176, 2014, 3, 1, 4),
(5, 'Hayvan Çiftliği', 152, 2020, 3, 2, 5),
(6, 'Füreyya', 448, 2000, 4, 6, 6),
(7, 'Kör Saatçi', 424, 2018, 5, 8, 7),
(8, 'Zamanın Kısa Tarihi', 254, 2017, 5, 8, 8),
(9, 'Game of Thrones - Taht Oyunları', 850, 2011, 6, 6, 9),
(10, 'Yüzüklerin Efendisi - Yüzük Kardeşliği', 560, 2005, 6, 4, 10),
(11, 'Dune', 712, 2015, 7, 7, 11),
(12, 'Vakıf', 288, 2022, 7, 7, 12),
(13, 'Clean Code', 464, 2008, 8, 8, 13),
(14, 'Yeraltından Notlar', 140, 2019, 9, 1, 14),
(15, 'Kendime Düşünceler', 160, 2018, 10, 1, 15),
(16, 'Notre Dameın Kamburu', 522, 2014, 1, 1, 1),
(17, 'Suç ve Ceza', 687, 2016, 1, 1, 14),
(18, 'Martin Eden', 520, 2019, 1, 1, 3),
(19, 'Paris ve Londrada Beş Parasız', 224, 2015, 4, 2, 5),
(20, 'Adı: Aylin', 392, 1997, 4, 6, 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oduncalanlar`
--

CREATE TABLE `oduncalanlar` (
  `OduncID` int(11) NOT NULL,
  `AdSoyad` varchar(150) NOT NULL,
  `Telefon` varchar(15) DEFAULT NULL,
  `KitapID` int(11) DEFAULT NULL,
  `OduncTarihi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `oduncalanlar`
--

INSERT INTO `oduncalanlar` (`OduncID`, `AdSoyad`, `Telefon`, `KitapID`, `OduncTarihi`) VALUES
(1, 'Kerem Bayrak', '05418341097', 1, '2026-05-01'),
(2, 'Mehmet Kaya', '05552223344', 2, '2026-05-03'),
(3, 'Ayşe Demir', '05553334455', 3, '2026-05-10'),
(4, 'Fatma Çelik', '05554445566', 4, '2026-05-12'),
(5, 'Ali Öztürk', '05555556677', 5, '2026-05-15'),
(6, 'Zeynep Yıldız', '05556667788', 6, '2026-05-18'),
(7, 'Mustafa Aydın', '05557778899', 7, '2026-05-20'),
(8, 'Elif Bulut', '05558889900', 8, '2026-05-22'),
(9, 'Can Arslan', '05559990011', 9, '2026-05-25'),
(10, 'Merve Polat', '05550001122', 10, '2026-05-26'),
(11, 'Hasan Kılıç', '05551113344', 11, '2026-05-28'),
(12, 'Selin Yurt', '05552224455', 12, '2026-05-29'),
(13, 'Burak Deniz', '05553335566', 13, '2026-06-01'),
(14, 'Ece Şen', '05554446677', 14, '2026-06-02'),
(15, 'Umut Kaya', '05555557788', 15, '2026-06-03');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayinevleri`
--

CREATE TABLE `yayinevleri` (
  `YayinEviID` int(11) NOT NULL,
  `YayinEviAdi` varchar(150) NOT NULL,
  `Adres` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `yayinevleri`
--

INSERT INTO `yayinevleri` (`YayinEviID`, `YayinEviAdi`, `Adres`) VALUES
(1, 'İş Bankası Kültür Yayınları', 'İstanbul'),
(2, 'Can Yayınları', 'İstanbul'),
(3, 'İletişim Yayınları', 'İstanbul'),
(4, 'Metis Yayınları', 'Ankara'),
(5, 'Kronik Kitap', 'İstanbul'),
(6, 'Pegasus Yayınları', 'İzmir'),
(7, 'İthaki Yayınları', 'İstanbul'),
(8, 'Alfa Yayıncılık', 'Ankara'),
(9, 'Dergah Yayınları', 'İstanbul'),
(10, 'Yapı Kredi Yayınları', 'İstanbul');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazarlar`
--

CREATE TABLE `yazarlar` (
  `YazarID` int(11) NOT NULL,
  `YazarAdi` varchar(100) NOT NULL,
  `YazarSoyadi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `yazarlar`
--

INSERT INTO `yazarlar` (`YazarID`, `YazarAdi`, `YazarSoyadi`) VALUES
(1, 'Victor', 'Hugo'),
(2, 'Ernest', 'Hemingway'),
(3, 'Jack', 'London'),
(4, 'Anthony', 'Burgess'),
(5, 'George', 'Orwell'),
(6, 'Ayşe', 'Kulin'),
(7, 'Richard', 'Dawkins'),
(8, 'Stephen', 'Hawking'),
(9, 'George R.R.', 'Martin'),
(10, 'J.R.R.', 'Tolkien'),
(11, 'Frank', 'Herbert'),
(12, 'Isaac', 'Asimov'),
(13, 'Robert C.', 'Martin'),
(14, 'Fyodor', 'Dostoyevski'),
(15, 'Marcus', 'Aurelius');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kategoriler`
--
ALTER TABLE `kategoriler`
  ADD PRIMARY KEY (`KategoriID`);

--
-- Tablo için indeksler `kitaplar`
--
ALTER TABLE `kitaplar`
  ADD PRIMARY KEY (`KitapID`),
  ADD KEY `KategoriID` (`KategoriID`),
  ADD KEY `YayinEviID` (`YayinEviID`),
  ADD KEY `YazarID` (`YazarID`);

--
-- Tablo için indeksler `oduncalanlar`
--
ALTER TABLE `oduncalanlar`
  ADD PRIMARY KEY (`OduncID`),
  ADD KEY `KitapID` (`KitapID`);

--
-- Tablo için indeksler `yayinevleri`
--
ALTER TABLE `yayinevleri`
  ADD PRIMARY KEY (`YayinEviID`);

--
-- Tablo için indeksler `yazarlar`
--
ALTER TABLE `yazarlar`
  ADD PRIMARY KEY (`YazarID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kategoriler`
--
ALTER TABLE `kategoriler`
  MODIFY `KategoriID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `kitaplar`
--
ALTER TABLE `kitaplar`
  MODIFY `KitapID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `oduncalanlar`
--
ALTER TABLE `oduncalanlar`
  MODIFY `OduncID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `yayinevleri`
--
ALTER TABLE `yayinevleri`
  MODIFY `YayinEviID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `yazarlar`
--
ALTER TABLE `yazarlar`
  MODIFY `YazarID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `kitaplar`
--
ALTER TABLE `kitaplar`
  ADD CONSTRAINT `kitaplar_ibfk_1` FOREIGN KEY (`KategoriID`) REFERENCES `kategoriler` (`KategoriID`),
  ADD CONSTRAINT `kitaplar_ibfk_2` FOREIGN KEY (`YayinEviID`) REFERENCES `yayinevleri` (`YayinEviID`),
  ADD CONSTRAINT `kitaplar_ibfk_3` FOREIGN KEY (`YazarID`) REFERENCES `yazarlar` (`YazarID`);

--
-- Tablo kısıtlamaları `oduncalanlar`
--
ALTER TABLE `oduncalanlar`
  ADD CONSTRAINT `oduncalanlar_ibfk_1` FOREIGN KEY (`KitapID`) REFERENCES `kitaplar` (`KitapID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
