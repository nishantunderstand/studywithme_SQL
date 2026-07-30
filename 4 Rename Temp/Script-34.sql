-- Date: Jul 30, 2026 Time: 3:58:46 PM
-- SQL Question : Second/Nth highest salary
/* Possible Approaches : 
1. Standard Approach : Distinct Sort Desc,Limit 3, Skip 2 , 
2. SubQuery Approach : Find Max, Use that a subQuery to find 2nd Max
3. Window Function : 
*/

SELECT * from employee e ;

SELECT DISTINCT salary FROM employee ORDER BY salary DESC LIMIT 1 OFFSET 1;

SELECT MAX(salary) AS second_heighest_salary FROM employee 
WHERE salary < (SELECT MAX(salary) FROM employee);

-- Do i need to Apply Distinct ?