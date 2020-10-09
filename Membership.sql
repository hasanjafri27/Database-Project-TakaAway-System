
select mem_id as 'Membership id', cust_name AS 'Customer Name', cust_city AS 'City', expiry_date AS 'Expiry Date' 
from customers c 
inner join membership m 
on c.cust_id = m.cust_id