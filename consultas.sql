select fa.film_id,f.title, 
c.name 'Categoria' , ad.address 'Dirección',
concat(a.first_name,' ',a.last_name) 'Nombre Completo',
f.length 'Duración', (select avg(length) FROM sakila.film) 'Promedio'
from sakila.film_actor fa
inner join sakila.film as f on fa.film_id=f.film_id
inner join sakila.actor as a on fa.actor_id=a.actor_id
inner join sakila.film_category as fc on f.film_id=fc.film_id
inner join sakila.category as c on fc.category_id=c.category_id
inner join sakila.inventory as inv on fa.film_id=inv.film_id
inner join sakila.store as st on inv.store_id=st.store_id
inner join sakila.address as ad on st.address_id=ad.address_id

ORDER BY 2;