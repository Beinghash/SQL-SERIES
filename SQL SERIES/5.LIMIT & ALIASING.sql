-- LIMIT & ALIASING
-- LIMIT
select *
from employee_demographics
order by age desc
limit 3
;

select *
from employee_demographics
order by age desc
limit 2,4          -- Returns the age in desc from 2 to 4
;

select *
from employee_salary
order by salary<=5000
limit 3
;

-- Aliasing

select first_name,gender, avg(age) as avg_age    -- it stores the value in another element by using "as"
from employee_demographics
group by first_name,gender
having avg_age > 40 
;







