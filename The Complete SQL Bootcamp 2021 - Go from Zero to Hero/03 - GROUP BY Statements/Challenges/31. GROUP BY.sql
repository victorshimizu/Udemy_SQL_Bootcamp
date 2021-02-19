--1. How many payments did each staff member handle and who gets the bonus?
SELECT staff_id, COUNT(*) FROM payment
GROUP BY staff_id
ORDER BY COUNT(amount) DESC;
--R: Staff 1 = 7292, Staff 2 = 7304. Staff 2 get the bonus

--1.1 Just to see the sum of the payments
SELECT staff_id, SUM(amount) FROM payment
GROUP BY staff_id
ORDER BY SUM(amount) DESC;
--R: Staff 2 still has the higher number.

--2. What is the average replacement cost per MPAA rating?
SELECT rating, ROUND(AVG(replacement_cost), 2) FROM film
GROUP BY rating
ORDER BY AVG(replacement_cost);
--

--3. What are the customer ids of the top 5 customers by total spend?
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;
--



