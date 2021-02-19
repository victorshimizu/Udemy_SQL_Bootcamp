--1. How many payment transactions were greater than $5.00?
SELECT COUNT(*) FROM payment
WHERE amount > 5;
--R: 3618 transactions

--2. How many actors actors have a first name that starts with the letter P? 
SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'P%';
--R: 5 Actors (4 Penelopes and 1 Parker)

--3. How many unique districts are our customers from?
SELECT COUNT(DISTINCT(district)) FROM address;
--R: 378 unique districts

--4. Retrieve the list of names for those distinct districts from the previous question.
SELECT DISTINCT(district) FROM address;
--

--5. How many films have a rating of R and a replacement cost between $5 and $15?
SELECT COUNT(*) FROM film
WHERE rating = 'R' 
AND replacement_cost BETWEEN 5 AND 15;
--R: 52 films

--6. How many films have the word Truman somewhere in the Title?
SELECT COUNT(*) FROM film
WHERE title LIKE '%Truman%';
--R: 5 films