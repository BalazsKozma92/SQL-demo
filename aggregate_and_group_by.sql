-- 1. Write a query to get the number of employees with the same job. (GROUP BY)
--

-- 2. Write a query to find the manager ID and the salary of the lowest-paid employee for that manager.
SELECT MANAGER_ID, EMPLOYEE_ID, MIN(SALARY) FROM hr_db.employees GROUP BY SALARY LIMIT 1;

-- 3. Write a query to get the department ID and the total salary payable in each department.
SELECT DEPARTMENT_ID, SUM(SALARY) FROM hr_db.employees GROUP BY DEPARTMENT_ID;

-- 4. Write a query to get the average salary for each job ID excluding programmer.
SELECT JOB_ID, AVG(SALARY) FROM employees WHERE JOB_ID!='IT_PROG' GROUP BY JOB_ID;

-- 5. Write a query to get the job ID and maximum salary of the employees where maximum salary is greater than or equal to $4000. (HAVING)
SELECT JOB_ID, MAX(SALARY) FROM hr_db.employees GROUP BY JOB_ID HAVING MAX(SALARY)>=4000;

-- 6. Write a query to get the average salary for all departments employing more than 10 employees.
SELECT DEPARTMENT_ID, AVG(SALARY) FROM hr_db.employees GROUP BY DEPARTMENT_ID HAVING COUNT(DEPARTMENT_ID)>10;