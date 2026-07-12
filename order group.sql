SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
;

SELECT *
FROM employee_demographics;


SELECT first_name, gender, age
FROM employee_demographics
ORDER BY gender;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;


SELECT first_name, gender, age
FROM employee_demographics
ORDER BY age DESC;


SELECT * 
FROM employee_salary
;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary;


SELECT occupation, AVG(salary)
FROM employee_salary
GROUP BY occupation;

SELECT occupation, AVG(salary)
FROM employee_salary
GROUP BY occupation
ORDER BY AVG(salary) DESC;