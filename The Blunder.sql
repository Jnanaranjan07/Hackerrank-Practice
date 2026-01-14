
select cast(ceiling(
avg(cast(Salary as FLOAT)) 
-avg(cast(REPLACE(cast(Salary AS VARCHAR(20)), '0', '') as FLOAT))) as int )AS Error
FROM EMPLOYEES;