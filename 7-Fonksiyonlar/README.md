# FONKSİYONLAR
## Karakter Kümesi Fonksiyonları
### CONCAT()
Kendisine gelen değerleri birleştirmek için kullanılır.
```sql
SELECT  CONCAT(sutun1, ' ', sutun2) AS "ADSOYAD" FROM tablo;
```
### SUBSTRING()
Verilen karakter kümesindeki karakterlerin bir kısmını almak için kullanılır.
```sql
SELECT SUBSTRING(veri_kümesi_sutun,karakter_başlangıç,karakter_sayisi) FROM tablo;
```
### LEFT(), RIGHT() 
Verilen karakter kümesinin sağından yada solundan belirli karakter sayısına göre karakterlerin alınmasını sağlar.ikisinin kullanımıda aynıdır.
```sql
SELECT LEFT(sutun,karakter sayisi) FROM tablo;
```
### LOWER(),UPPER()
LOWER() verilen değer içindeki harfleri küçük,UPPER() ise büyük harfe çevirir.
```sql
SELECT UPPER(sutun) FROM tablo;
```
### TRIM(),LTRIM(),RTRIM()
Bu fonksiyonlar kendisine gelen değer içindeki boşlukları kaldırır.TRIM() her iki taraftaki boşlukları kaldırır,LTRIM() soldaki boşlukları kaldırır,RTRIM() sağdaki boşlukları kaldırır. 
```sql
SELECT LTRIM(sutun) FROM tablo;
```
### INITCAP()
Oracle veritabanlarında kullanılan bir fonksiyondur ve içerisine parametre olarak verilen veri kümesinin içindeki kelimelerin ilk harfini büyük harf yapar.
```sql
SELECT INITCAP(sutun) FROM DUAL;
```

#### (LEADING | TRAILING) Kullanımı
LEADING VE TRAILING özel bir kullanımdır ve mysql ile oracle veritabanlarında kullanılabilir.
**LEADING** : TRIM fonksiyonu LEADING ile kullanıldığında veri kümesinin  ön tarafında bulunan boşlukları veya istenilen karakteri siler.
**TRAILING** : TRIM fonksiyonu ile TRAILING kullanıldığında karakter kümesinin sonunda bulunan boşlukları ve istenilen karakteri siler.

**ORACLE**
```sql
SELECT '<' || TRIM(LEADING FROM ' deneme ') || '>' FROM DUAL
```
**mysql**
```sql
SELECT CONCAT('<',TRIM(LEADING FROM )  ' deneme ')
```

### LEN(),LENGTH()
Bir veri kümesindeki karakter sayısını bulmak için kullanılır. LEN() ORACLE içindir,LENGTH() mysql ve ms sql içindir.
```sql
SELECT LENGTH(sutun) FROM tablo;
```
### REPLACE()
Bir veri kümesindeki bir kısmı istenilen başka bir veri ile değiştirmek için kullanılır.
```sql
SELECT REPLACE(sutun,eski_veri,yeni_veri) FROM TABLO;
```
### CHARINDEX(), INSTR()
Bir karakter kümesi içerisindeki başka bir karakter kümesini aramak içn kullanılır.Aranan bilgi bulunursa index numarası geri döner eğer bulunmassa 0 döner.

**mysql**
```sql
SELECT CHARINDEX(aranacak_bilgi,arama_yeri,arama_başlangıç_noktasi) FROM tablo;
```
**oracle ve mssql**
```sql
SELECT INSTR(arama_yeri,aranacak_bilgi) FROM DUAL;
```
### REVERSE()
Bir veri kümesinin tersten sıralar
```sql
SELECT REVERSE(sutun) FROM tablo;
```
### ABS()
Mutlak değer alır.
```sql
SELECT ABS(sutun) FROM tablo;
```
### FLOOR(), CEIL(), CEILING()
CEIL() ve CEILING() aldığı değeri yukarı yuvarlar.CEIL() hem mysql hemde oracle veritabanlarında kullanılabilir ancak CEILING() sadece mssql ver mysql veritabanlarında kullanılabilir.

**CEIL()**
```sql
SELECT CEIL(sutun) FROM tablo;
```
**CEILING()**
```sql
SELECT CEILING(sutun) FROM tablo;
```
FLOOR() sayıyı aşağı yuvarlamak için kullanılır.
```sql
SELECT FLOOT(sutun) FROM tablo;
```

### ROUND()
Verilen sayıyı en yakın tam sayıya yuvarlar.
```sql
SELECT ROUND(sutun) FROM tablo;
```
### POWER()
Verilen sayının üsstünü alır.
```sql
SELECT POWER(sutun,üs) FROM tablo;
```
### SQRT()
Verilen sayının kökünü alır.
```sql
SELECT sqrt(sutun) FROM tablo;
```
### SUM()
Bir sütun için toplam almakta kullanılır.
Verilen sayının üsstünü alır.
```sql
SELECT SUM(sutun) FROM tablo;
```
### AVG()
Bir sütun için ortalama almakta kullanılır.
Verilen sayının üsstünü alır.
```sql
SELECT AVG(sutun) FROM tablo;
```
### MAX(), MIN()
Bir sütun için maksimum ve minimum değerleri almak için kullanılırlar.
Verilen sayının üsstünü alır.

**maksimum değer**
```sql
SELECT MAX(sutun) FROM tablo;
```
**minimum değer**
```sql
SELECT MIN(sutun) FROM tablo;
```
### COUNT()
Verilen sutundaki satır sayısını bulmak için kullanılır.
```sql
SELECT MIN(sutun) FROM tablo;
```
### DISTINCT()
Verilen sutundaki benzersiz satırları listelemek için kullanılır.
```sql
SELECT DISTINCT(sutun) FROM tablo;
```
### MOD(), %
Belirlenen sütundaki sayının modunu almak için kullanılır mod işlemi desteklenmiyorsa % işareti ile işlem tanımlanarak sütundaki mod bulunabilir.

```sql
x % Y veya MOD(x,y)
```