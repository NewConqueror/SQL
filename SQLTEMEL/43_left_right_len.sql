-- LEFT RIGHT LEN FONKSİYONLARI

SELECT LEFT('ÖMER ÇOLAKOĞLU',4)
SELECT RIGHT('ÖMER ÇOLAKOĞLU',4)
SELECT LEN('1234567890')
-- ismi ve soy ismi ayıralım
SELECT LEFT('ÖMER ÇOLAKOĞLU',4)
SELECT RIGHT('ÖMER ÇOLAKOĞLU',10)
/* e biz bunu amele gibi sürekli elle mi giricez hayır tabii ki
   o kadar şey öğrendin bir zahmet kulllan aq*/

/* soldan ömer çolakoğlunu ayır neye göre boşluktan önceye göre
   e aga boşluğun nerde olduğunu nerden bilicem
   onu da charındex ile halledicez ömer çolakoğlunda ara neyi boşluğu
   boşluğun index ini gönder soldan o kadar karakter ayır
*/
SELECT LEFT('ÖMER ÇOLAKOĞLU',CHARINDEX(' ','ÖMER ÇOLAKOĞLU'))

/* sağdan ömer çolakoğlunu ayır nasıl ayırıcam tüm uzunluğu bul ondan üstte isime
   göre bulduğunu çıkar ve ta daa 10 isim 4 karakter 10 -4 =6 bu kadar sağdan al
*/
SELECT RIGHT('ÖMER ÇOLAKOĞLU',LEN('ÖMER ÇOLAKOĞLU')-CHARINDEX(' ','ÖMER ÇOLAKOĞLU') )

/* şimdi bunu tablolara göre yapalım */

SELECT LEFT(NAMESURNAME,CHARINDEX(' ',NAMESURNAME)),
       RIGHT(NAMESURNAME,LEN(NAMESURNAME)-CHARINDEX(' ',NAMESURNAME) )
FROM USERS
