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

select customer_id, count(amount)
from payment
group by customer_id
having count(amount) >= 40;

select customer_id, sum(amount) 
from payment
where staff_id = 2
group by customer_id
having sum(amount) > 100;


-------- assessment 1 --------

-- 1
select customer_id, sum(amount) 
from payment
where staff_id = 2
group by customer_id
having sum(amount) > 110;

--2
select count(*)
from film
where title like 'J%';

--3
select first_name || ' ' || last_name as full_name
from customer
where first_name like 'E%' and address_id < 500
order by customer_id desc
limit 1;

-------- end of ass 1 --------


select c.email
from address a, customer c
where a.address_id = c.address_id and a.district ilike 'california';

select count(*)
from payment
where to_char(payment_date, 'FMDay') ilike 'monday%';



