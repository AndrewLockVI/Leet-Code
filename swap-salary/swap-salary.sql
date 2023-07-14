--Given a table update all
--sexes to the opposite
UPDATE Salary
SET Salary.sex = CASE
  WHEN Salary.sex = 'm' then 'f'
  WHEN Salary.sex = 'f' then 'm'
END
