SELECT *
FROM employee_demographics
;

-- HAVING VS WHERE CLAUSE

select gender, avg(age)
from employee_demographics
group by gender 
having avg(age) >28
;

select occupation, avg(salary)
from employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary) > 75000
;



