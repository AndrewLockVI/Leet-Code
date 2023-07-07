--Given a table of employee locations return the
--primary location for each employee where the primary
--is set to 'N' if the employee only has one record

SELECT DISTINCT Employee.employee_id, Employee.department_id
FROM Employee
WHERE Employee.primary_flag = 'Y' 
   OR (
       SELECT COUNT(*) 
       FROM Employee as E 
       WHERE E.employee_id = Employee.employee_id
     ) = 1;
