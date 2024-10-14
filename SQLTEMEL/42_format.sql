-- FORMAT tarih saat formatını istediğin yere göre ayarlayabilirsin

SELECT FORMAT(GETDATE(), 'd', 'en-US') AS 'AMERIKA',
	   FORMAT(GETDATE(), 'd', 'en-gb') AS 'INGILTERE',
	   FORMAT(GETDATE(), 'd', 'de-de') AS 'ALMANYA',
	   FORMAT(GETDATE(), 'd', 'zh-cn') AS 'CIN'
	   /* d de sadece gun ay yıl tarihleri olur*/ 

SELECT FORMAT(GETDATE(), 'D', 'en-US') AS 'AMERIKA',
	   FORMAT(GETDATE(), 'D', 'en-gb') AS 'INGILTERE',
	   FORMAT(GETDATE(), 'D', 'de-de') AS 'ALMANYA',
	   FORMAT(GETDATE(), 'D', 'zh-cn') AS 'CIN'

	   /* D de ise gun ismi ay ismi ve yıl olur*/ 
