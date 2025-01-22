create database StudentJoins
use StudentJoins
create table Student
(ROLL_NO int Primary Key,
NAME varchar(50),
ADRESS varchar(50),
PHONE varchar(50),
AGR int
);
select * from Student
Insert into Student(ROLL_NO, NAME, ADRESS, PHONE, AGR)
values(1, 'HARSH', 'DELHI', 'XXXXXXXXXX', 18),
(2, 'PRATIK', 'BIHAR', 'XXXXXXXXXX', 19),
(3, 'RIYANKA', 'SILIGURI', 'XXXXXXXXXX', 20),
(4, 'DEEP', 'RAMNAGAR', 'XXXXXXXXXX', 18),
(5, 'SAPTARHI', 'KOLKATA', 'XXXXXXXXXX', 19),
(6, 'DHANRAJ', 'BARABAJAR', 'XXXXXXXXXX', 20),
(7, 'ROHIT', 'BALURGHAT', 'XXXXXXXXXX', 18),
(8, 'NIRAJ', 'ALIPUR', 'XXXXXXXXXX', 19);

create table StudentCourse
(COURSE_ID INT,
 ROLL_NO INT);
 
 select * from StudentCourse

 Insert into StudentCourse(COURSE_ID, ROLL_NO) 
 values(1, 1),
(2, 2),
(2, 3),
(3, 4),
(1, 5),
(4, 9),
(5, 10),
(4, 11);

SELECT Student.NAME, StudentCourse.COURSE_ID
FROM Student
LEFT JOIN StudentCourse
ON StudentCourse.ROLL_NO = Student.ROLL_NO;

SELECT StudentCourse.COURSE_ID, Student.NAME, Student.AGR
FROM Student
INNER JOIN StudentCourse
ON Student.ROLL_NO = StudentCourse.ROLL_NO;

SELECT Student.NAME, StudentCourse.COURSE_ID
FROM Student
RIGHT JOIN StudentCourse
ON StudentCourse.ROLL_NO = Student.ROLL_NO;

SELECT Student.NAME, StudentCourse.COURSE_ID
FROM Student
FULL JOIN StudentCourse
ON StudentCourse.ROLL_NO = Student.ROLL_NO;