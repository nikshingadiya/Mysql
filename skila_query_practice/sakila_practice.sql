
-- Which actors have the first name ‘Scarlett’?
USE sakila;
select * from actor
where first_name="Scarlett";
-- Which actors have the last name ‘Johansson’

select * from actor
where last_name="Johansson";

-- How many distinct actors last names are there?
select count(distinct last_name) from  actor;

-- Which last names are not repeated?

select last_name from actor group by last_name having count(*) = 1;

-- Which last names appear more than once?
select last_name from actor group by last_name having count(*)>1;

-- last name repeated most of the time 
select last_name ,count(*) as c from actor 
WHERE last_name LIKE 'b%'
group by last_name 
order by c desc
limit 10;

-- Which actor has appeared in the most films?
select actor.actor_id, actor.first_name, actor.last_name,
       count(actor_id) as film_count
from actor join film_actor using (actor_id)
group by actor_id
order by film_count desc
limit 1;


-- is ‘Academy Dinosaur’ available for rent from Store 1?
SELECT 
    film_text.title,inventory.film_id, inventory.store_id, inventory.inventory_id
FROM 
    inventory 
    JOIN film_text ON inventory.film_id = film_text.film_id
WHERE 
    inventory.film_id = (SELECT film_id FROM film_text WHERE title="Academy Dinosaur")
    AND inventory.store_id = 1;
    
select film.film_id, film.title, inventory.store_id, inventory.inventory_id
from inventory join film using (film_id)
where film.title = 'Academy Dinosaur' and inventory.store_id = 1;