-- 1. Write a query to get the employee id, email id (discard the last three characters).
SELECT EMPLOYEE_ID, REVERSE SUBSTRING(EMAIL,4) FROM hr_db.employees;

-- 2. Write a query to get the locations that have minimum street length.
--

-- Write a query that displays the first name and the length of the first name for all employees whose name starts with the letters 'A', 'J' or 'M'. 
-- Give each column an appropriate label. Sort the results by the employees' first names.
--