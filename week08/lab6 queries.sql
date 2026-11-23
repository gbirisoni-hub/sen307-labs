

SELECT
    d.dept_name,
    s.full_name,
    (
        SELECT COUNT(*)
        FROM Enrolment e
        WHERE e.student_id = s.student_id
    ) AS courses
FROM Student s
JOIN Department d
    ON s.dept_id = d.dept_id
WHERE
    (
        SELECT COUNT(*)
        FROM Enrolment e
        WHERE e.student_id = s.student_id
    ) =
    (
        SELECT MAX(
            (
                SELECT COUNT(*)
                FROM Enrolment e2
                WHERE e2.student_id = s2.student_id
            )
        )
        FROM Student s2
        WHERE s2.dept_id = s.dept_id
    )
ORDER BY d.dept_name;