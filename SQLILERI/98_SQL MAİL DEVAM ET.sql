/* BU DERSTE SQL SERVER İLE MAİL GÖNDERME İŞLEMİ YAPICAZ*/

/* MANAGEMENT KISMINDA DATABASE MAİL AYARLARINI YAPMAN GEREKİYOR*/

EXEC msdb.dbo.sp_send_dbmail
	@profile_name = 'SQLMAIL',
	@recipients = 'sqlserver.egitim@gmail.com',
	@body = 'merhaba bu bir test mailidir.',
	@subject = 'merhaba'


	EXEC msdb.dbo.sp_send_dbmail
	@profile_name = 'SQLMAIL',
	@recipients = 'sqlserver.egitim@gmail.com',
	@body = 'merhaba bu bir test mailidir.',
	@subject = 'merhaba',

	@query = 'SELECT COUNT(*) FROM CRM2.DBO.CUSTOMERS',
	@query = 'SELECT TOP 10 * FROM CRM2.DBO.CUSTOMERS',
	@attach_query_result_as_file = 1;

/* ŞİMDİ BACKUP ALINDIĞINDA BİZE YEDEK BAŞARIYLA ALINDI DİYE BİR MAİL GÖNDERSİN */
/* YENİ BİR STEP OLARAK EKLİYORSUN VE ALTTAKİ EXEC SORGUSUNU YAPIŞTIRIYORSUN*/
/* STEP KISMINA GELDİĞİNDE  ADVANCED-> ON THE SUCCESS ACTION GO THE NEXT STEP*/
EXEC msdb.dbo.sp_send_dbmail
	@profile_name = 'SQLMAIL',
	@recipients = 'sqlserver.egitim@gmail.com',
	@body = 'BACKUP DATABASE  I DIFF  YEDEĞİ BAŞARIYLA ALINDI',
	@subject = 'YEDEK ALMA'

/* PEKİ HATA OLDUĞUNDA ONUN DA AYARI VAR ADVANCED-> ON FAILURE ACTİON SORGUY YAPIŞTIR VS */
