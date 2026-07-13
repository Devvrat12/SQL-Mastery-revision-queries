-- Union

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT employee_id, first_name, last_name
FROM employee_demographics
union
SELECT employee_id, first_name, last_name
FROM employee_salary
ORDER BY employee_id
;

SELECT first_name, last_name, 'Old_Man' AS LABEL
FROM employee_demographics
WHERE age > 40 AND gender = 'male'
UNION
SELECT first_name, last_name, 'Old_Lady' AS LABEL
FROM employee_demographics
WHERE age > 40 AND gender = 'female'
UNION
SELECT first_name, last_name, 'Highly Paid' AS LABEL
FROM employee_salary
WHERE salary > 70000
;

