-- UNIONS
-- The UNION operator is used to combine the result-set of two or more SELECT statements.

-- Every SELECT statement within UNION must have the same number of columns
-- The columns must also have similar data types
-- The columns in every SELECT statement must also be in the same order 

select *
from employee_demographics
union 
select *
from employee_salary
;

select first_name, last_name
from employee_demographics
union                                                            -- Returns only unique values also called as 'UNION DISTINCT'
select first_name,last_name
from employee_salary
;

select first_name, last_name
from employee_demographics
union all                                                        -- Returns all the values 
select first_name, last_name
from employee_salary
;

-- Performing union on three tables

select first_name, last_name, "old man" as label
from employee_demographics
where age > 40 and gender = "male"
union
select first_name, last_name, "old lady" as label
from employee_demographics
where age > 40 and gender = "female"
union
select first_name,last_name,  "highly paid" as label
from employee_salary
where salary > 6000
order by first_name, last_name
;




