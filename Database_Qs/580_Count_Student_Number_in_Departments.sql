
# Write your MySQL query statement below

SELECT dept_name, SUM(CASE WHEN stud.dept_id IS NOT NULL THEN 1 ELSE 0 END) AS student_number
FROM department dept
LEFT JOIN student stud
ON dept.dept_id=stud.dept_id
GROUP BY dept_name
ORDER BY student_number DESC, dept_name;
