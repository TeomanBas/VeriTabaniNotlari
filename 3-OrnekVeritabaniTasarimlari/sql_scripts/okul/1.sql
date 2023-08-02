-- database oluşturmak

CREATE SCHEMA `okul` 
DEFAULT CHARACTER SET utf8 
COLLATE utf8_unicode_ci ;

use okul;
-- bolum tablosu
CREATE TABLE bolumler(
	bolum_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    bolum_ad VARCHAR(20)
);

-- ogreciler tablosu
create table ogrenciler(
	ogr_no int auto_increment not null primary key,
    ogr_ad varchar(30) not null,
    ogr_soyad varchar(30) not null,
    ogr_dogum_tarih datetime not null,
    ogr_adres varchar(100),
	ogr_sehir varchar(20),
    ogr_bolum_no int
)auto_increment=000001;

-- auto_increment=000001; otomatik arttırma belirlenen sayıdan başlayarak artacak
-- DATETIME YYYY-MM-DD HH:MM:SS
 
 -- veri tabanı yönetim sistemlerinde constraint olarak isimlendirilen bazı zorlayıcı  ifadeler kullanılır.Bunlar
 -- null/not null, primary key,foreign key,check, unique, default dur.
 -- null ve not null:boş bırakılır veya boş bırakılamaz.
 -- foreign key: yabancıl anahtar
 -- primary key: birincil anahtar
 -- unique :tekil eşsiz benzersiz
 -- check:sütunlara girilecek olan değerlerin kısıtlanması olarak kullanılır.mesela not sütununda sadece 1 ile 100 arasında bir sayı olabilir.
 -- default: default 'yabancı' gibi herhangi bir veri girilmediğinde tablolarda yabancı olarak değer alacaktır.
 


-- dersler tablosu
CREATE TABLE dersler(
ders_id INT AUTO_INCREMENT PRIMARY KEY,  
fk_bolum_id INT NOT NULL,
ders_ad VARCHAR(50),
FOREIGN KEY (fk_bolum_id) REFERENCES bolumler(bolum_id)
)

-- NOTLAR TABLOSU
CREATE TABLE notlar(
ogr_no INT NOT NULL,
ders_id INT NOT NULL,
vize INT,
final INT,
CONSTRAINT chkvize CHECK (vize>=0 AND vize<=100),
CONSTRAINT chkfinal CHECK (final>=0 AND final<=100),
CONSTRAINT pkkey PRIMARY KEY(ogr_no,ders_id)
)ENGINE=INNODB;

