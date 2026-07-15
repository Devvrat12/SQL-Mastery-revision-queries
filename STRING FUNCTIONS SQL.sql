-- String Functions

SELECT *
FROM employee_demographics;

SELECT CONCAT(first_name, ' ', last_name) AS Full_name
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT CONCAT(first_name, ' - ', occupation, ' - ', salary) AS Personal_info
FROM employee_salary;

SELECT TRIM('    SKY      ');

SELECT LOWER('SKY');

SELECT UPPER('sky');

SELECT CONCAT(UPPER(first_name), ' ', UPPER(last_name)) AS FULL_NAME
FROM employee_salary;

SELECT UPPER(first_name) AS first_name
FROM employee_salary;

-- SELECT SPLIT_PART('dev@gmail.com', '@', 1);

SELECT REVERSE(first_name)
FROM employee_salary;

SELECT first_name, LENGTH(first_name) AS Name_Length
FROM employee_demographics;

SELECT LTRIM('      SKY      ');

SELECT RTRIM('         SKY      ');

SELECT RIGHT(first_name, 3) 
FROM employee_salary;

SELECT LEFT(first_name, 3)
FROM employee_demographics;

SELECT first_name, SUBSTRING(first_name, 3, 6)
FROM employee_demographics;

SELECT first_name, SUBSTRING(first_name, 3, 2)
FROM employee_demographics;

SELECT CONCAT(first_name, " ", last_name) AS full_name, SUBSTRING(birth_date, 6, 2) AS Birth_month
FROM employee_demographics;

-- MONTHNAME(STR_TO_DATE('07', '%m'))
-- We can directly use the birth_date in the MONTHNAME() FUNCTION.
SELECT CONCAT(first_name, " ", last_name) AS full_name, MONTHNAME(birth_date) AS Month_name
FROM employee_demographics;


SELECT first_name , REPLACE(first_name, 'a', 'z')
FROM employee_demographics;

SELECT first_name , REPLACE(first_name, 'A', 'Z')
FROM employee_demographics;

SELECT first_name, LOCATE('A', first_name)
FROM employee_demographics;
