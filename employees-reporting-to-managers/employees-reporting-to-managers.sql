--Given a table with all employees
--return all employees who have
--at least one report along with
--the reports name.
SELECT DISTINCT Employees.employee_id, Employees.name, 
  COUNT(E.name) AS reports_count,
  ROUND(AVG(E.age),0) as average_age
FROM Employees
LEFT JOIN Employees as E
ON Employees.employee_id = E.reports_to
WHERE E.employee_id IS NOT NULL
GROUP BY Employees.employee_id
ORDER BY Employees.employee_id 
