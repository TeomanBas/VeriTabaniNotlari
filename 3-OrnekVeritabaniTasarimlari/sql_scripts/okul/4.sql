-- VERİ İŞLEME DİLİ (DATA MANUPULATION LANGUAGE)
-- SELECT : VERİTABANINDAKİ KAYITLARLARI SEÇMEK İÇİN KULLANILIR.
-- INSERT : VERİ TABANINA YENİ KAYIT EKLEMEK İÇİN KULLANILIR.
-- UPDATE : VERİTANINDAKİ BULUNAN KAYITLAR ÜZERİNDE DEĞİŞİKLİK YAPMAK İÇİN KULLANILIR.
-- DELETE : VERİTABANINDAN KAYIT SİLMEK İÇİN KULLANILIR.

-- SELECT İFADESİ VERİLERİN SEÇİMİ İÇİN KULLANILIR.TABLO VE KAYITLAR ÜZERİNDE HERHANGİ BİR DEĞİŞİKLİK MEYDANA GELMEZ
-- KULLANIMI SELECT SUTUNLAR FROM TABLO


-- TÜM KAYITLARI SEÇER
SELECT * FROM ogrenciler

-- LİSTElenen tabloların belli koşullara göre listelenmesi isteniyorsa  tablo isminden sonra WHERE ifade yazılır istenen koşullar sıralanır.
-- WHERE ifadesi (<,>,<=,>=,NOT ) gibi KARŞILAŞTIRMA ifadeleri kullanılarak oluşturulabilir.
-- koşul sayısı fazla ise koşulları sıralamak için 'OR' veya  'AND' gibi operatörleri kullanılır.
-- AND operatörüyle birleşen birden fazla koşulun  tamamının sağlanması gerekirken OR operatörüyle OR operatöründe koşulun sadece birinin sağlanması yeterlidir.
-- IN İFADESİ ile bir veri kümesi içeren bilgilerin seçilmesi için kuşul ifaleri ve LIKE ifadesi ile joker karakter içeren koşul ifaleri yazılabilir. % joker karakteri bir veya birden fazla
-- herhangi bir karakter anlamına gelirken _ ifadesi joker karakteri tek karakterlik herhangi bir karakter anlamına gelir.
-- WHERE ad IN('ali','Mustafa') şeklindeki bir kullanım ad bilgisi ali veya mustafa olan kayıtları listeyecektir.
-- '%A%': metnin içerisinde herhangi bir yerinde A harfi geçmesi
-- 'A%' : metnin ilk harfinin A harfi olması
-- '_A_': üç harfi(herhangi bir üç harf) bir metnin ortasınfaki harfin A olması 
 

-- OGRENCİLER TABLOSUNDAN SADECE NO VE AD SÜTUNLARINI SEÇER
SELECT no,ad FROM ogrenciler

-- ogrenciler tablosundaki adı ali,veli ve selami olan kayıtları listeler OR veya anlamı taşır sağlanan tüm değerleri içine alır.
SELECT * FROM ogrenciler WHERE ogr_ad='ALİ' OR ogr_ad='VELİ' OR ogr_ad='SELAMİ'; 

-- ogrenciler tablosundaki adı ali ve veli olan tüm satırları veya adı selami ve nosu 23 olan sütünları listeler 
-- en sonda kullanılan OR -> AND içine alır ve ogr_ad ile ogr_no birleşmiş olur.  YANİ AND İFADESİ SAĞINDAKİ VE SOLUNDAKİ  KOŞULLARI AYNI ANDA 
-- SAĞLANMASINI İSTER VE ONA GÖRE LİSTELEME YAPAR.
SELECT * FROM ogrenciler WHERE ogr_ad='ALİ' OR ogr_ad='VELİ' OR ogr_ad='SELAMİ' AND ogr_no=23;

-- ogr no su 1 5 ve 6 olan ogrencileri listeler
SELECT * FROM ogrenciler WHERE ogr_no IN(1,5,6);

--adının içerisinde S HARFİ GEÇEN TÜM ogr_ad satılarını listeler. büyük küçük harf duyarlı değildir.
SELECT *FROM ogrenciler WHERE ogr_ad LIKE ('%S%');

-- adı üç harften oluşan ve ortasındaki harf A harfi olan yada dogum tarihi belirlenen tarihler olan tüm kayıtları listeler.
SELECT *FROM ogrenciler WHERE ogr_ad LIKE ('_A_') OR ogr_dogum_tarih IN('1-10-2016','18-5-1953');


-- INSERT İFADESİ
-- veritabanı içerisinde herhangi bir tabloya veri girişi için INSERT INTO ifadesi kullanılır.
-- tabloya eklenecek veriler karakter veya karakter kümesi şeklinde ise tırnak('') içerisinde yazılmalıdır.sayısal türdeki veriler için tırnak kullanılmayabilir.


-- KULLANIM ŞEKLİ 
INSERT INTO tablo VALUES (deger1,deger2,deger3,...);

INSERT INTO tablo(sütun2,sütun5,...) VALUES(sütun2_degeri,sütun5_degeri,...);
 
-- UPDATE İFADESİ
UPDATE  tablo(sütun1,sütun2,...) SET sütun1=deger sütun2=deger ... WHERE koşullar;

-- ogr_no su 5 in katları olan ogrencilerin ogr_bolum_no adındaki sütun değerlerini 1 yaptı
UPDATE ogrenciler SET ogr_bolum_no=1 WHERE ogr_no=5 OR ogr_no=10 OR ogr_no=15 OR ogr_no=20 OR ogr_no=25 OR ogr_no=30;

UPDATE ogrenciler SET ogr_mail_adres='gecici@mail.com' WHERE NOT ogr_mail_adres LIKE '%@%'; ???????


-- DELETE İFADESİ 
-- bir tablo içindeki tüm kayıtları yada belirtilen koşullara göre bir kısmını  silmek için kullanılır.
-- kullanımı select ve update ile aynıdır.

DELETE FROM ogrenciler WHERE ogr_no=1;























