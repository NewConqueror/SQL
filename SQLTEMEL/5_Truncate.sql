SELECT * FROM CUSTOMERS

/* tabloyu siler aynı delete gibi ama daha iyisi
   delete ile silersen otomatik artan id 0 lanmaz id en son 100
   delete ile sildin yeni kayıtın id 101 olur ve daha yavaş
   Truncate ile silersen otomatik artan id vs de 0 lanır 100 dü
   sildin yeni kayıtın id 1 olur truncate daha hızlı bunu kullan
*/

INSERT INTO CUSTOMERS(CUSTOMERNAME,CITY,DISTRICT,BIRTHDATE,GENDER,[FATHERS NAME])
VALUES('muhammet','samsun','bafra','1971-06-19','e','hakkı')

DELETE FROM CUSTOMERS

TRUNCATE TABLE CUSTOMERS
