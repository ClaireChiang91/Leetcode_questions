#From the example and test cases, the final output should be rounded. 


SELECT ROUND(SUM(tiv_2016),2) AS tiv_2016 FROM Insurance 
WHERE tiv_2015 IN (SELECT tiv_2015 FROM Insurance GROUP BY tiv_2015 HAVING COUNT(*)>1 )
AND 
    CONCAT(lat,lon) IN (SELECT CONCAT(lat,lon) FROM Insurance GROUP BY lat, lon HAVING COUNT(*)=1);





SELECT ROUND(SUM(TIV_2016),2) AS TIV_2016
FROM 
    insurance
    LEFT JOIN (SELECT TIV_2015, COUNT(*) AS f1 FROM insurance GROUP BY TIV_2015) a USING (TIV_2015)
    LEFT JOIN (SELECT LAT, LON, COUNT(*) AS f2 FROM insurance GROUP BY LAT, LON) b USING (LAT, LON)
WHERE
    f1 > 1 AND f2 = 1; 
