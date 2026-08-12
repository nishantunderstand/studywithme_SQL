-- Date: Jul 30, 2026 | Time: 6:46:30 PM | MYSQL 8.0+
-- SQL Question : Delete Duplicate Rows

/* Possible Approaches : 

Keep Lowest id, delete rest
JOIN APPROACH
*/
USE sql_pratice_2026;

SELECT * FROM users;

DELETE u1 FROM users u1
JOIN users u2
ON u1.email = u2.email
AND u1.id>u2.id
