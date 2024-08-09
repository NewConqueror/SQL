/* ortalama teslimat süresi
*/

SELECT 
/*  O.ID AS SIPARISID,
	O.DATE_ AS SIPARIS_TARIHI,
	I.DATE_ AS FATURA_TARIHI, ortalama almak için bunları kaldırdık*/


MIN(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ENKISA_TESLIMAT,
MAX(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ENUZUN_TESLIMAT,
AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS TESLIMAT_SURESI_ORT_SAAT
FROM ORDERS O
	INNER JOIN USERS U ON U.ID = O.USERID
	INNER JOIN ADDRESS A ON A.ID = O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID = A.CITYID
	INNER JOIN TOWNS T ON T.ID = A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID = A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID = O.ID
	INNER JOIN INVOICES I ON I.ORDERID = O.ID
	

SELECT 

U.ID, U.NAMESURNAME,
AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS TESLIMAT_SURESI_ORT_SAAT
FROM ORDERS O
	INNER JOIN USERS U ON U.ID = O.USERID
	INNER JOIN ADDRESS A ON A.ID = O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID = A.CITYID
	INNER JOIN TOWNS T ON T.ID = A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID = A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID = O.ID
	INNER JOIN INVOICES I ON I.ORDERID = O.ID

GROUP BY U.NAMESURNAME, U.ID
HAVING AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_))>30
ORDER BY AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_)) DESC


SELECT 
U.ID, U.NAMESURNAME,
AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS TESLIMAT_SURESI_ORT_SAAT,
MIN(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ENKISA_TESLIMAT,
MAX(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ENUZUN_TESLIMAT,
SUM(O.TOTALPRICE) AS TOPLAMM_SIPARIS_TUTARI,
COUNT(O.ID) AS SIPARIS_MIKTARI
FROM ORDERS O
	INNER JOIN USERS U ON U.ID = O.USERID
	INNER JOIN ADDRESS A ON A.ID = O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID = A.CITYID
	INNER JOIN TOWNS T ON T.ID = A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID = A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID = O.ID
	INNER JOIN INVOICES I ON I.ORDERID = O.ID

GROUP BY U.NAMESURNAME, U.ID
HAVING AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_))>30
ORDER BY SUM(O.TOTALPRICE) DESC





SELECT 
DATEPART(YEAR,O.DATE_) AS YIL,
DATEPART(MONTH,O.DATE_) AS AY,
AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS TESLIMAT_SURESI_ORT_SAAT,
MIN(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ENKISA_TESLIMAT,
MAX(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ENUZUN_TESLIMAT,
SUM(O.TOTALPRICE) AS TOPLAMM_SIPARIS_TUTARI,
COUNT(O.ID) AS SIPARIS_MIKTARI
FROM ORDERS O
	INNER JOIN USERS U ON U.ID = O.USERID
	INNER JOIN ADDRESS A ON A.ID = O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID = A.CITYID
	INNER JOIN TOWNS T ON T.ID = A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID = A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID = O.ID
	INNER JOIN INVOICES I ON I.ORDERID = O.ID

GROUP BY DATEPART(YEAR,O.DATE_),DATEPART(MONTH,O.DATE_)

ORDER BY 1,2



SELECT 
CT.CITY,
DATEPART(YEAR,O.DATE_) AS YIL,
DATEPART(MONTH,O.DATE_) AS AY,
AVG(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS TESLIMAT_SURESI_ORT_SAAT,
MIN(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ENKISA_TESLIMAT,
MAX(DATEDIFF(HOUR,O.DATE_,I.DATE_)) AS ENUZUN_TESLIMAT,
SUM(O.TOTALPRICE) AS TOPLAMM_SIPARIS_TUTARI,
COUNT(O.ID) AS SIPARIS_MIKTARI
FROM ORDERS O
	INNER JOIN USERS U ON U.ID = O.USERID
	INNER JOIN ADDRESS A ON A.ID = O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID = A.CITYID
	INNER JOIN TOWNS T ON T.ID = A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID = A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID = O.ID
	INNER JOIN INVOICES I ON I.ORDERID = O.ID

GROUP BY CT.CITY, DATEPART(YEAR,O.DATE_),DATEPART(MONTH,O.DATE_)

ORDER BY 4 DESC