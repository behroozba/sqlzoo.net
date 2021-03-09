#   https://sqlzoo.net/wiki/Using_Null

#   1.

SELECT name
FROM teacher
WHERE dept IS NULL
#-----------------------------------------------------------------------------------------

#   2. Note the INNER JOIN misses the teachers with no department and the departments with no teacher.

SELECT teacher.name, dept.name AS dept
FROM teacher INNER JOIN dept
           ON (teacher.dept=dept.id)
#-----------------------------------------------------------------------------------------

#   3. Use a different JOIN so that all teachers are listed.

SELECT teacher.name, dept.name AS dept
FROM teacher
LEFT OUTER JOIN dept
ON teacher.dept = dept.id
#-----------------------------------------------------------------------------------------

#   4. Use a different JOIN so that all departments are listed.

SELECT teacher.name, dept.name as dept
FROM teacher
RIGHT OUTER JOIN dept
ON teacher.dept = dept.id
#-----------------------------------------------------------------------------------------

#   5. Show teacher name and mobile number or '07986 444 2266'.

SELECT name, COALESCE(mobile, '07986 444 2266') AS mobile
FROM teacher
#-----------------------------------------------------------------------------------------

#   6. Use the COALESCE function and a LEFT JOIN to print the teacher name and department name.
#   Use the string 'None' where there is no department

SELECT teacher.name, COALESCE(dept.name, 'None') AS dept
FROM teacher LEFT JOIN dept
ON teacher.dept = dept.id
#-----------------------------------------------------------------------------------------

#   7.  Use COUNT to show the number of teachers and the number of mobile phones.

SELECT COUNT(name) AS '# teachers', COUNT(mobile) AS '# mobile'
FROM teacher
#-----------------------------------------------------------------------------------------

#   8. Use COUNT and GROUP BY dept.name to show each department and the number of staff.
#   Use a RIGHT JOIN to ensure that the Engineering department is listed.

SELECT dept.name, COUNT(teacher.name) AS '# teacher'
FROM teacher
RIGHT JOIN dept
ON teacher.dept = dept.id
GROUP BY dept.name
#-----------------------------------------------------------------------------------------

#   9.


#-----------------------------------------------------------------------------------------

#   10.


#-----------------------------------------------------------------------------------------
