-- CURSOR bir tablodan dönen değerlerin içerisinde DÖNGÜ kullanman gerektiğinde yapıyorsun for döngüsü gibi yani

USE ETRADEILERI

SELECT *,DATEDIFF(YEAR,BIRTHDATE,GETDATE()) AS YAS FROM USERS
WHERE DAY(BIRTHDATE)=25 AND MONTH(BIRTHDATE)=4


msdb.dbo.sp_send_dbmail @profile_name = 'SQLMAIL',
@SUBJECT = 'MUTLU YILLAR'
@BODY = ' Sayın Nebahat Sevenli, doğum gününüz kutlu olsun. 27.yaşınızı kutlar mutlu yıllar dileriz '
@recipients= 'sqlserver.egitim@gmail.com'


DECLARE @NAMESURNAME AS VARCHAR(50) = 'Nebahat SEVENLİ'
DECLARE @AGE AS INT = 30
DECLARE @EMAIL AS VARCHAR(100)= 'sqlserver.egitim@gmail.com'
DECLARE @MSG AS VARCHAR(500)
SET @MSG=' Sayın '+@NAMESURNAME+', doğum gününüz kutlu olsun. '+CONVERT(VARCHAR,@AGE)+'.yaşınızı kutlar mutlu yıllar dileriz '

EXEC msdb.dbo.sp_send_dbmail @profile_name = 'SQLMAIL',
@SUBJECT = 'MUTLU YILLAR'
@BODY = @MSG
@recipients= @EMAIL



DECLARE @NAMESURNAME AS VARCHAR(50)
DECLARE @AGE AS INT 
DECLARE @EMAIL AS VARCHAR(100)
DECLARE @MSG AS VARCHAR(500)

DECLARE CRS CURSOR FOR
	NAMESURNAME,DATEDIFF(YEAR,BIRTHDATE,GETDATE()) AS AGE, EMAIL 
	FROM USERS
	WHERE DAY(BIRTHDATE)=25 AND MONTH(BIRTHDATE)=4

OPEN CRS  
-- BİR SONRAKİ SATIRA GEÇİYOR tam çevirisi sonrakini tut içine doldur neyin
	FETCH NEXT FROM CRS INTO @NAMESURNAME,@AGE ,@EMAIL --birinciyi alıyor burda

	WHILE @@FETCH_STATUS = 0 -- SON SATIRA GELİP GELMEDİĞİNİ SANA SÖYLER 1 İSE SONA GELDİN DEMEKTİR 0 DEVAM
		BEGIN 
			SET @MSG=' Sayın '+@NAMESURNAME+', doğum gününüz kutlu olsun. '+CONVERT(VARCHAR,@AGE)+'.yaşınızı kutlar mutlu yıllar dileriz '

			EXEC msdb.dbo.sp_send_dbmail @profile_name = 'SQLMAIL',
			@SUBJECT = 'MUTLU YILLAR'
			@BODY = @MSG
			@recipients= @EMAIL

			FETCH NEXT FROM CRS INTO @NAMESURNAME,@AGE ,@EMAIL
		END
CLOSE CRS
DEALLOCATE CRS -- CURSOR Ü HAFIZADAN TEMİZLE DİYORUZ FREE GİBİ BİRAZ