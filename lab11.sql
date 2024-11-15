-- Assignments for a Specific Course
SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';

-- Earliest Assignment Due Date
SELECT MIN(due_date) AS earliest_due_date
FROM assignments;

-- Latest Assignment Due Date
SELECT MAX(due_date) AS latest_due_date
FROM assignments;

-- Assignments Due on a Specific Date
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';

-- Find All Assignments Due in October
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';

-- Find the Most Recent Completed Assignment
SELECT MAX(due_date) AS most_recent_completed_due_date
FROM assignments
WHERE status = 'Completed';
