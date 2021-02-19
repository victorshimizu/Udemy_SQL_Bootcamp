--1. What is the email for the customer with the name Nancy Thomas?

SELECT email FROM customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas';

--2. A customer wants to know the description of the movie 'Outlaw Hanky'.

SELECT description FROM film
WHERE title = 'Outlaw Hanky';

--3. Can you get the phone number for the customer who lives at '259 Ipoh Drive'?

SELECT address_id, phone FROM address
WHERE address = '259 Ipoh Drive';

--3.1 Another query just to know who is the customer

SELECT first_name, last_name FROM customer
WHERE address_id = 432;


