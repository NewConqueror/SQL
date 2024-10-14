
TRUNCATE TABLE WORKERS
INSERT INTO WORKERS
(/*[ID],zaten oto */[WORKERCODE], [WORKERNAME], [GENDER], [BIRTHDATE], [TCNO], [WORKERBARCODER])
VALUES('123456789','FATİH YENİ', 'E','20040728','13652464090',NEWID())
/* NEWID() UNIQUE yani benzersiz bir değer üretir */

SELECT * FROM WORKERS

INSERT INTO WORKERTRANSACTİONS  ([WORKERID], [DATE_], [IOTYPE], [GATEID])
VALUES(1,'2023-05-07 17:01:00', 'C',2)

SELECT * FROM WORKERTRANSACTİONS
/* kişinin ne zaman girdiğini çıktığını hangi kapıdan girdiğini çıktığını hepsini görebiliyoruz */
