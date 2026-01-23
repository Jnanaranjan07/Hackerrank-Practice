SELECT first_name 
FROM patients
group by first_name
having count(*) =1
order by first_name asc ;