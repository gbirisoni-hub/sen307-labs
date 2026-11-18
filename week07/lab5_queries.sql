-- ============================================
-- VUA-SEN307 Lab 5: SELECT, Filtering and Joins
-- Name:  GBIRISON IYIMIDE GABRIEL  Matric:VUG/SEN/24/12154
-- ============================================
USE sen307_vug_sen_24_12519;

-- Task 1: Students in one department, sorted A-Z
SELECT s.student_id, s.full_name, d.dept_name
FROM Student s
INNER JOIN Department d ON s.dept_id = d.dept_id
WHERE d.dept_name = 'Software Engineering'
ORDER BY s.full_name ASC;
-- Explanation: Joins Student to Department on dept_id, keeps only Software Engineering students, and sorts them alphabetically by full name.

-- Task 2: Courses with their lecturers (INNER JOIN)
SELECT c.course_title, l.full_name AS lecturer
FROM Course c
INNER JOIN CourseAllocation ca ON c.course_id = ca.course_id
INNER JOIN Lecturer l ON ca.lecturer_id = l.lecturer_id
ORDER BY c.course_title;
-- Explanation: Course and Lecturer are linked through CourseAllocation, so two joins are needed. INNER JOIN returns only matched rows. The course with two
-- lecturers appears twice (11 rows in total).

-- Task 3: Students and their courses (LEFT JOIN)
SELECT s.full_name, c.course_title
FROM Student s
LEFT JOIN Enrolment e ON s.student_id = e.student_id
LEFT JOIN Course c ON e.course_id = c.course_id
ORDER BY s.full_name;
-- Explanation: LEFT JOIN keeps every student, even those with no enrolments. For those students, course_title is NULL.

-- Task 3b: only students with no courses
SELECT s.full_name, c.course_title
FROM Student s
LEFT JOIN Enrolment e ON s.student_id = e.student_id
LEFT JOIN Course c ON e.course_id = c.course_id
WHERE c.course_title IS NULL
ORDER BY s.full_name;
-- Explanation: Filtering on IS NULL leaves only the students with no enrolments (the two created in Week 6).

-- Task 4: Filtering with AND / OR / IN / BETWEEN
SELECT s.full_name, s.gender, s.dept_id, s.date_of_birth
FROM Student s
WHERE s.gender = 'F'
  AND s.dept_id IN (1, 3)
  AND s.date_of_birth BETWEEN '2004-01-01' AND '2005-12-31'
ORDER BY s.full_name;
-- Explanation: Female students in department 1 or 3, born between 2004-01-01 and 2005-12-31. This uses AND, IN and BETWEEN. IN replaces (dept_id = 1 OR dept_id = 3).

-- Task 5: Paginating enrolments with LIMIT and OFFSET
-- Page 1 (rows 1-10)
SELECT * FROM Enrolment ORDER BY enrolment_id LIMIT 10 OFFSET 0;
-- Page 2 (rows 11-20)
SELECT * FROM Enrolment ORDER BY enrolment_id LIMIT 10 OFFSET 10;
-- Explanation: LIMIT sets how many rows to return and OFFSET how many to skip. ORDER BY is required because without it SQL does not guarantee any row order,
-- so pages could overlap or miss rows.

-- Challenge: Task 3 rewritten with RIGHT JOIN
SELECT s.full_name, c.course_title
FROM Course c
RIGHT JOIN Enrolment e ON c.course_id = e.course_id
RIGHT JOIN Student s ON e.student_id = s.student_id
ORDER BY s.full_name;
-- Explanation: Student is now the right-hand table, so RIGHT JOIN keeps every student and gives the same result as the LEFT JOIN version. The LEFT JOIN
-- version is easier to read because the table you want all rows from comes first and the query reads left to right.