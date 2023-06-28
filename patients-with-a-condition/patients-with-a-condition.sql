--Given a a table with patients and medical records
--return all patients who have a condition which is denoted
--by DIAB1 in the conditions field followed by the condition.

SELECT * 
FROM Patients
WHERE Patients.conditions 
LIKE '% DIAB1%' OR 
Patients.conditions 
LIKE 'DIAB1%'
