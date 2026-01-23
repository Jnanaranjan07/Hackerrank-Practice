SELECT p.patient_id,p.first_name,p.last_name
FROM patients as p join admissions as a
on p.patient_id = a.patient_id
where a.diagnosis ='Dementia';