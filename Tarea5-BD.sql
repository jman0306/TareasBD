--Juan Manuel Ambriz Nu�ez & Juan Pablo Garcia Vega--


with altura_cilindro as (
select (100*8) + 10 as altura_cilindro_formula 
),
--El radio tiene que ser lo suficientemente grande para el arn�s. Un radio de 20 ser� suficiente. Es m�s chico que el lado m�s largo del arn�s para que este pueda sostenerlo. 
radio_cilindro as (
select 25 as radio_cilindro_formula 
)
--Las medidas de los cilindros a hacer est�n dadas por:
select altura_cilindro_formula, radio_cilindro_formula, pi()*power(radio_cilindro_formula, 2)*altura_cilindro_formula as volumen_cilindro
from altura_cilindro, radio_cilindro


-- Para calcular cuantas necesitamos por tienda

--Reconocemos que solo hay dos tiendas
select store_id from store s group by s.store_id;

-- Hay 2311 peliculas para la store 2 y 2270 para la store 1
select s.store_id, count(i.inventory_id) as numero_peliculas_tienda
from inventory i inner join store s using(store_id)
group by s.store_id

with numero_peliculas as(
select s.store_id, count(i.inventory_id) as numero_peliculas_tienda
from inventory i inner join store s using(store_id)
group by s.store_id
),

cilindros_por_tienda as (
-- Si en cada cilindro caben 100, y en cada tienda hay su respectiva cantidad, solo dividimos
select np.store_id as tienda, np.numero_peliculas_tienda/100 as N�mero_de_cilindros_por_tienda
from numero_peliculas np
order by tienda asc
)
select * from cilindros_por_tienda 
