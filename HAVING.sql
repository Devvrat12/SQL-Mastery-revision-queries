-- WHERE = filter rows, before grouping
-- HAVING = filter groups, after grouping

SELECT * 
FROM employee_salary;


SELECT occupation, SUM(salary)
FROM employee_salary
GROUP BY occupation
HAVING SUM(salary) > 80000;


SELECT occupation, SUM(salary)
FROM employee_salary
GROUP BY occupation
HAVING SUM(salary) > 20000;

