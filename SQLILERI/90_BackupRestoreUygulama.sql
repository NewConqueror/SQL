INSERT INTO DATES (DATE_) VALUES (GETDATE())

SELECT * FROM DATES
/*sağ clik tasks backup tıkla default ayar sıkıştır yaptık en üst properties database settings */


/* bu script database in yedeğini alır*/
BACKUP DATABASE [BACKUPTEST] 
TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\BACKUPTEST.bak' 
WITH NOFORMAT, NOINIT,  
NAME = N'BACKUPTEST-Full Database Backup', 
SKIP, NOREWIND, NOUNLOAD, COMPRESSION,  STATS = 10
GO

/*  diyelim bir felaket oldu veritabanı patladı napıcan restore et 
	daha önce yaptığın gibi aynı sana altta bilgileri gösteriyor
	boyutu yedek alınma tarihi yedek alınma tipi vs vs
*/

/* bu da yedeği yükleme scripti sen ok a basıyon ama arka planda bu script çalışıyor */
USE [master]
RESTORE DATABASE [BACKUPTEST] 
FROM  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\BACKUPTEST.bak' 
WITH  FILE = 1,  NOUNLOAD,  STATS = 5

GO

SELECT * FROM DATES /* kayıt hala duruyor yeni kayıtlar atalım */

INSERT INTO DATES (DATE_) VALUES(GETDATE())

/* kayıtı attıktan sonra database i uçurdum*/

USE [master]
RESTORE DATABASE [BACKUPTEST] FROM  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\BACKUPTEST.bak' WITH  FILE = 1,  NOUNLOAD,  STATS = 5

GO

/*	tekrar restore ettiğimde ise diğer 3 kayıt yoktu çünkü onların olduğunun yedeğini almamıştım
	sadece  1 tane olanın yedeğini aldım yani kısaca 3 tane veri kaybı yaşadık
	daha büyük database olsas kayıplar çok daha büyük olacaktı
*/

SELECT * FROM DATES
