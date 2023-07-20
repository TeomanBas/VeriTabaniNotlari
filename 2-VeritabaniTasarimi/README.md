# UML (Unified Modeling Language)
- yazılım ve donanımların bir arada düşünülmesi gereken,
- Zor ve karmaşık programların,
- Özellikle birden fazla yazılımcı tarafından kodlanacağı durumlarda,
- Standart sağlamak amacıyla endüstriyel olarak geliştirilmiş grafiksel bir dildir.
- Programlama dili- Diyagram çizme ve ilişkisel modelleme dili
- UML 'in doğuşu son yıllarda yazılım endüstrisindeki en büyük gelişmelerden biri olarak kabul edilebilir.
- UML 1997 yılında yazılımın, diyagram şeklinde ifade edilmesi için bir standartlar komitesi tarafından oluşturuldu. 
- Diğer dallardaki mühendislerin standart bir diyagram çizme aracı -Programcıların UML
- UML yazılım sisteminin önemli bileşenlerini tanımlamayı, tasarlamayı ve dokümantasyonunu sağlar
- Yazılım geliştirme sürecindeki tüm katılımcıların (kullanıcı, iş çözümleyici, sistem çözümleyici, tasarımcı, programcı,...) gözüyle modellenmesine olanak sağlar,
- UML gösterimi nesneye dayalı yazılım mühendisliğine dayanır.
- Yazılımın geniş bir analizi ve tasarımı yapılmış olacağından kodlama işlemi daha kolay ve doğru olur
- Hataların en aza inmesine yardımcı olur
- Geliştirme ekibi arasındaki iletişimi kolaylaştırır
- Tekrar kullanılabilir kod sayısını artırır
- Tüm tasarım kararları kod yazmadan verilir
- Yazılım geliştirme sürecinin tamamını kapsar “resmin tamamını” görmeyi sağlar 
![uml-ornek](./img/grafiksel-gosterim.png)
- Bir yazılım sistemi oluşturulurken sadece tek boyutta analiz ve modelleme yapılmaz. 
- Bu amaçla; yazılım geliştirme sürecinin farklı aşamalarında farklı UML diyagramlarını kullanmak gerekmektedir.
- 4+1 bakış, bu diyagramları sınıflandırmak ve yazılım yaşam çevrimindeki kullanım yerlerini ortaya koymak için kullanılan bir kavramdır.
- User View
    - Müşteri gereksinimlerini ortaya koymak ve müşteriye, sistemi tanıtmak amacı ile kullanılan bakış açısıdır. 
    - Bazı kaynaklarda; kullanım senaryosu (use case) bakışı olarak da açıklanmaktadır. 
    - Bu amaçla "kullanım senaryosu" (use case) diyagramları kullanılmaktadır.
- Structural View
    - Sistemin nelerden meydana geldiğini gösteren bakış açısıdır. 
    - Bu amaçla; "sınıf" (class) diyagramları ve "nesne" (object) diyagramları kullanılmaktadır.
- Davranış Bakışı (Behavioral View)
    - Bu amaçla; «ardışık" (sequence), "işbirliği" (collaboration), "durum« (state)  ve «etkinlik" (activity) diyagramları kullanılmaktadır.
- Implementation View
    - Sistemin alt modüllerini ortaya koyan bakış açısıdır. 
    - Bu amaçla; "bileşen" (component) diyagramları kullanılmaktadır.
- Environment View
    - Donanımın, fiziksel mimarisinin ortaya konduğu bakış açısıdır. 
    - Bu amaçla; "dağıtım" (deployment) diyagramları kullanılmaktadır. 
- **Sınıf diyagramları**
    - Sınıf Diyagramları UML 'in en sık kullanılan diyagram türüdür.
    - Sınıflar nesne tabanlı programlama mantığından yola çıkarak tasarlanmıştır.
    - Sınıf diyagramları bir sistem içerisindeki nesne tiplerini ve birbirleri ile olan ilişkileri tanımlamak için kullanılırlar.
    - Sınıfların adı,nitelikleri ve işlevleri vardır.Bunlara ek olarak "notes","constraints".
    ![siniflar](./img/siniflar.png)
    ![siniflar-1](./img/siniflar-1.png)
    - Sınıflar arasındaki ilişkiyi göstermek için iki sınıf arasına düz bir çizgi çekilir.
    - İlişkiyi gösteren çizginin üzerine ilişkinin türü yazılır.
    ![siniflar-2](./img/siniflar-1.png)
    - Bazı durumlarda sınıflar arasındaki ilişki, bir çizgiyle belirtebilecekşekilde basit olmayabilir.
    - Bu durumda ilişki sınıfları kullanılır.
    - İlişki sınıfları bildigimiz sınıflarla aynıdır.
    - Sınıflar arasındaki ilişki eğer bir sınıf türüyle belirleniyorsa UML ile gösterilmesi gerekir.
    ![siniflar-3](./img/siniflar-3.png)
    ![ornek-sinif-diyagram](./img/ornek-sinif-diagram.png)
- **Nesne diyagramlari**
    - Nesne Diyagramları nesneler ve aralarındaki bağıntıları gösterirler.
    - Nesneler, sınıfların somut örnekleri olduğundan sınıf özelliklerinin değer almış halidirler. 
    ![ornek-nesne-diyagram](./img/ornek-nesne-diyagram.png)
- **Bileşen diyagramları**
    - Bileşen Diyagramları yazılım sistemine daha yüksek bir seviyeden bileşenler seviyesinden bakabilmeyi sağlar.
    - Bunlar sistemdeki sınıflar, çalıştırılabilen program parçaları kütüphane bileşenleri veya veritabanı tabloları olabilir.
    - Bu gösterim bileşenler, arayüzler ve bağımlılık ilişkilerinden oluşur ve sistemin fiziksel gösterimini sağlar.
    ![ornek-bilesen-diyagram](./img/ornek-bilesen-diyagram.png)
- **Dağılım diyagramları**
    - Sistemin çalışma platformundaki durumlarını gösterirler.
    - Sistemdeki yürütülebilen parçalar, kütüphaneler, tablolar ve dosyalar gibi bileşenlerin dağılımını belirler.
    - Bu diyagramlar, sistem donanım mimarisinin gösterilmesi, gerekli donanım bileşenlerinin tanımlanması amacıyla kullanılabilirler.
    ![ornek-dagilim-diyagramlari](./img/ornek-bilesen-diyagram.png)
- **Kullanım senaryosu diyagramları**
    - Kullanım senaryosu diyagramları sistemin işlevsel gereksinimlerinin ortaya çıkarılması için kullanılır.
    - Sistemin kullanıcısının bakış açısıyla modellenmesi amacıyla kullanılır.
    - Kullanım senaryosu diyagramları sistemin kabaca ne yaptığı ile ilgilenir, kesinlikle nasıl ve neden yapıldığını incelemez.
    - Kullanım senaryosu  
        - aktörler (sistem dışı aktörler –kullanıcılar veya diğer sistemler)
        - senaryolar (kullanıcı tarafından başlatılan çeşitli olaylar dizisi)
        - Aktör genellikle “insan” olarak düşünülmekle birlikte başka “sistem” ve “donanım” da olabilir.
        - Aktör sistemi “uyarır” ,işlevleri haricen “tetikler”(aktif) yada sistemden “uyarıcı alır”(pasif).
        - Aktör sistemin parçası değildir, “harici” dir.
        - Aktörler belirlenir
            - Her aktörün “ne” yapmak istediği belirlenir
            - Her aktörün “ne” si için “ana senaryo özeti” çıkarılır
            - Tüm sistemin ana senaryo özetleri incelenir, ayıklanır, birleştirilir
            - Her senaryo için ana işlem adımları belirtilir.
        ![kullanim-senaryo-diyagram](./img/kullanim-senaryo-diyagram.png)
- **Ardışık diyagramlar**
    - Sistem içindeki nesnelerin zaman içindeki ardışık aksiyonlarını gösterirler
    - Sistemin dinamik bir resmini çizer
    - Aktörün hayat süresi boyunca gerçekleştirdiği işlemler gösterilir.
        - Aksiyonlar->dikdörtgen
        - Etkileşimler->mesajlar
    ![ardisik-diyagram](./img/ardisik-diyagram.png)
- **İş birliği diyagramları**
    - Parçaların bütünü nasıl oluşturduğunu ve sistemin dinamik davranışını göstermek amacıyla kullanılır.
    - Nesneler arasındaki bağıntıları sıralı  mesajlar şeklinde gösterirler
    - Ardışık diyagramlardan zaman kavramının olmayışı ile farklılık gösterirler.
    ![isbiligi-diyagram](./img/isbirliği-diyagram.png)
- **Durum diyagramları**
    - Sistemdeki nesnelerin anlık durumlarını göstermek amacıyla kullanılırlar.
    - Sistemin küçük alt sistemlere veya nesnelere ilişkin dinamik davranışlarının ortaya çıkartılması amacıyla yararlanılır
    - Sistemin durumları ve bunların birbirlerini tetikleme ilişkileri belirtilir
    ![durum-diyagram](./img/durum-diyagram.png)
- **Etkinlik Diyagramları**
    - Sistemdeki nesnelerin faaliyetlerini göstermek amacıyla kullanılırlar
    - Durum diyagramlarının bir alt kümesi olarak değerlendirilen etkinlik diyagramları, iş akışlarının grafiksel gösteriminde kullanılırlar.
    ![etkinlik-diyagram](./img/etkinlik-diyagramlari.png)
# Veritabanı Tasarımı
- **Tasarım yapılırken izlenecek adımlar**
    - **Gereksinimler**
        - Sistemin tam ve doğru tanımının yapılması
        - Kullanıcı kitlesinin tanımlanması
        - Kullanıcı gereksinimlerinin belirlenmesi
        - Sistemin beklenen işlevleri yerine getirmesi için sahip olması gereken özellikler.
            - kullanıcıların mevcut sistemde kullandıkları yöntemler
            - Sistem yapısı
            - iş kuralları
            - yaşanan problemler
    - Oluşturulacak sistemin nelerden oluşması gerektiği ve hangi işlemlerin hangi aşamada yapıldığı belirlenerek rapor tutulmalıdır.
    - Oluşturulan bu metne göre varlık ilişki modelinin oluşturulması
    - Varlık ilişki modelinin tablolara dönüştürülerek tabloların oluşturulması
    - Normalizasyon kurallarına uygun olmayan durumlarda tabloların bölünmesi 
    - ilişkilerin kurulması
    - Verilerin daha üst seviyede gösterilmesi 
    - KUllanılan model: ER (entity relationship- varlık ilişki)
    - Varlık ilişki modeli kavramsal tasarımda kullanılan popüler model
    - Vtys den bağımsız modelleme yapılır
    - Varlık ilişki modeinde kullanılan şekiller veritabanın şematik olarak tasarlanmasını sağlar
    - Temel üç öğe vardır.
        - **Varlık :**
            - Modelin en temel öğesi
            - Var olan ve benzerinde ayırt edilen herşey varlık;öğrenci,ders,kitap,araba
            - Birden fazla varlığın oluşturduğu kümeye varlık kümesi denir.
            - Model içerisinde dikdörtgen ile gösterilir.varlığın ismi içine yazılır.
            ![varlik-1](./img/varlik.png)
        - **Nitelik :** 
            - varlıkların her bir özelliği nitelik olarak ifade edilir ogrNo,ad,soyad,dersKod,dersAd
            - Model içerisinde oval gösterilir.Niteliğin ismi içine yazılır.
            - Nitelik bulunduğu varlığa düz çizgi ile bağlanır
            - Varitabanında her tablonun bir sütununu ifade eder
            - Niteliğin değeri her bir varlık için farklıysa anahtar nitelik olarak belirlenir.Şema içerisinde altı çizilidir.
            - Birden fazla değere sahip nitelikler çok değerli niteliklerdir. ve çift çizgi ile gösterilir.
            ![nitelik-1](./img/nitelik-1.png)
            - Domain(Etki alanı);Niteliğin alabileceği değer aralığıdır.Örneğin öğrenci notları 0-100 arasında olmalıdır.Etki alanı ER şemasında gösterilmez.
        - **ilişki :** Öğrenci.ogrNno <-- 1-n --> Notlar.ogrNo
            - Farklı varlık kümeleri arasındaki ilişkileri ifade eder.Öğrenci ve dersler arasında ders alma ilişkisi vardır.
            - Model içerisinde eğik dörtgen olarak gösterilir.ilişkinin ismi içerisine yazılır.
            - Baklava dilimi ilişkili olduğu varlıklara düz çizgi ile bağlanır.
            - Varlıklar arasında 1-1,1-n ve n-m ilişki olabilir
            - İki varlık kümesi arasında birden fazla ilişki olabilir.
            ![iliski-1](./img/iliski-4.png)
            - Varlık kümeleri arasında oluşturulan ilişlilerde ilişki sonucu nitelikler oluşabilir.bu niteliklere tanımlayıcı nitelik denir.Örnek;gösterime giren bir filmin sinemalarda gösterim saati ve tarihi farklıdır.
            ![iliski-3](./img/iliski-5.png)
            - ilişkiler genelde farklı varlık kümelerinde olmasına rağmen bazen tek bir varlık kümesinde olabilir.Bu tür ilişkilere recursive ilişki denir.
            ![recursive-ilski](./img/recursive-iliski.png)
            - Bir varlık kümesi anahtar niteliğe sahip değilse zayıf varlık kümesi olarak adlandırılır.
            - Zayıf varlık kümeleri çift çizgili dörtgen ile gösterilir.
            ![zayif-varlik-kumesi](./img/zayif-varlik-kumesi.png)
            - **Bire-bir ilişkilerin tabloya dönüşümü**
                - Varlık kümelerini tablolara dönüştür
                - Nitelikleri tabloların sütunlarına dönüştür.
                - İlişkide bir varlık kümesinnin birincil anahtarı diğer varlık kümesinin yabancı anahtarı olarak belirlenir.
                ![birebir-donusum](./img/birebir-donusum.png)
            - **Bire-cok ilişkilerin tabloya dönüşümü**
                - Varlık kümelerini tablolara dönüştür
                - Nitelikleri tabloların sütunlarına dönüştür
                - ilişkilerin n tarafındaki tabloya 1 tarafındaki tablonun birincil anahtar sütunu yabancıl anahtar olarak eklenir.
                - ilişkilerden tanımlayıcı nitelik bulunuyorsa tanımlayıcı nitelikler ilişkinin n tarafındaki tabloya sütun olarak eklenir.
                ![bire-cok-iliski](./img/bire-cok-iliski-donusumu.png)
            - **Çoğa-çok ilişkilerin tabloya dönüşümü**
                - Varlık kümelerini tablolara dönüştür
                - Oluşturulan ilişki isminde tablo oluşturulur.
                - Nitelikleri tabloların sütunlarına dönüştür
                - İlişkiyi oluşturan tabloların birincil anahtarları ilişkiyi oluşturan tabloya yabancıl anahtar olarak eklenir.
                - İlişkide oluşturulan tablonun birincil anahtarı oluşturulan yabancıl anahtarların birleşiminden oluşur.Bu şekilde oluşturulan birincil anahtar cevap vermezse yeni bir alan eklenir ve birincil anahtar yapılır.
                ![cogacok-iliski-donusumu](./img/coga-cok-iliski-donusumu.png)
            - **Çok değerli niteliklerin tabloya dönüşümü**
                - Varlık kümeleri tablolara dönüşür
                - Nitelikleri tabloların sütunlarına dönüştür
                - Çok değer içeren nitelik için tablo oluştur.
                - Oluşan tabloya çok değerli niteliği ve bağlı bulunduğu varlığın birincil anahtarını yabancıl anahtar olarak ekle
                - Oluşan tablonun birincil anahtarı varlığın birincil anahtarı ve çok değerli niteliğin birleşiminden oluşmaktadır.
                ![cok-degerli-niteliklerin-donusumu](./img/cok-degerli-niteliklerin-donusumu.png)
# Mantıksal Model
**varlıklar**
![mantiksal-model-1](./img/mantiksal-model-1.png)
![mantiksal-model-2](./img/mantiksal-model-2.png)
**zayıf varlıklar**
![mantiksal-model-3](./img/mantiksal-model-3.png)
**alt sınıflar**
![mantiksal-model-4](./img/mantiksal-model-4.png)
**Birleşim**
![mantiksal-model-5](./img/mantiksal-model-5.png)
**birden falza değer alan nitelikler**
![mantiksal-model-6](./img/mantiksal-model-6.png)
**birleşik nitelik**
![mantiksal-model-7](./img/mantiksal-model-7.png)
**ikinci derece bağıntılar bire-bir**
![mantiksal-model-7-1](./img/mantiksal-model7.png)
**ikinci derece bağıntılar bire-çok**
![mantiksal-model-8](./img/mantiksal-model-8.png)
**ikinci derece bağıntılar çoğa-çok**
![mantiksal-model-9](./img/mantiksal-model-9.png)
**birinci derece bağıntılar bire-bir**
![mantiksal-model-10](./img/mantiksal-model-10.png)
**birinci derece bağıntılar bire-çok**
![mantiksal-model-11](./img/mantiksal-model-11.png)
**birinci derece bağıntılar çoğa-çok**
![mantiksal-model-12](./img/mantiksal-model-12.png)
**n'li bağıntılar**
![mantiksal-model-13](./img/mantiksal-model-13.png)
**örnek veritabanı mantıksal modeli**
![mantiksal-model-14](./img/mantiksal-model-14.png)
****
![mantiksal-model-15](./img/mantiksal-model-15.png)



# Normalizasyon
**Normalizasyon;** veritabanı tasarım aşamasında veri tekrarını veri kaybını veya veri yetersizliğini önlemek için gerçekleştirilen işlemlerdir.
Normalizasyon tanım olarak ise;**(Ayrıştırma)**, veritabanlarında çok fazla sütun ve satırdan oluşan bir tabloyu tekrarlardan arındırmak için daha az satır ve sütun içeren alt kümelerine ayrıştırma işlemidir.Normalizasyon yapılırken uyulması gereken kuralların her birine normal form adı verilir.
- Birinci Normal Form (First Normal Form)
- İkinci Normal Form (Second Normal Form)
- üçüncü Normal Form (Third Normal Form)

ilk üç düzey ihlal edilirse;
- kayıt güncelleme,
- kayıt silme,
- kayıt bulmada zorluk çekilir.

3NF de olan tablolar 1NF ve 2NF ye uygundur.2NF olan tablolarda 1NF'YE uygundur.

- Veri bütünlüğünün sağlanması 
    - gereksiz veri tekrarını önlyerek verilerdeki bozulmaları önlemek
    - Update/Delete işlem kısıtları
        - Yabancıl anahtar kısıtı ile raferans alınan tablodaki değer üzerinde değişiklik yada silme işlemi yapılacağında ne tür işlemlerin yapılabileceği ile ilgili kısıtır
            - **No Action**
                Yabancıl anahtar tarafından referans verilen değer silinmeye ya da değiştirilmeye çalışıldığında işlem gerçekleşmez.
                ```sql
                CREATE TABLE yarismacilar(
                no INT(4) PRIMARY KEY,
                ad VARCHAR(30),
                soyad VARCHAR(30),
                iladi CHAR (20) NOT NULL,
                CONSTRAINT FK_iladi FOREIGN KEY (iladi) REFERENCES iller(adi) ON DELETE NO ACTION  
                );
                ```
            - **Set Null**
                Yabancıl anahtar tarafından referans verilen değer silinmeye ya da değiştirilmeye çalışıldığında, yabancıl anahtarın bulunduğu tablodaki ilgili alana boş değer atanır.
                ```sql
                CREATE TABLE yarismacilar(
                no INT(4) PRIMARY KEY,
                ad VARCHAR(30),
                soyad VARCHAR(30),
                iladi CHAR (20) NOT NULL,
                CONSTRAINT FK_iladi FOREIGN KEY (iladi) REFERENCES iller(adi) ON DELETE SET NULL
                );
                ```
            - **Cascade**
                Yabancıl anahtar tarafından referans verilen değer silinmeye ya da değiştirilmeye çalışıldığında, yabancıl anahtarın bulunduğu tablodaki ilgili alana değişiklik yansıtılır.
                ```sql
                CREATE TABLE yarismacilar(
                no INT(4) PRIMARY KEY,
                ad VARCHAR(30),
                soyad VARCHAR(30),
                iladi CHAR (20) NOT NULL,
                CONSTRAINT FK_iladi FOREIGN KEY (iladi) REFERENCES iller(adi) ON DELETE CASCADE
                );
                ```
            - **Set Default**
                Yabancıl anahtar tarafından referans verilen değer silinmeye ya da değiştirilmeye çalışıldığında, yabancıl anahtarın bulunduğu tablodaki ilgili alana daha önceden tanımlanmış olan varsayılan değer atanır.
                ```sql
                CREATE TABLE yarismacilar5(
                no INT(4) PRIMARY KEY,
                ad VARCHAR(30),
                soyad VARCHAR(30),
                iladi CHAR (20) NOT NULL,
                CONSTRAINT FK_iladi FOREIGN KEY (iladi) REFERENCES iller(adi) ON DELETE SET DEFAULT
                );
                ```
        - Tanımlamalı veri bütünlüğünün üç türü vardır.
            1. Alan bütünlüğü(domain) : Alan kısıtları bir veya birkaç sütun ile ilişkilidir. Temel amaç sütunun ya da birkaç sütunun tanımlanan kritere uygun olmasıdır.  Tabloya yeni satır eklendiğinde ya da var olan satırlardan birisi update edildiğinde kısıt gerekli kontrolü yapar.
            2. varlık bütünlüğü(entity) : Varlık kısıtları satırlarla ilgilidir. Bu tarz kısıtlar tüm sütunu dikkate almak yerine özellikle tek bir satır ile ilişkilidir. Bir satırın bir kolonundaki bilginin diğer hiç bir satırda bulunmaması garanti altına alır. 
            3. Referans bütünlüğü (Referential) : Bir sütundaki bilginin diğer bir sütun ile eşleşmesi zorunluluğunu sağlayarak bütünlüğü korur. Eşleşen sütunlar farklı iki tablonun sütunları olabileceği gibi aynı tablonun sütunları da olabilir.
            ![tanimsal-butunluk](./img/tanimsal-veri-butunluk.png)
        - Rule 
            Check constraint ile aynı işi yapan kurallar oluşturulabilir. Constraint’ten farkı tablodan ayrı bir nesne olarak oluşturulmasıdır Bu nedenle oluşturulduktan sonra hangi tablonun hangi sütunu ile ilişkili olduğu belirtilmek üzere bağ kurulmalıdır.
        - Default
            Default nesnesi default constraint ile aynı işleve sahiptir. Constraint’ten farkı ayrı bir nesne gibi derlenmesidir. Default nesnesine destek verilmesinin nedeni geriye dönük uyumluluğu sağlamak içindir.
        - Veri Bütünlüğü ne kadar alt katmanda çözülürse o kadar iyi olur.
        ![veri-butunluk-2](./img/veri-butunluk-1.png)

- Uygulamadan Bağımsızlık
    - Uygulama değişse bile veritabanı tutarlı olarak çalışmalı
- Performansı Artırmak
    - Veri tekrarı en aza iner ve arama hızlı olur.

## FONKSİYONEL BAĞIMLILIK
R ilişkisi X ve Y nitelik kümelerinden oluşmaktadır.Eğer X nitelik kümesininin değerleri Ynitelik kümesinin değerlerini belirliyorsa Yniteliği x niteiğine fonksiyonel olarak bağımlıdır. Ve durumlarda da fonksiyonel  bağımlıdır.ve X→Y şeklinde gösterilir.X in her bir değeri Y kümesininin bir değerine  karşılık deldiği durumlarda da fonksiyonel bağımlılık söz konusudur. Eğer x niteik kümesinden  bir nitelik çıkarıldığı halde bağımlılık devam eidyorda kismi bağımlılık söz konusudur.

**Örnek:** öğrencilere ait bölüm ve sınav bilgilerini  tutan bir tablo ogr_no,bolum_kodu,bolum_adi,ders_kodu ve sınav sütunlarından oluşmaktadır.aşağıda bu tabloya ait fonksiyonel bağımlılıklar gösterilmiştir.

OGRENCI(ogr_no,bolum_kodu,bolum_adi,ders_kodu ,sınav) bu tablo için her bir öğrenci aynı dersi bir kez alabileceği için ve veri takrarını önlemek için ogr_no ve ders_kodu için birleşik anahtar olarak tanımlanmıştır.
Bu tablo üzerindeki bağımlılıklar aşağıda verilmiştir.

Bolum ve bolum_kodu bilgilerinin oluşabilmesi için ogr_no tanımlanması gerekmektedir.bu nedenle ogr_no →bolum_kodu,bolum bağımlılığı vardır.

Bolum→ bolum_kodu bağımllılığı vardır.Bu bağımlılık anahtar sütuna bağımlı olmadığı için geçişli bağımlılıktır.

Sınav bilgisinin var olması öğrenci ve derse bağımlı olduğu için (ogr_no ders_kodu)→ sınav bağımlılığı vardır.

## 1NF
- Tekrarlanan sütun yapıları olmamalıdır.
- Birden fazla bilgi tek bir sütunda olamaz.
- Bir alan içerisindeki bilgi özel karakterlerle ayrılarak tutulmamalıdır.

|TELEFON TABLOSU||
|---|---|
|ADSOYAD|TELEFON|
|isim1 soyad1|1111,2222|
|isim1 soyad1|2222|
|isim2 soyad2|3333,4444|
|isim2 soyad2|4444|
|isim3 soyad3|5555|

|ADRES TABLOSU|||
|---|---|---|
|AD SOYAD|ADRES|
|isim1 soyad1|istanbul|bursa|
|isim1 soyad1|izmir||
|isim2 soyad2|ankara||

**1NF HALİNE GETİRDİKTEN SONRA**

|TELEFON TABLOSU|||
|---|---|---|
|AD|SOYAD|TELEFON|
|isim1|soyad1|1111|
|isim1|soyad1|2222|
|isim2|soyad2|3333|
|isim2|soyad2|4444|
|isim3|soyad3|5555|

|ADRES TABLOSU|||
|--|--|--|
|AD|SOYAD|ADRES|
|isim1|soyad1|istanbul|
|isim1|soyad1|izmir|
|isim2|soyad2|ankara|

**Ornek**
Aşağıdaki gibi bir tablo olsun
|isim|soyad|telefon|
|--|--|--|
|isim1|soyad1|1111|
|isim2|soyad2|2222|
|isim3|soyad3|3333|

bu tabloda bir kişinin telefon numarasınn güncellenmesi istendiğinde 
|isim|soyad|telefon|
|--|--|--|
|isim1|soyad1|1111|
|isim2|soyad2|2222|
|isim3|soyad3|3333|
|isim1|soyad1|1234|

şeklinde bir tablo yapısı olmuş olur burada veri tekrarı vardır. bu veri tekrarını önlemek için her bir kişi için bir no verilebilir ve telefon update sorugusu ile güncellenebilir.
|no|isim|soyad|telefon|
|--|--|--|--|
|1|isim1|soyad1|1234|
|2|isim2|soyad2|2222|
|3|isim3|soyad3|3333|

ancak bir kişi için iki farklı telefon numarası eklenmek isterse bu tablo yetersiz kalacaktır ve yeni bir sütun oluşturulacaktır.
|no|isim|soyad|telefon1|telefon2|
|--|--|--|--|--|
|1|isim1|soyad1|1234|1111|
|2|isim2|soyad2|2222||
|3|isim3|soyad3|3333||

bu şekilde telefon numarası eklenmiş olabilir ve kullanışlı olabilir ancak bu telefon2 verisine sahip olmayan kullanıcılar için de bir telefon2 sütunu eklemiş ve tabloda bulunan her kişi için bellekte içi boş yani null dahi olsa bir yer ayrıldığı anlamına gelir buda belleğin verimsiz kullanılmasına neden olur.Bu sorunu çözmek için aşağıdaki şekilde telefon tablosu oluşturulabilir ve kişiler tablosundan telefon sütunları kaldırılabilir.

|no|isim|soyad|
|--|--|--|
|1|isim1|soyad1|
|2|isim2|soyad2|
|3|isim3|soyad3|

|no|telefon|
|--|--|
|1|1111|
|2|2222|
|3|3333|
|1|1234|



**SORUNLAR**<br>
- Veri ekleme
    - Eklenen verinin daha önce olup olmadığının kontrolü zor
- Veri güncelleme
    - Kişiye ait bir telefon numarası güncellenmek istediğine hangisinin güncelleneceği
- Veri silme
    - Silinecek verinin hangisini olduğu


## 2NF
1NF de karşılaşılan sorunları çözmek için 2NF kuralına uygun olmalıdır.2NF nitelikler arasında fonksiyonel bağımlılıktan yararlanılarak tabloların birden fazla tabloya dönüştürülmesi ile sağlanır.
![2NF](./img/2NF.png)
- Tabloda bir birincil anahtar olmalı ve anahtar olmayan sütunlar birincil anahtara bağımlı olmalı
- Birincil anahtar birden fazla sütundan oluşuyorsa tablodaki veriler her iki sütuna da bağımlı olmalıdır.

Öğrenci ve not tablosunda Ad,Bolum Sütunları gereksizdir
bunların başka tablolardan derkodu kullanılarak şekilmesi gerekir bu güncelleme sorunlarına yol açar bunun için tablonun bölünmesi gereklidir.

Tabloda anahtar sütun iki farklı sütun bilgisindeki verilerden oluşuyorsa diğer sütunlardaki verilerin bu iki sütunada bağlı olmalı gereklidir.
![ikisutunluanahtar](./img/1NF-iki-sutunlu-anahtar.png)

**Öğrenci tablosunun 2NF kuralına uygun hali**
![ogrenci-tablo](./img/2NF-ogrenci-tablo.png)
**Satış tablosunun 2NF kuralına uygun hali**
![2NF-musteri](./img/2NF-musteri-tablo.png)
![2nf-satis](./img/2NF-satis-tablo.png)

## 3NF
**2NF sorunları**<br>
![2nf-sorunlari](./img/2NF-sorunlari.png)
Anahtar olmayan sütunlar anahtar sütuna tam bağımlı olmalı.Anahtar olmayan sütuna bağımlı olmamalıdır.
2NF’de sadece anahtar olmayan bir sütun başka bir tablonun anahtar sütunu veya bulunduğu tablonun sütunlarıyla ilgili olmalıdır.
Veya bir tablo için anahtar  olmayan bir sütun anahtar olmayan başka hiçbir sütuna bağımlı olamaz ayrıca veritabanında ilişkiler 2NF kuralına uymalıdır.
![2nf-cozum](./img/2NF-yi-3NF-donusturmek.png)

## ORNEKLER
|musterino|urunid|sehir|sehikodu|miktar|
|--|--|--|--|--|
|m123|u1|istanbul|1|100|
|m123|u2|istanbul|1|150|
|m152|u2|tokat|2|10|
|m126|u3|samsun|3|200|
|m128|u1|tokat|2|255|

bu tablo 1nf uygundur ancak 2nf uygun değildir.

|musterino|urunid|miktar|
|--|--|--|
|m123|u1|100|
|m123|u2|150|
|m152|u2|10|
|m126|u3|200|
|m128|u1|255|

|musterino|sehir|sehirkodu|
|--|--|--|
|m123|istanbul|1|
|m152|tokat|2|
|m126|samsun|3|
|m128|tokat|2|

bu tablo 2nf uygundur ancak 3nf için uygun değildir

|musterino|urunid|miktar|
|--|--|--|
|m123|u1|100|
|m123|u2|150|
|m152|u2|10|
|m126|u3|200|
|m128|u1|255|

|musterino|sehirkodu|
|--|--|
|m123|1|
|m152|2|
|m126|3|
|m128|2|

|sehirkodu|sehir|
|--|--|
|1|istanbul|
|2|tokat|
|3|samsun|

bu tablolar 3 nf kuralına uygundur.

## BOYCE CODD NORMAL FORM
Eğer bir tablo 3NF kuralına uygunsa ve her belirleyici aday anahtar ise tablo BCNF kuralına uygundur.Belirleyici bağımlılık işaretinin solundaki özellik veya özellikler grubudur.Örneğin a → b belirleyici A’dır.

BCNF kuralına uygun bir tablo 1NF , 2NF  ye de uygundur ama 3NF ye uygun olamaz.

|hastano|hastaismi|randevudurumu|saat|doktor|
|--|--|--|--|--|
|1|isim1|0|09.00|doktor1|
|2|isim2|0|09.00|doktor2|
|3|isim3|1|10.00|doktor1|
|4|isim4|0|13.00|doktor2|
|5|isim5|1|14.00|doktor1|

Yukarıda verilen tablo bir diyet uygulayan kliniğe aittir her hasta 4 aşamalı (0,1,2,3) bir tedaviden geçer 0 nolu randevu durumu saat 09:00 veya 13:00 de 1 nolu randevu saat 10:00 veya 14:00 dedir. 2 ve 3 nolu randevular da bu şekilde devam etmektedir.

Verilen bilgiler doğrultusunda bu tabloya ait fonksiyonel bağımlılıklar aşağıdaki gibidir.
- hasta_no → hasta_ismi
- hasta_no, randevu_durumu →saat,doktor
- saat  → randevu_durumu

verilen bağımlılıklara göre tablo için iki farklı primary key ekleneblir.bunlar;
- sonuç1:DB(hasta_no,hasta_ismi,randevu durumu,saat,doktor)

veya
- sonuç2:DB(hasta_no,hasta_ismi,randevu_durumu, saat, doktor)

1NF :uygun çünkü tekrar eden gruplar yok.
2NF :hasta isminin hasta_no ile bağımlıllığı vardır. Ama saat ile bağımlılığı yoktur.Randevu durumunun saat ile bağımlılığı vardır ama hasta_no ile bağımlılığı yoktur.bu nedenle hasta_ismi tablo yeni bir tabloda tutulduğunda ve randevu_durumu yeni bir tabloda tutulduğunda 2NF kuralına uygun hale getirilmiş olur.

- DB(hasta_no,saat,doktor)
- DB2(hasta_no,hasta_ismi)
- DB3(saat,randevu_durumu)

3NF :geçişli bağımlılıklar bulunmadığı için son durum 3NF kuralına uygundur.
BCNF:tüm belirleyiciler anahtar konumunda olduğu için BCNF ‘ye uygundur.
**Ornek**
![boycecoddnf](./img/boycecoddnf.png)
- FD1 “Müşteri No”, “Görüşme Tarihi” → “Görüşme Saati”,“Personel No”, “Oda No”(Birincil Anahtar, Primary Key)
- FD2 “Personel No”, “Görüşme Tarihi”, “Görüşme Saati” →“Müşteri No” (Adah Anahtar, Candidate key)
- FD3 “Oda No”, “Görüşme Tarihi”, “Görüşme Saati” →“Müşteri No”, “Personel No” (Aday Anahtar, Candidate key)
- FD4 “Personel No”, “Görüşme Tarihi” → “Oda No” (Aday anahtar DEĞILDIR)

Yukarıdaki fonksiyonel bağımlılıklardan 4.’sü bir aday anahtar değildir. Dolayısıyla veri bütünlüğü (data integrity) açısından sorun olabilir. Örneğin herhangi bir personel için oda değişikliği veri tabanından birden fazla değişikliğin kontrolünü gerekir.
Örneğin SG5 personeli, B301 odasındadır, bu personelin odasının değişmesi durumunda veri tabanında ya veri bütünlüğü sorunu olur ya da birden fazla erişim gerekir. Bu sorunun çözümü olarak BCNF şeklinde olan aşağıdaki iki tabloya bölünmesi gerekir:
![boycecoddnf-a](./img/boycecoddnf-a.png)
![boycecoddnf-b](./img/boycecoddnf-b.png)

## 4NF
Birincil anahtar olan sütunlar ile anahtar olmayan sütunlar arasında birden fazla bağımsız 1-n ilişkiye izin verilmez.4NF sağlamak için her bağımsız 1-n ilişki için ayrı tablo oluşturmak gerekir.

|ogrt_el|ad|soyad|bolumid|ders|
|--|--|--|--|--|
|a123|kerem|metin|btp|veritabani|
|a124|ahmet|kaçar|elk|elektrik mak.|
|a125|mustafa|çağlayan|mak|teknik resim|
|a126|murat|kaçmaz|bio|enformatik|

Tablo incelendiğinde ilk olarak herhangi bir sorun olmadığı görülür bu tablo için birincil anahtar ogrt_el sütunudur.Bu tabloya göre her öğretim elemanı sadece bir derse girebilir.Aynı öğretim elemanı için iki veya daha fazla ders girilmek istendiğinde birincil anahtardan dolayı aynı ogrt_el kodu kullanılamayacak dolayısıyla da yeni ders girilemeyecektir ve 1-n ilişki söz konusu olmyacaktır.4NF kuralını ve 1-n ilişkiyi sağlalam için mevcut tablo iki ayrı tabloya bölünür aşağıda 4NF kuralına uygun tablolar verilmiştir.

|ogrt_el|ad|soyad|bolumid|ders|
|--|--|--|--|--|
|a123|kerem|metin|btp|veritabani|
|a124|ahmet|kaçar|elk|elektrik mak.|
|a125|mustafa|çağlayan|mak|teknik resim|
|a126|murat|kaçmaz|bio|enformatik|

|ogrt_el|ders|
|--|--|
|a123|veritabani|
|a123|elektrik mak.|
|a123|teknik resim|
|a123|enformatik|
|a123|internet prog|
|a123|donanım|
|a123|matematik|

## 5NF
tekrarları önlemek için her tabloyu mümkün olduğunca küçük parçalara bölmek gerekir.aslında ilk 4 kural bu işlemi gerçekleştirir ama bu kuralllar kapsamında olmayan tekrarlanmalar da beşinci normalizasyon kuralı ile giderilir.

Örnek:aşağıda ürün marka ve satış danışmanı bilgisini içeren bir tablo verilmiştir.

|satis_danismain|marka|urun|
|--|--|--|
|D001|ABC|U001|
|D001|ABC|U002|
|D001|CDE|U001|
|D002|CDE|U003|
|D002|EFG|U001|
|D003|ABC|U003|
|D003|CDE|U004|

Tablo incelendiğinde marka ve ürün bilgisi satış sanışmanına göre değişmektedir. Ve rastgele değerler değildir. Marka ve ürün bilgilerini başka tabloda tutarak satış danışmanı için belirlenen marka ve ürün dışında veri girişi engellenebilir.

|satis_danismain|marka|
|--|--|
|D001|ABC|
|D001|ABC|
|D001|CDE|
|D002|CDE|
|D002|EFG|
|D003|ABC|
|D003|CDE|

|satis_danismain|urun|
|--|--|
|D001|U001|
|D001|U002|
|D001|U001|
|D002|U003|
|D002|U001|
|D003|U003|
|D003|U004|

|marka|urun|
|--|--|
ABC|U001|
ABC|U002|
CDE|U001|
CDE|U003|
EFG|U001|
ABC|U003|
CDE|U004|

