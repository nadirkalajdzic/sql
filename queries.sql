select * from film;

select * from paymnet;

SELECT COUNT(*) FROM payment
WHERE amount > 5

SELECT * FROM actor

SELECT COUNT(first_name) FROM actor
WHERE first_name LIKE 'P%'

SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'P%'

select * from customer

select * from address

SELECT COUNT(DISTINCT(district)) FROM address

SELECT DISTINCT(district) FROM address

SELECT COUNT(*) FROM film
WHERE rating = 'R' AND replacement_cost BETWEEN 5 AND 15;

select count(*) from film
where title like '%Truman%'

select staff_id, COUNT(amount) from payment
GROUP by staff_id

select staff_id, COUNT(amount) from payment
GROUP by staff_id
order by COUNT(amount) DESC

select rating, AVG(replacement_cost) from film
group by rating

select customer_id, sum(amount)
from payment
group by customer_id
order by sum(amount) desc
limit 5