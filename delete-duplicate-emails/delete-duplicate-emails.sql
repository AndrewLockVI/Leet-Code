--Delete the Person P from the Person table
DELETE P
FROM Person P, Person P1
--Deletes when emails are matched and the id of the selected person is greater than the other
WHERE P.email=P1.email AND P.id>P1.id
