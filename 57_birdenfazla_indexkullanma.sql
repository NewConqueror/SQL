SET STATISTICS IO ON

SELECT * FROM CUSTOMERS

WHERE TELNR ='03423344747'


SET STATISTICS IO ON

SELECT * FROM CUSTOMERS

WHERE TELNR ='03423344747'
AND NAMESURNAME='ÖMER ÇOLAKOĞLU' /* XI1 daha az maliyetli geldiği için sql onu tercih etmiş*/


SET STATISTICS IO ON

SELECT * FROM CUSTOMERS

WHERE BIRTHDATE='1964-03-30'
/* diğer sütunları include ederek fazla işlemden kurtardık*/

/* sorguyu çalıştırdıktan sonra SQL önerilerine mutlaka bak o senin dostun*/

SELECT * FROM CUSTOMERS

WHERE BIRTHDATE='1964-03-30'
AND NAMESURNAME='ÖMER ÇOLAKOĞLU'
/*  XI1 i kullanmış niye kolayına o gelmiş birinde 134 satıra bakıyor diğerinde tek 1 satıra
	pratik olanı getiriyor*/