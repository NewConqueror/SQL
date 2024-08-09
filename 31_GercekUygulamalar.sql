/* Şehirlere göre toplam verilen sipariş miktarlarını getiren bir sorgu
   bize lazım olan şehirde yapılan satış adedi, satış mıktarı, ve sipariş sayısı
*/

SELECT 
	CT.CITY AS SEHIRADI,
	SUM(OD.LINETOTAL) AS TOPLAM_SATIS_MIKTARI,
	SUM(OD.AMOUNT) AS TOPLAM_SIPARIS_ADEDI,
	COUNT(OD.ID) AS TOPLAMSIPARIS_SAYISI

FROM ORDERS O
	INNER JOIN USERS U ON U.ID = O.USERID
	INNER JOIN ADDRESS A ON A.ID = O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID = A.CITYID
	INNER JOIN TOWNS T ON T.ID = A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID = A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID = O.ID
	INNER JOIN INVOICES I ON I.ORDERID = O.ID
	INNER JOIN ORDERDETAILS OD ON OD.ORDERID = O.ID

GROUP BY CITY
ORDER BY SUM(OD.LINETOTAL) DESC
--ORDER BY 2 DESC
--ORDER BY SEHIRADI


/* yukarıda bizden istenen şartları yerine getirecek şekilde
   tablolar ekledik o tablolardan ihtiyacımız olan alanları çektik
   ve güzel bir sorgu tasarladık
*/