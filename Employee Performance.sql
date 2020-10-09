select e.emp_id as 'Employee ID',e.emp_name as 'Employee Name',count(o.order_id) as 'Total Orders' 
from employees e
inner join orders o
on  e.emp_id = o.emp_id group by e.emp_id,e.emp_name