const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});
const queryString = `
SELECT teachers.name as teacheres, cohorts.name as cohort
FROM teachers 
JOIN assistance_requests ON teacher_id - teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name LIKE $1
ORDER BY teacher
`;

const cohortName = process.argv[2] || 'JULY02';
const values = [`%${cohortName}%`]


pool.query(cohortName, values)
.then(res => {
  res.rows.forEach(row => {
    console.log(`${row.cohort}: ${row.teacher}`);
  })
});