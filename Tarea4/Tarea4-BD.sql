--Pregunta1
create or replace function convert_date(date_i interval)
returns integer
as $convert_date$
declare 
result_conv integer;
begin 
	select extract('day' from date_i::interval) into result_conv;
	return result_conv; 
	
end;
$convert_date$ language plpgsql;

select customer_id ,convert_date((max(payment_date) - min(payment_date)))/ count(payment_date) as Prom_P1T4 
from payment p 
group by customer_id 
order by customer_id asc;

--Pregunta2 (en documento)

--Pregunta3
select distinct p.customer_id,  convert_date(avg(return_date - rental_date)) as Prom_p3T4,
convert_date((max(payment_date) - min(payment_date)))/ count(payment_date) as Prom_P1T4, 
(convert_date(avg(return_date - rental_date)))-(convert_date((max(payment_date) - min(payment_date)))/ count(payment_date)) as Prom_P3fT4
from rental r, payment p 
where r.customer_id = p.customer_id
group by p.customer_id 
order by p.customer_id asc;




