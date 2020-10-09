
select products.pro_id as 'Product ID',pro_name as 'Product',quantity as 'Quantity' 
from stock,products,supplier
where  products.pro_id = stock.pro_id and supplier.sup_id = products.sup_id order by products.pro_id