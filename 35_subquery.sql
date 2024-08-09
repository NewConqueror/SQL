/* ÜRÜNLERİN FİYAT ANALİZİ SUBQUERY*/
SET STATISTICS IO ON /* messages kısmında bu işlemi yapmak için ne kadar okuma yaptığını görebiliriz */
SELECT ITM.ITEMCODE AS URUNKODU,
ITM.ITEMNAME AS URUNADI,

(SELECT MIN(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID = ITM.ID) AS ENDUSUK_FIYAT,
(SELECT MAX(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID = ITM.ID) AS ENYUKSEK_FIYAT,
(SELECT AVG(UNITPRICE) FROM ORDERDETAILS WHERE ITEMID = ITM.ID) AS ORTALAMA_FIYAT,
(SELECT SUM(AMOUNT) FROM ORDERDETAILS WHERE ITEMID = ITM.ID) AS TOPLAM_ADET

FROM ITEMS ITM
ORDER BY ITM.ITEMNAME
/*arada kayıt farkı var bu diğerinden daha fazla niye burda hepsi var diğerinde sadece sipariş verilenler */
/* veri tabanı sistemleri esasen veri okur ve yazar çoğunlukla okur ne kadar okuma yaptığı önemli */

/* diğerinde 20 mb bunda 40 mb okumuş 2 katı daha fazla veri okumuş boş yere */
/* yapabiliyorsak joinlerle yap ya da subquery kullanacaksan az kullanmaya özen göster */
/* 10gb olsa 10 gb nerde 20 gb nerde öyle düşün*/