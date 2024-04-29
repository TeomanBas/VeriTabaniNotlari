-- TEK TABLO İÇİNDE SORGULAMALAR
-- select ifadesi kullanılarak tablo veya tablolardan istenilen veriler seçilebilirler.seçim işlemi yapılırken bir veya birden fazla tablo kullanılabilir.bu bölümde sadece tek tablo üzerinde yaılabilecek sorgular anlatılacaktır.
 SELECT ogr_no,ogr_ad,ogr_soyad,ogr_bolum_no FROM ogrenciler;
 
-- SORGU SONUCU TEKRARLI SATIRLARI ÖNLEMEK
-- select ifadesi ile yapılan sorgulamalarda aynı bilgi birden fazla satırda(kayıt) bulunuyorsa bunların tamamaı listelenecektir.
-- örneğin satın alınan ürünlerin listelendiği bir tabloda aynı ürün biden fazla kez satıldığı için birden çok kez listelenecektir.
-- bu ve bu gibi durumlarda tekrar eden kayıtların  sadece bir kez görüntülenmesi için DISTINCT ifadesi kullanılır.
 
 
 SELECT DISTINCT bolum_ad FROM ogrenciler, bolumler WHERE ogr_bolum_no=bolum_id;
 
 
-- SORGU SONUCUNUN SIRALANMASI 
-- yapılan sorguların sonuçları kayıtların yapılma sırasına göre listelenecektir.yapılan istenen veya birden fazla sütuna göre sıralanması için tablo adından sonra ORDER BY ifadesi kullanılır.
-- sıralama hangi sütuna göre yapılacaksa o sütunun ismi yazılır.Sıralama işlermi artan sıralama olacaksa (ASC) azalan sıralama olacaksa (DESC) ifadesi kullanılır.
-- ASC VEYA  DESC ifadeleri kullanılmadığı zaman default olarak ASC yani artan sıralama yapılacaktır.
-- sıralama işlemleri sayı ise 0...9 veya 9...0 olacaktır, harf ise A...Z veya Z...A olacaktır.
-- karakter içerenbir sütunda sayılar var ise sıralama işlemleri doğru olmayacaktır.bunun için sütun tiplerine dikkat edilmelidir.
-- ORDER BY ifadesinden sonra sütun numarası yazıldığında yine o sütuna göre sıralama yapılacaktır. 

SELECT * FROM bolumler ORDER BY bolum_id DESC;
SELECT * FROM bolumler ORDER BY bolum_ad ASC;

--AS İFADESİ SÜTUNLARA TAKMA AD VERMEK İÇİN KULLANILIR. SÜTUN İSMİNDEN HEMEN SONRA KULLANILIR.

SELECT ogr_no AS 'ÖĞRENCİ NO:', ogr_ad AS 'ÖĞRENCİ ADI', ogr_soyad AS 'ÖĞRENCİ SOYADI' FROM ogrenciler ORDER BY  ogr_no ASC;

--SÜTUNLAR ÜZERİNDE MATEMATİKSEL İŞLEMLER
-- sorgudan dönen sütunlar üzerinde matematiksel işlemler yapılabilir örneği bir maaş kesintisi yada bonusu gibi 
 SELECT fis_no,cari_adi,islem_turu,islem_tutarı+40000 FROM alisveris;
 
 -- notlar tablosundan öğrencilerin ortalamalarını hesaplayan ve öğrenci bilgilerini yazdıran sql sorgusu
 SELECT `ogrenciler`.`ogr_no` AS 'ÖĞRENCİ NUMARASI', ogr_ad AS 'ÖĞRENCİ ADI',ogr_soyad AS 'ÖĞRENCİ SOYADI',ders_ad AS 'DERS ADI',
 ROUND((vize/100)*30 + (final/100)*70) AS 'DERS ORTALAMASI' 
 FROM ogrenciler,dersler,notlar 
 WHERE `notlar`.`ders_id`=`dersler`.`ders_id` AND `ogrenciler`.`ogr_no`=`notlar`.`ogr_no` 
 ORDER BY 5 ASC ;
 
/*
KARŞILAŞTIRMA OPERATÖRLERİ
<	:KÜÇÜK OLACAK
>	:BÜYÜK OLACAK
<>	:YA BÜYÜK YADA KÜÇÜK OLACAK ÖR:ALAN1<>"VAN" ALAN1 VAN OLMAYANLAR ANLAMINA GELİR VAN OLMAYACAK
=	:EŞİT OLACAK
<=	:KÜÇÜK EŞİT OLACAK
>=	:BÜYÜK EŞİT OLACAK

NOT , AND , OR MANTIKSAL OPERATÖRLERDİR.
*/
 
 
 -- mysql veritabanın birleştirme işlemi concat fonksiyonu iler gerçekleştirilir.alter
SELECT ogr_no, CONCAT(ogr_ad," ",ogr_soyad) AS "ÖĞRECİ ADI SOYADI" FROM ogrenciler;

-- IN operatörü ile veri kümesi içerisnde arama
-- IN operatörü yardımıyla karşılaştırma işlemi bir veri kümesi içindeki bilgilere göre yapılır.Mantıksal operatörler yardımıyla yapılan birden fazla OR koşulu IN operayörüyle ifade edilebilir.
-- veri kümesinde belirtilen karakter türündeki veriler için oracle veritabanlarında büyük-küçük harf duyarlılığı varken ms sql ve mysql için yoktur.
-- kullanım şekli
-- SELECT * FROM tablo_adi WHERE  referans_sütun IN (deger1,deger2,...,deger_n);
SELECT ogr_no AS " ÖĞRENCİ NO", CONCAT(ogr_ad," ",ogr_soyad) AS " ÖĞRENCİ ADI SOYADI",bolum_ad AS " BÖLÜM ADI"
 FROM ogrenciler,bolumler
 WHERE `ogrenciler`.`ogr_bolum_no`=`bolumler`.`bolum_id`
 AND `bolumler`.`bolum_ad` IN ('BİLGİSAYAR','ELEKTRONİK');
 
 -- NOT IN KULLANIMINDA bazı değerleri direk içermemesini sağlayabiliriz
 SELECT * FROM ogrenciler WHERE ogr_ad NOT IN ('ALİ','VELİ','SELAMİ');
 
 -- BETWEEN .. AND ..  OPERATÖRÜYLE ARALIK SORGULAMA 
-- iki değer aralığındaki verileri sorgulamak için AND operatörü ile iki koşul yazmak yerine BETWEEN ifadesi kullanılabilir 
-- BETWEEN ifadesi başlangıç ve bitiş değerleri dahil olmak üzere sorgulama yapar.
-- KULLANIM ŞEKLİ
-- SELECT * FROM tabloya_adi WHERE referans_sütun BETWEEN ilk_değer AND son_değer;
SELECT * FROM ogrenciler WHERE ogr_no BETWEEN 12 AND 30;

-- KARAKTER KÜMESİ İÇEREN VERİLERİ  JOKER KARAKTER KULLANARAK SORGULAMA
-- Joker kararakter içeren veri kümelerini joker karakter kullanarak soruglamak için LIKE ifadesi kullanılmak zorundadır.
-- sayısal türdeki sütunlar için joker karakterler kullanılamaz joker karakter kullanılan koşul ifadeleirnde "=" kullanılmaz.Koşul belirtilirken sütun isminden sonra LIKE ifadesi ve sonrasında joker karakter içeren ifade yazılır.alter


-- KULLANILABİLECEK JOKER KARAKTERLER
-- % :herhangi  bir karakter yerine gelebilecek karakter kümesini ifade eder.alter
-- _(ALT ÇİZGİ) :herhangi bir karakter yerine gelebilecek karakter kümesini ifade eder.
-- [^HARF] : herhangi bir karakter yerine gelemeyecek karakter kümesinin ifade eder.alter
-- [A-Z] :herhangi bir karakter yerine A ile Z arasında karakter gelebileceğini ifade eder.
-- [HARF] [^HARF] [A-Z] joker ifadeleri sadece MS SQL server veritabanlarını sistemleirnde kullanılabilir.

-- öğrenci adlarının içerisnde b harfi geçen kayıtları listeler büyük küçük harf duyarlılığı yoktur.
SELECT * FROM ogrenciler WHERE ogr_ad LIKE '%b%';

-- öğrenci adlarının içerisinde ilk harfi a olan kayıtları listeler
SELECT * FROM ogrenciler WHERE ogr_ad LIKE 'A%';

-- öğrenci adlarının içerisinde üçüncü harfi a olan kayıtları listeler
SELECT * FROM ogrenciler WHERE  ogr_ad LIKE '__İ';

-- bölüm adlarının içerisinde ilk harfi b veya  d olan kayıtları listeler galiba mariadb de '[eb]%' şeklinde bir kullanım çalışmıyor
-- REGEXP araştırılması gerekli engine ler arasında farklar dan dolayı kullanım şekilleri farklılık gösterebiliyor
SELECT * FROM bolumler WHERE bolum_ad LIKE 'E%' OR bolum_ad LIKE 'B%';

-- adının ilk harfi a ile m harflari arasında olan öğrencileri listeler.LIKE '[A-M]%' şeklinde bir kullanım çalışmıyor araştırılması gerek
SELECT * FROM ogrenciler WHERE ogr_ad  LIKE 'A%' OR ogr_ad  LIKE 'B%' OR ogr_ad  LIKE 'C%' OR ogr_ad  LIKE 'D%' ;

-- AMA LİKE YERİNE REGEXP İ KULLANIRSAK İSTEDİĞİMİZİ GERÇEKLEŞTİREBİLİYORUZ SADECE LIKE DA Kİ SONUNA % KOYAMAMIZA GEREK YOK 
SELECT * FROM ogrenciler WHERE ogr_ad  REGEXP '[A-M]' ;

-- ilk harfi b ve m harfi olmayan ikinci harfi m,o,z harfleirini içermeyen üçüncü harfi a dan z ye kadar olan hardleri içeren
-- yine problem var tablo boş dönüyo 
SELECT * FROM ogrenciler WHERE ogr_ad LIKE '[^B-M][^MOZ][A-Z]';

-- vize notları 70 ile 89 arasında olan kayıtları listeler
SELECT * FROM notlar WHERE vize regexp '[7-8][0-9]';

--NULL DEĞER  SORGULAMA
-- null içerisinde değer bulundurmayan sütunlardır.kayıt işlemi esnasında herhangi sütuna değer girilmezse o sütunun değeri null olarak adlandırılır
-- sütun içerisine boşluk bile girilse orası artık null değildir. null değer sorgulamak için karşılaştırma operatörleri kullanılmaz.
-- IS NULL İfadesi değerin null olduğunu IS NOT NULL İfadesi değerin null olmadığını belirtir.

-- bu sorguda ogrenciler tablosunda bolum ve adres sütunlarınınn ikisininde null olduğu öğrensileri listeledik.IS NOT NULL deseydik ikiside null olmayan kayıtlarıda listeleyebilirdik.
 SELECT * FROM ogrenciler WHERE ogr_bolum_no IS NULL AND ogr_adres IS NULL;
 
 --  müşteri tablosunda bulunan kayıtları "madi" sütununa göre artan sırada listelemek için gerekli sql ifadesini yazınız
SELECT * FROM musteri  ORDER BY madi ASC;

-- araç tablosunda bulunan kayıtları model sütununa göre azalan fiyat sütununa göre artan sırada olacak şekilde listelemek için gerekli sql ifadesini yazınız.
SELECT * FROM arac  ORDER BY model ;
SELECT * FROM arac ORDER BY fiyat DESC;

-- satışı yapılan araçların aracno,sat_tarih ve sfiyat bililerinin seçerek sfiyat sütunu için isim olarak "satış fiyatı " bilgisini kullanan sql ifadesini yazınız.
SELECT aracno,sat_tarih,sfiyat AS "SATIŞ FİYATI" FROM satis ;

-- fiyatı 12000 den fazla olan araçların bilgilerini fiyat sütununa göre azalan sırada listelemek için gerekli sql ifadesini yazınız.
SELECT * FROM arac WHERE fiyat>=12000 ORDER BY  fiyat  DESC ;

-- satış fiyatı 10000 den fazla olan veya 4 nolu müşteriye satılan araçların bilgilerini listelemek için gerekli sql ifadelerini yazınz.
SELECT * FROM satis WHERE sfiyat>=10000 OR mno=4;

-- nisan 2010 dan sonra satılan araçları listelemek için gerekli sql ifadesini yazınız.
SELECT * FROM satis WHERE sat_tarih>='2010-4-0';

-- şubat 2010 ile hairan 010 arasında 10000 dan daha yüksek fiyata alınan araçların alım tarihi alış fiyatı ve araç no biilgilerinin en yeni 
-- tarihten en eski tarihe doğru ve en yüksek fiyattan en düşük fiyata doğru sıralayarak listelemek için gerekli sql ifadesini yazınız
SELECT aracno,alim_tarih,afiyat FROM alim WHERE alim_tarih BETWEEN '2010-2-0' AND '2010-6-0' ORDER BY alim_tarih DESC;

-- 10000 ile 20000 arasında fiyata satılan araçlardan 4 ve 2 nolu musteriye yapılan satışların bilgilerini listelemek için gerekli sql ifadesinin yazınız
SELECT * FROM satis WHERE mno=2 OR mno=4 AND sfiyat BETWEEN  10000 AND 20000;

--turhalda ikamet eden müşterilere yapılan satışlar.
SELECT satno,satis.mno,aracno,sat_tarih,sfiyat FROM satis,musteri WHERE `musteri`.`madres` LIKE '%TURHAL%' AND `musteri`.`mno`=`satis`.`mno` ;
-- TOKATTA ikamet eden ve telefon numarasında 6 geçen musterileri listeleyiniz.
SELECT * FROM musteri WHERE mtelefon LIKE '%6%' AND madres LIKE '%TOKAT%'; 
--isminde a geçen müşterilerin adres ve telefon numaralarını listeleyiniz
SELECT madres,mtelefon FROM musteri WHERE madi LIKE '%A%'; 

-- modeli opel ve flat olan araçların fiyat ,marka ,ve model bilgilerinin marka bilgisine göre artan sırada listeleyiniz.
SELECT model,marka,fiyat FROM arac WHERE marka LIKE '%OPEL%' OR marka LIKE '%FLAT%' ORDER BY marka DESC;

-- 1998 ,2005, ve 2007 model araçları listelemek için gerekli sql ifadesinin yazınız.
SELECT * FROM arac WHERE model=2005 OR model=2007 OR model=1998 ;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 