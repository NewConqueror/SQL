/*
	indexler yeni kayıtlar geldikçe bozuluyor rebuild reoganize ediyoruz
	ama biz bunları manuel olarak yapıyoruz bu bozulmaları sistem tarafından 
	otomatik olarak düzeltmenin bir yolu yok mu 
	var bakım planları kullanarak bu sorunu çözebiliriz
	
	2.sorun biz bu index rebuild işlemini yaparken sadece 1 tablo üzerindeki bütün indexleri
	rebuild etmiştik halbuki bir veritabanının içerisinde birden fazla tablo var
	ve bir veritabanı sunucusunda bbirden fazla veritabanı var 
	biz istediğiz tüm veritabanlarındaki tüm tabloların indexlerini otomatik olarak
	rebuild etmeli yine maintance planlar ile gerçekleştirebiliriz

	önce kayıt atıp bozucaz indexi daha önceki uygulamalarda yaptığımız fill factor değerini
	0 a çekicez index options fill factor yaptık

	new maintance plan server restart edildiğinde SSAgent durur tekrar çalıştırman lazım

	ne zaman çalışacak onu seç pazar gece 2 vs vs
	toolboxtan rebuild index task ı seç tasarıma koy çift tıkla hangi database i almak istiyon vs

	change free space per page to fill factor değerini değiştirmek istiyor musun diye soruyor
	ama burda ters fill factor 70 doluluk oranı burda boşluk oranını soruyor 30
	
	sort results in tempdb sıralama işlemini tempdb üzerinde yapmak ister misin 
	senin sistem kaynaklarında tempdb nin diskleri farklı bir yerdeyse o zaman ben bu sıralam işlemini
	tempdb üzeinde gerçekleştirirsem daha hızlı şeklide yapabilirim demek işaretleyebilirsin


	keep index online index düzeltirken tabloları kilitlemiyor yani insanlar o tabloların üzerinde
	çalışmaya  devam edebiliyor 7/24 çalışan yapılar için lazım

	for index types that do not support online index rebuilds
	bazı index türleri başka türden veriler tutuyor online index e izin vermiyor
	bu şekilde index varsa ne yap  index yapma ya da offline olarak indexle seçenekleri var

	low priority used  buna öncelik verip vermeme

	ındex stats options
	scan type tarama işlemini yaparken fast sampled detailed seçenekleri var olduğu gibi bırakabilirsin

	optimize index if burası önemli burda diyor ki 
	ben burada indexleri rebuild ediyim ama belli şartlara uyanlaro hepsini değil

	fragmentation > 30  fragmantasyon değeri yüzde 30 un üzerinde olanları yap
	page count > 1000 içerisinde 1000 den fazla page olanları yap
	used in last  7 days son 7 günde kullanılanları rebuild et vaktiyle yapılmış ama kullanılmıyorsa
	bunu rebuild etmeye gerek yok yani 

	MAXDOP diye bir seçenek var örneğin 8 tane işlemci var sistem 8 ini birden kullanmasın 
	4 tane kullansın diyebilirsin

	object kısmı neleri indexlesin table view  table and view ok le bu kadar
	
	reorganize task da var ikisi de aynı sayılır ama daha çok rebuild yap

*/
