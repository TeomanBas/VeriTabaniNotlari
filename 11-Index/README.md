# INDEX
Index veritabanı içerisinde bulunan fiziksel tablo veya view gibi bir veritabanı nesnesidir bir **Index** tablodaki belirli sütuna göre sıralanmasını sağlamaktadır.Bir tablo birden fazla index içerebilir.

## INDEX NASIL ÇALIŞIR?
Hazırlanan sql sorguları çalıştırıldığında veriler tablo üzerinden iki yöntemle alınır.Birincisi tablo baştan sona tamamen taranarak istenilen veri alınır.Bu yöntem table scan olarak adlandırılır.İkinci yöntem ise tablo üzerinde oluşturulan indeksler yardımıyla istenilen veri alınır.Çok fazla kayıt içermeyen tablolar için table scan yöntemi kullanılmasının performans açısından bir zararı olmayacaktır ama satır sayısı çok fazla (yüz binler,milyonlar) olduğu zaman ciddi bir performans kaybı meydana gelir.

Tablo üzerinde tutulan bilgiler bir kurala göre dizilmeden rastgele yerleştiriliyorsa bu yapıya yığın(heap) adı verilir.

İndeksler oluşturulduktan sonra yapılan sorgularda herhangi birşey eklemeye yada değişiklik yapmaya gerek yoktur.

Bir tablo veya view üzerinden birden fazla indeks oluşturulabilir.Oluşturulan indeksler ayrı ayrı depolandığı için veritabanı boyutunda artışlar olabilir.

Veritabanı sunucusu bir sorgu sonucunu getirirken indeks mi yoksa table scan metodunu mu kullanacağını en az zaman maliyeti olan yönteme göre kendisi belirler.

## INDEX TİPLERİ

### COMPOSİTE INDEX
İndex işlemi birden fazla sütunda gerçekleşen index türüdür.Arama işlemi çoğunlukla iki veya daha fazla sütunu içeren bir sorguda kullanılır.İlişkili tablolar arasında bir tablonun iki sütunu parimary key olarak tanımlanırsa karma indeks oluşur.

### UNIQUE INDEX
Bu tür indeksler bir tablo içerisinde benzer değerlere sahip iki satırın oluşturulmasına izin vermez.İndeks oluşturulduktan sonra her satır ekleme işleminde aynı verinin olup olmadığının kontrolü yapılır.Tablo içerisinde tekrar eden satırlar olduğunda bu tür bir indeks oluşturulamaz.Ayrıca Unique indeks olarak ayarlanacak tabloda sütunların özellikleri *not null* olmalıdır çünkü çoklu null değerler tekrar eden kayıtlardır.

### CLUSTURED INDEX
Bir tablo üzerinde sadece bir tane clustered index oluşturulabilir.Sütun primary key olarak tanımlanmış ise otomatik olarak clustured indeks oluşturulmuş olur.Tabloda yer alan satırlar fiziksel olarak indeks tanımlı sütuna göre sıralanır.Aralık sorguların yüksek performans verir.Tekrar eden satırlar içeremez.Tablo üzerinde clustured indexler diğer indeks lerden önce tanımlanmalıdır.çünkü diğer indeksler clustured index üzerinden verilere erişir.

### NONCLUSTURED INDEX
Bir tablo üzerinden birden fazla *NonClustured* indeks oluşturulabilir.Veri erişiminde hızın artmasını sağlar Clustured index'le birlikte çalışması gerektiği için performansları clustered index'lerden daha düşüktür.

## INDEX KULLANIMI
İndeksler veriye erişimi hızlandırır. Bir sütuna indeks yerleştirmek çoğunlukla sorgunun hızlı cevap vermesini sağlar ve uzun bekleme süresini azaltır.Fakat bir indeks oluşturmak zaman alır ve yer kaplar Örneğin bir clustered index tekrar oluşturulduğunda nonclustured indeksler otomatik olarak tekrar oluşturulacaktır.Ayrıca indeks kullanılan bir tabloya veri ekleme silme veya güncelleme işlemi  indeks kullanılmayana göre daha uzun sürecektir.Fakat bu fark indeks kullanımının veri erişimindeki sağlandığı performanstan dolayı göz ardı edilbilmektedir.

### INDEX NE ZAMAN KULLANILIR.
- Tablo içerisinde anahtar sütun olarak kullanılan değer manual olarak artırılmak isteniyorsa benzersiz satırların bulunması için indeks kullanılabilir.
- Daha iyi performans için birleşimlerde kullanılan sütunlar daima indekslenmelidir.
- Bir tablo diğer tablolardaki sütunlarla sık sık birleştiriliyorsa tablonun birincil anahtarını tutan sütun bir clustured indeks'e sahiptir.
- En temel koşullu sorguları hızlandırmak içni indeksler kullanılabilir.
- *BETWEEN*, *LIKE* *ORDER BY* veya *AND* ifadelerle gerçekleştirilen aralık soruglarını hızlandırmak.

### INDEX NE ZAMAN KULLANILMAZ
- Aynı değerleri tekrar tekrar içeren sütunlar için,
- Sorgularda çok az ve hiç kullanılmayan sütunlar için

## KULLANIM ŞEKLİ

```sql
CREATE [UNIQUE] INDEX index_ismi ON tablo_ismi(sütun_ismi)
```

`UNIQUE` parametresinin kullanım zorunluluğu yoktur.Eğer kullanılırsa kullanılan sütun *unique* özellikte olmuş olur.

`CLUSTERED INDEX` oluşturmak için özel bir parametreye gerek yoktur. Tablo için `primary key` oluşturulduğunda otomatik olarak oluşturulmuş olacaktır.MS SQL server için *Clustured index* oluşturulmak istenirse `CREATE CLUSTURED INDEX` şeklinde oluşturulabilir.

Herhangi bir parametre kullanılmadan oluşturulan indeksler clustured indekstir.

Tabloda indeks oluşturmak veya silmek için tablonun sahibi olmak yeterlidir tabloda yetkisi olmasa bile tablonun sahibi olduğu için indeks oluşturubilir ve silebilr.

Bit,Text veya Image veri tipindeki sütunlar için indeks oluşturulamaz.

## KARMA INDEX(BİRDEN FAZLA SÜTUN ÜZERİNDE İNDEKS)
Bir veya daha fazla sütunüzerinde arama işleminin performansını artırmak için karma indeksler kullanılabilir.Örneğin personel tablosunda personellerin ad ve soyad bil gilerini içeren sütunların sorgulanmasında kullanılabilir.Karma indeks oluşturmak için veya daha fazla sütun ismi belirtilmelidir.Karma indeksler için kullanılacak sütun verileri tablo isminden sonra parantez içerisinde yazılmalıdır.
```sql
CREATE INDEX indeks_adi ON tablo_adi(sutun1,sutun2)
```

## UNIQUE INDEX
Bu indeks türünde tanımlanan sütunların içerdiği tüm değerler benzersiz olmalıdır ve tabloya sonradan bir kayıt eklenmek istendiğinde aynı veri o sütun için varsa bu kayıt eklenemez çünkü her insert ve update işleminde tabloya eklenen kayıtlar kontrol edilir.

```sql
CREATE UNIQUE INDEX indeks_adı ON tablo_adi(sütun_adı)
```

## ARTAN VEYA AZALAN SIRADA INDEX OLUŞTURMA
İndeks oluştururken sütunları için *ASC* *DESC* gibi tanımlamalar yapılabilir ayrıca *ORDER BY* gibi bir ifadenin kullanılmasına gerek yoktur.

```sql
CREATE INDEX indeks_adi ON tablo_adi(sutun_adı_1 ASC,sutun_adi_2 DESC)
```

## INDEKS SİLMEK

**mssql**
```sql
DROP INDEX tablo_adi.indeks_adi
```

**oracle**
```sql
DROP INDEX indeks_adi
```

**mysql**
```sql
DROP INDEX indeks_adi ON tablo_adi
```