--1. What customer_ids are eligible (40 or more transactions) for platinum status?
SELECT customer_id, COUNT(*) FROM payment
GROUP BY customer_id
HAVING COUNT(*) >= 40;
--

--2. What are the customer ids of customers who have spent more than $100 in payment transactions with our staff_id number 2?
SELECT staff_id, customer_id, SUM(amount) FROM payment
WHERE staff_id = 2
GROUP BY customer_id, staff_id
HAVING SUM(amount) > 100;
--


