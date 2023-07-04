--Given a table with rows of the teacher_id, subject, and the department
--return the number of subjects each teacher teaches.

SELECT Teacher.teacher_id , COUNT(DISTINCT Teacher.subject_id) as cnt
FROM Teacher
GROUP By Teacher.teacher_id
