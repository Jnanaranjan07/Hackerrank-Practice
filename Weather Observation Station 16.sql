select cast(MIN(LAT_N) as  decimal(10,4))
FROM STATION
where LAT_N > 38.7780  ;