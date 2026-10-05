use sql_pratice_2026;
-- Date: Oct 5, 2026 | Time: 1:42:17 PM | MYSQL 8.0+
-- SQL Question : Find employees having the same manager.

SELECT * FROM employee;

-- I need to find e1, e2 that had manager_id as m1 
-- SELF JOIN 


SELECT 
	e1.employee_id,
	e1.employee_name,
	e1.manager_id,
	e2.employee_id,
	e2.employee_name,
	e2.manager_id
FROM employee e1
JOIN employee e2
ON e1.manager_id = e2.manager_id
AND e1.employee_id < e2.employee_id; -- Do i really need to avoid duplicate

-- Will <> Resolve the issue ?
-- 101 → 102
-- 102 → 101   ← duplicate/reverse pair


-- <>  → avoids self-pair
-- <   → avoids self-pair + reverse duplicate