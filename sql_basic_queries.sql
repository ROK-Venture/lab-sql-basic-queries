USE sakila;

-- 1. Display all available tables in the Sakila database.
SHOW tables;

-- 2. Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3. Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
SELECT title FROM film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name AS language FROM language;

-- 3.3 List of first names of all employees from the staff table
SELECT first_name FROM staff;

-- 4. Retrieve unique release years
SELECT DISTINCT(release_year) FROM film;

-- Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
# answer/summary the company has 2 stores
SELECT COUNT(*) as number_of_stores FROM store;

-- 5.2 Determine the number of employees that the company has.
# answer/summary the company has 2 employees
SELECT COUNT(*) AS number_of_employees FROM staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.
# answer/summary 4581 films are available for rent // currently 183 rented
SELECT COUNT(DISTINCT inventory_id) AS available_films FROM inventory;
SELECT COUNT(*) FROM rental WHERE return_date is NULL;

-- 5.4 Determine the number of distinct last names of the actors in the database.
# answer/summary there are 121 actors with a unique last name
SELECT COUNT(DISTINCT last_name) FROM actor;

-- 6. Retrieve the 10 longest films.
SELECT film_id, title, length
FROM film
ORDER BY length DESC; 

-- 7. Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT * FROM actor
WHERE first_name = "SCARLETT";

###BONUS###
-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
-- Hint: use LIKE operator. More information here.
SELECT * FROM film
WHERE length > 100 AND title LIKE "%ARMAGEDDON%";

-- 7.3 Determine the number of films that include Behind the Scenes content
SELECT * FROM film
WHERE special_features LIKE "Behind the Scenes";