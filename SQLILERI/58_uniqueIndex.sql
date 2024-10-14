
SET STATISTICS IO ON

SELECT * FROM CUSTOMERS WHERE NAMESURNAME='ÖMER ÇOLAKOĞLU'

/*  bu sorguyu yazdığımıza SQL ömer çolakoğlunu bulmaya gidiyor
	en başta bulsa bile aha bu demiyor aramaya devam ediyor sona kadar
	eğer biz unique yaparsak bulduğu anda zaten bir tane olduğu için
	aramayı kesicek ve bize kaydı getirecek daha hızlı olmuş olucak
*/

SELECT * FROM CUSTOMERS WHERE TCNO='10019865823'
/*  bunu bulmak için 30357 okuma yaptı enayi gibi halbuki tek bir tane var bulduğu zaman devam etmesine
	gerek yok ama bunu ona söylemedik o yüzden devam etti şimdi söylicez
*/

SELECT * FROM CUSTOMERS WHERE TCNO='10019865823'
/* sadece 6 okuma yapması yetti kalanı boşa okumuştu*/

UPDATE CUSTOMERS SET TCNO ='10019865823' WHERE ID=35578
/*	ömer çolakoğlunun tc yi ID si 35578 olan kişinin de tc si olarak vermek istedim
	ama tc unique olduğundan yani tek bir tane bulunabileceğinden buna izin vermedi
*/
