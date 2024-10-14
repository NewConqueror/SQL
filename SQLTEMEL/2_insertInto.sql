
INSERT INTO CUSTOMERS
(/*ID,*/CUSTOMERNAME,CITY,BIRTHDATE,DISTRICT,GENDER)
VALUES
(/*5,*/'mehmet','antalya','1990-5-12','alanya','e')
/* hata vericek çünkü otomatik artan bir yere değer atamaya çalıştık
	kaldırınca çalışabilir oldu
*/

/* tool kullanarak exceldeki verileri aynı ınsert into komutunu yazarak sql e ekleyebiliriz */
INSERT INTO CUSTOMERS
(CUSTOMERNAME,CITY,BIRTHDATE,DISTRICT,GENDER)
VALUES
('halime','istanbul','1999-5-12','bakırköy','k')

SELECT * FROM CUSTOMERS

/* bir sürü satır var ama bir tanesi çalışsın istiyorsun istediğin satırı seçerek execute dersen
	sadece o satırı çalıştırmış olursun
	*/
