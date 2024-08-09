SELECT 

U.USERNAME_ KULLANICIADI, U.NAMESURNAME ADSOYAD, 
C.COUNTRY ULKE, CT.CITY SEHIR, T.TOWN ILCE, A.ADDRESSTEXT ACIKADRES ,
O.ID SIPARISID, ITM.ITEMCODE URUNKODU,ITM.ITEMNAME URUNADI, ITM.BRAND MARKA,
OD.AMOUNT MIKTAR, OD.UNITPRICE BIRIMFIYAT, OD.LINETOTAL SATIRTOPLAMI

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

WHERE KULLANICIADI='Z_DALAMANLI'
WHERE U.USERNAME_='Z_DALAMANLI'

/*  aga böyle çok karmaşık oluyor ya keşke bunların hepsi tek bir tablo şeklinde olsaydı da
	ben de rahatça karmaşık olmadan yazabilseydim bunun da bir yolu var view lar
	ayrıca bunda alias olarak verdiğini kullanamıyorsun orijinal sütun adını kullanman lazım
	view larda ise verdiğini kullanabiliyorsun oluşturalım bir tane
*/



/*bu komutla view oluşturuyorsun ve artık yukarıda ınner vs yaptıklarını
  tek bir tabloda görebilirsin ve verdiğin adla da tabloyu çağırabilirsin 
  table ın altında viewlarda görebilirsin
*/

CREATE VIEW VWORDERS

AS

SELECT 

U.USERNAME_ KULLANICIADI, U.NAMESURNAME ADSOYAD, 
C.COUNTRY ULKE, CT.CITY SEHIR, T.TOWN ILCE, A.ADDRESSTEXT ACIKADRES ,
O.ID SIPARISID, ITM.ITEMCODE URUNKODU,ITM.ITEMNAME URUNADI, ITM.BRAND MARKA,
OD.AMOUNT MIKTAR, OD.UNITPRICE BIRIMFIYAT, OD.LINETOTAL SATIRTOPLAMI

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



SELECT * FROM VWORDERS

WHERE KULLANICIADI='Z_DALAMANLI'
WHERE SEHIR='ANKARA' /* vs vs*/



SELECT 
SEHIR SUM(SATIRTOPLAMI), COUNT(*)
FROM VWORDERS

GROUP BY SEHIR