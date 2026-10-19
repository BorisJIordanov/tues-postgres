
-- Question 1: All grades for Ivan Petrov in Mathematics,
-- ordered by date. Returns the grade date and grade.
SELECT g.grade_date, g.grade
FROM grades AS g
JOIN students AS st ON st.id = g.student_id
JOIN subjects AS su ON su.id = g.subject_id
WHERE st.id = 1 AND su.id = 1
ORDER BY g.grade_date;

-- Question 2: Average grade and number of grades in each subject.
-- Returns one row per subject, with the average to two decimals.
SELECT
    su.name AS subject,
    ROUND(AVG(g.grade), 2) AS average_grade,
    COUNT(g.id) AS number_of_grades
FROM subjects AS su
LEFT JOIN grades AS g ON g.subject_id = su.id
GROUP BY su.id, su.name
ORDER BY su.name;
