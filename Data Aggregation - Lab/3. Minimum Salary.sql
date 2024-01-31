SELECT department_id AS 'Dep', MIN(salary) AS 'MinSalary'
FROM employees
GROUP BY department_id
HAVING `MinSalary` > 800;
