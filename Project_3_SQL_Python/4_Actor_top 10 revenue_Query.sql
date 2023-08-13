select*from inventory;
select*from rental;
select*from payment;
select*from film;
select*from film_actor;
select*from actor;

select a.actor_id,a.first_name,a.last_name, sum(p.amount) as total_amount from film as f inner join  film_actor as fa on f.film_id=fa.film_id inner join actor as a on fa.actor_id=a.actor_id inner join inventory as i on f.film_id=i.film_id inner join rental as r on i.inventory_id=r.inventory_id inner join payment as p on p.rental_id=r.rental_id group by a.actor_id,a.first_name,a.last_name order by total_amount desc limit 10; 