-- ALTER TABLE ÖRNEKLERİ
USE okul;
 SHOW TABLES;
 ALTER TABLE ogrenciler ADD COLUMN ogr_burs INT; -- ogrenciler tablosuna ogr_burs adında bir kolon eklendir add ekler
 ALTER TABLE ogrenciler DROP COLUMN ogr_sehir; -- ogrenciler tablosundan  ogr_sehir sütunu silindir 
 ALTER TABLE ogrenciler ADD CHECK (ogr_burs>=1000); -- ogrenciler tablosundaki ogr_burs sütuna 1000 e eşit yada büyük olması kontrolünü ekledik
 ALTER TABLE ogrenciler ADD CONSTRAINT  uc_ogrno  UNIQUE(ogr_no,ad); -- ogranciler tablosunda uc_de adında bir zorlayıcı ifade oluşturuldu ve belirtilen sütunların değer alırken unique değer alması şartı koşuldu. 
 ALTER TABLE ogrenciler ADD FOREIGN KEY (ogr_bolum_no) REFERENCES bolumler(bolum_id); -- yabancıl anahtar tanımlaması yapıldı. 
 ALTER TABLE ogrenciler DROP INDEX uc_ogrno; -- ogrenciler tablosunda tanımlanmış olan uc_ogrno adındadaki index silinmiştir.

SELECT * FROM ogrenciler;

