--DATABASE Olusturma
CREATE database mustafa

CREATE database yusuf

-- DDL - DATA DEFINITION LANG.
--CREATE - TABLO OLUSTURMA
CREATE TABLE ogrenciler2
(
ogrenci_no char(7),
isim varchar(20),
souisim varchar(25),
not_ort real, -- Ondalik sayilar icin kullanilir (Double gibi)
kayit_tarih date
)

--VAROLAN TABLODAN YENI BIR TABLO OLUSTURMA
CREATE TABLE ogrenci_notlari
AS -- Benzer tablodaki basliklarla ve data tipleriyle yeni bir tablo olusturmak icin 
--normal tablo olsutrurkenki parantezler yerine AS kullanip SELECT komudu ile almak istedigimiz verileri aliriz 
SELECT isim,souisim,not_ort FROM ogrenciler2;
 
-- DML - DATA MANIPULATION LANG.
-- INSERT (Database'e veri ekleme)

INSERT INTO ogrenciler2 VALUES ('1234567','Mustafa','Aravci',85.5,now());
INSERT INTO ogrenciler2 VALUES ('1234567','Mustafa','Aravci',85.5,'2020-12-11');

-- BIR TABLOYA PARCALI VERI EKLEME

INSERT INTO ogrenciler2 (isim,souisim) VALUES ('Mustafa','Aravci')

-- DQL - DATA QUERY LANG.
-- SELECT 

select * FROM ogrenciler2;

