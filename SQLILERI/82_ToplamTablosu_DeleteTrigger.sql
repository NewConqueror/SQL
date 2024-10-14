CREATE TRIGGER TRG_TRANSACTION_DELETE

ON ITEMTRANSACTIONS

AFTER DELETE

AS
BEGIN

DECLARE @ITEMID AS INT

DECLARE @AMOUNT AS INT

DECLARE @IOTYPE AS SMALLINT

SELECT @ITEMID=ITEMID, @AMOUNT=AMOUNT, @IOTYPE=IOTYPE FROM DELETED

IF @IOTYPE =1

UPDATE STOCK SET STOCK=STOCK-@AMOUNT WHERE  ITEMID=@ITEMID 

IF @IOTYPE=2

UPDATE STOCK SET STOCK=STOCK+@AMOUNT WHERE ITEMID= @ITEMID 

END

/*  eklediğimizde stok nasıl otomatik artıyorsa aynı işlemi silme için de yaptık
	1 yani girişi sildiğimizde stoktan ürün azalıcak
	2 yani çıkışı sildiğimizde ise stokta ürün artıcak otomatik olarak
*/

SELECT * FROM ITEMS WHERE ID=1
SELECT * FROM ITEMTRANSACTIONS WHERE ITEMID = 1
SELECT * FROM STOCK WHERE ITEMID=1


DELETE FROM ITEMTRANSACTIONS WHERE ID = 6
/*  1 sorgu çalıştırmama rağmen arka planda 2 sorgu çalıştırılıyor 
	1 i siliyoz 2 yi siliyoz vs vs
*/
