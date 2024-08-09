
SELECT CITY, /* şehirleri seç */

MIN(TOTALPRICE) AS MINPRICE, /* min fiyatı yaz MINPRICE adlı sütuna no column name yazar as vs yazmazsan */
MAX(TOTALPRICE) AS MAXPRICE, /* max fiyatı MAXPRICE diye yazar  */
COUNT(FICHENO) AS ROWCOUNT_, /* toplam fiş numarasını yazar ROWCOUNT_ adını verdiğimiz sütuna*/
SUM(TOTALPRICE) AS TOTALPRICE,/* toplam fiyatı TOTALPRICE adlı sütuna yazar */
AVG(TOTALPRICE) AS AVGPRICE  /* ortalama fiyatı AVGPRICE adlı sütuna yazar*/
FROM SALES /* nereden SALES tablosundan*/

GROUP BY CITY /* grupla neye göre şehire yani her şehrin min i max ı vs vs olucak
 10 tane izmir var diyelim 10 unu 1 izmir olarak yapıcak min max vs de ona göre olacak*/
/* ORDER BY CITY  a dan z ye doğru sıralanacak*/ 
ORDER BY SUM(TOTALPRICE)

/* EN ÇOK SATIŞ YAPANI GÖRMEK İSTİYORUZ LÖ BASİT */ 

SELECT CITY, SUM(TOTALPRICE) /* şehri ve toplam fiyatı seç nereden sales adlı tablodan */
FROM SALES                   /* şehre göre grupla toplam fiyata göre yüksekten düşüğe sırala */ 
GROUP BY CITY
ORDER BY SUM(TOTALPRICE) DESC


SELECT TOP 10
CITY, SUM(TOTALPRICE) AS TOTALPRICE /* şehri ve toplam fiyatı seç nereden sales adlı tablodan */
FROM SALES                   /* şehre göre grupla toplam fiyata göre yüksekten düşüğe sırala */ 
GROUP BY CITY
ORDER BY SUM(TOTALPRICE) DESC