SELECT * FROM CUSTOMERS

WHERE NAMESURNAME LIKE 'ÖMER ÇOLAKOĞLU'
/*  TABLE SCAN okuması yapıyor yani enayi gibi her kayıda bakıyor 5. page 9.page 1.page vs
	TABEL SCAN yapar çünkü bu tabloda primary key yok
	bu sefer de CLUSTERED INDEX SCAN DEDİ
	eskiden page ler dağınıktı şimdi düzenli ama yine aynı aq yine her kayıda bakıyor 1. 2.page diye */


SET STATISTICS IO ON /* ne kadar okuma yaptığını getiriyor bana*/
SELECT * FROM CUSTOMERS
WHERE NAMESURNAME = 'ÖMER ÇOLAKOĞLU'
SELECT 27084*8/1024.01

SP_SPACEUSED 'CUSTOMERS' 
/*SQL serverda database in değilde sadece 1 tablonun boyutuna bakmak istediğimiz zaman bunu kullanırız*/
/* 2.5 milyon satır 215528kb lık veri tutuyor vs vsbu tür bilgiler verir*/



/*  HİZMETÇİ örneğinde olduğu gibi SQL bize öneri yapar şunları yaparsan daha hızlı okurum diye
	bu önerileri görmek için satırı seçip display estimated execution plan a tıklaman lazım*/
	
/* olduğun veri tabanı -> kullanacağın tablon -> ındexes kısmı ordan yap*/

SET STATISTICS IO ON

SELECT * FROM CUSTOMERS

WHERE NAMESURNAME='ÖMER ÇOLAKOĞLU'

/* 6 PAGE okudu 4500 kat daha hızlı geldi */