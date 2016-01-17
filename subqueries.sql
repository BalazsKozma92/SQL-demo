-- 1. Write a query to find the names (first_name, last_name) and salaries of the employees who have higher salary than the employee whose last_name='Bull'
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME), SALARY FROM hr_db.employees WHERE SALARY > (SELECT SALARY FROM hr_db.employees WHERE LAST_NAME='Bull');

-- 2. Find the names (first_name, last_name) of all employees who works in the IT department.
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) FROM hr_db.employees WHERE DEPARTMENT_ID = (SELECT DEPARTMENT_ID FROM hr_db.departments WHERE DEPARTMENT_NAME='IT');

-- 3. Find the names (first_name, last_name) of the employees who are managers
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) FROM hr_db.employees WHERE JOB_ID IN(SELECT JOB_ID FROM hr_db.jobs WHERE JOB_TITLE LIKE '%manager');

-- 4. Find the names (first_name, last_name), salary of the employees whose salary is greater than the average salary
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME), SALARY FROM hr_db.employees WHERE SALARY > (SELECT AVG(SALARY) FROM hr_db.employees);

-- 5. Find the names (first_name, last_name), salary of the employees whose salary is equal to the minimum salary for their job grade
SELECT CONCAT(FIRST_NAME, ' ' LAST_NAME), SALARY FROM hr_db.employees WHERE SALARY IN(SELECT MIN(SALARY) FROM hr_db.employees GROUP BY DEPARTMENT_ID);

-- 6. Find the names (first_name, last_name), salary of the employees who earn the same salary as the minimum salary for all departments.
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME), SALARY FROM hr_db.employees WHERE SALARY IN(SELECT MIN(SALARY) FROM hr_db.employees GROUP BY DEPARTMENT_ID);

-- 7. Write a query to display the employee ID, first name, last names, and department names of all employees.
--

-- 8. Write a query to select last 10 records from a table.
SELECT * FROM (SELECT * FROM hr_db.employees ORDER BY EMPLOYEE_ID DESC LIMIT 10) ORDER BY EMPLOYEE_ID ASC;