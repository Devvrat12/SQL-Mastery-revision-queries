-- Window functions

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

-- OVER()

SELECT first_name,
occupation,
salary,
AVG(salary)
OVER(PARTITION BY occupation)
AS Avg_salary
FROM employee_salary;

-- RANK() - Same values get the same rank.

SELECT CONCAT(first_name, " ", last_name) AS Full_name,
occupation,
salary,
RANK()
	OVER(ORDER BY SALARY DESC)
    AS Ranking
FROM employee_salary;

-- DENSE_RANK() - No gaps.

SELECT CONCAT(first_name, " ", last_name) AS Full_name,
occupation,
salary,
DENSE_RANK()
	OVER(ORDER BY salary DESC)
    AS Ranking
FROM employee_salary;

-- ROW_NUMBER() - Gives every row a unique number.

SELECT CONCAT(first_name, " ", last_name) AS Full_name,
occupation,
salary,
ROW_NUMBER()
	OVER(ORDER BY SALARY DESC)
    AS Row_num
FROM employee_salary;

-- LAG() - Get previous row's value.

SELECT
    first_name,
    salary,
    LAG(salary)
        OVER(ORDER BY employee_id)
        AS previous_salary
FROM employee_salary;

-- LEAD() - Get next row's value.
SELECT first_name,
    salary,
    LEAD(salary)
        OVER(ORDER BY employee_id)
        AS next_salary
FROM employee_salary;

-- LAG() and LEAD() are window functions used to access data from the previous or next row without using a self-join. 
-- They are mainly used for comparisons, trend analysis, and time-series calculations.


-- Addition of salary on gender basis
SELECT dem.first_name, dem.last_name, gender, salary, 
SUM(SALARY) OVER(PARTITION BY gender) AS Rolling_Total
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id= sal.employee_id;

-- Addition of salary on id basis
SELECT dem.first_name, dem.last_name, gender, salary, 
SUM(SALARY) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS Rolling_Total
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id= sal.employee_id;
    
    
SELECT gender, 
AVG(salary)
OVER(PARTITION BY gender) AS avg_sal
FROM employee_demographics
JOIN employee_salary
	ON employee_demographics.employee_id = employee_salary.employee_id;
    
SELECT dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender) AS row_num
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;

    
    
