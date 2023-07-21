# MS SQL SERVER ÜZERİNDE DATABASE İŞLEMLERİ
## DATABASE büyüklüğünün hesaplanması
- SQL serverda veriler disk üzerinde sayfa (page) şeklinde tutulur
Örneğin 1MB lık bir database de bilgiler; <code>1024/8 = 128</code> sayfa olarak tutulacaktır
<code>128*8=1024 KB (1MB)</code>
- Eğer bir tabloda birden fazla sütun varsa toplam satır boyutunu hesaplarken 9 Byte ‘lik ilave yapmak gerekir **(row overhead)**.
- Satırlar (rows) sürekli, bölünmeyen yapıdadır ve tek satırda maximum miktar 8096 Byte (8KB) dır.
- Her sayfa 8 KB lık bloklar şeklinde depolanır.

**Örnek :** Aşağıdaki gibi tanımlanmış bir tabloda 250.000 adet kayıt vadırn. Buna göre tablonun databese içerisinde kapladığı alanı bulalım:
```sql
create table ogrenci
(
adi char(30), 
soy char(30), 
tel cahr(30), 
ceptel char(30),
dtarihi DateTime , 
vize int, 
final int
);
```
|adi|soy|tel|ceptel|dtarihi|vize|final|
|--|--|--|--|--|--|--|
|30 byte|30 byte|30 byte|30 byte|8 byte|4 byte|4 byte|

1. Toplam Satır boyutu = 4*30 + 1*8 + 2*4 + 9 -> 147 byte( birden çok sütun olduğundan 9 byte ilave)
2. Her sayfadaki satır sayısı = 8096/147 -> 55 satır
3. Tablo içindeki sayfa sayısı = 250.000 / 55 -> 4545 sayfa (page)
4. Tablo boyutu = 4545 * 8 KB -> 36.363 KB veya 36 MB

Bu tabloda INDEX’ leme yapılmamıştır.
Hesaplanan değer, Index’ leme yapılan sütuna göre %25 ile %50 oranında artacaktır.

## Sistem Database'leri
SQL sunucunun bir takım ayarları ve işlemleri tutmak için kullandığı kendi sistem databaseleridir. Bunlar; MASTER, MODEL, TEMPDB, MSDB ve DISTRIBUTION

- **Master :** Kullanıcı hesapları ve sistem hata mesajları gibi izlenecek bilgileri tutar
- **Distribution :** ( bu database normalde gelmez ayrıca kurulmalıdır) Replikasyon (dağıtmak) sırasında kullanılan veri bilgisini ve yapılan iş bilgisini tutar 
- **Model :** Yeni oluşturulacak veri tabanı için temel kalıbı oluşturur.
- **Tempdb :** Geçici tablo bilgilerinin ve diğer geçici bilgilerin tutulduğu veri tabanıdır
- **Msdb :** Zamanlama (scheduling) ve yapılan iş bilgilerini tutar

## Database Dosyaları
Oluşturulacak veritabanında şu dosyalar bulunabilir.

- Veritabanı bir , **Primary Data File (.mdf)** olmalı
- Bir veya daha fazla , **Transaction Log File (.ldf)** olabilir
- Ayrıca bir veritabanı dosyası içerisinde opsiyonel olarak ikincil veri dosyası olabilir.**Secondary Data File (.ndf)** olabilir.

**NOT :** Yeni oluşturulan veri tabanı model veri tabanının kopyası şeklindendir. Dolayısıyla tüm yeni veri tabanlarında olması gereken bir özellik varsa bu MODEL veri tabanı üzerinde yapılarak yeni oluşacak veri tabanlarına aktarılmış olur. 

- MYSQL  ile veritabanı oluşturulduğunda mysql in kurulu olduğu diznde bulunan data dizini içerisine oluşturulan veritabanı isminde bir dizin oluşturulacaktır. daha sonraki aşamada oluşturulacak tablolar vu dizin içerisinde dopolanr.

- ORACLE veritabvanları barındırdığı verileri tutmak için bir veya birden fazla fiziksel veridosyası içerebilir tablo görünüm ve indeks gibi yapılar fiziksel olarak veritanı için tahsis edilmiş veri dosyalarında saklanır. bir veri dosyası sadece bir veritabanı ile ilişkilendirilebilir veri dosyalarında boş yer kalmadığında otomatik olarak boyut artışı  sağlanabilir.veri dosyalarında ver inormal veritabanı işlemleri sırasında belleğe aktarılır değişikliğe uğramış yada yeni girilen verilerin hemen veri dosyalarına  gerek yoktur. çükü disk erişim sayısını  azaltmak ve performansı arttımak için verinin  bir kısmı bellekte tutulur ve gerektiğinde veri dosyalarına bir kerede yazılır. veri dosyasının uzantısı dbf dir her oracle veritabanında iki veya daha fazla redo log dosyası bulunur bu redo loglar kümesinde genel olarak veritabanının redo logu tutmaktır.bir sebepten dolayı bellekteki  veriler veri dosyalarına yazılamazsa değişiklikler redo loglardan elde edilebilir.yani yapılan iş hiçbir zaman kaybolmaz redo logları da içeren bir hatadurumu oluşması halinde redo bilgilerini kurtamak için oracle çoklu redo log tutulmasına izin verir.bunun anlamı bir redo logun aynı anda iki ya da  daha fazla kopyasının tutulmasıdır. redo log dosyasındaki bilgiler sadece sistem ya da medya hatası nedeniyle veri dosyalarına yazıamayan verileri kurtamak için kullanılır. redo log daki bilgiler kullanrak veri kurtaılmasına rolling forward denir redo log dosyalarının log u dur her oracle veritabanının bir kontroldosyası vardır.kontrol dosyasında veritabanının fiziksel yapısı ile ilgili bilgileri tutulur. veritabanı redo log dosyalarında olduğu gibi kontrol dosylarının da birden fazla kopyasının tutulmasını destekler kontrol dosylarında tutulan bilgilerin bazıları veritabanının adı redo log örneğinin her açılışında kontrol  dosyası veritabanı ve redo dosylarının yerlerinin yapısında bir değişiklik olursa kontrol dosyası oracle tarafnda otomatik olarak değiştirilir.kontrol dosyası veritabanının kurtaılmasıda da kullanılır kontrol dosylarının uzantısı ctl dir.  

## Database oluşturma
- SQL (structured Query Language) dili ile komutlar ile yapılabildiği gibi Vizard (sihribaz) kullanılarak da yapılabilir.

- SQL komutlarının yazılıp işletilebilmesi veya vizard kullanılabilmesi için SQL sunucu ile bağlantıyı sağlayacak bir arayüz programına ihtiyaç vardır. (NaviCat, Toad , MS SQL Server Management Studio)

- Veri tabanı oluşturulurken:
    - Primary data file,
    - Transaction log file,
    - Secondery data file,
    - Veri tabanının başlangıç büyüklüğü (başlangıçtaki değeri MB olarak),
    - Maximum alabileceği değer (Büyüyebileceği maximum değer MB Olarak)
    - Büyüme Oranı (yüzde olarak veya değer olarak), gibi değerler belirtilebilir

```sql
CREATE DATABASE database_adı
ON PRIMARY
( NAME = primary takma adı ,
FILENAME = ‘ yol \ primary dosya adı .mdf ‘ ,
SIZE = başlangıç değeri MB,
MAXSIZE = en büyük deri MB,
FILEGROWTH = artış miktarı % veya sabit değer MB )
LOG ON
( NAME = log takma adı ,
FILENAME = ‘ yol \ log dosya adı . ldf ‘ ,
SIZE = başlangıç değeri MB,
MAXSIZE = en büyük deri MB,
FILEGROWTH = artış miktarı % veya sabit değer MB )
```
**örnek:**
```sql
USE master -- master databaseini seç
if ( exists(select name='myo' from sysdatabases where name='myo' ) )
drop database myo -- meslek adında database varsa önce onu yok et 

Create DATABASE myo -- aşağıdaki özelliklerde database oluştur
ON PRIMARY
(
Name= myo_db,
FILENAME = 'C:\myo.mdf' ,
SIZE = 10 MB,
MAXSIZE=25 MB,
FILEGROWTH= 20%
)
LOG ON
(
Name= myo_log,
FILENAME = 'C:\myo.ldf' ,
SIZE = 3 MB,
MAXSIZE = 5 MB,
FILEGROWTH = 1 MB
)
COLLATE utf8_turhish_ci
```

**örnek :**
Bu örneğimizde 2 adet veri tabanı dosyası (1 adet primary data file “.mdf”, 1 adet Secondary Data File “.ndf”
dosyası ) ile 2 adet Transaction Log dosyası ( .ldf) oluşturulmuştur.
```sql
CREATE DATABASE MESLEK
ON PRIMARY
(
NAME=prec4,
-- FILENAME='C:\Users\Pc\Desktop\Yeniklasör\MESLEK4.mdf',
-- NT Service\MSSQLSERVER kullanıcısının sadece aşağıdaki konuma okuma ve yazma izni vardır bunun için aşağıdaki şekilde
-- zaten halihazırda tutulan database dosyalarının yanınabir örnek oluşturuldu.eğer database dosyaları başaka bir dizine 
-- oluşturulmak istenirse Sql Server Configuration Manager üzerinden SQL Server (MSSQLSERVER) e özelliklerinden yeni bir kullnaıcı eklenebilir 
-- ancak bunun güvenlik için yapılmaması gereklidir yada bir dizin için NT Service\MSSQLSERVER kullanıcısına izin verilebilir
FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\deneme\MESLEK4.mdf',
SIZE= 6 MB, MAXSIZE=200 MB, FILEGROWTH=20 MB
),
(
NAME=prec4_2,
FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\deneme\MESLEK4_2.ndf',
SIZE= 6 MB, MAXSIZE=20 MB, FILEGROWTH=20 MB
)
LOG ON
(
NAME=log4,
FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\deneme\log.ldf',
SIZE= 6 MB, MAXSIZE=20 MB, FILEGROWTH=20 MB
),
(
NAME=log4_2,
FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\deneme\log_1.ldf',
SIZE= 6 MB, MAXSIZE=20 MB, FILEGROWTH=2 MB
)
```
Eğer birden fazla fiziksel disk varsa performansı yükseltmek amacıyla oluşturulan ikincil veri dosyaları (Secondery Data File) için dosya grupları oluşturulabilir.Direkt olarak veri tabanı oluştururken, dosya grupları oluşturulabileceği gibi daha sonrada oluşturulabilir.

**FOR LOAD:** hazırlanan veritavanının ms sql serverin daha önceki versiyonlarında uyum sağlaması için kullanılır.

**FOR ATTACH:** daha hazırlanmış veya hazır olarak alınmış veritabanları mevcut VTYS üzerinde oluşturulamadığı için görünmeyecektir.Bu şekilde var olan ama VTYS üzerinde görünmeyen veritanlarının sisteme dahil edilmesi için kullanılır.

## Lisans
- **Per Processor Licensing (İşlemci Başına Lisans) :** SQL sunucu kullanıldığı her işlemci için alınan lisans şeklidir. Bu tür lisanslama alındığında bağlanan kullanıcı sayısının önemi yoktur. Özellikle web ortamında ve büyük veri tabanlarında kullanılan SQL sunucu için oldukça idealdir.

- **Per Seat Licensing (Oturum Başına Lisans) :** Her bir SQL server için ayrı bir lisans parası ödendiği  gibi,ayrıca SQL sunucu bağlanan her bir Client için CAls lisans alınması gerekir. Küçük ve orta ölçekli işletmelerde kullanılır.