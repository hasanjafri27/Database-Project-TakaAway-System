
select p.pro_name as 'Products', o.Date as 'Sold Date',sum(quantity) as 'Quantity'  
from products p, pro_order po, orders o
where p.pro_id = po.pro_id and o.order_id = p.pro_id 
and o.date >= '20150201' and o.date < '20150228'
group by p.pro_name, o.Date

