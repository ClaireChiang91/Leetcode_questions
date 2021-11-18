
# Write your MySQL query statement below

SELECT dept.dept_name, SUM(CASE WHEN stud.dept_id IS NOT NULL THEN 1 ELSE 0 END) AS student_number
FROM Department as dept LEFT JOIN Student AS stud ON dept.dept_id=stud.dept_id
GROUP BY dept.dept_id
ORDER BY student_number DESC;
