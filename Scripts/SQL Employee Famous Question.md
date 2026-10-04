### SQL Employee — Interview Revision

1. Find the **2nd highest salary**.
2. Find the **Nth highest salary**.
3. Find the maximum salary **without using `MAX()`**.
4. Find the Nth highest salary **without `LIMIT`/`TOP`**.
5. Find **duplicate records**.
6. Find the highest salary **in each department**.
7. Find the **top 3 salaries in each department**.
8. Find employees whose salary is **greater than the average salary**.
9. Find employees who earn **more than their manager**.
10. Find departments having **more than 5 employees**, with department name.
11. Find employees with the **same salary**.
12. Find employees who **don't have a manager**.
13. Find the **2nd highest salary in each department**.
14. Find employees who joined in the **last 30 days**.
15. Find **duplicate salaries**.
16. Find the department with the **highest average salary**.
17. Find employees having the **same department and salary**.
18. Find employees whose salary is **greater than their department's average salary**.
19. Find **managers managing more than 5 employees**.
20. Find employees who **joined before their manager**.
21. Find employees having the **same manager**.
22. Find **duplicate employee names**.
23. **Delete duplicate records while keeping one record**.
24. Find the **Nth highest salary in each department**.
25. Find the **salary difference between employee and manager**.



### 🎯 Pattern coverage

```text
Salary / Ranking
 ├── 2nd highest
 ├── Nth highest
 ├── Nth highest without LIMIT
 ├── Top N per department
 └── Nth highest per department

GROUP BY / HAVING
 ├── Duplicate records
 ├── Duplicate salary
 ├── Same dept + salary
 ├── > 5 employees
 └── Highest average salary

SELF JOIN
 ├── Employee > Manager
 ├── Joined before Manager
 ├── Same Manager
 └── Salary difference

DATE
 └── Joined in last 30 days

DUPLICATES
 ├── Find duplicates
 └── Delete duplicates
```