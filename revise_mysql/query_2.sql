Use sakila;

-- select *from actor
-- -- where last_update="2006-02-15 04:34:33";
-- order by first_name desc;
select *from film;
SELECT 
    film_id, 
    title, 
    rental_duration, 
    rental_rate+1 as rental_rate_d
FROM
   film;
   
-- unique things
-- select 
--  distinct rental_duration  from film;
--     

-- Where 
-- SELECT *FROM film
-- WHERE rating='NC-17' AND  rental_duration>4;

-- select *from film 
-- where rental_duration between 2 and 4; 

-- select *from film
-- where title like "%b"; 
-- where title like "%b%";
-- where title like "_________b";
-- where title like "p________b";
-- where description like "%car%";
-- where description regexp 'Drama|Documentry'
-- where description regexp   '[s]ci'
-- where description regexp 'science|fiction'

-- isnull 
-- select *from film
-- where language_id IS NOT 
-- Order by

-- select * from film
-- order by rental_rate DESC,title ASC

-- column order sort by 
-- select length ,rating from film
-- order by 1,2 

-- select *from film;
-- select  *,rental_duration * rental_rate AS total 
-- from film
-- Order By total DESC

-- Limit
-- select *from film 
-- -- limit 10;
-- limit 4,10 -- (offset,remaining 10 )

-- Inner Join 
-- select language.language_id,name,title from language
-- join film On film.language_id=language.language_id

-- self_join 
-- find out all movies those have same rental_duration
-- select A.title,A.rental_rate,A.rental_duration from 
-- film A
-- Join film B  on A.rental_duration=B.rental_duration

-- multiple table join 
-- we want to find staff member  name and customer name between payment occur 

-- SELECT c.first_name,c.last_update,s.first_name as cashier ,p.payment_id,p.amount FROM 
-- payment p
-- join customer c 
-- on c.customer_id=p.customer_id
-- join staff s on 
-- p.staff_id= s.staff_id

-- Compound join

-- select f.title,ac.first_name,f.rental_rate
-- from film f
-- join film_actor fa 
-- on fa.film_id=f.film_id and f.rental_rate>4
-- join 
-- actor ac
-- on ac.actor_id=fa.actor_id 

-- Left Join  
-- select c.first_name,c.email,adds.address, adds.phone from 
-- address adds
-- left join customer c on adds.address_id=c.address_id

-- Using clause
-- select c.first_name,c.email,adds.address, adds.phone from 
-- address adds
-- left join customer c 
-- Using(address_id)

-- natural join

-- select * from  city
-- natural join  country;

-- cross join 
-- select actor_id,title from  film_actor
-- cross join  film
-- limit 10000

-- Union 
-- custmoer and actor name
-- select first_name 
-- from actor
-- union
-- select first_name
-- from customer

select last_insert_id()