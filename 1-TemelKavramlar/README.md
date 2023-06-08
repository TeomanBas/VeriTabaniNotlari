# 1. Temel Kavramlar

- Veri olguların, kavramların, veya talimatların, insan tarafından veya otomatik yolla iletişim, yorumlama ve işleme amacına uygun bir biçimde ifadesidir.
- Genellikle, biz veri veya veri birimleri üzerindeki işlemlerimizi varlık hakkında her hangi bilgi almak için gerçekleştiririz. Veri kaydedilebilir bilinen gerçeklerdir. Örneğin bir kişinin ismi, adresi, telefon numarası gibi.

## 1.1 Klasik Dosya Yapıları
- Veri saklama birimlerinde depolana veri topluluklarına "dosya" adı verilmektedir.
- Dosyalar ise kendi içerisinde kayıtlara bölünmüştür
- Örneğin öğrencilerin bilgilerinin tutulduğu bir dosyayı düşünebiliriz.

![tablo-kayit](../img/tablo-kayit.png)

## 1.2 Dosya Sistemlerinin Sakıncaları

- **Veri Tekrarı:** Aynı veri çeşitli dosyalar birden fazla yer alabilmektedir.Buda sistemin hantallaşmasına neden olur.Mesela bir stok dosyasında stok numarasını verisinin malzeme dosyasında, fatura dosyasında ve depo girişi dosyasında yer alması gibi.
- **Verinin dosyaların hepsinde güncellenmemesi:** Veri birden fazla dosyada tekrar edilebildiği için, verinin bir dosyada güncellenip diğerlerinde güncellenmemesi Veri Bütünlüğünün (Data Integrity) bozulmasına neden olabilir. Buna bağlı olarak birbiri ile çelişen raporlar üretilebilir.
- **Belleğin tekrarlı bilgi nedeniyle israfı:** Aynı verinin birden fazla dosya içinde bulunması nedeniyle kullanılan veri hard diskte fazla
yer işgal edecek. Yani hard disk tekrarlı veriler için kullanılmış olacaktır.
- **Sadece belirli bir dilin kullanılması:** Verilerin dosya sisteminde saklandığı ortamlar için değişik programlama dillerinden bir tanesi kullanılır. Kullanılan bu programlama dili ise SQL dili gibi esnek değildir.

---
## 1.3 Veri Tabanı Nedir
- Birden çok uygulama tarafından kullanılan 
- Gereksiz yinelemelerden arınmış.
- Düzenli bir şekilde saklanan
- Birbiriyle ilşkili (uyumlu olarak) 
- Sürekli , fakat statik olmayan 
- Belirli bir amaç için bir araya getirilmiş
- VERİ TOPLULUĞU (küçük bir dünya)’dur.

Örnek: şirket, bakanlık, üniversite, market stok takip....

# 2. Veri tabanı Yönetim Sistemleri

![vtys](../img/vtys-1.png)

Veri tabanı tanımlamak, yaratmak, yaşatmak ve veri tabanına denetimli erişim sağlamak için kullanılan yazılım sistemidir.

Veri Tabanı Yönetim Sistemleri,fiziksel hafızada bilgileri çeşitli özelliklerine göre gruplandırıp şekillendirdikten sonra saklayan programlardır.VTYS, saklanan bu veriyi, Yapısal Sorgulama komutları ile insanların istekleri çerçevesinde işler,yeniden şekillendirirler. Yani, Veritabanı Yönetim Sistemi’nin bir ucunda, bilgisayar diskinde saklanan düzenlenmiş veriler, diğer ucunda ise bir kullanıcı (genellikle insan) veya istemci vardır.Aynı veri tekrar tekrar tutulmaz.

Vtys'ler ilişkili olan veriler **(Collection of interrlated data)** ve veriye ulaşmak için gerekli olan yazılımlar kümesini bünyelerinde barındırırlar.

1. **Data Redundancy (Veri Tekrarı):** Veri tekrarı azalır yada yok edilir
2. **Data Consistency (Veri Tutarlılığı):** Aynı verinin değişik yerlerde birkaç kopyasının bulunması bakım zoruluğu getirir:Bir yerde güncellenen bir adres bilgisi başka yerde güncellenmeden kalabilir ve bu veri tutarsızlığı (Data Inconsistency) yol açar.
3. **Concurrency (Veri Paylaşımı/Eş zamanlılık):** VTYS kullanılmadığı durumlarda veriye sıralı erişim yapılır yani birden çok kullanıcı aynı anda aynı veriye erişemez.Bir VTYS'de bir veriye saniyede binlerce kullanıcı erişebilir.
4. **Data Integrity (Veri Bütünlüğü):** Bir tablodan bir öğrenci kaydı silinirse öğrenci var olduğu tüm tablolardan silinmelidir.
4. **Data Security (Veri Güvenliği):** Verinin isteyerek ya da yanlış kullanım sonucu bozulmasını önlemek için çok sıkı mekanizmalar mevcuttur.Veri tabanına girmek için kullanıcı adı ve şifreyle korumanın yanı sıra kişiler sadece kendilerini ilgilendiren tabloları yada tablo içinde belirli kolonları görebilir.
5. **Data Independence (Veri Bağımsızlığı):** Programcı kullandığı verilerin yapısı ve organizasyonu ile ilgilenmek durumunda değildir.Veri Bağımsızlığı VTYS'lerin en temel amaçlarındandır.  

---

# 3. The Entity-Relationship Model (Varlık-İlişki Modeli)

- Veri çözümleme ve modellemede ilişkilerin ortaya konması için kullanılan araçtır.
- **Varlık (Entity)**: Bir alan içerisinde diğer nesnelerden ayırt edilebilen bir şey **(thing)** yada nesne **(object)** olarak tanımlanır.
- Niteliklerin kümesi **(set of attributes)** tarafından tanımlanır.
- **İlişki (relationship)**:Birden fazla varlığın arasındaki bağıntı-ilişki.
- Gorsel olarak varlık-ilişki tablosu ile gösterilir.

![varlik-iliski](../img/varlik-iliski.png)

- **Varlık (Entity):** Var olan ve diğer varlıklardan ayırt edilebilen nesnedir. (Bir kitap, öğrenci, veritabanı dersi) birer varlıktır.
- **Varlık Dizisi:** Aynı türdeki varlıklar varlık kümesini oluştururlar. Bir okuldaki tüm
öğrenciler “öğrenci” isimli varlık kümesi olarak değerlendirilir.

## 3.2 İlişki ve İlişki Modeli 
Varlıklar arasındaki bağlantıya ilişki adı
verilir.örneğin “Burak” varlığı ile “Dersler”
varlığı arasından ilişki vardır. İlişki kümesi, aynı türdeki ilişkilerin kümesidir,
bu ilişki kümesi R ile gösterilir. E1, E2, ..., En varlık kümeleri, R ise ilişkiyi
tanımlamaktadır.

E1={Ayşe,Burak}     
E2={Elektronik, İngilizce}      
Bu iki küme arasındaki ilişki, öğrenciler ve
dersler arasındaki ilişkidir. Tüm öğrencilerle
tüm dersler arasındaki ilişki kartezyen
çarpımı yapılarak ifade edilir.     
E1xE2={(Ayşe,Elektronik),(Ayşe,İngilizce),
(Burak, Elektronik),(Burak,İngilizce)}      
İki veri kümesi arasındaki geçerli tüm ilişkiler, R ilişki kümesinin bir alt kümesidir.     

![iliski-modeli](../img/iliski-modeli.png)      
- Niteliğin aldığı değerlere **(domain)** denir     
![nitelik-etkialani](../img/nitelik-etkialani.png)      

## 3.3 Türetilen Nitelik
- Bir nitelik kullanılarak, bir başka varlık nitelik
elde edilebiliyorsa bu yeni niteliğe “türetilen
nitelik” adı verilir.
- Örneğin personel varlığının “doğum tarihi” niteliğinden yararlanılarak “yaş” niteliği elde edilebilir.

## 3.4 Çok Değere Sahip Nitelik
- Bir nitelik birden fazla değer ile eşleşebiliyor
ise, “çok değere sahip nitelik” adı verilir.
- Örneğin, öğretmen varlığının dersler niteliği
birden fazla değeri kapsar. Bir öğretmen
birden fazla derse girmektedir.
- Öğrenci varlığının okuduğu kitaplar niteliği
birden fazla kitabı kapsayabilir.

## 3.5 Varlıklar Arası İlişkiler(Eşleme)
- Bir varlıkla ilişkiye girilebilecek varlıkların sayısına **eşleme sayısı** adı verilir.
- Eşleme sayısı n>=2 varlık için söz konusudur ve ikili ilişkilerin ortaya konulması açısından yararlıdır.
- A ve B gibi iki varlık kümesi arasındaki R ilişki
kümesi için eşleme durumları şu şekilde ifade edilir:       
    - **(One to One)** (Birden-bire) 
    - **(One to Many)** (Birden-çoğa)
    - **(Many to One)** (Çoktan-bire)
    - **(Many to Many)** (Çoktan-çoğa)

A varlık kümesi içindeki bir varlık, B kümesi
içindeki sadece bir varlık ile ilişkili ise birden-
bire ilişki söz konusudur.<br>
![birden-bire-iliski](../img/birden-bire-iliski.png)

A kümesi içindeki bir varlık B kümesi içindeki birden fazla varlıkile ilişkili ise, bu ilişkiye birden-çoğa ilişki adı verilir.B kümesindekibir varlık, A kümesindeki sadece bir varlık ile eşleşebilir.<br>
![birden-coga](../img/birden-cok-iliski.png)

Çoktan-bire ilişki, bir çok dersi tek bir öğretmen verebilir.<br>
![coktan-bire](../img/coktan-bire-iliski.png)

Çoktan-Çoğa ilişki en genel ilişki biçimidir.Bu ilişki herhangi bir sınırlamanın olmadığı durumlar için geçerli olacaktır.<br><br>
(burada bahsedilen konuda bir banka düşünelim banka sadece bir müşteri için bir hesap açabiliyor bu durumda bu banka için veri tabanı tasarımına göre müşteri ve hesap ilişkisi birden-bire olacaktır aynı durumda bankamız ortak hesap imkanı sunduğunu varsayarsak aile üyelerinin bir hesap üzerinde aitliği olabilir bu ise çoktan-çoğa ilişki denemektir.yani birden n>=2 kuralımıza göre herkesin bir den fazla hesabı olmuş olur bunu çoktan-çoğa olarak tanımlamış oluruz, bankamız zaten bir müşteri için birden çok hesap imkanı sunuyorsa o zaman bu bankamız için hesap ve müşteri ilişkisi yine çoktan-çoğa olmuş olur).<br>

- Varoluş Koşulu: Eğer bir x varlığının bulunması y varlığının bulunmasına bağlı ise x'in y'ye bağlı olduğundan söz edilebilir.y silinirse x'in bir anlamı kalmayacaktır.Bu durumda y bakın varlık **(dominant entity)**, x ise bağımlı varlık **(subordinate entity)** adı verilir.
    - örneğin bir müşterinin hesabı silineceğinde,bu müşterinin hesap hareketlerinin de silinmesi gerekmektedir.Hesap hareketleri hesap varolmadan var olamaz.
***
## 3.6 Anahtar
- Varlık kümesi içinde, varlıkları birbirinden ayırt etmek için kullanılan bu tür niteliklere varlık kümesinin anahtarı adı verilir. İki tür anahtar vardır.<br>
- **Süper anahtar (superkey):** Varlık kümesinde yer alan bir varlığı kesin olarak tanımlamaya yarayan anahtara süper anahtar adı verilmketedir. Bu anahtar sadece bir nitelikten oluşabileceği gibi, birden fazla niteliğin birleşiminden de oluşabilir. Süper anahtarlar süper küme oluşturur. Bir süper anahtarın herhangi bir süper kümesi daima bir süper anahtar olarak kabul edilir.
    - Örneğin SSK no süper anahtardır. Fakat isim alanı süper anahtar olamaz. SSk no ve isim alanı birlikte süper anahtar olarak kabul edilebilir.<br>
- **Aday anahtar (candidate key):** Varlık kümesinde bir varlığı tanımlamaya yarayan bir başka anahtar türü aday anahtar dır. Bir varlık kümesinin süper anahtarı bir veya daha fazla niteliğin birleşiminden oluşabilmektedir. Aday anahtar ise, süper anahtar özelliklerine sahip tek nitelikli anahtardır.<br>
- Eger bir üniversitede tüm ögrencilerin numaraları birbirinden farklı ise ögrencileri belirlemek için ögrenci numarası yeterlidir. Bu durumda ögrenci numarası ögrenci varlık kümesi için aday anahtardır. İçinde ögrenci numarası bulunan her nitelik grubu ise(ögrenci numarası, adı, soyadı gibi) ise bu varlık kümesinin süper anahtarıdır.

# 4. Varlık-İlişki Şemaları (Entity-Relationship Model)

Varlık-ilişki modeli ; Veritabanı modelleri içerisinde,varlık ve bu varlıkların birbirleri arasındaki ilişkilere dayanarak herhangi bir ön-veri olmaksızın model oluşturmakta kullanılan modeldir. Buradaki varlık; benzersiz bir şekilde tanımlanabilen
ve bağımsız var olabilme yetisine sahip nesne ya da oluşum olarak tanımlanabilir. Varlıklar , ev, araba gibi fiziksel nesneler olabileceği gibi müşteri ödemesi veya sipariş gibi soyut nesneleri de içerirler.

![varlik-iliski-sema](../img/varlik-iliski-sema.png)

Varlıkların aralarında kurulabilecek ilişki türleri aşağıdaki gibi tanımlanır ve model olarak ifade edilir.
![varlik-iliski-sema1](../img/varlik-iliski-sema1.png)

![varlik-iliski-sema2](../img/varlik-iliski-sema2.png)

![varlik-iliski-sema3](../img/varlik-iliski-sema3.png)

---

# 5. Veri Tabanı Planlama
Veritabanı tasarlamada ilk adım, tasarımın amacını ve ne için kullanılması gerektiğini belirlemektir. Veritabanından hangi  bilgiyi istediğinizi bilmeniz gerekir. Buradan, hangi konular  hakkında bilgi saklamaya gereksinim duyduğunuzu (tablolar)  ve her konu için hangi bilgileri saklamanız gerektiğini (tablodaki alanlar) belirleyebilirsiniz.

## 5.1 Tablo Nedir
Tablolar en temel Veri Tabanı nesneleridir.  Amaçları bilgi depolamaktır. Diğer bütün veri tabanı nesneleri bir yada daha çok tablonun etkileşimini sağlamak amacıyla kullanılır. Bir VT binlerce tablo içerebilir ve her bir tablonun alabileceği kayıt sayısı yalnızca sabit diskinizdeki boş alan ile sınırlıdır.

## 5.2 Tabloların Tasarlanması
Tablo yinelenen bilgileri içermemeli ve tablolar arasında bilgi yinelenmemelidir. Bu bakımdan, ilişkisel veritabanı içindeki tablo, elektronik tablo gibi düz dosya uygulamasındaki tablodan farklıdır.
![veritabani-planlama-1](../img/veritabani-planlama-1.png)

Her bilgi parçası, yalnızca bir tabloda saklanmalıdır. Bu koşulun uyulmadığı durumlarda, bir yerde güncellenen bir adres bilgisi başka yerde güncellenmeden kalabilir ve bu durum veri tutarsızlığına yol açar. Örneğin, her müşterinin adresini ve telefon numarasını bir defa ve bir tabloda saklamak en uygun tasarım biçimi olacaktır. 

![veritabani-planlama-2](../img/veritabani-planlama-2.png)

Her tablo bir konu hakkında bilgi içermelidir. Her tablo yalnızca bir konu hakkındaki gerçeği içerdiğinde, diğer konulardan bağımsız olarak her konu hakkındaki bilgiyi koruyabilirsiniz.

Örneğin, müşteri adreslerini, müşteri siparişlerinden farklı bir tabloda saklayabilirsiniz, böylece bir siparişi sildiğinizde, müşteri hakkındaki bilgiyi korursunuz.

![veritabani-planlama-3](../img/veritabani-planlama-3.png)

Microsoft Office programının Excel bileşeni gibi basit bir  Elektronik Tablolama programı, verileri genelde düz bir  dosya olarak başvurulan yalnızca tek bir tabloda depola- yabilir. Bu basit Veri Tabanları “Düz Veri Tabanı” olarak  adlandırılır.

Günümüzde hemen tüm VTYS’ler ilişkisel veri modelini  kullanırlar. Bu model verileri birden çok ilişkili tablolarda  tutabilir ve böylece “İlişkisel Veri Tabanı” olarak adlandı- rılan veri Tabanlarını oluştururlar.

![veritabani-planlama-4](../img/veritabani-planlama-4.png)

İlişkisel modelde veriler basit tablolar halinde tutulmalıdır.İlişkisel Veri Tabanlarındaki herhangi bir tabloda, birbiriyle tamamen aynı iki kayıt (row or record) bulunamaz.

Dolayısıyla; bir müşterinin aynı ürünü iki kez sipariş etmesi görünürde engellenmiştir. Bu durumu da tabloya bir alan ekleyerek çözebilirsiniz. Örneğin Sipariş Numarası

Bir Veri Tabanında bulunan farklı Tablolardaki İlişkisel Alanların Veri Tipleri ve Tanımlamaları aynı olmalıdır.

Key: Birbiriyle eş kayıtları ayırmak için kullanılan bileşenlere denir.

Tablodaki bir kaydı diğer tüm kayıtlardan ayırmak için kullandığımız bileşene, “Primary Key” adı verilir. Primary Key, o kaydı “unique” (eşsiz, benzersiz) yapar. Tüm İlişkisel  Veri Tabanlarında her bir Tablo ya da İlişkide mutlaka Primary Key olmalıdır.

![veritabani-planlama-4](../img/veritabani-planlama-5.png)

## .3 Veri Tabanı Tasarım Adımları
1. Veri Tabanının amacını belirleme,
2. Veritabanınızda gereksinim duyduğunuz tabloları belirleme,
3. Tablolarınızda gereksinim duyduğunuz alanları belirleme,
4. Anahtar alanları belirleme (her kayıttaki benzersiz değerleri tanımlama)
5. Oluşturulan Tablolar arasındaki ilişkileri belirleme,
6. Tasarımı geliştirme,
7. Veri girme ve diğer veritabanı nesnelerini oluşturma

# 6. Veri Tabanı Yönetim Sistemleri
Veri tabanı sistemi ile ilgili her türlü işletimsel gereksinimleri karşılamak için kullanılan sistem seviyesinde, karmaşık, merkezi yazılım sistemine VTYS denir. VTYS genel olarak şu olanakları sağlar:

- VT tanımlanması, gerçeklenmesi (oluşturulması), kullanımı paylaşımı
- Kontrollü veri tekrarı
- Sorgu işemede verimli erişim metodlarını kullanır.
- Çoklu kullanıcılı hizmet, veri kurtarma ve yedeklme imkanı sağlar.
- Farklı kullanıcı arayüzlerine imkan sağlar.
- Üst seviyeli karmaşık iş kısıtlamlarının tanımlanması, gerçeklenmesi ve sağlanmasına olanak sağlar.
- Güvenlik tanımlamaları ve sağlanmasını kontrol eder.
- VT sistemine, gerek işletim sistemi gerek diğer kullanıcılar (uygulama programları gibi...) doğrudan erişemez; ancak VTYS üzerinden erişebilir.

![vtys](../img/vtys-yapisi.png)

- Veri sözlüğü, veri tabanı tanımlarının (metada) saklandığı dosyalardır.
- İndex dosyları, fiziksel erişim dosyalarıdır.
- Log dosyaları güvenlik amaçlı dosyalardır.


# 7. Veri Modelleri Kategorileri(Categories of Data Models)
- Kavramsal (üst düzey, anlamsal) veri modelleri **(Conceptual (high-level, semantic) data models)**: Varlık tabanlı veya nesne tabanlı veri olarak da adlandırılır.
- Uygulama (temsili) veri modelleri **(Implementation (representational) data models:)**: birçok ticari DBMS uygulaması tarafından kullanılır (örn.birçok ticari alanda kullanılan ilişkisel veri modelleri).
- Fiziksel (düşük seviyeli, dahili) veri modelleri **(Physical (low-level, internal) data models)**: Verilerin nasıl işlendiğine ilişkin ayrıntıları açıklayan kavramlardır. bilgisayarda saklanır.

## 8.1 Şemalar ve Örnekler
- **Database Schema** (Veritabanı şeması):
Bir veritabanının açıklaması. Veritabanı yapısının açıklamalarını, veri türlerini,
ve veritabanındaki kısıtlamalar.
- **Schema Diagram** (Şema diyagramı):
Bir veritabanının (çoğu yönünün) açıklayıcı bir görüntüsü şema.
- **Schema Construct** (Şema Yapısı):
Şemanın bir bileşeni veya içindeki bir nesne şema, ör. ÖĞRENCİ, DERS.
- **Database State** (Veritabanı durumu):
Belirli bir veritabanında saklanan gerçek zamanlı verilerdir ve bu verilerin toplanmasını içerir.Bu terim bireysel veritabanı bileşenlerine de uygulanır, Örneğin. kayıt örneği, tablo örneği, varlık örneği

![ornek-db-schema](../img/ornek-database-schema.png)

# 8. Veritabanı Kullanıcıları
- Yönetici (Admin)
    - VT erişimi ve kullanımı kontrol eder
    - Sistem için gerekli s/w,h/w desteğini belirler
    - Güvenlik açığını, verimsiz kaynak kullanımını belirler
- Tasarımcı (Designer)
    - Verinin her aşamada modellenmesi ile ilgilenir.
    - Gerçekleme öncesi aşamalardan sorumludur. VT
    - Kullanıcıları ile haberleşir gereksinim analizi yapar.
    - Genel olarak bütün kullanıcılar ile yakın temas vardır.
- Son kullanıcılar (End user)
- VT sistem yazılımcısı

# 9. DBMS Dilleri
## 9.1 Veri Tanımlama Dili - Data Definition Language(DDL)
- Veritabanı kavramsal şeması belirtmek için veritabanı tasarımcısı tarafından kullanılır.
- Aynı zamanda bir çok database yönetim sisteminde kullanılır.
## 9.2 Veri Manipülasyon Dili - Data Manipulation Language(DML)
- (High-Level or Non-procedural Languages) :örneğin sql yüksek seviyeli ve prosedürel olmayan bir dildir.
    - Bir programala dili bağımsız bir şekilde kullanılabilir veya dbms içerisinde kullanılıyor olabilir.
- (Low Level or Procedural Languages): düşük seviyeli diller yada procedural diller;
    - Bir programlama dili içerisinde barındırılıyor olmalıdır.

## 9.3 Dbms programalama arayüzleri
- DML içerisinde gömülü diller;
    - Embedded Approach:sql(c,c++),sqlj(java için)
    - Proceedure Call Approach:odbc,jdbc(java için)
    - Database Programing Language Approach:oracle için pl/sql,microsoft için t/sql

# 10. Veritabanı Sistem Araçları
- belirli işlevleri gerçekleştirmek için:
    - Dosyalarda depolanan verileri bir veritabanına yükleme. Veri dönüştürme araçlarını içerir.
    -  Veritabanını periyodik olarak diske yedekleme.
    - Veritabanı dosya yapılarının yeniden düzenlenmesi.
    - Rapor oluşturma yardımcı programları.
    - Performans izleme araçları.
    - Sıralama, kullanıcı izleme, veri sıkıştırma vb. gibi diğer işlevler.
- Veri sözlüğü / havuzu:Şema açıklamalarını ve tasarım gibi diğer bilgileri depolamak için kullanılır.kararlar, uygulama program açıklamaları, kullanıcı bilgileri, kullanım standartlar vb.
- Uygulama Geliştirme Ortamları araçları:
    - PowerBuilder (Sybase),
    - JBuilder (Borland),
    - JDeveloper 10G (Oracle)

# 11. DBMS Avantajları
- Üstveri(metadata):Veri tabanında saklanan verinin tanımları (meta data) ve diğer kısıtlamalar da saklanıyor. Farklı küçük dünyalar aynı veri tabanında saklanabiliyor. (Buna Program-veri bağımsızlığı denir.)Dosya işleme uygulaması sadece o uygulama için yazılmış.
- Kayıt saklama ve erişimde:
    - “güçlü” veri yapıları ihtiyacı
    - Tampon kullanımı
- Program-operasyon bağımsızlığı ihtiyacı:
    - Verinin farklı görünümü (multiple views)
    - Paylaşım (sharing) ve çoklu hareket işleme (transaction processing) imkanı
- Eşzamanlılık
- Veri kurtarma ve geri sarma
- Güvenlik ve yetkilendirme
