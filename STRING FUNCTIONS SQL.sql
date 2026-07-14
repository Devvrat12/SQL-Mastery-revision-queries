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