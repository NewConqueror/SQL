SELECT * FROM CUSTOMERS

/* DISTINCT aynı veriden birden fazla varsa onları birleştirip gösterir
   örneğin cinsiyete göre yaptığımızda 100 kayıt da olsa
   sadece 2 cinsiyet olduğu için k ve e göstericek
   1 tane örnek gösterilir kalanı gösterilmez
   */ 

SELECT DISTINCT CITY FROM CUSTOMERS
SELECT DISTINCT GENDER FROM CUSTOMERS
SELECT DISTINCT CITY, DISTRICT FROM CUSTOMERS
SELECT DISTINCT AGE FROM CUSTOMERS
