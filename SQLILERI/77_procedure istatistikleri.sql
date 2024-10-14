SELECT 
DB_NAME(database_id) AS DBNAME,
OBJECT_NAME(object_id) AS PROCNAME,
*
FROM sys.dm_exec_procedure_stats

WHERE DB_NAME(database_id)='ETRADEILERI'

/*	STORED PROCEDUR ile ilgili İSTATİSTİKleri bize getirir
	adı ne kadar çalıştığı ne kadar yer işgal ettiği 
	ne kadar çalıştığı vs vs
*/

SET STATISTICS IO ON
SET STATISTICS TIME ON

EXEC SP_SATISLAR '20190101','20190131','%'

/* ne kadar page okuduğu kaç sn de okuduğu vs de görebilirsin	
