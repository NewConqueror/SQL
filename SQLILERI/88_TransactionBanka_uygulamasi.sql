-- AHMET ÖMER'E 1000 TL PARA GÖNDERİYOR


/*	TRAN içerisine aldık ROLLBACK dediğimiz anda bütün işlemi geri alır 
	çünkü bütün işlemleri bir bütünmüş gibi görüyor
	bir yerde sıkıntı çıktı mı hepsini iptal ediyor
*/

BEGIN TRAN 

	INSERT INTO MONEYTRANSACTIONS
	(ACCOUNTID, TRANTYPE, AMOUNT, DATE_ , CURRENCY, EFTCODE1, EFTCODE2 )
	VALUES
	(1,2,1000, GETDATE(), 'TL', '12345678', '' )

/*	@@ global değişkenler için kullanılır hata verdiğinde yukarıdaki işlem sırasında
	hata verirse yani @@ERROR 0 dan büyük olursa if e gir rollback tran ve return yap
	yani yapılan bütün işlemleri geri al ve kapat
*/
	IF @@ERROR >0 
		BEGIN
			ROLLBACK TRAN
			RETURN
		END

	UPDATE ACCOUNTBALANCE SET BALANCE=BALANCE-1000 WHERE ACCOUNTID = 1
/* update kısmında bir hata oluşursa rollback tran ve return yap aynı üstteki gibi
*/
	IF @@ERROR >0 
		BEGIN
			ROLLBACK TRAN
			RETURN
		END

	INSERT INTO MONEYTRANSACTIONS
	(ACCOUNTID, TRANTYPE, AMOUNT, DATE_, CURRENCY, EFTCODE1, EFTCODE2 )
	VALUES
	(2,1,1000, DATEADD(MINUTE,GETDATE(),1), 'TL', '12345678', 'ABCDEF0987654321' )
/* ikinci insert into kısmında sıkıntı çıkarsa rollback vs vs yap yine aynı şeyler
*/
	IF @@ERROR >0 
		BEGIN
			ROLLBACK TRAN
			RETURN
		END

	UPDATE ACCOUNTBALANCE SET BALANCE=BALANCE+1000 WHERE ACCOUNTID = 2

	IF @@ERROR >0 
		BEGIN
			ROLLBACK TRAN
			RETURN
		END
/*eğer hiçbir hata oluşmaz program sorunsuz çalışırsa Tran ı commit et yani bitir,kapat,kaydet
*/
COMMIT TRAN



SELECT * FROM CUSTOMERS
SELECT * FROM MONEYTRANSACTIONS

SELECT C.CUSTOMERNAME, A.ACCOUNTNO, A.ACCOUNTNAME, A.CURRENCY, B.BALANCE FROM  ACCOUNTBALANCE B
INNER JOIN ACCOUNTS  A ON A.ID = B.ACCOUNTID
INNER JOIN CUSTOMERS C ON C.ID = A.CUSTOMERID

INSERT INTO MONEYTRANSACTIONS
(ACCOUNTID, TRANTYPE, AMOUNT, DATE_ , CURRENCY, EFTCODE1, EFTCODE2 )
VALUES
(1,2,1000, GETDATE(), 'TL', '12345678', '' )

UPDATE ACCOUNTBALANCE SET BALANCE=BALANCE-1000 WHERE ACCOUNTID = 1

/*  sistem hata verdi bir sebepten dolayı, ahmetten 1000 lira gitti
	ama ömere 1000 lira gelmedi ikisinin de bakiye 0 şuan
	ikisi de birbirini suçluyor sen yollamadın sen aldın ama almadım diyon vs
*/

INSERT INTO MONEYTRANSACTIONS
(ACCOUNTID, TRANTYPE, AMOUNT, DATE_, CURRENCY, EFTCODE1, EFTCODE2 )
VALUES
(2,1,1000, DATEADD(MINUTE,GETDATE(),1), 'TL', '12345678', 'ABCDEF0987654321' )

UPDATE ACCOUNTBALANCE SET BALANCE=BALANCE+1000 WHERE ACCOUNTID = 2


/* sorunsuz çalıştı sıkıntı yok peki ya sıkıntı çıkarsa */
INSERT INTO MONEYTRANSACTIONS
(ACCOUNTID, TRANTYPE, AMOUNT, DATE_, CURRENCY, EFTCODE1, EFTCODE2 )
VALUES
(2,1,1000, DATEADD(DAY,GETDATE(),1), 'TL', '12345678', '0987654321' )

UPDATE ACCOUNTBALANCE SET BALANCE=BALANCE+1000 WHERE ACCOUNTID = 2
