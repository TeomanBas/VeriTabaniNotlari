

CREATE DATABASE `kutuphane` 
DEFAULT CHARACTER SET utf8 
COLLATE utf8_unicode_ci ;

USE kutuphane;

CREATE TABLE UYELER(
-- MySQL'deki Microsoft SQL Server IDENTITY sütununun eşdeğeri AUTO_INCREMENT şeklindedir . SQL Server'daki KİMLİK, MySQL'deki AUTO_INCREMENT gibi davranır. ProductId sütunu için herhangi bir değer iletmeyecekseniz, MySQL varsayılan olarak 1'den auto_increment ile başlar ve sonraki sayı 1 ile artar.
    UYE_NO INT NOT NULL AUTO_INCREMENT,
    UYE_ADI VARCHAR(20),
    UYE_SOYADI VARCHAR(20),
    CINSIYET VARCHAR(5),
    TELEFON VARCHAR(15),
    E_POSTA VARCHAR(40),
    ADRES_NO INT,
    PRIMARY KEY(UYE_NO)
);

CREATE TABLE ADRESLER(
    ADRES_NO INT NOT NULL AUTO_INCREMENT,
    CADDE VARCHAR(20),
    MAHALLE VARCHAR(20),
    BINA_NO VARCHAR(20),
    SEHIR VARCHAR(20),
    POSTA_KODU INT,
    ULKE VARCHAR(20),
    PRIMARY KEY(ADRES_NO)
);

CREATE TABLE EMANET(
    EMANET_NO INT NOT NULL AUTO_INCREMENT,
    ISBN VARCHAR(20),
    UYE_NO INT NOT NULL,
    KUTUPHANE_NO INT NOT NULL,
    EMANET_TARIHI DATE,
    TESLIM_TARIHI DATE,
    PRIMARY KEY(EMANET_NO)
);

CREATE TABLE KITAPLAR(
    ISBN VARCHAR(20),
    KITAP_ADI VARCHAR(20),
    YAYIN_TARIHI VARCHAR(20),
    S_SAYISI INT,
    PRIMARY KEY(ISBN)
);

CREATE TABLE YAZARLAR(
    YAZAR_NO INT NOT NULL AUTO_INCREMENT,
    YAZAR_ADI VARCHAR(20),
    YAZAR_SOYADI VARCHAR(20),
    PRIMARY KEY(YAZAR_NO)
);

CREATE TABLE KATEGORILER(
    KATEGORI_NO INT NOT NULL AUTO_INCREMENT,
    KATEGORI_ADI VARCHAR(20),
    PRIMARY KEY (KATEGORI_NO)
);

CREATE TABLE KUTUPHANE(
    KUTUPHANE_NO INT NOT NULL AUTO_INCREMENT,
    KUTUPHANE_ISMI VARCHAR(20),
    ACIKLAMA VARCHAR(20),
    ADRES_NO INT,
    PRIMARY KEY(KUTUPHANE_NO)
);

CREATE TABLE KITAP_KUTUPHANE(
    KUTUPHANE_NO INT NOT NULL,
    ISBN VARCHAR(20) NOT NULL,
    MIKTAR INT,
    CONSTRAINT KITAP_KUTUPHANE_PK PRIMARY KEY (KUTUPHANE_NO,ISBN)
);

CREATE TABLE KITAP_KATEGORI(
    ISBN VARCHAR(20) NOT NULL,
    KATEGORI_NO INT NOT NULL,
    CONSTRAINT KTP_KTG_PK PRIMARY KEY (ISBN,KATEGORI_NO)
);

CREATE TABLE KITAP_YAZAR(
    ISBN VARCHAR(20) NOT NULL,
    YAZAR_NO INT NOT NULL,
    CONSTRAINT KITAP_YAZAR_PK PRIMARY KEY (ISBN,YAZAR_NO)
);



-- ALTER TABLE ******* ADD CONSTRAINT ***** FOREIGN KEY ********* REFERENCES ********* ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE UYELER ADD CONSTRAINT ADRESLER_UYELER FOREIGN KEY (ADRES_NO) REFERENCES ADRESLER(ADRES_NO) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE EMANET ADD CONSTRAINT UYELER_EMANET FOREIGN KEY (UYE_NO) REFERENCES UYELER(UYE_NO) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE EMANET ADD CONSTRAINT KUTUPHANE_EMANET FOREIGN KEY (KUTUPHANE_NO) REFERENCES KUTUPHANE(KUTUPHANE_NO) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE KITAP_KATEGORI ADD CONSTRAINT KATEGORILER_KITAP_KATEGORI FOREIGN KEY (KATEGORI_NO) REFERENCES KATEGORILER(KATEGORI_NO) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE KITAP_YAZAR ADD CONSTRAINT YAZARLAR_KITAP_YAZAR FOREIGN KEY (YAZAR_NO) REFERENCES YAZARLAR(YAZAR_NO) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE KITAP_KUTUPHANE ADD CONSTRAINT KITAPLAR_KITAP_KUTUPHANE FOREIGN KEY (ISBN) REFERENCES KITAPLAR(ISBN) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE KUTUPHANE ADD CONSTRAINT ADRESLER_KUTUPHANE FOREIGN KEY (ADRES_NO) REFERENCES ADRESLER(ADRES_NO) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE EMANET ADD CONSTRAINT KITAPLAR_EMANET FOREIGN KEY (ISBN) REFERENCES KITAPLAR(ISBN) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE KITAP_KATEGORI ADD CONSTRAINT KITAPLAR_KITAP_KATEGORI FOREIGN KEY (ISBN) REFERENCES KITAPLAR(ISBN) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE KITAP_YAZAR ADD CONSTRAINT KITAPLAR_KITAP_YAZAR FOREIGN KEY (ISBN) REFERENCES KITAPLAR(ISBN) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE KITAP_KUTUPHANE ADD CONSTRAINT KUTUPHANE_KITAP_KUTUPHANE FOREIGN KEY (KUTUPHANE_NO) REFERENCES KUTUPHANE(KUTUPHANE_NO) ON UPDATE CASCADE;