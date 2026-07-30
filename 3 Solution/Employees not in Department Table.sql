Employees not in Department Table

We had 2 Tables: 
	employee
	department



select e.employee_name
from employee e
left join department d
	on e.dept_id = d.dept_id
where d.dept_id IS NULL;	

Other Approach ?

I know inner join cannot be used
How to decide between left or right ?

---

select e.employee_name
from employee e
where not exists (
	select 1
	from department d
	where d.dept_id = e.dept_id
);


The rule is:
The table before LEFT JOIN is preserved.