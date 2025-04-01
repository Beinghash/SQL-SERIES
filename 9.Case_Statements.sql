-- CASE STATEMENTS
-- its more like if statements 

SELECT first_name,
last_name
age,
case
    when age <30 then "young" 
    when age >30 and age <=50 then "old"
    when age > 51 then "super old"
end as Age_bracket
from employee_demographics
;

-- Eligibilty criteria to enter the workshop

select first_name, last_name, age,
case
  when age >18 and age <31 then "you are allowed"
  when age <18 or age >31 then "you are not allowed"
end  as Eligibilty_criteria
from employee_demographics
;

-- Problem on pay increase and bonus
-- < 5000 = 5%
-- > 5000 = 7%
-- health care = 10% bonus

select first_name, last_name, salary,
case 
    when salary < 5000 then salary + (salary * 0.05)
    when salary > 5000 then salary + (salary * 0.07)
end as Raise,
case
   when dept_id = 4 then salary + (salary*0.10)
end as bonus

from employee_salary
;



