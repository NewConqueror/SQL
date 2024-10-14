-- TRIM, LTRIM, RTRIM

SELECT TRIM('    FATİH      YENİ     ')
/*FATİH      YENİ*/ 
-- baştaki ve sondaki boşlukları temizler ama ortadakini temizleyemez 

SELECT LTRIM('    FATİH..YENİ     ')
/*FATİH..YENİ     */ -- ilk kelimenin solundakileri temizler

SELECT RTRIM('    FATİH..YENİ     ')
/*    FATİH..YENİ*/ -- ilk kelimenin sağındakileri temizler


SELECT LTRIM(RTRIM('    FATİH..YENİ     ')) 
/*FATİH..YENİ*/ --böyle bir kullanım da var trım ile aynı işi yapıyor baştan ve sondan siliyor
