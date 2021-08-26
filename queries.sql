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


-------- new database --------

select * from cd.bookings;


-------- assessment 2 --------

--1
select * from cd.facilities;

--2
select name, membercost 
from cd.facilities;

--3
select * from cd.facilities
where membercost > 0;

--4
SELECT facid, name, membercost, monthlymaintenance
FROM cd.facilities
WHERE membercost > 0 AND membercost < monthlymaintenance/50;

--5
SELECT * FROM cd.facilities WHERE name LIKE '%Tennis%';

--6
SELECT * FROM cd.facilities WHERE facid IN (1,5);

--7
SELECT memid, surname, firstname, joindate 
FROM cd.members WHERE joindate >= '2012-09-01';

--8
SELECT DISTINCT surname FROM cd.members
ORDER BY  surname LIMIT 10;

--9
SELECT MAX(joindate) AS latest_signup FROM cd.members;

--10
SELECT COUNT(*) FROM cd.facilities WHERE guestcost >= 10;

--11
SELECT facid, sum(slots)
FROM cd.bookings
WHERE starttime >= '2012-09-01' AND starttime < '2012-10-01'
GROUP BY facid 
ORDER BY SUM(slots);

--12
SELECT facid, sum(slots)
FROM cd.bookings 
GROUP BY facid 
HAVING SUM(slots) > 1000
ORDER BY facid;

--13
SELECT b.starttime, f.name 
FROM cd.facilities f, cd.bookings b
WHERE f.facid = b.facid AND f.facid IN (0,1) 
AND b.starttime >= '2012-09-21' 
AND b.starttime < '2012-09-22' 
ORDER BY b.starttime;

--14
SELECT b.starttime 
FROM cd.bookings b, cd.members m 
WHERE m.memid = b.memid 
AND m.firstname='David' 
AND m.surname='Farrell';

-------- end of ass 2 --------