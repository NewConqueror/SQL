/* NOTİFY OPERATOR TASK */

/* maintance planda tanımladığımız herhangi bir görevde işlem başarılı ya da başarısız ise
	haber verecek şekilde bir mekanizma yaptık mail yoluyla SP_SENDDBMAIL prosedürü ile
	daha kolay bir yolu var bu da notify operator

	toolbox ın içerisinde notify operator task var design kısmına ekle
	öncesinde bir operatör tanımlaman ve onu notify operator e bağlaman lazım yoksa çalışmaz
	sql server agent ın altında operators kısmında tanımla 

	emailname pager emailname var oraya email i vs gir sonra da ne sıklıkla çalışacak onları gir
	hafta içi cumartesi pazar 00 dan 23 59 a kadar vs vs
	bağladın mesaj konusunu yaz başarıyla alındı alınırken hata oluştu vs çalıştır çalıştığını gör
	sqlserver mail yerine notify kullanarak aynı işi yaptık
