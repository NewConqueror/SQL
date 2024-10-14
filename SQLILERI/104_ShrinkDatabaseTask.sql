/*	Shrink Database Task
	database oluştururken 2 tane dosyamız var Test ve Test_log 8mb 8mb olur genelde
	bu databaselerin içine data eklendikçe büyümesi lazım nasıl oluyor bu
	... ya tıkla ınpercent  seçtiğin yüzdelik kadar büyür
	örneğin data artık yetmiyor 10 seçtin database boyutunun %10 u kadar büyür
	ya da mb olarak büyüt 64 seçtin 64 mb büyütür 
	maximum file size kısmı var bu noktayı geçerse database çalışmasın dediğimiz kısım
	log için de aynı şey geçerli
*/

/*	CRM database i 630 mb yer kullanıyor unlimited seçili yani biz buna yeni kayıtlar eklediğimizde
	database sürekli büyüyecek peki kayıt silersem nolur
	630 mb yer var 1 m kayıt geldi 800 mb a çıktı 1m kayıt silersem 630 mb a düşer mi düşmez
	sistem belli bir büyüklüğe gelince tutar onu dosyanın büyüklüğüyle oynamak bizim istediğimiz bir şey 
	değildir zaten canlı çalışırken o boşluk kalır otomatik küçülmez

	bu boşlukları temizlemek lazım buna shrink işlemi denir büyütelim db yi
*/

sp_spaceused 'CUSTOMERS2' /* ne kadar yer kullanıyor ona baktık */

SELECT * INTO CUSTOMERS2 FROM CUSTOMERS

-- 886 mb
DROP TABLE CUSTOMERS2 

/*	tabloyu sildik ama boyutu değişmedi hala 886 napıcaz

	task shrink database toplam 1086 mb 256 mb boş yer var %23 küçültebilirsin diyor

	task shrink files dediğimiz zaman hem data hem log geldi
	log 200 mb gösteriyor 0 a kadar indirebiliyorsun diyor ( minimum is 0mb )
	aynısını data ya yaptın 630 a kadar düşerebilirsin diyor 
	bu işlemi zaman zaman oto yapabiliriz

	maintance plan toolbox kısmından shrink database task ekle hangi database te çalışsın vs seç
	
	shrink database when it grows beyond 50 mb  50 mb dan fazla yer varsa bu işlemi gerçekleştir diyoruz

	amount of free space to remain after shrink shrink işleminden sonra %10 luk boşluk bırak database boyutunda
	saat vs 

	yine şişir shrink yap çalıştır shrink i çalıştır  716 mb  a düşmüş log da 24 mb a düşmüş
	bunun sebebi de %10 luk alan bırakması

	shrinl iyi bir şeymiş gibi görünse de otomatik olarak yapılması çok doğru değil
	çünkü başka joblar da çalışabilir o sırada sistem index yapıyor olabilir başka bir şey olabilir
	ve bize sıkıntıya soktuğu anda bunun bizim tarafımızdan bilinçli olarak yapılması en doğrusu
	sistemde anormal derecede bir büyüme varsa bundan haberdar olarak bunu bizim kontrolümüzde yapmak
	daha doğru olacaktır
	*/
