SELECT * FROM CUSTOMERS

SELECT 
TOP 3  
* FROM CUSTOMERS
ORDER BY CUSTOMERNAME

/* Tabloyu isme göre sıralayıp en tepedeki 3 kaydı bize getirir */

SELECT 
TOP 50 PERCENT
* FROM CUSTOMERS
ORDER BY CITY

/* Tabloyu şehre göre sıralayıp tüm kayıtların yarısı kadarını getirir
 10 kayıt varsa 5 vs
 TOP 10 PERCENT dersen 100 kayıttan 10 unu nu 10 kayıttan 1 ini getirir*/ 

 /* kaç tane kayıt gelmesini istiyorsan top komutunu ona göre kullan */ 
