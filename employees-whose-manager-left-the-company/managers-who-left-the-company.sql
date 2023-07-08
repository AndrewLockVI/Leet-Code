--Given a table with employees and their managers
--return all employees who have a manager that does not
--have an associated record.

SELECT Employees.employee_id
FROM Employees
LEFT JOIN Employees AS E
ON Employees.manager_id = E.employee_id
WHERE Employees.salary < 30000
AND (E.employee_id IS NULL AND Employees.manager_id IS NOT NULL)
ORDER BY Employees.employee_id ASC
