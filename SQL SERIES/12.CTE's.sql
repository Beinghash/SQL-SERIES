-- Common Table Expression (CTE) is an essential tool for simplifying complex queries and making them more readable. 
-- By defining temporary result sets that can be referenced multiple times, 
-- a CTE in SQL allows developers to break down complicated logic into manageable parts. 
-- CTEs help with hierarchical data representation, improve code reusability, and simplify maintenance.

-- SYNTAX

-- with cte_example as
-- ( 
--   select query
-- )
-- from cte_example ; 

with cte_example as (
select gender, avg(salary) avg_sal, max(salary) max_sal, min(salary) min_sal, count(salary) count_sal
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id
group by gender
)
select avg(avg_sal)
from cte_example
;

-- Performing CTE with multiple subQueries

with cte_example as
(
select employee_id, gender, age
from employee_demographics
where age > 30
),
cte_example2 as 
(
select employee_id, salary, dept_id
from employee_salary
where salary > 5000
),
cte_example3 as 
(
select *
from parks_departments
)
select *
from cte_example as ex1
join cte_example2 as ex2
 on ex1.employee_id = ex2.employee_id
 join cte_example3 as ex3
 on ex2.dept_id = ex3.department_id
 ;





