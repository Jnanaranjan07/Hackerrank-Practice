SELECT 
sum(case when gender ='M' then 1 else 0 end ) as male_count ,
 sum(case when gender ='F' then 1 else 0 end) as female_count
 from patients ;