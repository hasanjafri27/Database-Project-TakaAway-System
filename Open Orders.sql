Select cust_order.order_id as 'Order ID', pro_order.pro_id as 'Product ID', cust_order.status as 'Status', orders.Date as 'Order Date'
from pro_order, cust_order, orders
where pro_order.order_id = cust_order.order_id and orders.order_id= cust_order.order_id and status='Open'