/*	data dosyası üzerinde değil log dosyası üzerinde bir yedek alma işlemidir oltp sistemlerde yapılan
	tüm hareketler log dosyasına yazıldığı için siz logun yedeğini aldığınızda ordaki yapılan tüm hareketleri
	görebildiğiniz için aldığınız yedek içerisinde istediğin saniyeye istediğin harekete doğrudan dönüş 
	yapabilirsin 

	bunun için database in üzerinde properties te options recovery model var full seçili ise
	sistem yapılan tüm işlemleri transaction log dosyasına yazıyor ama işi bilince silmiyor
	yaptığın her işlem log dosyasında tutuluyor bir süre sonra log dosyası data dan büyük olabiliyor
	ama bu sayeede bütün hareketlere ulaşabildiğin için istediğin tarihe saniyeye dönebiliyorsun
	bulk-logged da sadece yapılan toplu işlemler loglanır basit sql cümleleri yazılmaz
	simple da hiçbiri loglanmaz temizlenir performans için mantıklı ama transaction log backup alamazsın
	şuanda backuptest databese in log dosyası data dosyasından büyük çünkü her işlem yazılıyor
*/




/*	33 mb full backup 733kb log 221 e düştü tlog kendinden önceki log dosyası ile arasındaki farkı alır
	5 dk da bir alıyorsan 5 dk lık fark vardır sadece ondan önceki 6 saatlik yoktur 
	bir tane daha 349 kb
*/

SELECT * FROM DATES

DELETE FROM DATES /* tabloyu uçurduk hasss yapmamız gereken ne*/

/* HEMEN BU ANDA BİR TRANSACTION LOG ALMAK */

/*	sonra restore database seçtin tamamını en son 19:41:41 deki var e bu zaten sildiğimiz
	biraz daha önceye gitmek lazım spesific zamana dön 19:39 a dön 19:40 a dön vs vs
*/
BACKUP LOG [BACKUPTEST] TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\BACKUPTESTTLOG1.bak' WITH NOFORMAT, NOINIT,  NAME = N'BACKUPTEST-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

BACKUP LOG [BACKUPTEST] TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\BACKUPTESTTLOG2.bak' WITH NOFORMAT, NOINIT,  NAME = N'BACKUPTEST-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

BACKUP LOG [BACKUPTEST] TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\BACKUPTESTTLOG3.bak' WITH NOFORMAT, NOINIT,  NAME = N'BACKUPTEST-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

BACKUP LOG [BACKUPTEST] TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\BACKUPTESTTLOG4.bak' WITH NOFORMAT, NOINIT,  NAME = N'BACKUPTEST-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO