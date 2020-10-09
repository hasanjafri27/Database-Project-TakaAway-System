select s.sup_id as 'ID', s.sup_name as 'Name', s.sup_city as 'City', pro_name as 'Product Name', pro_price as 'Price per Product' 
from supplier s 
Inner Join products 
on s.sup_id = products.sup_id 
order by s.sup_id