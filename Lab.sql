#1
select first_name, last_name from sakila.actor
where first_name = 'Scarlett';

#2
select count(inventory_id) as films_available from sakila.rental;
#2
select count(distinct(film_id)) as films_available from sakila.film;
select count(distinct(rental_id)) as films_rented from sakila.rental;

#3
select min(length) as min_length, max(length) as max_length from sakila.film;

#4
select floor(avg(length) / 60) as avg_length_hours, floor(avg(length) - 60) as avg_length_minutes from sakila.film;

#5
select count(distinct(last_name)) from sakila.actor;

#6
select datediff(max(rental_date),min(rental_date)) as time_operating from sakila.rental;

#7
select rental_id, rental_date, MONTHNAME(rental_date), DAYNAME(rental_date) from sakila.rental 
limit 20;

#8
select rental_id, rental_date, MONTH(rental_date), WEEKDAY(rental_date), WEEKDAY(rental_date) < 5 as 'WORKDAY' from sakila.rental;

#9
select count(rental_date) from sakila.rental
where MONTH(rental_date) = 8;

