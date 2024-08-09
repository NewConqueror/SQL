/*  burada hem ınserted dolu hem deleted dolu ınserted ta güncellenen yeni değerler bulunurken 
	deleted tablosunda tabloda değişen kayıtların eski halleri değişmeden önceki halleri tutuluyor
	o yüzden sadece miktar kısmının değiştiğini varsayalım 
*/

ALTER TRIGGER TRG_TRANSACTION_UPDATE

ON ITEMTRANSACTIONS

AFTER UPDATE

AS
BEGIN

DECLARE @ITEMID AS INT

DECLARE @IOTYPE AS SMALLINT

DECLARE @OLDAMOUNT AS INT

DECLARE @NEWAMOUNT AS INT

DECLARE @AMOUNT AS INT

SELECT @ITEMID=ITEMID, @IOTYPE=IOTYPE, @OLDAMOUNT = AMOUNT FROM DELETED

SELECT @NEWAMOUNT = AMOUNT FROM INSERTED

SELECT @AMOUNT = @OLDAMOUNT - @NEWAMOUNT

IF @IOTYPE =1

UPDATE STOCK SET STOCK=STOCK-@AMOUNT WHERE  ITEMID=@ITEMID 

/* giriş işleminde miktar 10 dan 5 e düşer yani 5 azalmış olur onu söyledik 10 yerine 5 giriyor*/

IF @IOTYPE=2

UPDATE STOCK SET STOCK=STOCK+@AMOUNT WHERE ITEMID= @ITEMID 

/* çıkış işleminde miktar 10 dan 5 e düşer yani stok 5 artmış olur onu söyledik 10 yerine 5 çıkıyor */

END

SELECT * FROM ITEMS WHERE ID=1

SELECT * FROM ITEMTRANSACTIONS WHERE ITEMID = 1

SELECT * FROM ITEMTRANSACTIONS WHERE ID= 7

SELECT * FROM STOCK WHERE ITEMID=1

UPDATE ITEMTRANSACTIONS SET AMOUNT = 20 WHERE ID=7
/*	ID si 7 olaı 1 tipinde 9 dan 20 ye çıkardık stok 20 den 31 e çıktı 
	2 tipindekiler için de aynı şey vs vs
*/