/* UPDATE STATİSTİCS TASK */

/*	index öneminden bahsettik istatistiklerin önemi daha fazla düzgün olursa index i daha doğru buluyor
	istatistikler daha hızlı bozulabiliyor o yüzden çok daha sık güncellenmesi gerekir
	bunun için maintance plan task ları kullanılır
	ne maintance plan isim ver schedule a tıkla istatistik güncellenmesi rebuild ya da reorganize gibi
	sistemi yoran bir görev değildir ve çok daha kısa sürer ve daha sıklıkla çalıştırılmalıdır günde 1 2
	saat seç vs

	toolbox un içinde update statistics task var tıkla hangi databaselerde yapılacağını seç
	verimli güzel çalışması için full scan i seç all existing statistics seç
	index sütun vs de var ok de
	notify operator task ekle isim vs ver 
	geldi maintance plana  ve job lara günde en az bir kere yapılmalı

	manuel yapıcaksan hangi database de yapıcaksan oraya git sp_updatestats komutu ile çalıştırabilirsin
*/
