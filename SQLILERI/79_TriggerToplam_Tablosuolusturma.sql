DECLARE @I AS INT=0

WHILE @I <90
BEGIN
	DECLARE @ITEMID AS INT
	DECLARE @DATE AS DATETIME
	DECLARE @AMOUNT AS INT
	DECLARE @IOTYPE AS SMALLINT

	SET @ITEMID = ROUND(RAND()*4,0)
	IF @ITEMID = 0
		SET @ITEMID = 1

	SET @DATE = DATEADD(DAY, -ROUND( RAND()*365,0 ), GETDATE() )

	SET @AMOUNT = ROUND( RAND()*9,0)+1 

	SET @IOTYPE = ROUND( RAND()*1,0) +1


	SELECT @ITEMID AS ITEMID , @DATE AS DATE_ , @AMOUNT AS AMOUNT , @IOTYPE AS IOTYPE


	INSERT INTO ITEMTRANSACTIONS
	( ITEMID,DATE_,AMOUNT,IOTYPE ) VALUES (@ITEMID, @DATE, @AMOUNT, @IOTYPE )

	SET @I = @I + 1
END
