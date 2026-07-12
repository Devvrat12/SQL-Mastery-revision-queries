-- INNER JOIN
-- Only common rows

-- LEFT JOIN
-- Everything from Left + matching Right

-- RIGHT JOIN
-- Everything from Right + matching Left

-- FULL JOIN
-- Everything from both tables

SELECT * 
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT *
FROM employee_demographics AS DEM
INNER JOIN employee_salary AS SAL
	ON DEM.employee_id = SAL.employee_id;


SELECT DEM.employee_id , DEM.first_name, age, occupation, salary
FROM employee_demographics AS DEM
INNER JOIN employee_salary AS SAL
	ON DEM.employee_id = SAL.employee_id;
    
SELECT *
FROM employee_salary AS SAL
LEFT JOIN employee_demographics AS DEM
	ON DEM.employee_id = SAL.employee_id;
    
SELECT *
FROM employee_demographics AS DEM
RIGHT JOIN employee_salary AS SAL
	ON DEM.employee_id = SAL.employee_id;
    
-- SELF JOIN

SELECT *
FROM employee_demographics AS DEM
INNER JOIN employee_salary AS SAL
	ON DEM.employee_id = SAL.employee_id
INNER JOIN parks_departments AS PD
	ON SAL.dept_id = PD.department_id
;

