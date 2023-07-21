-- ÖRNEK ÖĞRENCİ TABLOSU VERİLERİ
-- `` ile '' arasında fark vardır tablo isimleri veritabanı isimleri tanımlanırken `` kullanılabilir ancak 
-- veriler için string bir yapı olduğunda '' kullanılmalıdır.

INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('ALİ','ŞEN','30-9-1961');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('VELİ','KANDEMİR','4-3-2000');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('SELAMİ','ÇEVİK','6-8-1982');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('AYŞE','ÖZTÜRK','7-3-2018');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('DURU','VURAL','7-10-1993');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('SERPİL','YÜCEL','13-1-1968');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('BURAK','UYANIK','19-6-1970');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('EMİN','DEDE','19-6-1970');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('EMİNE','UZ','7-12-1994');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('ÖZGE','ORHON','14-11-1970');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('SELİM','YAVUZ','26-9-2000');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('İZET','KAYA','13-5-2004');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('FURKAN','SELVİ','2-7-1956');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('SELDA','KULAÇ','24-9-1990');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('BORA','AKPINAR','18-6-1957');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('HÜZEYİN','ÇAY','18-6-1957');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('TURGUT','ABACIOĞLU','12-6-1964');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('EFE','IŞIK','4-2-2014');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('EMİR','AKSEL','4-2-2014');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('DUYGU','EROĞLU','13-2-1995');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('KUZEY','KARAKUM','29-4-2019');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('CAN','DAL','28-11-1994');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('EMRE','TAHTACI','17-4-1999');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('MELDE','SÖNMEZ','12-2-1977');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('BURCU','AKPINAR','9-11-1951');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('MERVE','ÜZER','30-7-2005');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('HAYDAR','ERASLAN','2-12-1956');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('KEMAL','ADANIR','22-9-1971');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('İSMET','KOÇ','17-6-1985');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('MELİS','KUŞKU','18-5-1953');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('ESRA','PEKTAŞ','12-6-2009');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('MURAT','DEĞER','25-5-1972');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('MEHMET','BEKŞEN','12-8-2016');
INSERT INTO `okul`.`ogrenciler`(ogr_ad,ogr_soyad,ogr_dogum_tarih) VALUES ('HASAN','ÇITAK','1-10-2016');


-- bolumler tablosu verileri

INSERT INTO bolumler(bolum_ad) VALUES ('ELEKTRONİK');
INSERT INTO bolumler(bolum_ad) VALUES ('BİLGİSAYAR');
INSERT INTO bolumler(bolum_ad) VALUES ('HABERLEŞME');
INSERT INTO bolumler(bolum_ad) VALUES ('MEKATRONİK');
INSERT INTO bolumler(bolum_ad) VALUES ('BİLİŞİM EĞİTMENLİĞİ');
INSERT INTO bolumler(bolum_ad) VALUES ('TEKNOLOJİ');
INSERT INTO bolumler(bolum_ad) VALUES ('MATEMATİK-BİLGİSAYAR');
INSERT INTO bolumler(bolum_ad) VALUES ('SİBER GÜVENLİK');


-- DERSLER TABLOSU VERİLERİ
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (1,'VERİ TABANI-1');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (1,'VERİ TABANI-2');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (1,'İNTERNET PROGRAMCILIĞI-1');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (1,'İNTERNET PROGRAMCILIĞI-2');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (1,'WEB PROGRAMLAMA');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (5,'WEB TASARIM');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (1,'PROGRAMLAMA TEMELLERİ');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (1,'ALGORİTMALAR');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (5,'OFİS PROGRAMLARI');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (1,'MATEMATİK');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (4,'ROBOTİK');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (4,'CALCULUS');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (4,'LİNEER CEBİR');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (4,'ANALİTİK GEOMETRİ');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (2,'ÖLÇME TEKNİKLERİ');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (8,'WEB GÜVENLİĞİ');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (8,'İŞLETİM SİSTEMLERİ');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (1,'TEMEL MATEMATİK');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (2,'LOJİK DEVRELER');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (3,'AĞ YAPILARI');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (2,'MİKRO İŞLEMCİLER');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (3,'TELEKOMİNİKASYON');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (3,'SİNYAL İŞLEME');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (6,'TEKNOLOJİK GELİŞMELER');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (5,'ARAŞTIRMA TEKNİKLERİ');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (1,'YAPAY ZEKA');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (4,'GÖRSEL PROGRAMLAMA');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (5,'GÖRSEL TASARIM');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (4,'OYUN PROGRAMLAMA');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (5,'ÖĞRETİM TEKNİKLERİ');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (5,'TEKNOLOJİK ADAPTASYON');
INSERT INTO dersler(fk_bolum_id,ders_ad) VALUES (6,'TEKNOLOJİK GELİŞMELERİN TAKİBİ');





















