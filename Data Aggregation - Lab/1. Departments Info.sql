SELECT department_id, COUNT(id) AS 'Number or employees'
FROM employees
GROUP BY department_id
ORDER BY department_id;
