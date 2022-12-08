/*Answer 1*/
USE ischool;
SELECT CONCAT(course_code,' ', course_number) AS "iSchool Courses", 
	course_description AS "Description", course_prereq AS "Prerequisites", credits
FROM courses
WHERE course_number > 300 AND course_number < 400;

/*Answer 2*/
SELECT RIGHT(person_id,4) AS 'ID', CONCAT(fname,' ', LEFT(lname,1), '.') AS "name", 
	LEFT(start_date,10) AS 'start_date', department, title
FROM people
WHERE title IS NOT null
ORDER BY name;