SELECT
SEHIR, HAFTANINGUNU, SUM(SATIRTOPLAMI) AS TOPLAMTUTAR
FROM VW_SIPARIS_DETAYLI
GROUP BY SEHIR, HAFTANINGUNU

/*	sonra bunu veri kaynağı sql server bağlan veri tabanı seç ileri son özellikler
	tanım kısmında sorguyu yapıştır ve excel de düzenle
*/
