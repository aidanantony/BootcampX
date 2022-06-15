SELECT  AVG(total_duration) 
FROM (
  SELECT cohorts.name AS cohort, SUM(completed_at - started_at) as total_duration
  FROM assistance_requests 
  JOIN students ON student_id = students.id
  Join cohorts ON cohort_id = cohorts.id
  GROUP BY cohorts.name
  ORDER BY total_duration
) AS total_duration

-- JOIN students ON students.id = student_id
-- JOIN cohorts on cohorts.id = cohort_id
-- GROUP BY cohorts.name
-- ORDER BY total_duration;