SELECT * FROM CUSTOMERS
/*
WHERE CUSTOMERNAME='fatih' adı fatih olanları getir
WHERE CITY='istanbul' şehiri istanbul olanları getir
WHERE CITY<>'istanbul' şehiri istanbul olmayanları getir
WHERE NOT CITY='istanbul' üstteki ile aynı
WHERE GENDER='e' cinsiyeti e olanları getir
WHERE BIRTHDATE<1990-01-01  bu tarihten küçük tarihleri getir
WHERE BIRTHDATE<19900101    üsttekinin aynısı
WHERE BIRTHDATE>=19900101   bu tarihten büyük tarihleri getir
WHERE BIRTHDATE BETWEEN '2000-01-01' AND '2023-01-01'  bu 2 tarih arasındakileri getir

WHERE AGE BETWEEN 22 AND 30 bu iki yaş arasındakileri getir

WHERE CUSTOMERNAME LIKE 'fatih%' fatih ile başlayanları getir
WHERE CUSTOMERNAME LIKE '%ha' ha ile bitenleri getir
WHERE CUSTOMERNAME LIKE '%al%' al içerenleri getir

WHERE CUSTOMERNAME NOT LIKE 'fatih%' fatih ile başlamayanlarıı getir
WHERE CUSTOMERNAME NOT LIKE '%ha' ha ile bitmeyenleri getir
WHERE CUSTOMERNAME NOT LIKE '%al%' al içermeyenleri getir

WHERE CITY IN ('istanbul','ankara') şehri istanbul veya ankara olanları getir

UPDATE CUSTOMERS SET GENDER='erkek' WHERE GENDER='e' cinsiyeti e olanları erkek olarak güncelle
UPDATE CUSTOMERS SET GENDER='kadın' WHERE GENDER='k' cinsiyeti k olanları kadın olarak güncelle

DELETE CUSTOMERS WHERE ID= 5   id si 5 olanı sil
