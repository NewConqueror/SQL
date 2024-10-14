/* göremiyorlar bunun sebebi tabloyu kilitliyor olmam işte bu klidin adı lock sonuna bir hint
	koyarak bu işi çözebiliriz*/
SELECT * FROM ITEMS
WITH (NOLOCK) /* lock a takılmadan çek dedik hemen geldi */
WHERE ID = 3 
/* peki bize eski fiyatı mı yoksa bitmemiş haliyle yeni fiyatı mı gösterir
	yeni fiyatı gösterirr niye burda sql seçim yapıyor bir transaction tamamlanmadıysa
	onun tamamlanma ihtimali tamamlanmama ihtimalinden daha yüksek
	yani 55 olma ihtimali 53 kalma ihtimalinden daha yüksek o yüzden bize onu getirir
	default ayarlarda sql mdf ten değil ldf dosyasındaki tran log dosyasından okur
	ve bize bitmiş gibi getirir böylece lock a takılmaz
*/

/*	kendi sayfamızda niye with nolock vs yazmadık çünkü zaten bize ait
	biz güncel halini görebilecek durumdayız ama diğer kullanıcılar değil
*/

DBCC OPENTRAN /* sistemde açık tran var mı bize onu söyler kimin açık vs */


SELECT * FROM ITEMS WHERE ID=3
/*	sonuç gelmiyor bir türlü halbuki basit sorgu ama olmuyor neden
	çünkü transaction açık ve işlem bitmedi bitmediği için sistem bilmiyor
	bu transaction geriye mi alınacak commit mi edilecek bilmiyor
	onun için transaction bitene kadar bekletiyor işlemi geriye alalım
*/
/*	alır almaz hemen çalıştı eski değeriyle geldi 53 le 55 yapmıştık ama tran ı geri aldık 
	otomatik update trıggerı kaydı loglamıştı o ne oldu ona bakalım
	onu da otomatik olarak geriye almış rollback yapmış 
	burdaki anahtar cümle şu 
	triggerlar transactionların bir parçasıdır trıgger ın içinde olsa tran gerçekleşmicek
	rollback yapıcaktı 
*/
/* diğer kullanıcılar ne olucak beklicek mi bir ürün için kalanlar beklicek mi hayır
	devamı yukarıda
*/


/*	bizim yaptığımız tek satır olarak çalıştırdığımız her işlem bloğu da otomatik olarak
	transaction işlemidir başına begın tran vs yazmayız işlem çalışırken tranı başlatır
	transaction log a yazmaya başlar işlem bittikten sonra commit eder ve çıkar
	eğer bir hata ile karşılaşırsa sistem işlemi gerçekleştirmez bu tekler için
	toplu şekilde istiyorsak banka şeyinde olduğu gibi vs bizim yapmamız lazım
*/

SELECT * FROM ITEMS WHERE ID=3
/*	ürünün şimdiki fiyatına bakıyoruz 55 lira ama transaction hala kapatılmadı
	log dosyasında canlı dataya aktarılmış değil bu esnada başka birisi
	bu ürünü sorgulamak isterse neyle karşılaşır 
*/

BEGIN TRAN
UPDATE ITEMS SET UNITPRICE = 55 WHERE ID = 3
/*	transaction ı açtık ama kapatmadık trigger da çalıştı önceden yazdığımız */

SELECT * FROM ITEMS_LOG WHERE ID = 3

ROLLBACK
