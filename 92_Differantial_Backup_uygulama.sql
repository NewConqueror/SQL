
SELECT * INTO DATES10 FROM DATES

/*	daha önce tablodaki bütün kayıtları diğer tabloya amele gibi satır satır geçiriyorduk ya
	SELECT * INTO komutu ile DATES tablosunun içindeki her şeyi aynen başka bir tabloya attık
	DATES2 3 4 .. DATES10 hepsinin içeriği TAMAMEN AYNI
*/


SELECT * INTO DATES11 FROM DATES
/*	şimdi sıkıştırmadan yedek alalım
	FULL yedek aldık 25 mb üsttekini yaptık ekledik differantial yedek aldık diff in boyutu 5 mb
	bir tane daha diff aldık hiçbir değişiklik yapmadan boyutu yine 5 mb bir tane daha aldık
	yine 5 mb alttaki 12 yi ekledik 
	yine diff aldık bunun boyutu 7 mb oldu bir tane daha aldık o da 7 mb
	Ee şuanda diff backup ların boyutu 29 mb benim FULL backup ın boyutu 25 mb bu işte bir terslik var 
	sadece 2 tablo ekledik ama aldığımız diffler yüzünden full backup tan daha fazla yer kaplıyor
	13 ve 14 ü de aldık artık her diff in bize maliyeti 11 mb
	
	BU DERSİN AMACI ŞU DİFF BACKUP IN KENDİSİNDEN ÖNCE ALINAN EN SON FULL BACKUP ARASINDAKİ FARKI
	YEDEKLEDİĞİNİ ANLATMAYA ÇALIŞTIK STRATEJİYE GÖRE NERDE FULL BACK UP ALMAN GEREKTİĞİNİ ÖĞRENMELİSİN
*/

SELECT * INTO DATES12 FROM DATES
SELECT * INTO DATES13 FROM DATES
SELECT * INTO DATES14 FROM DATES