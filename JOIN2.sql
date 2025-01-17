SELECT
CT.CITY,COUNT(U.ID) AS KULLANICISAYISI

FROM
USERS U
JOIN ADDRESS A ON A.USERID=U.ID
JOIN COUNTRIES C ON C.ID=A.COUNTRYID
JOIN CITIES CT ON CT.ID=A.CITYID
JOIN TOWNS T ON T.ID=A.TOWNID
JOIN DISTRICTS D ON D.ID=A.DISTRICTID
GROUP BY CT.CITY