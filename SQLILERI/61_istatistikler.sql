
SET STATISTICS IO ON

SELECT * FROM CUSTOMERS
WHERE BIRTHDATE='1996-03-09'
AND NAMESURNAME='ADA SÖZÜER'
/*  xı1 i kullandı çünkü daha kolay bulmasını sağlayan o birinde 4 kayıt diğerinde 1166 tane 
	kaydın içinden arıyor
*/
/*  4 tane geleceğini nerden biliyor işte istatistik kısmı burda devreye giriyor
	her bir index in altında istatistik kısmı var burası ne kadar güncelse doğruysa
	sorgu performansı o kadar artar*/

SELECT COUNT(*) FROM CUSTOMERS WHERE BIRTHDATE='1996-03-09'
SELECT COUNT(*) FROM CUSTOMERS WHERE NAMESURNAME='ADA SÖZÜER'

SPGENERATE_CUSTOMER2

/*  kayıt attık ama istatistikte hala 4 gözüküyor ve orda arıyor istatistik güncel olmadığı
	için performansı düşüyor istatistiği güncellemek lazım
*/

SELECT * FROM CUSTOMERS WITH(INDEX=XI3)/* index i elle verebiliyoruz ama yapma */
WHERE BIRTHDATE='1996-03-09'
AND NAMESURNAME='ADA SÖZÜER'

/* indexleri rebuild reorganize ederek istatistikleri güncelleştirebilirsin
	ama bu her gün mümkün olmayabilir
*/

SP_UPDATESTATS /* bu veritabanındaki tüm tablolar için istatistikleri günceller */

UPDATE STATISTICS CUSTOMERS
/* sadece bir tablo için istatistik güncellemek istiyorsak bu şekilde yaparız */

SELECT * FROM CUSTOMERS
WHERE BIRTHDATE='1996-03-09'
AND NAMESURNAME='ADA SÖZÜER'

/*  37362 page okumaktan 35 page okumaya kadar düştü 
	sadece istatistikleri düzelterek bile 1000 kat performansı arttırabiliriz*/
