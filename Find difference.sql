select max(weight)-min(weight) as weight_data
from patients
where last_name = 'Maroni' ;