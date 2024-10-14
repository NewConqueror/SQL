SELECT U.NAMESURNAME AS ADSOYAD, 
U.EMAIL AS MAILADRESI, 
U.GENDER AS CINSIYET, 
U.BIRTHDATE AS DOGUMTARIHI,
C.COUNTRY AS ULKE,
CT.CITY AS SEHIR,
T.TOWN AS ILCE,
D.DISTRICT AS SEMT,
A.POSTALCODE AS POSTAKODU,
A.ADRESSTEXT AS ADRESI
FROM
USERS U, ADDRESS A, COUNTRIES C, 
CITIES CT, TOWNS T, DISTRICTS D

WHERE U.ID=A.USERID AND C.ID=A.COUNTRYID AND CT.ID=A.CITYID
	  AND T.ID=A.TOWNID AND D.ID=A.DISTRICTID
AND U.ID=1
AND CT.CITY LIKE 'ANKARA'
ORDER BY NAMESURNAME

/* bu uygulamada 2 den daha fazla tablo ile çalışmayı gördük daha fazla tablo ekleyip
   içinden istediğimiz alanları seçebiliyoruz alias ta kullandık
   Ve normal SQL komutlarını da kullandık
   LIKE gibi ORDER BY gibi normal SQL cümlelerini de kullanabiliyoruz yani*/ 
