select cast(round(sum(LAT_N), 2) as decimal(10,2)),
       cast(round(sum(LONG_W), 2) as decimal(10,2))
       from STATION ; 
       