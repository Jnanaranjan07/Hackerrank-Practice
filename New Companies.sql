select 
    c.company_code,c.founder,
    count(distinct lm.lead_manager_code) as lead_managers,
    count(distinct sm.senior_manager_code) as senior_managers,
    count(distinct m.manager_code) as managers,
    count(distinct e.employee_code) as employees
from company c
left join Lead_Manager lm 
    ON C.company_code = lm.company_code
left join Senior_Manager sm 
    ON C.company_code = sm.company_code
left join Manager m 
    ON C.company_code = m.company_code
left join Employee E 
    ON C.company_code = e.company_code
group by C.company_code, c.founder
order by C.company_code;