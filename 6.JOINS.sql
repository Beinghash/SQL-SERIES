-- JOINS 
-- its used to join both similar coloumns of the tables 
select * 
from employee_demographics
;

select *
from employee_salary
;

select *
from employee_demographics as dem
inner join employee_salary as sal
   on dem.employee_id = sal.employee_id     -- This'ON'can be read as 'we are trying to join the demographics table to the salary table "based on..."'
   ;
   
select dem.first_name, salary, occupation
from employee_demographics as dem
inner join employee_salary as sal 
 on dem.employee_id = sal.employee_id
 ;
 
 select dem.first_name, salary, occupation
from employee_demographics as dem
 inner join employee_salary as sal
 on dem.employee_id = sal.employee_id
order by salary desc
;

-- Outer Joins
-- it contains both left (left joins matches all the elements to the right) and right outer joins (right join matches the element to the left)

select distinct * 
from employee_demographics as dem
left join employee_salary as sal
on  dem.employee_id = sal.employee_id
;
 
select *
from employee_demographics as dem
right join employee_salary as sal
on dem.employee_id = sal.employee_id
;
 
-- SELF JOIN
-- it joins with itself

select *
from employee_salary as emp1
join employee_salary as emp2
on emp1.employee_id = emp2.employee_id
;

select first_name,last_name
from employee_salary as emp1
join employee_salary as emp2
 on emp1.employee_id + 1 = emp2.employee_id
 ;
 
select emp1.employee_id, emp1.first_name, emp1.last_name,
emp2.employee_id, emp2.first_name, emp2.last_name
from employee_salary as emp1
join employee_salary as emp2
on emp1.employee_id + 1 = emp2.employee_id
;
-- MULTIPLE JOINS
-- We can join multiple tables by using inner joins 
select *
from parks_departments                        -- A new table
;
 
select *
from employee_demographics as dem
inner join employee_salary as sal
on dem.employee_id = sal.employee_id

inner join parks_departments as pd
on sal.dept_id = pd.department_id
; 


 

   