CREATE TABLE TEST (ID INT IDENTITY(1,1),CUSTOMERNAME VARCHAR(60))
/* buralar klasik oluştur alanları ne olsun sil vs kısmı*/
DROP TABLE TEST


CREATE TABLE [dbo].[TEST](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CUSTOMERNAME] [varchar](60) NULL
) 
/*bu tablonun script i  bunu kullanarak test tablosu oluşturulabilir*/


CREATE TABLE [dbo].[TEST](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CUSTOMERNAME] [varchar](60) NULL,
 CONSTRAINT [PK_TEST] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)
)
/* bu ise tablonun id kısmının primary key yapılmış hali bu kodları çalıştırarak 
   tabloyu primary key de dahil olmak üzere oluşturabilirsin
   hoca bunun benzerini excelde yazıp buraya yapıştırıyor 
   böylece excelde tasarla buraya ayrıca yaz ameleliği ortadan kalkmış oluyor
   fotoğrafına bak ders içeriğine yüklicem*/
