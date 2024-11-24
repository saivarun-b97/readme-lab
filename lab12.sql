-- Concatenate Course Name and Semester
SELECT course_name
       || ' - '
       || semester AS course_semester
FROM   courses;

-- Find Courses with Labs on Fridays
SELECT course_id,
       course_name,
       lab_time
FROM   courses
WHERE  lab_time LIKE '%Fri%';

-- Upcoming Assignments
SELECT *
FROM   assignments
WHERE  due_date > Date('now');

-- Count Assignments by Status
SELECT status,
       Count(*) AS assignment_count
FROM   assignments
GROUP  BY status;

-- Longest Course Name
SELECT course_id,
       course_name,
       Length(course_name) AS name_length
FROM   courses
ORDER  BY name_length DESC
LIMIT  1;

-- Uppercase Course Names
SELECT Upper(course_name) AS course_name_upper
FROM   courses;

-- Assignments Due in September
SELECT title
FROM   assignments
WHERE  due_date LIKE '%-09-%';

-- Assignments with Missing Due Dates
SELECT *
FROM   assignments
WHERE  due_date IS NULL;

-- Total Assignments per Course
SELECT c.course_id,
       Count(a.id) AS total_assignments
FROM   courses c
       LEFT JOIN assignments a
              ON c.course_id = a.course_id
GROUP  BY c.course_id;

-- Courses Without Assignments
SELECT c.course_id,
       c.course_name
FROM   courses c
       LEFT JOIN assignments a
              ON c.course_id = a.course_id
WHERE  a.id IS NULL; 