/* 
	STORED PROCEDUR kullanmanın faydaları nelerdir?
	DAHA HIZLIDIR 
	execution plan çıkarıldığı ve derlendiği için
	ilk 4 aşamayı atlar ve daha hızlı çalışır

	
	Client server mimarisinin aksine toplu işlemler kendi içerisinde çalıştığı için
	sorgular network hızında değil ram hızında çalışır
	her kontrolde git gel yaparak her seferinde adhoq query ile bu işlemi
	yapmaya çalışmak var bir de bütün bu işlemleri toplu bir şekilde bir procedürün
	içerisinde ram hızında yapmak var bu yönden toplu işlemlerin tek seferde yapıldığı zaman
	standart client server mimarisine göre çok daha hızlıdır


	KOLAY GÜNCELLEME
	yazılım güncellemeden değişiklikler yapılabilir
	örneğin siz bir rapor yaptınız bu raporu uygulamalara gömdün excel rapor toolları vs
	başka sunuculardan sizin sisteminize bağlanıp çekilebilir bunlar eğer siz bunları
	adhoc query yaptıysan bu sorgularda bir değişiklik yapmak istersen
	bütün dağıttığın her yerde bunları tekrar güncellemen gerekir
	stored procedur kullanırsan sadece procedur ü değiştirmen yeterli o procedurü kullanan
	herkes otomatik olarak güncel halini çeker 


	GÜVENLİDİR
	SQL INJECTION saldırılarına karşı kesin çözümdür
	yani veritabanını saldırılara karşı korur adhoc query kullanırsan bir sürü önlem alman lazım
	onun yerine stored procedure kesin çözümdür

	kritik raporlar için stored procedure bazında yetki verilebilir
	bu noktada belli procedure leri sadece belli kullanıcılar çalıştırabilsin denilebilir
	ya da bir tabloya normalde o kullanıcının erişimi yoktur ama o tabloyu kullanan bir stored procedure e
	yetki verdiğin zaman kullanıcı o tablonun ilgili alanlarını görebilir

	YETENEKLİDİR
	herhangi bir programlama dilinde yazılabilecek hemen her türlü komut burada yazılıp çalıştırılabilir
	haddi hesabı yok

	ESNEKTİR
	birden fazla stored procedure var ise bunları birbiri içinden çağırabiliriz 
	iç içe yazılanları çağırarak çok daha performanslı bir program elde edebilirsin

	ÖLÇÜLEBİLİRDİR
	performansı ölçülebilir kaç kez çalıştırılmış en son ne zaman çalıştırılmış gibi bilgiler görülebilir
	ne kadar sistem kaynağı harcamış gibi bilgileri görebiliriz
*/