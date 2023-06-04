# 1. Temel Kavramlar

- Veri olguların, kavramların, veya talimatların, insan tarafından veya otomatik yolla iletişim, yorumlama ve işleme amacına uygun bir biçimde ifadesidir.
- Genellikle, biz veri veya veri birimleri üzerindeki işlemlerimizi varlık hakkında her hangi bilgi almak için gerçekleştiririz.
Veri kaydedilebilir bilinen gerçeklerdir.
Örneğin bir kişinin ismi, adresi, telefon numarası gibi.

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

# 2. Veri tabanı Yönetim Sistemleri

![vtys](../img/vtys-1.png)

Veri tabanı tanımlamak, yaratmak,
yaşatmak ve veri tabanına denetimli
erişim sağlamak için kullanılan
yazılım sistemidir.

Veri Tabanı Yönetim Sistemleri,fiziksel hafızada bilgileri çeşitli özelliklerine göre gruplandırıp şekillendirdikten sonra saklayan programlardır.VTYS, saklanan bu veriyi, Yapısal Sorgulama komutları ile insanların istekleri çerçevesinde işler,yeniden şekillendirirler. Yani, 
Veritabanı Yönetim Sistemi’nin bir ucunda, bilgisayar diskinde 
saklanan düzenlenmiş veriler, diğer ucunda ise bir kullanıcı (genellikle insan) veya istemci vardır.Aynı veri tekrar tekrar tutulmaz.

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
## 4. Anahtar
- Varlık kümesi içinde, varlıkları birbirinden ayırt etmek için kullanılan bu tür niteliklere varlık kümesinin anahtarı adı verilir. İki tür anahtar vardır.<br>
- **Süper anahtar (superkey):** Varlık kümesinde yer alan bir varlığı kesin olarak tanımlamaya yarayan anahtara süper anahtar adı verilmketedir. Bu anahtar sadece bir nitelikten oluşabileceği gibi, birden fazla niteliğin birleşiminden de oluşabilir. Süper anahtarlar süper küme oluşturur. Bir süper anahtarın herhangi bir süper kümesi daima bir süper anahtar olarak kabul edilir.
    - Örneğin SSK no süper anahtardır. Fakat isim alanı süper anahtar olamaz. SSk no ve isim alanı birlikte süper anahtar olarak kabul edilebilir.<br>
- **Aday anahtar (candidate key):** Varlık kümesinde bir varlığı tanımlamaya yarayan bir başka anahtar türü aday anahtar dır. Bir varlık kümesinin süper anahtarı bir veya daha fazla niteliğin birleşiminden oluşabilmektedir. Aday anahtar ise, süper anahtar özelliklerine sahip tek nitelikli anahtardır.<br>
- Eger bir üniversitede tüm ögrencilerin numaraları birbirinden farklı ise ögrencileri belirlemek için ögrenci numarası yeterlidir. Bu durumda ögrenci numarası ögrenci varlık kümesi için aday anahtardır. İçinde ögrenci numarası bulunan her nitelik grubu ise(ögrenci numarası, adı, soyadı gibi) ise bu varlık kümesinin süper anahtarıdır.

# 5. Varlık-İlişki Şemaları (Entity-Relationship Model)

Varlık-ilişki modeli ; Veritabanı modelleri içerisinde,varlık ve bu varlıkların birbirleri arasındaki ilişkilere dayanarak herhangi bir ön-veri olmaksızın model oluşturmakta kullanılan modeldir. Buradaki varlık; benzersiz bir şekilde tanımlanabilen
ve bağımsız var olabilme yetisine sahip nesne ya da oluşum olarak tanımlanabilir. Varlıklar , ev, araba gibi fiziksel nesneler olabileceği gibi müşteri ödemesi veya sipariş gibi soyut nesneleri de içerirler.

![varlik-iliski-sema](../img/varlik-iliski-sema.png)

Varlıkların aralarında kurulabilecek ilişki türleri aşağıdaki gibi tanımlanır ve model olarak ifade edilir.
![varlik-iliski-sema1](../img/varlik-iliski-sema1.png)

![varlik-iliski-sema2](../img/varlik-iliski-sema2.png)

![varlik-iliski-sema3](../img/varlik-iliski-sema3.png)

---