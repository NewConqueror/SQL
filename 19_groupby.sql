/* mağazaların müşteri sayılarını getirme */ 

SELECT
/*şehire göre seçtik ama kalanını nasıl yapıcaz aq distinct ile aynı müşterileri 
  aynı fiş numaralarınıçıkardık*/
CITY, COUNT(DISTINCT CUSTOMERNAME)AS UNIQUECUSTOMER, 
COUNT(DISTINCT FICHENO) CUSTOMERCOUNT,
COUNT(*) ITEMCOUNT
FROM SALES WHERE MONTHNAME_='01.OCAK'

GROUP BY CITY
ORDER BY CITY