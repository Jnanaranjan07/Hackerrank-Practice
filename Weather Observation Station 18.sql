SELECT 
cast(
    abs(MAX(LAT_N) - min(LAT_N)) + 
    abs(MAX(LONG_W) - min(LONG_W))
AS DECIMAL(10,4))
FROM station ;