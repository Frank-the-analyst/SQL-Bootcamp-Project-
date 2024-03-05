-- Table Creation
-- 1 . Create a database named university_db

create database university_db
use [university_db.];

--1.2 •	Create a table named Students with columns for student_id, first_name, last_name, date_of_birth, and course_id. 
--Use appropriate data types for each column.

CREATE TABLE Students (
	Student_id INT PRIMARY KEY,
	First_name VARCHAR (120),
	Last_name VARCHAR (120),
	date_of_birth DATE, 
	course_id INT
);

ALTER TABLE Students
ALTER COLUMN date_of_birth DATE

--1.3	Create a table named Courses with columns for course_id, course_name, instructor, and credits. Use appropriate data types for each column.

CREATE TABLE Courses (
	Course_id INT PRIMARY KEY,
	course_name VARCHAR (120),
	Instructor VARCHAR (120),
	Credits VARCHAR (120), 
	);

ALTER TABLE Courses
ALTER COLUMN Credits INT 

--Data Insertion Insert student records into the Students table with relevant information.

INSERT INTO Students (student_ID, first_name, last_name, date_of_birth, Course_id) 
VALUES
(1, 'John', 'Doe', '1998-05-15',101),
(2, 'Jane', 'Smith', '1999-02-20',102),
(3, 'Alex', 'Johnson', '1997-09-10',103),
(4, 'Emily', 'Davis', '2000-07-03',104),
(5, 'Chris', 'Miller', '1998-12-22',105),
(6, 'Sarah', 'Wilson', '1999-08-30',106),
(7, 'Michael', 'Taylor', '1997-04-18',103),
(8, 'Jessica', 'Brown', '2001-01-25',102),
(9, 'David', 'Anderson', '1998-11-08',105),
(10, 'Emma', 'Garcia', '1999-06-12',104),
(11, 'Daniel', 'Martinez', '2000-03-07',101),
(12, 'Olivia', 'Thomas', '1997-12-04',102),
(13, 'Ethan', 'Robinson', '1998-09-17',103),
(14, 'Ava', 'White', '1999-07-20',104),
(15, 'Noah', 'Hall', '1998-02-11',105),
(16, 'Sophia', 'Adams', '2000-10-03',106),
(17, 'Liam', 'Clark', '1997-05-26',102),
(18, 'Isabella', 'Hill', '1999-11-15',103),
(19, 'Lucas', 'Nelson', '1998-08-07',104),
(20, 'Mia', 'Baker', '2001-04-22',105),
(21, 'Amelia', 'Morris', '1997-01-14',106),
(22, 'Benjamin', 'Turner', '1999-10-09',102),
(23, 'Harper', 'King', '2000-06-02',103),
(24, 'Jackson', 'Perez', '1998-03-25',104),
(25, 'Evelyn', 'Scott', '1999-12-18',105),
(26, 'Lincoln', 'Stewart', '1998-07-11',106),
(27, 'Aria', 'Cooper', '2000-04-04',102),
(28, 'Jack', 'Ross', '1997-09-27',103),
(29, 'Lily', 'Foster', '1998-06-19',104),
(30, 'Owen', 'Powell', '2001-02-02',105);


-- Insert courses into the Courses table with relevant information.

INSERT INTO Courses (course_id, course_name, Instructor, credits)
VALUES
(101      , 'Introduction to CS'  , 'Prof. Anderson'   , 3),
(102      , 'Biology 101'         , 'Prof. White'      , 4),
(103      , 'Physics for Majors'  , 'Prof. Rodriguez'  , 4),
(104      , 'Calculus I'          , 'Prof. Brown'      , 3),
(105      , 'Organic Chemistry'   , 'Prof. Taylor'     , 4),
(106      , 'Data Structures'     , 'Prof. Martinez'   , 3),
(107      , 'Genetics'            , 'Prof. Johnson'    , 4),
(108      , 'Quantum Physics'     , 'Prof. Adams'      , 4),
(109      , 'Linear Algebra'      , 'Prof. Turner'     , 3),
(110      , 'Analytical Chemistry', 'Prof. Hall'       , 4),
(111      , 'Algorithms'          , 'Prof. Morris'     , 3),
(112      , 'Ecology'             , 'Prof. Stewart'    , 4),
(113      , 'Astrophysics'        , 'Prof. Nelson'     , 4),
(114      , 'Discrete Mathematics', 'Prof. Hill'       , 3),
(115      , 'Inorganic Chemistry' , 'Prof. Baker'      , 4),
(116      , 'Artificial Intelligence', 'Prof. Clark'   , 3),
(117      , 'Cell Biology'        , 'Prof. Scott'      , 4),
(118      , 'Thermodynamics'      , 'Prof. Cooper'     , 4),
(119      , 'Probability Theory'  , 'Prof. Foster'     , 3),
(120      , 'Human Anatomy'       , 'Prof. Powell'     , 4),
(121      , 'Software Engineering', 'Prof. King'       , 3),
(122      , 'Microbiology'        , 'Prof. Perez'      , 4),
(123      , 'Electromagnetism'    , 'Prof. Thomas'     , 4),
(124      , 'Number Theory'       , 'Prof. Davis'      , 3),
(125      , 'Organic Synthesis'   , 'Prof. Miller'     , 4),
(126      , 'Computer Networks'   , 'Prof. Brown'      , 3),
(127      , 'Animal Physiology'   , 'Prof. Taylor'     , 4),
(128      , 'Machine Learning'    , 'Prof. Robinson'   , 4),
(129      , 'Differential Equations', 'Prof. Adams'    , 3),
(130      , 'Virology'            , 'Prof. Turner'     , 4);


--Answering Queries 

--	Retrieve all records from the Students table.
select * from Students

--	Retrieve all records from the Courses table.
select * from Courses

--	Find the students who are enrolled in the course with course_id 102.
select *
from Students
where course_id =102

--	Find the courses taught by the instructor 'Prof. White'.
select *
from Courses
where Instructor = 'Prof. White'


-- Retrieve the names of students and their courses.

select e.First_name, e.Last_name,
c.course_name

from Students e
join Courses c
on e.course_id = c.Course_id

-- 	Find the total number of students in the Students table
SELECT COUNT(*)
FROM Students;

-- 	Calculate the average number of credits for all courses in the Courses table.


select Credits from Courses -- This returns the average as an integar.
SELECT AVG(Credits)
FROM Courses;
-- However to be specific, had to manipulate the data type to get the truly correct answer. Data type for credits needs to remain as an integer and should not be float.
SELECT ROUND(AVG(CAST(Credits AS FLOAT)), 2) FROM Courses


--	Retrieve students who were born after the year 1999.

SELECT *
FROM students
WHERE date_of_birth > '1999-12-31';

-- Retrieve courses with more than 3 credits, sorted by the number of credits in descending order.
select *
from courses
where credits>'3'
order by Credits desc;

-- Retrieve a list of students with their names and the names of the courses they are enrolled in.
-- Sorry julius but this is the same as the task above I think?

select e.First_name, e.Last_name,
c.course_name

from Students e
join Courses c
on e.course_id = c.Course_id


-- Retrieve the course details along with the names of students enrolled in each course.

select c.course_name, c.Course_id, c.Instructor, c.credits, e.First_name, e.Last_name
from courses c
join Students e ON c.Course_id = c.Course_id;


--Thank you for youre help in SQL Julius, 2 weeks ago I had never used SQL and now Ive got a grasp of it.
