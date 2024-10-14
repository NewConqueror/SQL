/*  sql server ı kopyalamak için bakcup restore yöntemlerini öğrendik
	peki madem veri tabanı dosyalardan oluşuyor bu dosyalar şeklinde tutulan veritabanına
	başka bir veritabanı sunucuya kopyalansa çalışır mı

	SSAGENT ın mdf ldf dosyaları var  data klasörün içerisinde bu mdf ldf dosyalarını atarsak
	işimiz çözülür mü hayır çözülmez herhangi başka bir sunucuda bulunan mdf ldf dosyasını
	kopyalaman bir işe yaramaz görmen için yeterli değil
	tanıtmanın bir yolu var mı var
*/

/*	databases ın üzerinde atach diyerek database kısmı çıkacak seç ekle görüceksin gelmiş olucak
	başka bir yere taşımanın yolu yok mu çalışırken
	var yine sağ click detach çıkart anlamında bağlı kullanıcıyı uçur
	şimdi data dan alıp başka bir yere koyabilirsin
	veritabanına ulaşılmasını istemiyorsan take offline diyebilirsin
	yine taşıyabilirsin sonra bring offline dersin ve olur
*/
