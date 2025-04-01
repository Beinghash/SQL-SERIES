-- WHERE CLAUSE
select *
from employee_salary
where first_name = "Jerry"
;

select * 
from employee_salary
where salary <= 50000 
;

select *
from employee_salary
where employee_id = "1" ;

-- Selecting from another table!!!

select *
from employee_demographics
where age > 18 
;

select *
from employee_demographics
where gender = "male"
; 

select *
from employee_demographics
where gender != "male"          -- Prints the table of elements containing all female
;

select employee_id             -- prints ONLY the 'employee_id' table 
from employee_demographics
where gender != "Female"
;
 -- AND and OR logical operators
 
 select *
 from employee_salary
where salary >25000 and salary<80000
;

select * 
from employee_demographics
where age >18 or gender = "Female"
;
 
 select * 
 from employee_demographics
 where age >25 or not gender = "male"
 ;
 
 -- LIKE statements 
 -- '%' (anything comes after) and '_' (Specifies the characters of the words)
 
  
 select* 
 from employee_demographics
 where first_name like "jer%"
 ;
 
 select *
 from employee_demographics
 where first_name like "jer__"
 ;
 
 select *
 from employee_demographics
 where birth_date like "1989%"
 ;
 
 select *
 from employee_demographics
 where age like "4%"
 ;

