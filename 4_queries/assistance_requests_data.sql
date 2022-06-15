SELECT teachers.name AS teacher, students.name AS students, assignments.name as assignment, completed_at - started_at as duration
FROM assistance_requests 
JOIN teachers ON teachers.id = teacher_id
JOIN students ON student_id = students.id
JOIN assignments ON assignment_id = assignments.id
GROUP BY teachers.name, students.name, assignments.name, completed_at - started_at;
ORDER BY duration;