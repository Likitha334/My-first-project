-- 1. CREATE DATABASE
CREATE DATABASE sql_practice_db;

-- Use database
USE sql_practice_db;


-- 2. CREATE TABLE
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    course VARCHAR(50),
    marks INT
);


-- 3. INSERT DATA
INSERT INTO students VALUES
(1, 'Anu', 20, 'Female', 'Data Science', 85),
(2, 'Ravi', 22, 'Male', 'AI', 78),
(3, 'Sita', 21, 'Female', 'Data Science', 92),
(4, 'Kiran', 23, 'Male', 'ML', 65),
(5, 'Meena', 20, 'Female', 'AI', 88);


-- 4. SELECT QUERIES
SELECT * FROM students;

SELECT name, course FROM students;

SELECT * FROM students WHERE marks > 80;

SELECT * FROM students WHERE course = 'AI';


-- 5. ORDER BY
SELECT * FROM students ORDER BY marks DESC;

SELECT * FROM students ORDER BY age ASC;


-- 6. AGGREGATE FUNCTIONS
SELECT COUNT(*) AS total_students FROM students;

SELECT AVG(marks) AS average_marks FROM students;

SELECT MAX(marks) AS highest_marks FROM students;

SELECT MIN(marks) AS lowest_marks FROM students;


-- 7. GROUP BY
SELECT course, AVG(marks) AS avg_marks
FROM students
GROUP BY course;


-- 8. UPDATE
UPDATE students
SET marks = 90
WHERE name = 'Ravi';


-- 9. DELETE
DELETE FROM students
WHERE student_id = 4;


-- 10. ALTER TABLE
ALTER TABLE students
ADD email VARCHAR(100);


-- 11. DROP TABLE (use carefully)
-- DROP TABLE students;


-- END OF SQL PRACTICE FILE


