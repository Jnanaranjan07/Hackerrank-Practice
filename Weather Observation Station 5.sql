SELECT city, length
FROM (
    SELECT TOP 1 city, LEN(city) AS length
    FROM station
    ORDER BY LEN(city) ASC, city ASC
) AS shortest

UNION ALL

SELECT city, length
FROM (
    SELECT TOP 1 city, LEN(city) AS length
    FROM station
    ORDER BY LEN(city) DESC, city ASC
) AS longest;
