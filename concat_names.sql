SELECT 
    concat(UPPER(last_name) , ',' , LOWER(first_name)) AS  new_name_format
FROM Patients
ORDER BY  first_name DESC ;