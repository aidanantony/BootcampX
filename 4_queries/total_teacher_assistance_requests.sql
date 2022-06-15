SELECT count(*) as total_assistances, teachers.name
FROM assistance_requests JOIN TEACHERS ON teacher_id = teachers.id
WHERE teachers.name LIKE 'Waylon Boehm'
GROUP BY teachers.name;
