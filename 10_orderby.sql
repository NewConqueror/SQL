SELECT * FROM CUSTOMERS

/*ORDER BY ID ASC
 küçükten büyüğe sıralama yapar 1..9 a..z vs

ORDER BY ID DESC
büyükten küçüğe sıralama yapar 9..1 z..a vs

ORDER BY CUSTOMERNAME a.. z ye adları getirir

ORDER BY CUSTOMERNAME DESC z..a ya adları getirir

ORDER BY BIRTHDATE  önce en küçük tarihleri yani yaşı en büyük olanı getirir 1971

ORDER BY BIRTHDATE DESC önce en büyük tarihleri yani yaşı en küçük olanı getirir 2012

ORDER BY CITY, CUSTOMERNAME DESC 
önce şehre göre sırala şehri aynı olanları ismine göre tersten sırala

ORDER BY CITY, DISTRICT,CUSTOMERNAME 
önce şehire şehirleri aynıysa bölgeye bölgeleri aynıysa isme göre sırala


ORDER BY 2
ORDER BY CUSTOMERNAME 

YUKARIDAKİ 2 ŞEY AYNI  1 ID 2 CUSTOMERNAME 3 CITY VS VS

ORDER BY 3,5  ÖNCE ŞEHRE GÖRE SIRALA ŞEHİRLERİ AYNIYSA İLÇEYE GÖRE SIRALA 