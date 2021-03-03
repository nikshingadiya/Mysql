USE sakila;
select city,country,country.country_id from country
join city on city.country_id=country.country_id