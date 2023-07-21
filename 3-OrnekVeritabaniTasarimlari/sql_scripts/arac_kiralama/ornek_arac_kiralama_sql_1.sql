--database oluşturma
CREATE DATABASE `arac_kiralama`
DEFAULT CHARACTER SET utf8
COLLATE utf8_unicode_ci;

USE arac_kiralama;

-- PERSONEL TABLOSU
CREATE TABLE personel(
personel_id INT NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
ad VARCHAR(100) NOT NULL,
soyad VARCHAR(100) NOT NULL,
adres VARCHAR(255) NOT NULL,
sehir VARCHAR(100) NOT NULL
)ENGINE INNODB; 
-- MUSTERİ TABLO
CREATE TABLE musteri(
mus_id INT NOT NULL PRIMARY KEY,
mus_ad VARCHAR(50) NOT NULL,
mus_soyad VARCHAR(50) NOT NULL,
mus_adres VARCHAR(200),
mus_tel VARCHAR(15) 
)ENGINE INNODB;
-- ARAC TABLOSU
CREATE TABLE arac(
arac_id INT NOT NULL PRIMARY KEY,
arac_model INT NOT NULL,
arac_marka VARCHAR(255) NOT NULL,
arac_plaka VARCHAR(255) NOT NULL,
arac_fiyat INT,
CONSTRAINT  chk_arac_model CHECK (arac_model  LIKE '[1,2][0,9][0,9][0,9]')
)ENGINE INNODB;
-- KİRALAMA TABLOSU

CREATE TABLE kiralama(
k_mus_id INT NOT NULL,
k_arac_id INT NOT NULL,
k_tarih VARCHAR(10) NOT NULL,
k_saat VARCHAR(10) NOT NULL,
tes_tarih VARCHAR(25) NOT NULL,
tes_saat VARCHAR(15) NOT NULL,
CONSTRAINT fr_mus_kod FOREIGN KEY (k_mus_id) REFERENCES musteri(mus_id) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT fr_arac_id FOREIGN KEY (k_arac_id) REFERENCES arac(arac_id) ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT pkkey PRIMARY KEY (k_mus_id,k_arac_id)
)ENGINE INNODB;

/* ON UPDATE CASCADE ON DELETE CASCADE referans olarak alınan tabloda silme veya güncelleme işlemleri yapıldığında 
 bu tablodada silme veya ilgili alanların güncellenmesi sağlanacaktır. bunun için yabancıl anahtar olarak eklenen tabloda 
 yabancıl anahtar tanımlanırken bu update ve delete  izinlerinin verilmesi gerekir. */




CREATE TABLE `satis`(
satno INT PRIMARY KEY AUTO_INCREMENT,
mno INT,
aracno INT,
sat_tarih DATE DEFAULT '1900-01-01',
sfiyat INT NOT NULL,

FOREIGN KEY (mno) REFERENCES musteri(mno) ON DELETE CASCADE ON UPDATE CASCADE



)AUTO_INCREMENT=1, ENGINE=INNODB;

CREATE TABLE `alim`(
alimno INT AUTO_INCREMENT PRIMARY KEY,
mno INT,
aracno INT,
alim_tarih DATE DEFAULT '1900-01-01',
afiyat INT NOT NULL,

FOREIGN KEY (mno) REFERENCES musteri(mno) ON DELETE CASCADE ON UPDATE CASCADE

)AUTO_INCREMENT=1, ENGINE=INNODB;

-- EKLENMESİ GEREKEN VERİLER 

INSERT INTO musteri(madi,msoyadi,madres,mtelefon) VALUE('MUSTAFA','ÇAĞLAYAN','MERAM/KONYA','035560000001');
INSERT INTO musteri(madi,msoyadi,madres,mtelefon) VALUE('AHMET','KARA','ZİLE/TOKAT','035560000002');
INSERT INTO musteri(madi,msoyadi,madres,mtelefon) VALUE('MURAT','BEYAZ','TURHAL/TOKAT','035560000003');
INSERT INTO musteri(madi,msoyadi,madres,mtelefon) VALUE('ELİF','KURT','BEŞİKTAŞ/İSTANBUL','035560000004');
INSERT INTO musteri(madi,msoyadi,madres,mtelefon) VALUE('AYŞE','UÇAR','TAŞOVA/AMASYA','035560000005');
INSERT INTO musteri(madi,msoyadi,madres,mtelefon) VALUE('BÜLENT','AYAR','TURHAL/TOKAT','035560000006'); 


INSERT INTO arac(model,marka,plaka,fiyat) VALUE(2004,'FLAT MEREA','60 TT 6060',16000);
INSERT INTO arac(model,marka,plaka,fiyat) VALUE(2000,'RENAULT MEGANE','60 TT 6062',14000);
INSERT INTO arac(model,marka,plaka,fiyat) VALUE(2007,'FORD FOCUS','60 TT 6062',28000);
INSERT INTO arac(model,marka,plaka,fiyat) VALUE(2005,'VOLKSWAGEN GOLF','60 TT 6063',26000);
INSERT INTO arac(model,marka,plaka,fiyat) VALUE(1998,'OPEL ASTRA','60 TT 6064',9000);

INSERT INTO satis(mno,aracno,sat_tarih,sfiyat) VALUE(1,1,'2010-04-05',20000);
INSERT INTO satis(mno,aracno,sat_tarih,sfiyat) VALUE(4,5,'2010-01-06',17000);
INSERT INTO satis(mno,aracno,sat_tarih,sfiyat) VALUE(7,4,'2010-05-06',11500);
INSERT INTO satis(mno,aracno,sat_tarih,sfiyat) VALUE(2,1,'2010-02-07',27000);
INSERT INTO satis(mno,aracno,sfiyat) VALUE(3,2,17000);


INSERT INTO alim(mno,aracno,alim_tarih,afiyat) VALUE (3,1,'2010-02-08',15000);
INSERT INTO alim(mno,aracno,alim_tarih,afiyat) VALUE (6,1,'2010-04-12',15000);
INSERT INTO alim(mno,aracno,alim_tarih,afiyat) VALUE (2,5,'2010-04-15',9000);
INSERT INTO alim(mno,aracno,alim_tarih,afiyat) VALUE (1,2,'2010-05-15',1400); 
INSERT INTO alim(mno,aracno,alim_tarih,afiyat) VALUE (5,3,'2010-08-22',26000);


-- A) 2004 VE DAHA AŞAĞI modeldeki araçların model ,marka  ve fiyat bilgilerinin bulunuz

SELECT model,marka,fiyat FROM `bes_bol_uyg`.`arac` WHERE (model<=2004); 


-- B) 2000 ve 2009 arası modele sahip araçların mode,marka  ve fiyat bilgilerini bulunuz.
SELECT model,marka,fiyat FROM `bes_bol_uyg`.`arac` WHERE model<2009 AND model>=2000 ;

-- C) 01.05.2010 tarihinden sonra 10000 den daha fazla fiyata yapılan satışları listeleyiniz.
SELECT * FROM satis WHERE sfiyat>=10000;

-- D) Adının içerisinde "a" karakteri geçen ve adresi "turhal " olan müşterileri listeyeleyiniz

SELECT * FROM musteri WHERE  madi LIKE '%a%' AND madres LIKE '%TURHAL%';

-- E) fiat veya opel marka olan ve modeli  2000'den  fazla olan araçların aracno,model,plaka ve fiyat bilgilerini listeleyiniz.

SELECT aracno,model,marka,fiyat FROM `bes_bol_uyg`.`arac` WHERE marka LIKE '%FIAT%' OR marka LIKE '%OPEL%' AND model>=2000 ;


-- GALERİ İÇİN KULLANICILAR OLUŞTURULDUR

CREATE USER 'galeri_A'@'localhost' IDENTIFIED BY '123456789';
CREATE USER 'galeri_B'@'localhost' IDENTIFIED BY '123456789';
CREATE USER 'galeri_C'@'localhost' IDENTIFIED BY '123456789';
CREATE USER 'galeri_D'@'localhost' IDENTIFIED BY '123456789';
CREATE USER 'galeri_E'@'localhost' IDENTIFIED BY '123456789';
CREATE USER 'galeri_F'@'localhost' IDENTIFIED BY '123456789';

-- OLUŞTURULAN KULLANICILARIN YETKİLERİ TANIMLANDI

GRANT SELECT, INSERT, DELETE, UPDATE ON `bes_bol_uyg`.`musteri` TO 'galeri_A'@'localhost';
GRANT SELECT, INSERT, DELETE, UPDATE ON `bes_bol_uyg`.`satis` TO 'galeri_A'@'localhost';
GRANT SELECT, INSERT ON `bes_bol_uyg`.`musteri` TO 'galeri_B'@'localhost' ;
GRANT SELECT, INSERT,DELETE, UPDATE  ON `bes_bol_uyg`.`arac` TO 'galeri_B'@'localhost';
GRANT INSERT, DELETE ON `bes_bol_uyg`.`satis` TO 'galeri_B'@'localhost';
GRANT SELECT, INSERT ON `bes_bol_uyg`.`musteri` TO 'galeri_B'@'localhost';
GRANT SELECT, INSERT, UPDATE  ON `bes_bol_uyg`.`arac` TO 'galeri_C'@'localhost' ;
GRANT SELECT, INSERT,DELETE ,UPDATE ON `bes_bol_uyg`.`musteri` TO 'galeri_C'@'localhost' ;
GRANT SELECT  ON `bes_bol_uyg`.`arac` TO 'galeri_D'@'localhost' ;
GRANT SELECT, INSERT, DELETE, UPDATE ON `bes_bol_uyg`.`satis` TO 'galeri_D'@'localhost' ;
GRANT SELECT, INSERT  ON `bes_bol_uyg`.`arac` TO 'galeri_F'@'localhost' ;
GRANT SELECT ,INSERT, DELETE, UPDATE  ON `bes_bol_uyg`.`satis` TO 'galeri_F'@'localhost';
GRANT ALL PRIVILEGES ON `bes_bol_uyg`.`musteri` TO 'galeri_E'@'localhost';


