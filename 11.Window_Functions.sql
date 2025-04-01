-- Window Functions

select gender, avg(salary)
from employee_demographics as dem
join employee_salary as sal 
on dem.employee_id = sal.employee_id
group by gender                                            -- Returns only unique values
;



select gender, avg(salary) over()                           -- over() window function Returns the entire values
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id
;

-- Performing aggregate function avg() 
select dem.first_name, dem.last_name, avg(salary) over(partition by gender)                            
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id
;

-- Performing aggregate function sum() 
select dem.first_name, dem.last_name, sum(salary) over(partition by gender)                            -- Returns the entire values
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id
;

