
SET STATISTICS IO ON

SELECT * FROM CUSTOMERS 
WHERE NAMESURNAME = 'ÖMER ÇOLAKOĞLU'

/*	önce ömer çolakoğlunu bulmak için ındex seek yapıyor ve ömer çolakoğlunun indexini alıyor
	sonra aldığı index i kullanarak bütün bilgileri getirmek için bu sefer index araması yapıyor
	yani 2 KERE işlem yapmış oluyor
*/

SET STATISTICS IO ON

SELECT NAMESURNAME FROM CUSTOMERS 
WHERE NAMESURNAME = 'ÖMER ÇOLAKOĞLU'
/* bu sefer %100 ındex seek yaptı çünkü başka bir alana ihtiyacı yok ihtiyacı olanı buldu*/

/*	peki bu hep böyle 2 iş mi yapıcak aq bazen can sıkıcı olabilir bu 
	bunu düzeltmek için ne yapabiliriz yolu yok mu var
*/


/*  bunu included column ile yapabiliriz yani diğer sütunları da eklemiş oluyoruz
	artık ömer çolakoğlunu arayıp bulduğunda diğer sütunlarda yanında gelmiş olucak
	ve tek işle bunu halletmiş olucaz
*/


SET STATISTICS IO ON

SELECT * FROM CUSTOMERS 
WHERE NAMESURNAME = 'ÖMER ÇOLAKOĞLU'
/* 6 page değil sadece 3 page okuyarak bu işi hallettik çünkü tek işlemle hallettik key look up yapmıyor
*/

/* peki bunun bize bir maliyeti var mı elbette var amk maliyetsiz iş mi olur
   her bir sütunu eklemek include etmek index açısından yer kaplıyor
*/

SP_SPACEUSED 'CUSTOMERS'
/*				tablo boşken		namesurname ekli		bütün sütunlar ekli  

reserve alanı	215528 KB			285072 KB					425860 KB
data alanı		214872 KB			214872 KB					214872 KB
index boyutu	408 KB				69560 KB					210296 KB
kullanılmayan	248 KB

hepsini eklediğinde nerdeyse datanın kendisi kadar index boyutu olmuş oluyor
böyle bir maliyeti var işte*/