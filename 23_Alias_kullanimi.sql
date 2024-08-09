SELECT USERS.NAMESURNAME , USERS.EMAIL, USERS.GENDER, USERS.BIRTHDATE
/* bu şekilde istediğimiz farklı alanları da çekebiliriz */
ADDRESS.ADRESSTEXT
FROM
USERS,ADDRESS

WHERE USERS.ID=ADDRESS.USERID
AND USERS.ID=1
/* aga her şeyin başına users address mi yazıcaz sürekli işte burda ALİAS devreye giriyor
   ALİAS nedir tablolara isim veriyon işte aq lakap kısaltma ne dersen de
*/


SELECT U.NAMESURNAME, U.EMAIL, U.GENDER, U.BIRTHDATE,

A.ADRESSTEXT
FROM
USERS U, ADDRESS A /* alias ları burda verdik üstte ve altta kullandık 
					  sütunlar içinde alias kullanabilirsin örneğin 
					  türkçe göstermek istiyorsan*/

WHERE U.ID=A.USERID
AND U.ID=1




SELECT U.NAMESURNAME AS ADSOYAD, U.EMAIL AS MAILADRESI, U.GENDER AS CINSIYET, U.BIRTHDATE AS DOGUMTARIHI,

A.ADRESSTEXT AS ADRESI
FROM
USERS U, ADDRESS A 

WHERE U.ID=A.USERID
AND U.ID=1
/* AS yazmana gerek yok eskiden varmış şimdi yok normal yazsan da , öncesi alias kabul ediliyor */


SELECT U.NAMESURNAME ADSOYAD, U.EMAIL MAILADRESI, U.GENDER CINSIYET, U.BIRTHDATE DOGUMTARIHI,

A.ADRESSTEXT ADRESI
FROM
USERS U, ADDRESS A 

WHERE U.ID=A.USERID
AND U.ID=1