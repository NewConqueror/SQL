-- CHARINDEX
/* bize aradığımız stringin hangi indexte olduğunu söyler */
/* başa neyi aradığını ortaya nerede aradığını 
sona ise aramaya nerden başlayacağını söylüyorsun*/

SELECT CHARINDEX('E','FATIH YENI',1)
SELECT CHARINDEX('F','ÖMER FARUK ÇOLAKOĞLU',7)
/* F yi 7. karakterden itibaren aramaya başla dedim 7.karakter A
   ondan sonra F karakteri olmadığı için 0 yazdı */
