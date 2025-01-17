--�R�N KATEGOR�LER�NE G�RE S�PAR�� DA�ILIMI
SELECT
ITM.CATEGORY1,
SUM(OD.LINETOTAL) AS TOPLAMSIPARIS_TUTARI,
SUM(OD.AMOUNT) AS TOPLAMSIPARIS_ADED�,
COUNT(OD.ID) AS TOPLAMSIPARIS_SAYISI
FROM ORDERS O
    INNER JOIN USERS U ON U.ID=O.USERID
	INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID=A.CITYID
	INNER JOIN TOWNS T ON T.ID=A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
	INNER JOIN INVOICES I ON I.ORDERID=O.ID
	INNER JOIN ORDERDETAILS OD ON OD.ORDERID=O.ID
	INNER JOIN ITEMS ITM ON ITM.ID=OD.ITEMID

GROUP BY ITM.CATEGORY1
ORDER BY 2 DESC