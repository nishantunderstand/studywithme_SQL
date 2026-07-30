Find 2nd Highest Salary?

SQL CLAUSE SYNTAX ORDER

SELECT
FROM
WHERE
GROUP BY
HAVING
ORDER BY
LIMIT/OFFSET

---

SELECT DISTINCT salary
FROM emp
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

Can we change the order , Still get the same result ?

---

SELECT MAX(salary)
FROM emp
WHERE salary < (SELECT MAX(salary) FROM emp);

Should i Apply DISTINCT as well ??
       redundant work

