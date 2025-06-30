-- A median is defined as a number separating the higher half of a data set from the lower half. 
-- Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places

WITH ORDERLIST AS( SELECT LAT_N, ROW_NUMBER() OVER (ORDER BY LAT_N) AS ROWASC, ROW_NUMBER() OVER (ORDER BY LAT_N DESC) AS ROWDESC FROM STATION ),

MEDIANS AS( SELECT LAT_N FROM ORDERLIST WHERE ROWASC=ROWDESC OR ROWASC +1 = ROWDESC ) SELECT ROUND (AVG(LAT_N * 1.0),4)AS MEDIAN FROM MEDIANS;
