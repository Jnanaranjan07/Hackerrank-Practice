select * from  admissions
where patient_id =542
group by patient_id
having admission_date = max(admission_date) ;