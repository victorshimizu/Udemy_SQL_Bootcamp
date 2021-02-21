SELECT ROUND(rental_rate/replacement_cost*100, 2) percent_cost
FROM film;

SELECT 0.1 * replacement_cost AS deposit
FROM film;

SELECT LENGTH(first_name)  
FROM customer;

SELECT last_name || ', ' || UPPER(first_name) 
AS full_name
FROM customer;

SELECT LOWER(first_name) || '.' || LOWER(last_name) || '@sakliacustomer.org' 
AS email
FROM customer;

SELECT LOWER(LEFT(first_name, 1)) || '.' || LOWER(last_name) || '@gmail.com' 
AS custom_email
FROM customer;

-- 

SELECT title, rental_rate 
FROM film
WHERE rental_rate > (SELECT AVG (rental_rate) FROM film);

SELECT film_id, title FROM film
WHERE film_id IN
(SELECT inventory.film_id FROM rental
 INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
 WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30')
ORDER BY title;

SELECT first_name, last_name
FROM customer AS c
WHERE EXISTS
(SELECT * FROM payment AS p 
 WHERE p.customer_id = c.customer_id
 AND amount > 11);
 
--
 
--SELECT emp.name, rep.name AS rep
--FROM employees AS emp
--JOIN employees AS rep
--ON emp.emp_id = rep.report_id;
 
SELECT f1.title, f2.title, f1.length 
FROM film AS f1
INNER JOIN film AS f2
ON f1.film_id != f2.film_id
AND f1.length = f2.length;
 
 
 
 







