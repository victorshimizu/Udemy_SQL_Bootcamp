/*
--73.1
SELECT customer_id,
CASE 
	WHEN (customer_id <= 100) THEN 'Premium'
	WHEN (customer_id BETWEEN 100 AND 200) THEN 'Plus'
	ELSE 'Normal'
END AS customer_class
FROM customer
ORDER BY customer_id;
*/
/*
--73.2
SELECT customer_id,
CASE customer_id
	WHEN 2 THEN 'Winner'
	WHEN 5 THEN 'Runner-up'
	ELSE 'Normal'
END AS raffle_results
FROM customer
ORDER BY customer_id;
*/
/*
--73.3
SELECT
SUM(CASE rental_rate
		WHEN 0.99 THEN 1
		ELSE 0
    END) AS bargains,
SUM(CASE rental_rate
		WHEN 2.99 THEN 1
		ELSE 0
    END) AS regular,
SUM(CASE rental_rate
		WHEN 4.99 THEN 1
		ELSE 0
    END) AS premium
FROM film;
*/











