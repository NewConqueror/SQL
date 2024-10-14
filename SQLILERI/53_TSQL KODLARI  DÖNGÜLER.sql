DECLARE @I AS INT=0

WHILE @I<10
BEGIN

	SELECT @I /* i yi getirir*/
	PRINT @I /* i yi yazdırır*/

	SET @I=@I+1
END
/* klasik while döngüsü şart baş son arttırım*/


DECLARE @I2 AS INT=0

WHILE @I2<10
BEGIN
	INSERT INTO TARIHLER (TARIH) VALUES (GETDATE())

	INSERT INTO TARIHLER (TARIH) VALUES (GETDATE())
	WAITFOR DELAY '00:00:01'/* her adımda 1 sn bekle dedik*/

	SET @I2=@I2+1
END

DECLARE @I3 AS INT=0
DECLARE @AD AS VARCHAR(50)
DECLARE @SOYAD AS VARCHAR(50)
DECLARE @CINSIYET AS VARCHAR(1)
DECLARE @DOGUMTARIHI AS DATE
DECLARE @YAS AS INT
DECLARE @YASGRUBU AS VARCHAR(50)

WHILE @I3<1
BEGIN

SELECT RAND() /* 0 ile 1 arasında rastgele değerler oluşturur*/
SELECT ROUND(RAND()*611,0) /* ROUND fonksiyonu yuvarlama yapar
611 kayıt olduğu için 611 ile çarptık ve , den sonra 0 hane alacak şekilde düzenledik*/

SELECT * FROM ISIMLER WHERE ID=ROUND(RAND()*611,0)

SELECT @AD=AD, @CINSIYET=CINSIYET FROM ISIMLER WHERE ID=ROUND(RAND()*611,0)

SELECT @SOYAD=SOYISIM FROM SOYISIMLER WHERE ID=ROUND(RAND()*1000,0) 
/* soyısımler tablosunda 1000 satır old. için 1000 ile çarptık*/

/* bize bir de rastgele doğum tarihi lazım onu bulmak için şöyle yapıcaz*/

SET @DOGUMTARIHI=DATEADD(YEAR,ROUND(RAND()*18250,0), '1950-01-01'
/* burda 365*50=18250 bunu yuvarlayıp yıl olarak 1950-01-01 in üstüne eklicek
   böylece rastgele doğum tarihleri elde etmiş olucaz
*/
/* ee bize yaş da lazım o yüzden */
SET @YAS=DATEDIFF(YEAR,@DOGUMTARIHI,GETDATE())
/* şimdiki zaman la doğum tarihi arasındaki farkı yıl olarak getirecek ve yaş değişkenine aticak*/

IF @YAS BETWEEN 10 AND 20
	SET @YASGRUBU = '20 YAS ALTI'
IF @YASGRUBU BETWEEN 21 AND 30
	SET @YASGRUBU = '20 30 ARASI'
IF @YAS BETWEEN 31 AND 40
	SET @YASGRUBU = '30 40 ARASI'
IF @YAS BETWEEN 41 AND 50
	SET @YASGRUBU = '40 50 ARASI'
IF @YAS BETWEEN 51 AND 60
	SET @YASGRUBU = '50 60 ARASI'

IF @YAS>60
	SET @YASGRUBU = '60 TAN BÜYÜK'

SELECT @AD,@SOYAD,@CINSIYET,@DOGUMTARIHI,@YAS, @YASGRUBU

INSERT INTO KISILER(AD,SOYAD,CINSIYET,YASGRUBU,DOGUMTARIHI)
VALUES (@AD,@SOYAD,@CINSIYET,@YAS,@YASGRUBU,@DOGUMTARIHI)

SET @I3=@I3+1
END
