SELECT
CITY,COUNT(DISTINCT CUSTOMERNAME) AS UNIQUECUSTOMER,
COUNT(DISTINCT FICHENO) CUSTOMERCOUNT,
COUNT(*) ITEMCOUNT
FROM SALES WHERE MONTHNAME_ ='01.OCAK'

GROUP BY CITY
ORDER BY CITY 