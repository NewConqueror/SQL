EXEC SPGENERATE_CUSTOMER


/* masanın üstünde toparlamak reorganize reorganize kendi içinde bir sıralama gerçekleştirir*/
/*  masanın üstünü tamamen boşaltıp dışarıda sıralayıp yerleştirmek rebuild
	rebuild her şeyi sil baştan yapar*/

/*	nerede rebuild nerede reorganize kullanmalıyız 
	fragmantasyon %40 ın altındaysa reorganize
	%40 ın üstündeyse rebuild yapılması önerilir
	ama işi garantiye almak adına her zaman rebuild yapabilirsin
	rebuild all vs yapabilirsin
*/

/* fill factor ü nasıl yapıyoruz */

/*  index in üstüne gelip options kısmında fill factor var 
	fill factor e 70 dersen 70 i dolu 30 u boş anlamına geliyor
	videoda gördüğün ve kendin yaptığında gördüğün gibi
	index e fill factor değeri verdiğinde çok daha az bozulmayla karşı karşıya kalıyorsun
*/


CREATE NONCLUSTERED INDEX IX5 ON CUSTOMERS
(
	NAMESURNAME
)WITH (FILLFACTOR = 70)

/* bu da script ile fillfactor tanımlanması*/

/*  ya aga ben böyle hepsiyle uğraşmiyim server bazından hepsinin fillfactor değeri aynı olsun
	diyorsan bunun da bir yolu var
*/

/* en üst yani server properties -> database settings -> default index fillfactor