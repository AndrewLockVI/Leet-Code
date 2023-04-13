--Speed: 436ms Beats: 51.92%

--This DISTINCT part is used in case two employees or more have the same salary but we want to find the next highest.
(SELECT DISTINCT E.salary as SecondHighestSalary
FROM Employee as E
ORDER BY E.salary DESC
--The first 1 is the offset and the second 1 is the number of rows to return. By doing this it offsets by 1 and selects one row meaning the second row.
LIMIT 1,1)
--This is used to return null if there are no records that are found as the second highest salary.
UNION 
(SELECT NULL)
LIMIT 1;
