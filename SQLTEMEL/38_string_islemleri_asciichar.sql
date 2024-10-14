/* STRING İŞLEMLERİ GİRİŞ */
-- ASCII VE CHAR FONKSİYONLARI

/*asci tablosunu biliyorsun zaten 0 dan 255 e kadar vs*/
SELECT ASCII('F') --F nin asci tablosundaki karşılığı 70 miş
SELECT CHAR(70) /* 70 sayısının char karşılığı ise F miş */

/* yani ASCII ve CHAR birbirinin zıttı fonksiyonlar diyebiliriz
   bunları birbirinin içinde de kullanabiliriz
*/

SELECT ASCII(CHAR(65))
SELECT CHAR(ASCII('A'))
/* bu şekilde iç içe de kullanabiliriz */ 
