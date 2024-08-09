SELECT  
U.ID, U.USERNAME_, A.ADDRESSTEXT

FROM USERS U FUll JOIN ADDRESS A ON A.USERID=U.ID
/* 
   ne var ne yok hepsini getiriyor
*/



SELECT  
U.ID, U.USERNAME_, A.ADDRESSTEXT

FROM USERS U RIGHT JOIN ADDRESS A ON A.USERID=U.ID
/* 
   JOIN in sağı sağ tablo yani hepsi getirilen 
   JOIN in solu sol tablo yani ortak olanlar getirilen olmuş oluyor
*/



SELECT  
U.ID, U.USERNAME_, A.ADDRESSTEXT

FROM USERS U LEFT JOIN ADDRESS A ON A.USERID=U.ID
/* JOIN in solu sol tablo yani hepsi getirilen
   JOIN in sağı sağ tablo yani ortak kayıtları getirilen olmuş oluyor
*/




SELECT  
U.ID, U.USERNAME_, A.ADDRESSTEXT

FROM USERS U JOIN ADDRESS A ON A.USERID=U.ID

/* ikisi de aynı şey bir farkı yok*/
SELECT  
U.ID, U.USERNAME_, A.ADDRESSTEXT

FROM USERS U INNER JOIN ADDRESS A ON A.USERID=U.ID


SELECT * FROM USERS
SELECT * FROM ADDRESS