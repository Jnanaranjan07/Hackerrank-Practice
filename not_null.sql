SELECT allergies, COUNT(*) AS allergy_count
FROM Patients
WHERE allergies IS NOT NULL
GROUP BY allergies
ORDER BY allergy_count DESC;