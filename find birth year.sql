SELECT COUNT(*) AS TotalPatients
FROM Patients
WHERE YEAR(birth_date) = 2010;