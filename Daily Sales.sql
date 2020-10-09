
select p.pro_name as 'Products', o.Date as 'Sold Date',sum(quantity)  as 'Total Product Sold' 
from products p, pro_order po, orders o
where p.pro_id = po.pro_id and o.order_id = po.order_id 
group by p.pro_name, o.Date