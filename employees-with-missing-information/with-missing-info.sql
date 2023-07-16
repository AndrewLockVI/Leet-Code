--Given a list of employees
--return all employees that 
--are either missing their employee name
--or salary
SELECT employee_id
FROM (
    SELECT COALESCE(Employees.employee_id, Salaries.employee_id) AS employee_id
    FROM Employees
    LEFT JOIN Salaries ON Employees.employee_id = Salaries.employee_id
    WHERE Salaries.salary IS NULL

    UNION

    SELECT COALESCE(Employees.employee_id, Salaries.employee_id) AS employee_id
    FROM Employees
    RIGHT JOIN Salaries ON Employees.employee_id = Salaries.employee_id
    WHERE Employees.name IS NULL
) AS subquery
ORDER BY employee_id ASC;
