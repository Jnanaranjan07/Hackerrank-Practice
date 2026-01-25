SELECT 
    DAY(admission_date) AS day_of_month,
    COUNT(*) AS admission_count
FROM admissions
GROUP BY DAY(admission_date)
ORDER BY admission_count DESC;