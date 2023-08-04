# Birden Fazla Tablo üzerinde Sorgulama
Birleştirme(join) yapılarak birden fazla tablo üzerinde sorgulama işlemleridir.Genel olarak farklı tablolar üzerindeki verilerin birleştirilerek gösterilmesidir.

## Tabloların Birleştirilmesi(JOIN)
Farklı tür değerler içeren farklı tabloların birleştirilmesine join işlemi denir.Tabloların yapılarında değişiklik olmaz sadece o anki sorgunun sonucu için kaynak oluşturulur.Birleştirme işlemi birden fazla tablo ile yapılabilir.

![birlestirme-where](./img/birlestirme-where.png)

- Birleştirme işlemi için kullanılan tabloların yazılma sırası normal join işlemlerindeönemli değildir ama outer join işlemlerinde left table (sol tablo) ve right table(sağ tablo) olarak ayrılacaktır ve yazılma sırası önemli değildir.
- Birleştirme işlemi için join ifadeleri kullanılabileceği gibi yukarıdaki örnekte verildiği gibi WHERE ifadeside kullanılabilir.
- Birleştirme işlemi view üzerinde de uygulanabilir.
- Sorguların daha hızlı çalışması için birleştirilen sütunlar içni incex kullanılabilir.
- Birleştirilen sütunların veri tipi uyumlu olmalıdır.Binary veri tipleri içeren sütunlarda birleştirme işlemi yapılamaz.

![join](./img/join.jpeg)

### INNER JOIN
İki veya daha fazla tablonun ortak sütunlarının içerdiği verileri kontrol ederek birleştirme işlemi yapılır.INNER JOIN yerine JOIN yazmakta yeterlidir.
![join-1](./img/join.png)
![join-2](./img/join-2.png)

### OUTER JOIN
Inner join işleminde ilişkisi olan satırları gösterirken **OUTER JOIN** ilişkisi olmayan satırlarıda gösterir.İlişkilendirilen tablolarda karşılığı olamayan satırlar NULL değer içerecektir.Örnek olarak kütüphanede kitabı olmayan yazarlarda listelecektir.
1. LEFT OUTER JOIN
2. RIGHT OUTER JOIN
3. FULL OUTER JOIN

#### LEFT OUTER JOIN
Bu tür birleştirme kullanıldığında ifadenin solundaki tablodaki tüm satırlar gösterilir ve ilişkilendirilen ikinci tablonun ise sadece ilişki olan yani kesişimdeki satırları gösterilir.
![left-outer-join](./img/left-outer-join.png)
#### RIGHT OUTER JOIN
Bu tür bir birleştirmede belirleyici tablo ifadenin sağındaki tablodur.
![right-outer-join](./img/right-outer-join.png)
#### FULL OUTER JOIN
Bu tür birleştirmede her iki tabloda yada kaç tane tablo ile birleştirme işlemi yapıldıysa tüm satırlar gösterilir ve ilişkisi olmayan satırlar null değer içerecektir.Full outer join işlemi mysql de desteklenmiyor sadece mysql ve oracle veritabanlarında var.

```sql
SELECT tablo1.sutun_adi,tablo2.sütun_adi, ...
FROM tablo1 FULL OUTER JOIN tablo2 ON tablo1.
ortak_sütun(=,>,< >=,<=,<>)tablo2.ortak_sutun 
```

### CROSS JOIN (KARTEZYEN ÇARPIM)
### NATURAL JOIN (DOĞAL BİRLEŞTİRME)
### SELF JOIN (TABLONUN KENDİSİYLE BİRLEŞTİRİLMESİ)
## ORTAK SÜTUNU BULUNMAYAN TABLOLARIN BİRLEŞTİRİLMESİ