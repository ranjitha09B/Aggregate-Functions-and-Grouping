use empl;

-- selecting all the data in the employees table
SELECT * FROM employees;

-- count of department
SELECT department,count(department) as countde
FROM employees
group by department;

-- selecting sum of salary on department
SELECT department, SUM(SALARY) as Total_salary
from employees
GROUP BY department;

-- count the  particular department and involved aggregate functions
SELECT department,count(department) as countde ,sum(salary) as Total_salary,avg(salary) as Avg_salary
from employees
where department='HR'
GROUP BY department;

SELECT department , sum(salary) as Total_salary
from employees
GROUP BY department
having Total_salary>150000;
