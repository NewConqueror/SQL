/*	BU SEFER FARKLI BİR YÖNTEMLE WİZARD I KULLANMADAN YAPICAZ
	NEW MAİNTENCE PLAN DİYORUZ FULLYEDEK DEDİN MESELA ONLA İLGİLİ BİR DESİNG TABLO KISMI ÇIKTI KARŞINA
	SUBPLAN VAR ONA TIKLA SCHEDULE A TIKLA AYARLA 4 SAATTE BİR GÜNDE 1 VS VS OK DE 
	PEKİİ BU BOŞ EKRANA NAPICAZ

	YANDA TOOLBOX VAR ORAYA TIKLAYINCA BAKIM PLANLARININ GÖREVLERİ GELİCEK
	BACKUP DATABASE TASK GEÇEN DERSE BENZER TABLO AYARLARI YAP
	DESTİNATİON NEREYE ALSIN YEDEĞİ OPTİON KISMINA DA BAK AYNI ZATEN

	PLAN VE JOB GELDİ ÇALIŞTI DİYE MAİL ATTIRALIM
*/

EXEC msdb.dbo.sp_send_dbmail
@profile_name='SQLMAIL',
@body='deneme',
@subject='deneme',
@recipients='sqlserver.egitim@gmail.com'

/*	DESIGN TABLO KISMINA GERİ DÖNDÜK EXECUTE T-SQL STATEMENT TASK DEDİK
	DİREKT SÜRÜKLE BIRAK İLE YAPABİLİYORSUN C# TAKİ FORM GİBİ AYNI
	YEŞİL İLE BAĞLIYORSUN BİRBİRİNE SQL CÜMLESİNİ İÇİNE YAPIŞTIRIYORSUN
	ÇALIŞTI MAİLİ YOLLADI
	
	AYNI ŞEYİ COPY PASTE YAPIYORUZ SORGUYU AYARLA VS BU SEFER KIRMIZI İLE BAĞLIYORUZ
	İŞLEM BAŞARISIZ OLDUĞUNDA YANİ FAİLURE

	DİFF BACKUP İÇİNDE AYNI İŞLEMLER GEÇERLİ DİREKT DESİGN TABLO KISMINI KOPYALAYIP YAPIŞTIRABİLİYORSUN
	SONRASINDA AYAR ÇEK VE TAMAMDIR
*/