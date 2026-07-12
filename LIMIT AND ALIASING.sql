-- LIMIT AND ALIASING 

SELECT *
FROM employee_demographics
;

SELECT gender, age
FROM employee_demographics
LIMIT 3
;


SELECT first_name, age, gender
FROM employee_demographics
LIMIT 3
;

SELECT *
FROM employee_salary;


SELECT occupation, AVG(salary)
FROM employee_salary
GROUP BY occupation
LIMIT 4;

SELECT occupation, AVG(salary) AS AVG_SALARY
FROM employee_salary
GROUP BY occupation
;

SELECT first_name AS FULL_NAME, gender
FROM employee_demographics
;
