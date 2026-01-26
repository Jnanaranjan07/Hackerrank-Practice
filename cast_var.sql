SELECT patient_id, attending_doctor_id, diagnosis
FROM admissions
WHERE 
    (
        patient_id % 2 = 1
        AND attending_doctor_id IN (1, 5, 19)
    )
    OR
    (
        CAST(attending_doctor_id AS VARCHAR(10)) LIKE '%2%'
        AND LEN(CAST(patient_id AS VARCHAR(10))) = 3
    );