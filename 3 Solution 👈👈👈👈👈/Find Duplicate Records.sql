Find Duplicate Records

SELECT email, COUNT(*)
FROM users
GROUP BY email
HAVING COUNT(*)>1

---

Group By Always come Before Having Count ? YES
Logical order in a query:

FROM
WHERE
GROUP BY
HAVING
SELECT

---

GROUP BY	Creates groups
HAVING	Filters groups

Think Like :
GROUP BY = make teams
HAVING = eliminate some teams

---

Is HAVING used with Aggregate Functions? YES
Because HAVING filters group results, and group results often use:
COUNT()
SUM()
AVG()
MAX()
MIN()

---

Function
[A] Aggregate Functions (many rows → one result)
COUNT()
SUM()
AVG()
MIN()
MAX()
Used with GROUP BY, HAVING

[B] Single Row Function (One Row In -> One Row out)
String Functions
UPPER(name)
LOWER(name)
LENGTH(name)
SUBSTRING(name,1,3) ? Is it Inclsuive or Exclusive ???

Numeric Functions
ROUND()
ABS()
CEIL()
FLOOR()

Date Functions
NOW()
CURRENT_DATE()
DATEDIFF()

Null Functions
COALESCE()
IFNULL()
NVL()

[C] Window / Analytic Functions
ROW_NUMBER()
RANK()
DENSE_RANK()
LEAD()
LAG()


---

Can we solve this by Window Function ?

SELECT *
FROM (
    SELECT 
        u.*,
        COUNT(*) OVER (PARTITION BY email) AS email_count
    FROM users u
) t
WHERE email_count > 1;