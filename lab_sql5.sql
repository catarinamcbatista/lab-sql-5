#Lab | SQL Queries 5

#1. Drop column picture from staff.

USE sakila;

SELECT picture FROM sakila.staff;

ALTER TABLE staff DROP COLUMN picture;

#To verify if picture column has been deleted
SELECT*FROM sakila.staff;

#A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.

SELECT*FROM sakila.customer WHERE first_name = 'TAMMY' AND last_name = 'SANDERS';

INSERT INTO sakila.staff values(3,'Tammy','Sanders',79,'Tammy.Sanders@sakilastaff.com',2,1,'Tammy','er23','2006-02-15 04:57:20');

select*from sakila.staff;

#Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1 today.

Select*from sakila.film where title='ACADEMY DINOSAUR';

Select rental_id FROM sakila.rental;

Select*FROM sakila.rental;

Select*from sakila.inventory where film_id=1;

Select*from sakila.customer where first_name="Charlotte";

Select*from sakila.rental where customer_id=130;

INSERT INTO sakila.rental values(rental_id,current_date(),1,130,'2020-10-18 18:50:08',1,'2006-02-15 05:03:42');

Select * FROM sakila.rental where customer_id =130;

#Delete non-active users, but first, create a backup table deleted_users to store customer_id, email, and the date the user was deleted.

CREATE TABLE deleted_user AS (SELECT customer_id, email, create_date, active 
FROM sakila.customer 
WHERE active=0);

SELECT*FROM sakila.deleted_user;

ALTER TABLE deleted_user ADD date_deleted datetime default now();

SELECT*FROM sakila.deleted_user;
 