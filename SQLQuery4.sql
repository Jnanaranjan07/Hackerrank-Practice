SELECT city, COUNT(*) AS total_patients
FROM Patients
GROUP BY city
ORDER BY total_patients DESC, city ASC;