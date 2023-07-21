-- VERİ KONTROL DİLİ( DCL-DATA CONTROL LANGUAGE )  
 -- veri kontrol dili veritabanı içerisindeki verilere erişimleri dzüenelme kiçin kullanılır.
-- kullanıcı veya kullanıcı gruplarının erişim yetkilerini düzenlemektedir.alter
-- Veri kontrol dilinin üç temel ifadesi GRANT , DENY ve REVOKE dir.alter
-- BU KOMUTLAR CMD MYSQL KABUĞUNDA ÇALIŞTIRILMASI GEREKEBİLİR.

-- GRANT : kullanıcının kayıtlar üzerinde işlem yapmasına ve SQL  komutlarını çalıştırmasına izin verir.
-- DENY : kullanıcının kayıtları kullanmasını kısıtlar
-- REVOKE : daha önce yapılan tüm kasıtlamaları iptal eder.

-- KULLANIM ŞEKLİ ; GRANT { ALL VEYA İZİNLER } ON { İZİNLER } TO { KULLANICILAR }
-- GRANT  ifadesinden sonra verilmek istenilen yetkiler yazılır. ALL parametresi kullanıldığında  kullanıcı için tüm izinler verilecektir. buraya SELECT  ifadeler yazılabilir. 
/*aşağıdaki tabloda kullanıcabilecek yetki ifadeleri verilmiştir.
---------------------------------------------------------------
VERİTABANI İÇİN   | TABLO İÇİN | GÖRÜNÜM İÇİN | YORDAM İÇİN  |
---------------------------------------------------------------
CREATE DATABASE   |  DELETE    |   DELETE     | EXCECUTE     |
BACKUP DATABASE   |  INSERT    |   INSERT     |              | 
CREATE TABLE      |  SELECT    |   SELECT     |              |
CREATE VIEW       |  UPDATE    |   UPDATE     |              |
*/

-- ON ifadesi yetkilendirmenin yapılacağı yeri belirlemek için kullanılır.ÖRNEĞİN öğrenci tablosu için yetkilendirme yapılacaksa OGRENCİ yazılmalıdır.
-- yetkilendirme veri tabanı için yapılacaksa  ON İFADESİ KULLANILMAZ TO İFADESİNDEN DEVAM EDİLİR.

-- TO ifadesi yetkiendirmenin yapılacağı kullanıcıyı belirlemek  için kullanılır. Aynı izin birden fala kullanıcıya verilmek istendiğinde ger kullanıcı arasına , konularak veya her kullanıcı için 
-- ayrı ayrı sql ifadesi yazılabilir.




-- YENİ KULLANICI OLUŞTURMA

CREATE USER 'ogretmen'@'localhost' IDENTIFIED BY '123456789';

-- OLUŞTURULAN KULLANICININ  YETKİSİNİ TANIMLAMA

GRANT INSERT ON `okul`.`notlar` TO 'ogretmen'@'localhost';


-- DENY İLE BİR KULLANICININ TÜM ÖZELLİKLERİ VEYA BAZI ÖZELLİKLERİ ENGELLENEBİLİR.
--deny ile verilen yetki diğer yetkilerden üstündür. deny ile verilen yetki her zaman en üstün yetkidir.
-- deny ile bir yetki engellendi ise o yetki GRANT ile tekrar verilemeyecektir.
-- DENY { ENGELLENEN YETKİLER } TO { KULLANICI }; ŞEKLİNDE BİR KULLANIMI VARDIR.

-- ogretmenin tüm yetkileri düşecektir.
DENY ALL PRIVILEGES TO 'ogretmen'@'localhost';

-- REVOKE veritabanı veya veritabanı üzerindeki kullanıcılara verilen tüm yetkileri kaldırmak veya engellenen tüm yetkileri geri açmak 
-- için kullanılır. bu komutu sadece yönetici yetkisine sahip kişiler çalıştırabilir.
-- REVOKE İLE KALDIRILAN YETKİ GRANT İFADESİ İLE VERİLEBİLİR ANCAK DENY İFADESİ İLE  KALDIRILAN YETKİ GRANT İLE  GERİ VERİLEMEZ

-- REVOKE {ALL VEYA İZİNLER} TO { KULLANICIADI }

REVOKE ALL PRIVILEGES ON *.* FROM 'deneme1'@'localhost'; 
