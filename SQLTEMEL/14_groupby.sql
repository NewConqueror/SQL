/*SELECT * FROM SALES WHERE CITY='ANKARA'

 bunlar benim kendimce yaptıklarım
SELECT DISTRICT, DATE_, SUM(TOTALPRICE) AS TOTALPRICE FROM SALES WHERE CITY='ANKARA'
GROUP BY DISTRICT,DATE_
ORDER BY DISTRICT*/

SELECT *, CONVERT(DATE,DATE_) AS DATE2
/* CONVERT ile bir veri tipini başka bir veri tipine çevirdik date time datetime var
 DATE_ şuan date time tipinde hem gün hem saat var yani CONVERT ile onu saat fark etmeksizin
 sadece gün olan formata çevirdik */ 
FROM SALES WHERE CITY='ANKARA'
ORDER BY DATE_

SELECT CONVERT(DATE,'2019-01-01 08:46:10.000') /* sadece tarih değerini döndürür */
SELECT CONVERT(DATE,'2019-01-01 08:46:10.000') /* sadece saat değerini döndürür*/

/* SQL de böyle ekleyebilirim ya da sales tablosuna yeni bir alan ekleyebiliriz yeni alan ekleyelim
*/

SELECT * FROM SALES /* şuanda SALES tablosunda DATE2 kısmı bomboş güncelleyelim */
UPDATE SALES SET DATE2=CONVERT(DATE,DATE_) 

SELECT * FROM SALES WHERE CITY='ANKARA'
AND DATE2='2019-01-01'
ORDER BY DATE2

/* 2019-01-01 olanları bize getirir */

SELECT * FROM SALES WHERE CITY='ANKARA'
AND DATE_='2019-01-01'
/* bunda hiç kayıt gelmez çünkü DATE 2019-01-01 demek saat te olduğundan dolayı
	2019-01-01 00:00:00 demektir böyle bir kayıt olmadığından dolayı boş geldi
	Geri kalanı excel ile yaptı ama SQL ile de yapmayı denicez*/ 
