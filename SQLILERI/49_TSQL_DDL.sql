CREATE DATABASE TEST2
DROP DATABASE TEST2

USE TEST2

CREATE TABLE ISIMLER (ID INT IDENTITY(1,1), ISIM VARCHAR(20))
/* ısımler adlı tablo oluştur ID sütunu olsun ınt olsun identity 1 e 1 olsun 
   ısım sütunu olsun tipi varchar20 olsun 
*/

INSERT INTO ISIMLER (ISIM) VALUES('ÖMER')

SELECT * FROM ISIMLER

DROP TABLE ISIMLER


ALTER TABLE ISIMLER ADD TELEFON VARCHAR(12)
/* ısımler tablosonu güncelle telefon sütunu ekle tipi varchar 12 olsun*/
ALTER TABLE ISIMLER ADD ADRES VARCHAR(20)

ALTER TABLE ISIMLER DROP COLUMN ADRES
/* ısımler tablosundan eklediğimiz adres sütununu sildik*/

ALTER TABLE ISIMLER ALTER COLUMN ISIM VARCHAR(50)
/* ısımler tablosundaki ısım sütununu varchar 50 olarak güncelle
