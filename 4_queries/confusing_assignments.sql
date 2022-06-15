SELECT assignments.id, assignments.name, assignments.day, assignments.chapter, count(assistance_requests.*) AS total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id, assignments.name, assignments.day, assignments.chapter
ORDER BY count(assistance_requests.*) DESC