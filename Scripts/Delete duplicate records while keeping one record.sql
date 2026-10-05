use sql_pratice_2026;
-- Date: Oct 5, 2026 | Time: 1:09:55 PM | MYSQL 8.0+
-- SQL Question : Delete duplicate records while keeping one record
SELECT * FROM employee;

-- DELETE On the basis of what ?

-- How to find duplicate Record ?
SELECT dept_id,COUNT(*) AS cnt FROM employee GROUP BY dept_id HAVING COUNT(*)>1;



-- 🚫 DELETE FROM employee IN (SELECT dept_id,COUNT(*) AS cnt FROM employee GROUP BY dept_id HAVING COUNT(*)>1); -- What is the issue with this code ?
-- 🚫 DELETE FROM employee IN (SELECT dept_id FROM employee GROUP BY dept_id HAVING COUNT(*)>1); -- What is the issue with this code ? | What about now ?
-- 🚫 DELETE FROM employee WHERE dept_id IN (SELECT dept_id FROM employee GROUP BY dept_id HAVING COUNT(*)>1); -- SQL Error [1093]
-- 🚫 DELETE FROM employee WHERE dept_id IN (SELECT MIN(dept_id) FROM employee GROUP BY dept_id HAVING COUNT(*)>1);


DELETE FROM employee 