SELECT 
cast(
    sqrt(
        Power(MAX(LAT_N) - MIN(LAT_N), 2) +
        Power(MAX(LONG_W) - MIN(LONG_W), 2)
    )
as Decimal(10,4))
FROM STATION ;