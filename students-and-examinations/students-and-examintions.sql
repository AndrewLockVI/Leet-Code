--Given a set of students, exams taken, and exams return
--the number of times each student has completed each exam (The number of attended_exams me be = 0)

SELECT Students.student_id, Students.student_name, 
       Subjects.subject_name, COUNT(Examinations.subject_name) as attended_exams
FROM Students
CROSS JOIN Subjects
LEFT JOIN Examinations
    ON Examinations.subject_name = Subjects.subject_name 
    AND Examinations.student_id = Students.student_id
GROUP BY Students.student_id, Students.student_name, Subjects.subject_name
ORDER BY Students.student_id, Subjects.subject_name
