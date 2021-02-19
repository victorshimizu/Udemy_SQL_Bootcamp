--1. What are the customer ids of the first 10 customers who created a payment?

SELECT customer_id FROM payment
ORDER BY payment_date
LIMIT 10;

--2. What are the titles of the 5 shortest (in lenght of runtime) movies?

SELECT title, length FROM film
ORDER BY length
LIMIT 5;

--2.1. How many movies have a length of 46

SELECT COUNT(*) FROM film
WHERE length = 46;

--3. If the previous customer can watch any movie that is 50 minutes or less in run time, how many options does she have

SELECT COUNT(*) FROM film
WHERE length <= 50

