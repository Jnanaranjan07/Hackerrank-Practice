select first_name,last_name,birth_date
from patients 
where birth_date >= '1970-01-01' and birth_date < '1980-01-01'
order by birth_date asc