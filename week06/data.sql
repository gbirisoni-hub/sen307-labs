INSERT INTO Course
(course_code, course_title, credit_units, description, dept_id)
VALUES

('SEN307', 'Database Systems', 3,
'Relational database design, SQL queries, normalization, transactions and indexing using MySQL.',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('SEN301', 'Software Architecture', 3,
'Architectural styles, design patterns, microservices and how to structure large software systems.',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('COS301', 'Operating Systems', 3,
'Processes, threads, CPU scheduling, memory management and file systems.',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('COS305', 'Computer Networks', 3,
'TCP/IP, routing, switching, LAN and WAN design and network protocols.',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('AIN301', 'Introduction to Artificial Intelligence', 3,
'Intelligent agents, search algorithms, knowledge representation and reasoning.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('AIN305', 'Machine Learning', 3,
'Supervised and unsupervised learning, neural networks, deep learning and model evaluation.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('AIN307', 'Natural Language Processing', 3,
'Text processing, word embeddings, language models, sentiment analysis and chatbots.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('DTS301', 'Data Visualization and Analytics', 2,
'Exploratory data analysis, charts, dashboards and telling stories with data.',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('DTS305', 'Big Data Technologies', 3,
'Distributed storage and processing of very large datasets with Hadoop and Spark.',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('CYB301', 'Network Security', 3,
'Firewalls, cryptography, intrusion detection and protecting networks from attacks.',
(SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity'));

SELECT d.dept_name, COUNT(c.course_id) AS courses
FROM Department d
LEFT JOIN Course c ON d.dept_id = c.dept_id
GROUP BY d.dept_name;

SELECT dept_id, dept_name FROM Department;

SELECT course_id, course_code FROM Course;

INSERT INTO Lecturer (staff_no, full_name, email, dept_id) VALUES

('VUA/ST/101', 'Dr Amaka Okafor', 'amaka.okafor@vua.edu.ng',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('VUA/ST/102', 'Dr Musa Bello', 'musa.bello@vua.edu.ng',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('VUA/ST/103', 'Prof Chinedu Eze', 'chinedu.eze@vua.edu.ng',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('VUA/ST/104', 'Mrs Fatima Ibrahim', 'fatima.ibrahim@vua.edu.ng',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('VUA/ST/105', 'Dr Ngozi Okeke', 'ngozi.okeke@vua.edu.ng',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('VUA/ST/106', 'Mr Daniel James', 'daniel.james@vua.edu.ng',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('VUA/ST/107', 'Dr Aisha Mohammed', 'aisha.mohammed@vua.edu.ng',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('VUA/ST/108', 'Mr Samuel Adeyemi', 'samuel.adeyemi@vua.edu.ng',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('VUA/ST/109', 'Prof David Nwosu', 'david.nwosu@vua.edu.ng',
(SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),

('VUA/ST/110', 'Mrs Grace Daniel', 'grace.daniel@vua.edu.ng',
(SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity'));

SELECT * FROM Lecturer;

-- STEP 2: INSERT 20 STUDENTS

INSERT INTO Student
(matric_no, full_name, gender, date_of_birth, dept_id)
VALUES

('12154', 'Gbirison Iyimide Gabriel', 'M', '2006-04-12',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('20261001', 'Adaobi Nwankwo', 'F', '2005-03-14',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('20261002', 'John Musa', 'M', '2004-11-02',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('20261003', 'Blessing Okoro', 'F', '2003-07-21',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('20261004', 'Emmanuel Eze', 'M', '2006-01-19',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('20261005', 'Maryam Bello', 'F', '2005-09-08',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('20261006', 'David Johnson', 'M', '2007-02-15',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('20261007', 'Chiamaka Obi', 'F', '2004-06-25',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('20261008', 'Samuel Okafor', 'M', '2003-12-10',
(SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),

('20261009', 'Esther James', 'F', '2006-08-17',
(SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),

('20261010', 'Michael Ade', 'M', '2005-05-30',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('20261011', 'Deborah Peter', 'F', '2007-04-03',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('20261012', 'Ibrahim Sani', 'M', '2004-02-11',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('20261013', 'Victoria Grace', 'F', '2003-10-06',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('20261014', 'Chukwudi Anene', 'M', '2006-12-22',
(SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),

('20261015', 'Sarah Williams', 'F', '2005-01-16',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),

('20261016', 'Peter Daniel', 'M', '2004-09-27',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),

('20261017', 'Jennifer Okeke', 'F', '2007-06-13',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),

('20261018', 'Joseph Emmanuel', 'M', '2003-05-19',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),

('20261019', 'Ruth Ibrahim', 'F', '2006-11-24',
(SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity'));

SELECT * FROM Students

-- STEP 3: INSERT 40 ENROLMENTS

INSERT INTO Enrolment (student_id, course_id) VALUES

((SELECT student_id FROM Student WHERE matric_no = '12154'),
 (SELECT course_id FROM Course WHERE course_code = 'SEN307')),

((SELECT student_id FROM Student WHERE matric_no = '12154'),
 (SELECT course_id FROM Course WHERE course_code = 'SEN301')),

((SELECT student_id FROM Student WHERE matric_no = '20261001'),
 (SELECT course_id FROM Course WHERE course_code = 'SEN307')),

((SELECT student_id FROM Student WHERE matric_no = '20261001'),
 (SELECT course_id FROM Course WHERE course_code = 'COS301')),

((SELECT student_id FROM Student WHERE matric_no = '20261002'),
 (SELECT course_id FROM Course WHERE course_code = 'SEN307')),

((SELECT student_id FROM Student WHERE matric_no = '20261002'),
 (SELECT course_id FROM Course WHERE course_code = 'COS305')),

((SELECT student_id FROM Student WHERE matric_no = '20261003'),
 (SELECT course_id FROM Course WHERE course_code = 'SEN307')),

((SELECT student_id FROM Student WHERE matric_no = '20261003'),
 (SELECT course_id FROM Course WHERE course_code = 'AIN301')),

((SELECT student_id FROM Student WHERE matric_no = '20261004'),
 (SELECT course_id FROM Course WHERE course_code = 'SEN307')),

((SELECT student_id FROM Student WHERE matric_no = '20261004'),
 (SELECT course_id FROM Course WHERE course_code = 'AIN305')),

((SELECT student_id FROM Student WHERE matric_no = '20261005'),
 (SELECT course_id FROM Course WHERE course_code = 'SEN307')),

((SELECT student_id FROM Student WHERE matric_no = '20261005'),
 (SELECT course_id FROM Course WHERE course_code = 'DTS301')),

((SELECT student_id FROM Student WHERE matric_no = '20261006'),
 (SELECT course_id FROM Course WHERE course_code = 'SEN301')),

((SELECT student_id FROM Student WHERE matric_no = '20261006'),
 (SELECT course_id FROM Course WHERE course_code = 'COS301')),

((SELECT student_id FROM Student WHERE matric_no = '20261007'),
 (SELECT course_id FROM Course WHERE course_code = 'SEN301')),

((SELECT student_id FROM Student WHERE matric_no = '20261007'),
 (SELECT course_id FROM Course WHERE course_code = 'COS305')),

((SELECT student_id FROM Student WHERE matric_no = '20261008'),
 (SELECT course_id FROM Course WHERE course_code = 'COS301')),

((SELECT student_id FROM Student WHERE matric_no = '20261008'),
 (SELECT course_id FROM Course WHERE course_code = 'AIN301')),

((SELECT student_id FROM Student WHERE matric_no = '20261009'),
 (SELECT course_id FROM Course WHERE course_code = 'COS305')),

((SELECT student_id FROM Student WHERE matric_no = '20261009'),
 (SELECT course_id FROM Course WHERE course_code = 'AIN305')),

((SELECT student_id FROM Student WHERE matric_no = '20261010'),
 (SELECT course_id FROM Course WHERE course_code = 'AIN301')),

((SELECT student_id FROM Student WHERE matric_no = '20261010'),
 (SELECT course_id FROM Course WHERE course_code = 'AIN307')),

((SELECT student_id FROM Student WHERE matric_no = '20261011'),
 (SELECT course_id FROM Course WHERE course_code = 'AIN305')),

((SELECT student_id FROM Student WHERE matric_no = '20261011'),
 (SELECT course_id FROM Course WHERE course_code = 'DTS301')),

((SELECT student_id FROM Student WHERE matric_no = '20261012'),
 (SELECT course_id FROM Course WHERE course_code = 'AIN307')),

((SELECT student_id FROM Student WHERE matric_no = '20261012'),
 (SELECT course_id FROM Course WHERE course_code = 'DTS305')),

((SELECT student_id FROM Student WHERE matric_no = '20261013'),
 (SELECT course_id FROM Course WHERE course_code = 'DTS301')),

((SELECT student_id FROM Student WHERE matric_no = '20261013'),
 (SELECT course_id FROM Course WHERE course_code = 'CYB301')),

((SELECT student_id FROM Student WHERE matric_no = '20261014'),
 (SELECT course_id FROM Course WHERE course_code = 'DTS305')),

((SELECT student_id FROM Student WHERE matric_no = '20261014'),
 (SELECT course_id FROM Course WHERE course_code = 'CYB301')),

((SELECT student_id FROM Student WHERE matric_no = '20261015'),
 (SELECT course_id FROM Course WHERE course_code = 'SEN307')),

 SELECT COUNT(*) AS total_enrolments
 FROM Enrolment;

INSERT INTO CourseAllocation (course_id, lecturer_id) VALUES

((SELECT course_id FROM Course WHERE course_code = 'SEN307'),
 (SELECT lecturer_id FROM Lecturer WHERE staff_no = 'VUA/ST/101')),

((SELECT course_id FROM Course WHERE course_code = 'SEN307'),
 (SELECT lecturer_id FROM Lecturer WHERE staff_no = 'VUA/ST/102')),

((SELECT course_id FROM Course WHERE course_code = 'SEN301'),
 (SELECT lecturer_id FROM Lecturer WHERE staff_no = 'VUA/ST/101')),

((SELECT course_id FROM Course WHERE course_code = 'COS301'),
 (SELECT lecturer_id FROM Lecturer WHERE staff_no = 'VUA/ST/103')),

((SELECT course_id FROM Course WHERE course_code = 'COS305'),
 (SELECT lecturer_id FROM Lecturer WHERE staff_no = 'VUA/ST/104')),

((SELECT course_id FROM Course WHERE course_code = 'AIN301'),
 (SELECT lecturer_id FROM Lecturer WHERE staff_no = 'VUA/ST/105')),

((SELECT course_id FROM Course WHERE course_code = 'AIN305'),
 (SELECT lecturer_id FROM Lecturer WHERE staff_no = 'VUA/ST/106')),

((SELECT course_id FROM Course WHERE course_code = 'AIN307'),
 (SELECT lecturer_id FROM Lecturer WHERE staff_no = 'VUA/ST/105')),

((SELECT course_id FROM Course WHERE course_code = 'DTS301'),
 (SELECT lecturer_id FROM Lecturer WHERE staff_no = 'VUA/ST/107')),

((SELECT course_id FROM Course WHERE course_code = 'DTS305'),
 (SELECT lecturer_id FROM Lecturer WHERE staff_no = 'VUA/ST/108')),

((SELECT course_id FROM Course WHERE course_code = 'CYB301'),
 (SELECT lecturer_id FROM Lecturer WHERE staff_no = 'VUA/ST/109'));

 SELECT 'Lecturers' AS tbl, COUNT(*) AS total FROM Lecturer

UNION ALL

SELECT 'Students', COUNT(*) FROM Student

UNION ALL

SELECT 'Enrolments', COUNT(*) FROM Enrolment

UNION ALL

SELECT 'Course Allocations', COUNT(*) FROM CourseAllocation;

USE sen307_12154;

SELECT matric_no, full_name, dept_id
FROM Student
WHERE matric_no = '20261001';

UPDATE Student
SET dept_id = (
    SELECT dept_id
    FROM Department
    WHERE dept_name = 'Computer Science'
)
WHERE matric_no = '20261001';

SELECT matric_no, full_name, dept_id
FROM Student
WHERE matric_no = '20261001';

INSERT INTO Student (matric_no, full_name, dept_id)
VALUES (
    '20239999',
    'Transfer Student',
    (
        SELECT dept_id
        FROM Department
        WHERE dept_name = 'Library and Information Science'
    )
);