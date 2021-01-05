-- SQL COMMAND: DQL
 
-- Select * from employees; 
-- SELECT * FROM departments;
-- How many times has employee 10001 had a raise
-- select * from salaries where emp_no = 10001;
-- select * from titles where emp_no = 10006;

-- SQL COMMAND: DDL 
-- RENAMING COLUMNS 
-- SELECT emp_no AS "Employee #", birth_date as "Birthday", first_name AS  "First name" FROM employees;

-- Column Concatenation
-- select concat(emp_no, ' is a ', title) AS "Employee Title" from titles;
/*
Select 
    emp_no, 
    concat(first_name,' ', last_name) as "full name" 
from employees;
*/

-- AGGREGATE FUNCTIONS
-- SELECT COUNT(emp_no) FROM EMPLOYEES;

-- select max(salary) from salaries; -- 158220
-- select sum(salary) from salaries; -- 181.480.757.419

/*
select 
    emp_no, concat(first_name, ' ', last_name) AS 'fullname' 
from employees
where concat(first_name, ' ', last_name) = 'Mayumi Schueller';
*/

/*
* DB: Employees
* Table: employees
* Question: Find the age of all employees who's name starts with M.
* Sample output: https://imgur.com/vXs4093
* Use EXTRACT (YEAR FROM AGE(birth_date)) we will learn about this in later parts of the course
*/
-- SELECT *, EXTRACT (YEAR FROM AGE(birth_date)) as "age" FROM employees where first_name like 'M%';


/*
* DB: Employees
* Table: employees
* Question: How many people's name start with A and end with R?
* Expected output: 1846
*/
/*
select count(emp_no)
from employees 
where first_name ilike 'A%' and first_name ilike '%R';
*/
/*
select count(emp_no)
from employees
where first_name ilike 'A%R';
*/









