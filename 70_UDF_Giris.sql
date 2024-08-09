
CREATE FUNCTION DBO.TOPLA(@SAYI1 AS INT , @SAYI2 AS INT)
RETURNS INT
AS

BEGIN 
	DECLARE @SONUC AS INT
	SET @SONUC = @SAYI1 + @SAYI2
	RETURN @SONUC
END

/* foksiyon oluşturduk dbo.topla dedik sayı1 int tipinde sayı2 int tipinde
	returns int yani int döndürecek
	başla

	sonuc diye değişken tanımladık fonksiyonda tanımlarken declare e gerek yok
	ama işlemler yani begin end kısmında tanımlamak için declare olması gerekiyor
	return @sonuc yani sonucu döndür dedik

	bitir*/
/* programmability altında functions altında scalar functions kısmında bulabilirsin */


SELECT DBO.TOPLA(20,30) /* çatır çatır da çalışıyor kardeşim */



CREATE FUNCTION DBO.CALCULATE_AGE(@BIRTHDATE AS DATE)
RETURNS INT
AS

BEGIN

DECLARE @RESULT AS INT
SET @RESULT = DATEDIFF(YEAR,@BIRTHDATE,GETDATE())

RETURN @RESULT
END


SELECT DBO.CALCULATE_AGE('20201022')
SELECT DATEDIFF(YEAR,'20201022',GETDATE())


SELECT TOP 100 *,
DBO.CALCULATE_AGE(BIRTHDATE) AS AGE
FROM CUSTOMERS