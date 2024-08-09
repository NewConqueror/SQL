-- REPLACE yer değiştirme yapar

SELECT 'ÖMER ÇOLAKOĞLU'
SELECT REPLACE('ÖMER ÇOLAKOĞLU','ÖMER','FARUK')
/* ömer çolakoğlu içinde ara, neyi ömer i, ne ile değiştir faruk ile */


/*SQL de değişken atayabiliyoruz nasıl yapıyoruz 
  DECLARE @ bu işaret olmak zorunda değişken ismi AS ve hangi tipte olduğu
  değişkeni set kullanarak atayabiliyoruz */

DECLARE @CUMLE AS VARCHAR(MAX)

SET @CUMLE='delikanlı evine döndü kendisini merakle bekleyen vs vs
fatih dedi assdfdfsdfsdfdfsdffd sonra fatih uyandı vsvssvsvvsf'

SET @CUMLE=REPLACE(@CUMLE,'delikanlı','genç')
SET @CUMLE=REPLACE(@CUMLE,'evine','yuvasına')
SELECT @CUMLE

/* peki aga yukarıdaki gibi değiştirebiliyoruz
	AMA bir kelimenin kaç defa geçtiğini bulmak istiyorum bunu nasıl yapıcam
	BÖYLE
*/

/*  ne yaptık önce cümlenin uzunluğunu aldık len1
	sonra replace ile aradığımız kelimeyi sildik
	sonra tekrar cümlenin uzunluğunu aldık len2
	ilk ten ikinciyi çıkardık kelime kaç harfliyse ona böldük
	bu da bize kelimenin kaç defa geçtiğini verdi
*/ 
/* ÖRNEĞİN arayacağımız şey fatih olsun
   100 harf  vardı sildik 90 harf kaldı 
   10 harflik bir fark var bunu da aradığımız kelime olan
   fatih in harf sayısına bölersek 10/5 = 2 yani 2 kere fatih
   kelimesi geçmiş oluyor*/
DECLARE @LEN1 AS INT
SET @LEN1= LEN(@CUMLE)

DECLARE @LEN2 AS INT
SET @CUMLE=REPLACE(@CUMLE,'fatih','')

SET @LEN2 = LEN(@CUMLE)

SELECT (@LEN1 - @LEN2)/LEN('fatih')