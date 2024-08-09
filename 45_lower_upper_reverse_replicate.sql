-- LOWER UPPER REVERSE REPLICATE

SELECT LOWER('FaTiH') /* hepsini küçük yapar*/
SELECT UPPER('FaTiH') /* hepsini büyük yapar*/

SELECT REVERSE('FaTiH') /* yazıyı tersine çevirir */

SELECT REPLICATE('0',10) /* 0 ı yazdır ne kadar yazsın 10 kere*/
/* belli bir karakter sayısını tutturmamız gereken durumlarda böyle yaparız */


SELECT *, REPLICATE('0',8-LEN(SIRANO)) AS KACSIFIR_EKLENECEK FROM REPLICATE_TEST
/* kaç tane 0 ekleyeceğini yanda gösterdi*/

SELECT *, REPLICATE('0',8-LEN(SIRANO)) + CONVERT(VARCHAR,SIRANO) AS SON_HALI
FROM REPLICATE_TEST
/* birleştirmek için sırano yu int ten varchar a çevirmemiz gerekiyordu onu yaptık
   nasıl olacağını gösterdi
*/

SELECT *, REPLICATE('0',8-LEN(SIRANO)) + CONVERT(VARCHAR,SIRANO)
FROM REPLICATE_TEST

UPDATE REPLICATE_TEST SET SIRANO2=REPLICATE('0',8-LEN(SIRANO)) + CONVERT(VARCHAR,SIRANO)
/* en son olarakta sırano2 alanını güncelledik */