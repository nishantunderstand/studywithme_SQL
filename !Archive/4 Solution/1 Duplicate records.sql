-- Date: Jul 30, 2026 Time: 5:55:52 PM MYSQL 8.0+
-- SQL Question : Duplicate records

/* Possible Approaches : 

My Goal is to Display Duplicate Record

*/

SELECT * FROM users;

SELECT email FROM users;
SELECT DISTINCT email FROM users;



SELECT email, count(*) AS cnt FROM users GROUP BY email;
SELECT email, count(*) AS cnt FROM users GROUP BY email HAVING COUNT(*)>1;