-- SubQueries
-- A query within a query (just like a tree and its children nodes or nested loops)

select *
from employee_demographics
where employee_id in 
                      ( select employee_id
                        from employee_salary
                         where dept_id = 1)
;

select *
from employee_salary
where employee_id in
(select employee_id
from employee_demographics
where gender = "male"
)
;

select first_name, salary,
(select avg(salary)
from employee_salary)
from employee_salary;


select avg(max_age)
from
(select gender, avg(age) as avg_age , max(age) as max_age , min(age) as min_age , count(age) as count_age
from employee_demographics
group by gender) as Agg_table
;

select avg(count_age)
 from 
     (select gender, avg(age),  max(age), min(age), count(age) as count_age
            from employee_demographics
             group by gender) as Agg_table
;







