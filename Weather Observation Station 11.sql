select distinct city
from station
where city like '%[^a,e,i,o,u]' OR city like '[^a,e,i,o,u]%' ;