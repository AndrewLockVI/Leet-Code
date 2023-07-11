--Given a table with projects and employees
--find the average tenure of all employees
--on a given project
SELECT Project.project_id, ROUND(AVG(Employee.experience_years), 2) AS average_years
FROM Project
LEFT JOIN Employee
ON Project.employee_id = Employee.employee_id
GROUP BY Project.project_id
