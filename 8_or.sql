SELECT * FROM CUSTOMERS

/*WHERE CITY='istanbul' OR CITY= 'ankara'*/
/* WHERE CITY IN ('istanbul','ankara') 
   üstteki ile benzer aynı değişken için tabii ki*/
WHERE
/*BIRTHDATE >='19900101'  OR  BIRTHDATE<='20000101'*/
/* BIRTHDATE BETWEEN'19900101' AND'20000101'*/
NOT BIRTHDATE BETWEEN'19900101' AND'20000101'