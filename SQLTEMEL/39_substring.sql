-- SUBSTRING 
/* stringin içinden bir kısmı seçmemize yarar*/

SELECT SUBSTRING('FATIH YENI',7,2)
/* 7. karakterden başla ve 2 tane karakter al 7.dahil 2
   saymaya 1 den başlar başka bir ornek yapalım
*/ 

SELECT * FROM USERS WHERE USERNAME_ LIKE 'O%' -- username i O ile başlayanları getir
SELECT * FROM USERS WHERE SUBSTRING(USERNAME_,1,1)='O'
-- username_den baştan itibaren 1 karakter al karakter O ya eşitse kaydı getir 

SELECT * FROM USERS WHERE USERNAME_ LIKE '%O' -- username i O ile bitenleri getir
SELECT * FROM USERS WHERE SUBSTRING(USERNAME_,-1,1)='O' /* haydaa bu kayıt getirmiyor
C deki gibi -1 son değilmiş napıcaz aga nerden bilicez son karakterin o olduğunu
önce son karakteri bulucaz substrıngı ordan başlatıcaz O ya eşitse getiricez*/

/* BUNUN İÇİN LEN FONKSİYONUNU KULLANICAZ */

SELECT * FROM USERS WHERE SUBSTRING(USERNAME_,LEN(USERNAME_),1)='O'
/* username ın uzunluğunu bul 5 10 vs son karakteri al o ise kaydı getir */
