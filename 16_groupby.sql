/* geçenkinden mağazanın gün bazlı cirosuydu
   şimdi günün mağaza bazlı cirosunu yapıcaz*/ 
 /* bunlar benim kendi yaptıklarım

SELECT CITY,DATE2 , SUM(TOTALPRICE) AS TOTALPRICE FROM SALES 
WHERE DATE2 BETWEEN '20190101' AND '20190102'
GROUP BY CITY , DATE2
ORDER BY DATE2 , CITY
benim yaptığımın aynısı hatta benimki daha iyi aq	*/


SELECT DATE2,CITY,SUM(TOTALPRICE) AS TOTALPRICE FROM SALES 
WHERE DATE2='2019-01-01'
GROUP BY DATE2,CITY 
ORDER BY DATE2,SUM(TOTALPRICE) DESC
/* hocanın yaptığı excelde bir şeyler yapıyor bakarsın sonra */ 
