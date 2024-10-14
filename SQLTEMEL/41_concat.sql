-- CONCAT 2 tane stringi birleştirmeye yarar

SELECT 'ÖMER'+'FARUK'+'ÇOLAKOĞLU'
SELECT CONCAT('ÖMER','FARUK','ÇOLAKOĞLU') -- ikiside aynı işe yarar
-- boşluk eklemek istedin o zaman napıcan

SELECT 'ÖMER'+' '+'FARUK'+' '+'ÇOLAKOĞLU'
SELECT CONCAT('ÖMER',' ','FARUK',' ','ÇOLAKOĞLU')
/* e diyelim uzun bir strıng amele gibi hep ' ' mu eklicen adamlar düşünmüş*/

SELECT CONCAT_WS(' ','ÖMER','FARUK','ÇOLAKOĞLU','BLA','BLA')
SELECT CONCAT_WS('/','ÖMER','FARUK','ÇOLAKOĞLU','BLA','BLA')
/* başta neye göre ayıracağını söylüyoruz sonra her kelime de ona göre ayırıyor*/

SELECT 
USERNAME_+' '+PASSWORD_+' '+NAMESURNAME,
CONCAT(USERNAME_,' ',PASSWORD_,' ',NAMESURNAME),
CONCAT_WS(' ', USERNAME_,PASSWORD_,NAMESURNAME)
FROM USERS
