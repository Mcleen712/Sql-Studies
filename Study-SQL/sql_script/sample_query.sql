SELECT name FROM student where gender='M';

SELECT name, birthday FROM student where gender='M';

SELECT name, birthday FROM student where gender='F';

UPDATE student SET gender='F' WHERE ID=4;

UPDATE teacher SET name='Black Widow' WHERE Id=2;

UPDATE student SET name= 'Anabella' WHERE name='Mia Indai';


UPDATE student SET gender='F' WHERE ID=6;

SELECT name from student where gender='F' AND classroom_id=2;

UPDATE student SET classroom_id=5 WHERE ID=12;

UPDATE student SET classroom_id=4 WHERE ID=12 OR name="Mang kanor";


SELECT *
FROM student
INNER JOIN teacher ON student.classroom_id=teacher.classroom_id 
INNER JOIN classroom ON teacher.classroom_id=classroom.ID;

SELECT teacher.name, student.name
FROM teacher
LEFT JOIN student
ON teacher.classroom_id = student.classroom_id;

SELECT
  s.name, t.name
FROM student AS s
JOIN teacher AS t
  ON s.classroom_id = t.classroom_id;

  UPDATE student SET gender='F' WHERE ID=4;

SELECT 
   name AS `t`
FROM 
   teacher;

SELECT
   CONCAT_WS(', ', name, gender) AS `name and gender`
FROM
   student;

   
SELECT
   CONCAT_WS(', ', name, ID) AS `name and gender`
FROM
   student;