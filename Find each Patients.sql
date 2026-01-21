SELECT first_name , last_name , province_name 
from patients as pa join province_names as pr
on pa.province_id = pr.province_id
group by patient_id