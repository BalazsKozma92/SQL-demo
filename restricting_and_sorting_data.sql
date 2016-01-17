-- 1. Write a query to display the names (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000 and are in department 30 or 100.
SELECT FIRST_NAME, LAST_NAME, SALARY FROM hr_db.employees WHERE SALARY NOT BETWEEN 10000 AND 15000 AND DEPARTMENT_ID = 30 OR DEPARTMENT_ID = 100;

-- 2. Write a query to display the names (first_name, last_name) and hire date for all employees who were hired in 1987.
--

-- 3. Write a query to display the first_name of all employees who have both "b" and "c" in their first name.
SELECT FIRST_NAME FROM hr_db.employees WHERE FIRST_NAME LIKE '%b%' AND FIRST_NAME LIKE '%c%';

-- 4. Write a query to display the last name, job, and salary for all employees whose job is that of a Programmer or a Shipping Clerk, and whose salary is not equal to $4,500, $10,000, or $15,000.
SELECT LAST_NAME, JOB_ID, SALARY FROM hr_db.employees WHERE (JOB_ID = 'IT_PROG' OR JOB_ID = 'SH_CLERK') AND (SALARY != 4500 OR SALARY != 10000 OR SALARY != 15000);

-- 5. Write a query to select all record from employees where last name in 'BLAKE', 'SCOTT', 'KING' and 'FORD'.
SELECT * FROM employees WHERE LAST_NAME LIKE '%BLAKE%' OR LAST_NAME LIKE '%SCOTT%' OR LAST_NAME LIKE '%KING%' OR LAST_NAME LIKE '%FORD%';
