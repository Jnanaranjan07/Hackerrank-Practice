select b.n,
case
when b.p is null then 'Root'
when not EXISTS(select 1 from bst x where x.p =b.n ) then 'Leaf'
else 'Inner'
end as NodeType
from bst b
order by b.n ; 
