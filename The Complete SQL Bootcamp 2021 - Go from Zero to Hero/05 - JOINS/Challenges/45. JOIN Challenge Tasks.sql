--1. What are the emails of the customers who live in California?
--My solution
SELECT customer_id, district, email FROM customer
LEFT JOIN address
ON customer.address_id = address.address_id
WHERE district = 'California';

--Course solution
SELECT district, email FROM address
INNER JOIN customer
ON customer.address_id = address.address_id
WHERE district = 'California';
--

--2. Get a list of all the movies 'Nick Wahlberg' has been in.
--My solution
SELECT title, first_name, last_name FROM film
INNER JOIN film_actor ON film.film_id = film_actor.film_id
INNER JOIN actor ON actor.actor_id = film_actor.actor_id
WHERE first_name = 'Nick' AND last_name = 'Wahlberg';

--Course solution
SELECT title, first_name, last_name FROM film_actor
INNER JOIN actor ON film_actor.actor_id = actor.actor_id
INNER JOIN film ON film_actor.film_id = film.film_id
WHERE first_name = 'Nick' AND last_name = 'Wahlberg';
--








