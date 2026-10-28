

-- 1 Display all available tables in the Sakila database.

show tables;

-- 2 Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
-- 3 Retrieve the following columns from their respective tables:

-- 3.1 Titles of all films from the film table
SELECT title FROM film;
-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name AS language
FROM language;
-- 3.3 List of first names of all employees from the staff table
SELECT first_name FROM staff;
-- 4 Retrieve unique release years.
SELECT DISTINCT release_year FROM film;

-- 5 Counting records for database insights:

-- 5.1 Determine the number of stores that the company has.
SELECT count(store_id) FROM store;

-- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(DISTINCT film_id) AS films_available
FROM inventory;

SELECT count(rental_id) as films_rented
from rental;

-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT DISTINCT count(last_name) from actor;
-- 6 Retrieve the 10 longest films.
SELECT film_id, length from film
order by length desc
limit 10;



-- 7 Use filtering techniques in order to:

-- 7.1 Retrieve all actors with the first name "SCARLETT".
select actor_id, first_name from actor
where first_name = "SCARLETT";
-- BONUS:

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
-- Hint: use LIKE operator. More information here.
select film_id, title from film
where title like "armag%" and length > 100;
-- 7.3 Determine the number of films that include Behind the Scenes content
select COUNT(special_features) from film
where special_features like "%behind the Scenes%";