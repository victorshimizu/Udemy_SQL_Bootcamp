--1. During wich months did payments occur? Format your answer to return back the full month name.
SELECT DISTINCT(TO_CHAR(payment_date, 'Month'))
FROM payment;
--ORDER BY TO_CHAR(payment_date, 'Month'); Alphabetical order, not correct one
--

--2. How many payments occurred on a Monday?
--My Solution, knowing that Monday = 1
SELECT COUNT(*)
FROM payment
WHERE EXTRACT(DOW FROM payment_date) = 1;
--R: 2948 payments occurred on a Monday

--Another solution, using the string 'Monday'
SELECT COUNT(*)
FROM payment
WHERE TO_CHAR(payment_date, 'Day') LIKE 'Monday%';
--R: 2948 payments occurred on a Monday



