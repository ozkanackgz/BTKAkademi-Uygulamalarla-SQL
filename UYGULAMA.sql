SELECT 
    U.USERNAME_ AS KULLANICIADI,U.NAMESURNAME AS ADSOYAD,
    CT.CITY AS IL,T.TOWN AS ILCE,D.DISTRICT AS SEMT,A.ADDRESSTEXT AS ACIKADRES,
    O.ID AS SIPARISID,O.DATE_ AS TARIH,O.TOTALPRICE AS TOPLAMTUTAR,
    P.DATE_ AS ODEMETARIHI,P.APPROVECODE AS BANKAONAYKODU,
    I.DATE_ AS FATURATARIHI,I.CARGOFICHENO AS KARGOFISNO
FROM ORDERS O
    INNER JOIN USERS U ON U.ID=O.USERID
	INNER JOIN ADDRESS A ON A.ID=O.ADDRESSID
	INNER JOIN CITIES CT ON CT.ID=A.CITYID
	INNER JOIN TOWNS T ON T.ID=A.TOWNID
	INNER JOIN DISTRICTS D ON D.ID=A.DISTRICTID
	INNER JOIN PAYMENTS P ON P.ORDERID=O.ID
	INNER JOIN INVOICES I ON I.ORDERID=O.ID

WHERE U.NAMESURNAME='Ceyda GEZG�NC�'
