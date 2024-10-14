
SET STATISTICS TIME ON
SELECT 
ITM.ID, ITM.ITEMCODE URUNKODU, ITM.ITEMNAME URUNADI,
DBO.GET_ITEM_PRICE(ITM.ID,'MIN') AS ENDUSUKFIYAT,
DBO.GET_ITEM_PRICE(ITM.ID,'MAX') AS ENYUKSEKFIYAT,
DBO.GET_ITEM_PRICE(ITM.ID,'AVG') AS ORTALAMAFIYAT,
DBO.GET_ITEM_TOTALSALE(ITM.ID) AS TOPLAMSATIS,

FROM ITEMS ITM

/*	belki daha fazla fonksiyon lazım oldu bilgi istendi bu performansı düşürebilir
	peki biz bir fonksiyon yazsak da tek seferde bütün bu sonuçları döndürse
	bu mümkün bir değer yerine tablo dönmesi gerekiyor değer alıcak ama tablo dönücek
	her satır için bu tablodaki verileri alabilicez birden fazla kolon tek seferde gelicek
	table valued functions bunu karşılığı nasıl yazılıyor bakalım
*/

CREATE FUNCTION DBO.GET_ITEM_INFO(@ITEMID AS INT)
RETURNS TABLE
AS
RETURN
(
	SELECT 
		MIN(UNITPRICE) AS MINPRICE,
		MAX(UNITPRICE) AS MAXPRICE,
		AVG(UNITPRICE) AS AVGPRICE,
		SUM(LINETOTAL) AS TOTALSALE,
		SUM(AMOUNT) AS TOTALAMOUNT
	
	FROM ORDERDETAILS WHERE ITEMID=@ITEMID
)

/* bu şekilde oluşturuyoruz */

SELECT * FROM DBO.GET_ITEM_INFO(3) 
/* select dbo kullanamazsın o scalar değerler için tablo olduğu için fromdan sonra yazdık */

/* peki bir table valued function başka bir tabloyla nasıl birlikte getirilir
   join yazıcaksın ama normal joinden farklı olarak bu join parametre alıyor farklı
   cross apply join kullanacaksın nasıl
*/

CROSS APPLY DBO.GET_ITEM_INFO(ITM.ID) AS ITEMINFO

SET STATISTICS TIME ON
/* bunda işlemin ne kadar sürdüğü ne kadar işlemci gücü kullandığını görebiliriz 594ms ye 2922 ms
   5 6 kat arttırdık performansı
*/

SELECT
ITM.ID, ITM.ITEMCODE URUNKODU, ITM.ITEMNAME URUNADI,

	ITEMINFO.MINPRICE	 AS ENDUSUKFIYAT
	ITEMINFO.MAXPRICE    AS ENYUKSEKFIYAT
	ITEMINFO.AVGPRICE    AS ORTALAMAFIYAT
	ITEMINFO.TOTALSALE   AS TOPLAMSATISTUTAR
	ITEMINFO.TOTALAMOUNT AS TOPLAMSATISMIKTAR
	/* dikkat ettiysen verdiğin isimleri kullanıyorsun */

FROM ITEMS ITM
CROSS APPLY DBO.GET_ITEM_INFO(ITM.ID) AS ITEMINFO
/* artık bu fonksiyonun parametrelerini yazıyorsun */
