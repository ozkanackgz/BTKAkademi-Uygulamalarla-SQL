SELECT MONTHNAME_,CITY,SUM(TOTALPRICE) AS TOTALPRICE
FROM SALES

GROUP BY CITY,MONTHNAME_
ORDER BY MONTHNAME_,SUM(TOTALPRICE) DESC