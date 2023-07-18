--Find the highest salary based on
--department returning multiple if there
--are people with the same salary.
SELECT d.name AS Department, e.name AS Employee, e.Salary
FROM Employee e
INNER JOIN Department d ON e.departmentId = d.id
WHERE (e.departmentId, e.salary) IN (
    SELECT departmentId, MAX(salary)
    FROM Employee
    GROUP BY departmentId
);
