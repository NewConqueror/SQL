/*
	full diff yedek alıyoruz ama 10 günde 40 yedek yapar hepsi yer kaplar ihtiyacımız olmayanı silmemiz lazım
	11.güne geldiğimizde önceki 10 günün silinmesi lazım bunu otomatik olarak yapmamız lazım
	bunun için bir task ımız var
	
	new maintence plan -> maintenance cleanup task var al tasarım kısmına yapıştır 
	ne zaman çalışacağını seç günlük gece 1 de vs vs ekledik
	tıkla üzerine  delete files of the following type neyi sileceksin
	backup files delete spesific files
	search folder and delete  files based on an extension
	bir dosya uzantısı türündeki dostları ara ve bunları sil 
	klasörü seç full yedek vs sadece 1 alt klasör seçebilirsin
	eğer full ile diff backup ayrıysa 2 task oluşturman
	delete files based on the age of the file at task run time ne kadar zamanlık dosyaları siliyim
	10 günlük 1 saatlik vs vs
	çalıştırdık harbi gitti
	kopyala yapıştır diff için ayarlayı yap ve birbirine bağlı önce full sonra diff gibi
	full yedeğin peşine de vs yapabilirsin kafana göre
*/