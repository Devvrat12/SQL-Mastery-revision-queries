-- WHERE Clause

SELECT *
FROM employee_salary
WHERE salary >= 50000
;

SELECT * 
FROM employee_salary
WHERE salary  >= 65000;


SELECT *
FROM employee_demographics;

SELECT first_name, birth_date
FROM employee_demographics
WHERE gender = 'Male';


SELECT first_name, birth_date
FROM employee_demographics
WHERE gender != 'Male';



SELECT *
FROM employee_demographics
WHERE birth_date < '1985-01-01';

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'Male';


SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'Male';

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1989%'
OR birth_date LIKE '1985%';

SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'A%';

SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'A___';
