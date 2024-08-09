DECLARE @I AS INT=0

WHILE @I<200
BEGIN
	INSERT INTO DATES (DATE_) VALUES(GETDATE())
	
	WAITFOR DELAY '00:00:01'
	SET @I = @I+1
END

SELECT * FROM DATES ORDER BY 1 DESC

BACKUP DATABASE [BACKUPTEST] TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\BACKUPTEST.bak' WITH NOFORMAT, NOINIT,  NAME = N'BACKUPTEST-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

BACKUP DATABASE [BACKUPTEST] TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\BACKUPTESTDIFF1.bak' WITH  DIFFERENTIAL , NOFORMAT, NOINIT,  NAME = N'BACKUPTEST-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

BACKUP DATABASE [BACKUPTEST] TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\BACKUPTESTDIFF2.bak' WITH  DIFFERENTIAL , NOFORMAT, NOINIT,  NAME = N'BACKUPTEST-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

BACKUP DATABASE [BACKUPTEST] TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\BACKUPTESTDIFF3.bak' WITH  DIFFERENTIAL , NOFORMAT, NOINIT,  NAME = N'BACKUPTEST-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

BACKUP DATABASE [BACKUPTEST] TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\BACKUPTESTDIFF4.bak' WITH  DIFFERENTIAL , NOFORMAT, NOINIT,  NAME = N'BACKUPTEST-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

/* gördüğün gibi differantial backup full backup ile arasındaki farkı alıyor sadece*/

SELECT * FROM DATES ORDER BY 1 DESC /* en önce almış olduğum FULL backup ı yükledim, sadece 18 kayıt var */
SELECT * FROM DATES ORDER BY 1 DESC /* FULL backup ile dıff 1 i yükledim 131 kayıt var */
SELECT * FROM DATES ORDER BY 1 DESC /* FULL backup ile dıff 2 i yükledim 150 kayıt var */

SELECT * FROM DATES ORDER BY 1 DESC /* FULL backup ile dıff 4 ü yükledim 205 yani BÜTÜN KAYITLAR VAR */
/*	sadece full backup ve son aldığın diff backup olsa yeter diğer 2 3 vs ekstra önlemin database i geri yüklerken 
	onlara ihtiyacın yok
*/