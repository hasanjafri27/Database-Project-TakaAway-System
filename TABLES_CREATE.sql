CREATE TABLE customers
(
	cust_id int primary key,
	cust_name varchar(20),
	cust_city varchar(20) 
);

CREATE TABLE employees
(
	emp_id int primary key,
	emp_name varchar(20),
	emp_address varchar(20),
	salary int
);

CREATE TABLE supplier
(
	sup_id int primary key,
	sup_name varchar(20),
	sup_city varchar(20)
);

CREATE TABLE membership
(
	mem_id int primary key,
	expiry_date date,
	cust_id int foreign key references customers(cust_id)	
);

CREATE TABLE stock
(
	pro_id int,
	quantity varchar(20)
);

CREATE TABLE orders
(
	order_id int primary key,
	emp_id int foreign key references employees(emp_id),
	Date date
);

CREATE TABLE products
(
	pro_id int primary key,
	pro_name varchar(20),
	pro_price float,
	sup_id int foreign key references supplier(sup_id)
);

CREATE TABLE admins
(
	emp_id int foreign key references employees(emp_id),
	username varchar(20),
	user_pass varchar(20),
);

CREATE TABLE expenses
(
	electricity varchar(20),
	water varchar(20),
	sui_gas varchar(20),
	months varchar(20)
);

CREATE TABLE pro_order
(
	order_id int foreign key references orders(order_id),
	pro_id int foreign key references products(pro_id),
	quantity int
);

CREATE TABLE cust_order
(
	cust_id int foreign key references customers(cust_id),
	order_id int foreign key references orders(order_id),
	status varchar(20)
)
