SELECT first_name,last_name,max(height) as height
FROM Patients
having height =max(height)