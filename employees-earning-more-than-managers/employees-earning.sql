--This goes joins the employees with their managers in the employee table
--and only shows the employees who have a higher salary than their managers
--Speed: 695ms Beats: 68.63%
SELECT E.name as Employee
FROM Employee as E
INNER JOIN Employee as M
ON E.managerId = M.id
WHERE E.salary > M.salary
