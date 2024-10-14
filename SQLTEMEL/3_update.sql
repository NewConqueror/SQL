SELECT * FROM CUSTOMERS

UPDATE CUSTOMERS
SET NATION ='TR', AGE=20

/* bütün herkesin nation u tr yaşını 20 yaptık */ 

SELECT DATEDIFF(YEAR,'2001-09-11','2023-01-01')
/* verdiğim tarihler arasındaki farkı yıl olarak göster 
	DATEDIFF= date difference tarih farkı
*/ 
SELECT DATEDIFF(YEAR,'2001-09-11',GETDATE())
/* üsttekinin aynısı ama verdiğim tarih ile bugnü arasındaki farkı göster dedik*/

UPDATE CUSTOMERS
SET NATION ='Türkiye', AGE=DATEDIFF(YEAR,BIRTHDATE,GETDATE())

/* bütün müşterilerin nation u Türkiye yaşını ise doğum tarihleri ile arasındaki
   fark yaptık
*/ 
