-- 1. Write a query to get unique department ID from employee table. (DISTINCT)
SELECT DISTINCT DEPARTMENT_ID FROM hr_db.employees;

-- 2. Write a query to get all employee details from the employee table order by first name, descending. (ORDER BY)
SELECT * FROM hr_db.employees ORDER BY FIRST_NAME DESC;

-- 3. Write a query to get the total salaries payable to employees. (SUM)
SELECT SUM(SALARY) FROM hr_db.employees;

-- 4. Write a query to get the maximum and minimum salary from employees table. (MIN-MAX)
SELECT MAX(SALARY) FROM hr_db.employees;
SELECT MIN(SALARY) FROM hr_db.employees;

-- 5. Write a query to get the average salary and number of employees in the employees table. (AVG)
SELECT AVG(SALARY) FROM hr_db.employees;
SELECT COUNT(EMPLOYEE_ID) FROM hr_db.employees;

-- 6. Write a query to get the number of employees working with the company. (COUNT)
SELECT COUNT(EMPLOYEE_ID) FROM hr_db.employees;

-- 7. Write a query to get the number of jobs available in the employees table.
SELECT COUNT(JOB_ID) FROM hr_db.employees;

-- 8. Write a query get all first name from employees table in upper case. (UPPER)
SELECT UPPER(FIRST_NAME) FROM hr_db.employees;

-- 9. Write a query to get the first 3 characters of first name from employees table. (SUBSTRING)
SELECT SUBSTRING(FIRST_NAME,1,3) FROM hr_db.employees;

-- 10. Write a query to get the names (for example Ellen Abel, Sundar Ande etc.) of all the employees from employees table. (CONCAT)
SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) FROM hr_db.employees;

-- 11. Write a query to get first name from employees table after removing white spaces from both side. (TRIM)
SELECT RTRIM(FIRST_NAME), LTRIM(FIRST_NAME) FROM hr_db.employees;

-- 12. Write a query to get the length of the employee names (first_name, last_name) from employees table. (LENGTH)
SELECT LENGTH(FIRST_NAME) as LengthOfFirst FROM hr_db.employees;
SELECT LENGTH(LAST_NAME) as LengthOfLast FROM hr_db.employees

-- 13. Write a query to select first 10 records from a table. (LIMIT)
SELECT * FROM hr_db.employees LIMIT 10;