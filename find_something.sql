SELECT 
    d.first_name,
    d.last_name,
    COUNT(a.attending_doctor_id) AS total_admissions
FROM Doctors d
JOIN Admissions a
    ON d.doctor_id = a.attending_doctor_id
GROUP BY d.first_name, d.last_name;