/*stored procedurları çağırdığımız zaman onun bize izin verdiği akdar esnek olabiliyoruz
satışlar içinden gıda olanları getir dediğimizde getiremeyiz çünkü o stored procedur içinde
öyle bir parametre yok gidip eklemeliyiz procedure ü değiştirmen gerekiyor 
ama biz her procedure müdahale edemeye biliriz neden
bir sistem procedürü olabilir yetkimiz olmayabilir çok fazla yerde kullanılıyordur
çok karmaşık olabilir yapısını bozabiliriz
iç yapısına müdahale edemiyoruz ama bir şekilde filtreleme gerekiyor
bu durumda napıcaz gördüğümüz temp tablolar devreye giriyor
stored prosedürler bir tabloya sonuçlarını atmamıza izin veriyor
bunun için dönen sonuçla aynı bir tablo oluşturmak gerekiyor
*/

CREATE TABLE RAPOR
(KULLANICI ADI VARCHAR(100), ADSOYAD VARCHAR(100), TELNR1 VARCHAR(100), TELNR2 VARCHAR(100),
, ULKE VARCHAR(100), SEHIR VARCHAR(100), ILCE VARCHAR(100), ACIKADRES VARCHAR(100), 
SIPARISID INT , URUNKODU VARCHAR(100), URUNADI VARCHAR(100), MARKA VARCHAR(100), KATEGORI1 VARCHAR(100)
, KATEGORI2 VARCHAR(100), KATEGORI3 VARCHAR(100), KATEGORI4 VARCHAR(100), MIKTAR FLOAT
, BIRIMFIYAT FLOAT, SATIRTOPLAMI FLOAT, SIPARISTARIHI DATE, SIPARISZAMANI TIME, YIL INT, AY VARCHAR(20)
,HAFTANINGUNU VARCHAR(20)
)
INSERT INTO #RAPOR
EXEC SP_SATISLAR '20190101','20190131','%'

SELECT * FROM #RAPOR WHERE KATEGORI1 = 'GIDA'

SELECT KATEGORI1, SUM(SATIRTOPLAMI) FROM #RAPOR GROUP BY KATEGORI1

DROP TABLE #RAPOR

/* geçiçi tablo oluşturduk ve sildik */


CREATE TABLE #RAPOR
(KULLANICI ADI VARCHAR(100), ADSOYAD VARCHAR(100), TELNR1 VARCHAR(100), TELNR2 VARCHAR(100),
, ULKE VARCHAR(100), SEHIR VARCHAR(100), ILCE VARCHAR(100), ACIKADRES VARCHAR(100), 
SIPARISID INT , URUNKODU VARCHAR(100), URUNADI VARCHAR(100), MARKA VARCHAR(100), KATEGORI1 VARCHAR(100)
, KATEGORI2 VARCHAR(100), KATEGORI3 VARCHAR(100), KATEGORI4 VARCHAR(100), MIKTAR FLOAT
, BIRIMFIYAT FLOAT, SATIRTOPLAMI FLOAT, SIPARISTARIHI DATE, SIPARISZAMANI TIME, YIL INT, AY VARCHAR(20)
,HAFTANINGUNU VARCHAR(20)
)
INSERT INTO RAPOR
EXEC SP_SATISLAR '20190101','20190131','%'

SELECT * FROM RAPOR WHERE KATEGORI1 = 'GIDA'

SELECT KATEGORI1, SUM(SATIRTOPLAMI) FROM RAPOR GROUP BY KATEGORI1

DROP TABLE RAPOR