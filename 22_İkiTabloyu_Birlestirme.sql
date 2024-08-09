SELECT USERS.* FROM

USERS
/* seç neleri USERS tablosunun içindeki her şeyi select * from users ile users.* aynı şey
   .dan sonra sütunun adını yazarsan onu çağırır
   */

SELECT USERS.NAMESURNAME FROM USERS /* gördüğün gibi tablodan sadece adsoyad kısmını getirdi */


SELECT USERS.* , ADDRESS.ADRESSTEXT FROM

USERS,ADDRESS

WHERE USERS.ID=ADDRESS.USERID
AND USERS.ID=1

/*bu uygulamada ayrı ayrı 2 tablonun içindeki bazı alanları tek 1 tablo içinde birleştirdik */


/* getir neyi users tablosunun içindeki her şeyi ve address tablosunun içindeki
   addresstext alanını getir nereden users tablosundan ve address tablosundan
*/