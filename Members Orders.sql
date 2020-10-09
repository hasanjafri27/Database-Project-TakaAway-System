
select c.cust_id as 'Customer ID',c.cust_name as 'Customer Name',count(o.order_id) as 'Total Orders' 
from customers c, cust_order o, membership m
where c.cust_id = o.cust_id and c.cust_id = m.cust_id 
group by c.cust_id,c.cust_name
