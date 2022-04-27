--1
select contact_name  
from suppliers s 
where (s.contact_title = 'Sales Representative');

--2
select contact_name 
from suppliers s 
where (s.contact_title != 'Marketing Manager');

--3
select o.order_id  
from orders o, customers c  
where o.customer_id =c.customer_id  and (c.country  != 'USA');

--4
select distinct p.product_id, p.product_name 
from categories c join products p using (category_id)
join order_details od using (product_id)
join orders o using (order_id)
where shipped_date is not null 
and c.description = 'Cheeses';

--5
select o.*
from orders o
where (ship_country = 'France' or ship_country = 'Belgium' );

--6
select o.*
from orders o 
where (ship_country = 'Argentina' or ship_country = 'Venezuela' or ship_country = 'Mexico' or ship_country = 'Brazil' );

--7
select o.*
from orders o 
where (ship_country != 'Argentina' and ship_country != 'Venezuela' and ship_country != 'Mexico' and ship_country != 'Brazil' );

--8
select CONCAT(e.first_name,' ',e.last_name) as nameE 
from employees e;

--9
select sum(p.units_in_stock*p.unit_price)  
from products p

--10
select c.country, count(*) as numClientesfrom customers c group by c.country;

--11
select e.first_name, extract(year from current_timestamp)-extract ( year from e.birth_date) 
from employees e

--12(No terminada)
select o.customer_id , o.order_date 
from customers c, orders o
where c.customer_id = o.customer_id order by(o.order_date)

--13
select c.contact_title, count(*) as suma_clientes 
from customers c group by contact_title;

--14




