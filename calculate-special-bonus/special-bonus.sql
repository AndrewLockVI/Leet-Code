--Calculate the employee bonuses where it is 0 if they are either even or have an M at the start of their name
--otherwise it is their salary.
SELECT Employees.employee_id, 
CASE 
    WHEN Employees.employee_id % 2 = 1 AND SUBSTRING(Employees.name , 1, 1) != 'M' THEN Employees.salary
    ELSE 0
END
AS bonus
FROM Employees
ORDER BY Employees.employee_id
