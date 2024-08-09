/* ürün kategorilerine göre satış rakamlarını getirme */

SELECT CATEGORY1,CATEGORY2,CATEGORY3,CATEGORY4,
SUM(TOTALPRICE) AS TOTALPRICE,
COUNT(*) AS ROWCOUNT_,
SUM(AMOUNT) AS TOTALAMOUNT
/* kategori 1,2,3,4 ü, toplam fiyatı toplam sayıyı toplam satış adetini getir
   nereden sales adlı tablodan kategori 1,2,3,4 e göre grupla kategori 1,2,3,4 e göre sırala
*/
FROM SALES
GROUP BY CATEGORY1,CATEGORY2,CATEGORY3,CATEGORY4
ORDER BY CATEGORY1,CATEGORY2,CATEGORY3,CATEGORY4