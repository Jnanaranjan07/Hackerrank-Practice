select max(months * salary)as max_earn,
 count(*) as emp_count 
 from Employee
where months * salary = (select max(months * salary) 
from Employee );
