
CREATE FUNCTION DBO.MONTHNAME_(@DATE AS DATETIME)
RETURNS VARCHAR(10)
AS
BEGIN

	DECLARE @RESULT AS VARCHAR(10)

	IF DATEPART(MONTH,@DATE)=1  SET @RESULT='01.OCAK'
	IF DATEPART(MONTH,@DATE)=2  SET @RESULT='02.ŞUBAT'
	IF DATEPART(MONTH,@DATE)=3  SET @RESULT='03.MART'
	IF DATEPART(MONTH,@DATE)=4  SET @RESULT='04.NİSAN'
	IF DATEPART(MONTH,@DATE)=5  SET @RESULT='05.MAYIS'
	IF DATEPART(MONTH,@DATE)=6  SET @RESULT='06.HAZİRAN'
	IF DATEPART(MONTH,@DATE)=7  SET @RESULT='07.TEMMUZ'
	IF DATEPART(MONTH,@DATE)=8  SET @RESULT='08.AĞUSTOS'
	IF DATEPART(MONTH,@DATE)=9  SET @RESULT='09.EYLÜL'
	IF DATEPART(MONTH,@DATE)=10 SET @RESULT='10.EKİM'
	IF DATEPART(MONTH,@DATE)=11 SET @RESULT='11.KASIM'
	IF DATEPART(MONTH,@DATE)=12 SET @RESULT='12.ARALIK'
	RETURN @RESULT

END


CREATE FUNCTION DBO.DAYOFWEEK_(@DATE AS DATETIME)
RETURNS VARCHAR(10)
AS
BEGIN
	
	DECLARE @RESULT AS VARCHAR(10)
	IF DATEPART(DW,@DATE)=2  SET @RESULT= '1.PZT'
	IF DATEPART(DW,@DATE)=3  SET @RESULT= '2.SAL'
	IF DATEPART(DW,@DATE)=4  SET @RESULT= '3.ÇAR'
	IF DATEPART(DW,@DATE)=5  SET @RESULT= '4.PER'
	IF DATEPART(DW,@DATE)=6  SET @RESULT= '5.CUM'
	IF DATEPART(DW,@DATE)=7  SET @RESULT= '6.CMT'
	IF DATEPART(DW,@DATE)=1  SET @RESULT= '7.PZR'
	RETURN @RESULT

END


/* AŞAĞIDAKİ ÖRNEĞİ YUKARIDA TANIMLADIĞIMIZ FONKSİYONLAR İLE DÜZELTTİK */


SELECT TOP 100

U.USERNAME_ KULLANICIADI, U.NAMESURNAME ADSOYAD, U.TELNR1,U.TELNR2,
C.COUNTRY ULKE, CT.CITY SEHIR, T.TOWN ILCE, A.ADDRESSTEXT ACIKADRES ,
O.ID SIPARISID, ITM.ITEMCODE URUNKODU,ITM.ITEMNAME URUNADI, ITM.BRAND MARKA,
ITM.CATEGORY1 KATEGORI1 ,ITM.CATEGORY2 KATEGORI2 ,
ITM.CATEGORY3 KATEGORI3 ,ITM.CATEGORY4 KATEGORI4 ,
OD.AMOUNT MIKTAR, OD.UNITPRICE BIRIMFIYAT, OD.LINETOTAL SATIRTOPLAMI,

CONVERT(DATE,O.DATE_) SIPARISTARIHI, CONVERT(TIME,O.DATE_) SIPARISZAMANI,
DATEPART(YEAR,O.DATE_) YIL,

DBO.MONTHNAME_(O.DATE_) AY,
DBO.DAYOFWEEK_(O.DATE_) HAFTANINGUNU

FROM 
ORDERDETAILS OD
INNER JOIN ORDERS O ON OD.ORDERID= O.ID
INNER JOIN ITEMS ITM ON OD.ITEMID= ITM.ID
INNER JOIN USERS U ON O.USERID = U.ID
INNER JOIN ADDRESS A ON A.ID = O.ADDRESSID
INNER JOIN COUNTRIES C ON C.ID = A.COUNTRYID
INNER JOIN CITIES CT ON CT.ID = A.CITYID
INNER JOIN TOWNS T ON T.ID = A.TOWNID
INNER JOIN PAYMENTS P ON P.ORDERID = O.ID
