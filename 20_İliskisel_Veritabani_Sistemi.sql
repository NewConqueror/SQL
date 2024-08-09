SELECT * FROM COUNTRIES

SELECT * FROM CITIES

DELETE FROM COUNTRIES WHERE ID=9
/* silmeme izin verdi ama hala başka bir alana bağlı cities tablosundaki moskovada
   hala varmış gibi gözüküyor kontrolü tamamen yazılımcıya bırakıyor
   başka bir tabloda referansı var mı vs
   eğer bunları veritabanı bazında yaparsak veritabanı bizim yerimize otomatik olarak yapar
   şimdi bunu nasıl yapıcaz bakalım
*/

DELETE FROM CITIES WHERE COUNTRYID=9

/* cities tablosuna gel design de sağ click relationships de burda add de
   ve artık bir ilişkiyi orda tanımlaman lazım nasıl tanımlican
   tables and columns specific  3 nokta primary key hangisi foreign key hangisi
   seç diyor
   primary için countries i seçtin o zaman diyor ki bunları hangi alanlarla bağlayacaksın
   ID alanı cities tablosundaki country id alanını seçiyorsun bu foreign key detayları da
   görebilirsin */
   
/* insert ve update specification diye bir yer var diyor ki burda hangi kuralları uyguliyim
   default olarak bırakırsan herhangi bir şey silmene izin vermez*/

DELETE FROM COUNTRIES WHERE ID=8
   /* sen foreigny key bağalntısı yüzünden bunu silemezsin niye çünkü buna bağlı foreign keyler var
      şayet sen bunu silmek istiyorsan önce cities teki kaydı silmelisin ancak ondan sonra
	  countries tablosundan silebilirsin*/

DELETE FROM CITIES WHERE ID=13
/* yapınca oldu */

/* şimdi update delete ayarlarını değiştirip cascade yapıcaz bakalım şimdi napıcak norveçi silelim */


DELETE FROM COUNTRIES WHERE ID=7
/* kaydı sildi ama arka planda detay tablosundan da sildi
   veri bütünlüğünü bozmadı cities tablosundan da kayıt sildi
   tehlikeli bir şey yaptı 
   örneğin userid yi sildiğini düşün bir sürü yerde geçiyor hepsi silinecekti
   bu tehlikeli durum genelde de önermiyoruz */

/* peki relation a geldik set null dedik */
DELETE FROM COUNTRIES WHERE ID=6

/* kendini siler bağlı olduğu tablodaki değeri yerine ise NULL değer atar
   kaydı komple silmez ama herhangi bir bağ da bırakmaz*/

/* set default diyelim */

DELETE FROM COUNTRIES WHERE ID=6

/* default olarak da set null gibi çalışır kendi tablosundan silinir
   bulunduğu tablodaki değerine ise NULL yazar*/ 

/* ilişkiler veri tabanı bazında bu şekilde belirleniyor fakat bu yolu tercih eden de var
   etmeyen de var bu yazılım geliştiren firmaya bağlı biraz da şartlara göre değişebilir*/   