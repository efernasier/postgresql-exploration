/*
* DB: Store
* Table: customers
* Question: adjust the following query to display the null values as "No Address"
*/
-- select customerid, firstname, lastname, COALESCE(address2, 'No Address') as "address2" from customers -- where address2 is NULL

/*
* DB: Store
* Table: customers
* Question: Fix the following query to apply proper 3VL

SELECT *
FROM customers
WHERE COALESCE(address2, 'default') IS NOT null;

*/

/*
* DB: Store
* Table: customers
* Question: Fix the following query to apply proper 3VL
*/

-- SELECT coalesce(lastName, 'Empty'), * from customers where (age is NOT null);


-- Who between the ages of 30 and 50 has an income less than 50 000?
-- (include 30 and 50 in the results)

/*
select count(customerid) 
from customers 
where (age BETWEEN 30 and 50) 
    and income < 50000;  -- 2362
*/


-- What is the average income between the ages of 20 and 50? (Including 20 and 50)
-- select avg(income) from customers where (age BETWEEN 20 and 50) -- 59437.890353920888

/*
* DB: Store
* Table: orders
* Question: How many orders were made by customer 7888, 1082, 12808, 9623
*/

-- SELECT * FROM orders where customerid in (7888, 1082, 12808, 9623); -- 6 rows

/*
* DB: Store
* Table: customers
* Question: How many people's zipcode have a 2 in it?.
* Expected output: 4211 
*/
-- select * from customers where cast(zip as text) like '%2%';

/*
* DB: Store
* Table: customers
* Question: How many people's zipcode start with 2 with the 3rd character being a 1.
* Expected output: 109 
*/
-- select * from customers where cast(zip as text) Ilike '2_1%';


/*
* DB: Store
* Table: customers
* Question: Which states have phone numbers starting with 302?
* Replace null values with "No State"                                                  
* Expected output: https://imgur.com/AVe6G4c
*/
/*
select 
COALESCE(state, 'No State') as state 
from customers 
where phone::text 
like '302%'
*/
-- SELECT coalesce(state, 'No State') as "State" FROM customers WHERE phone::text LIKE '302%';


