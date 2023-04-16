--Select all classes with 5 or more students
--Runtime: 543ms Beats: 69.13%
SELECT C.class
FROM Courses AS C
GROUP BY class
HAVING count(C.student) >= 5
