-- Case statement

SELECT * 
FROM employee_demographics;

SELECT CONCAT(first_name, " ", last_name) AS Full_name , age, 
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 AND 50 THEN 'Middle aged'
    WHEN age >=51 THEN 'OLD'
END AS Age_Bracket
FROM employee_demographics;

-- PAY INCREASE AND BONUS 
-- SAL <= 50000 THEN 5% 
-- SAL > 50000 THEN 7%
-- IN FINANCE THEN 10% BONUS

SELECT * 
FROM employee_salary;

SELECT *
FROM parks_departments;

-- DEPARTMENT ID = 6 IS FINANCE



SELECT CONCAT(first_name, " ", last_name) AS Full_name, salary AS Previous_Salary, 
CASE
	WHEN salary <= 50000 THEN salary + (salary*0.05)
    WHEN salary > 50000 THEN salary + (salary*0.07)
END AS Current_Salary
FROM employee_salary;

SELECT CONCAT(first_name, " ", last_name) AS Full_name, salary AS Previous_Salary, 
CASE
	WHEN salary <= 50000 THEN salary + (salary*0.05)
    WHEN salary > 50000 THEN salary + (salary*0.07)
END AS Current_Salary, 
CASE
	WHEN dept_id = 6 THEN salary*0.1
END AS BONUS
FROM employee_salary;
