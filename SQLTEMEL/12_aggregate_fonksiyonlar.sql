SELECT * FROM SALES /* 115k satış kaydı geldi her kolonuyla*/
SELECT COUNT(*) FROM SALES /* sadece sayısı geldi 115024*/
SELECT * FROM SALES ORDER BY AMOUNT /* amount a göre sıraladı en az 1 en çok 10 */
SELECT MIN(AMOUNT) FROM SALES /* satışlar içindeki min amount ı getirir 1 */
SELECT MIN(AMOUNT), MAX(AMOUNT), COUNT(*) FROM SALES
/* min amount ı max amount ı ve toplam sayıyı verir count * da olur 
   herhangi bir bölgenin adını yazsanda olur COUNT(ID) COUNT(FICHENO) VS
*/
SELECT MIN(AMOUNT), MAX(AMOUNT), COUNT(FICHENO), SUM(AMOUNT) FROM SALES
/* üsttekinden farklı olarak toplam amount sayısını da verir*/

SELECT MIN(AMOUNT), MAX(AMOUNT), COUNT(FICHENO),SUM(AMOUNT), AVG(AMOUNT) FROM SALES
/* üsttekinden farklı olarak ortalamayı da verir*/

SELECT * FROM SALES ORDER BY TOTALPRICE
/* toplam fiyata göre sıraladı */

SELECT MIN(TOTALPRICE),MAX(TOTALPRICE),COUNT(FICHENO),SUM(TOTALPRICE),AVG(TOTALPRICE)
FROM SALES

/* min fiyatı max fiyatı fiş sayısını toplam fiyatı ve ortalama fiyatı söyler */

SELECT MIN(TOTALPRICE),MAX(TOTALPRICE),COUNT(FICHENO),SUM(TOTALPRICE),AVG(TOTALPRICE)
FROM SALES WHERE CITY='ADANA'
/* adana şehrine göre min fiyatı max fiyatı fiş sayısını toplam fiyatı ve ortalama fiyatı getirdi */ 
SELECT MIN(TOTALPRICE),MAX(TOTALPRICE),COUNT(FICHENO),SUM(TOTALPRICE),AVG(TOTALPRICE)
FROM SALES WHERE CITY='ANKARA'
/* ankara şehrine göre min fiyatı max fiyatı fiş sayısını toplam fiyatı ve ortalama fiyatı getirdi */ 
SELECT MIN(TOTALPRICE),MAX(TOTALPRICE),COUNT(FICHENO),SUM(TOTALPRICE),AVG(TOTALPRICE)
FROM SALES WHERE CITY='İSTANBUL'
/* istanbul şehrine göre min fiyatı max fiyatı fiş sayısını toplam fiyatı ve ortalama fiyatı getirdi */ 
