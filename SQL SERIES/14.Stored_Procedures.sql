-- Stored procedure
-- A stored procedure is a prepared SQL code that you can save, so the code can be reused over and over again.
-- So if you have an SQL query that you write over and over again, save it as a stored procedure, and then just call it to execute it.

create procedure large_salaries()
select *
from employee_salary
where salary >= 50000
;
 call large_salaries();
 
delimiter $$                                                                 
create procedure large_salaries3()
begin
	 select *
	 from employee_salarylarge_salaries
	 where salary >= 50000;
	 
	 select *
	 from employee_salary
	 where salary > 10000;
end $$
delimiter ;

call large_salaries3();

-- Passing a parameter 

delimiter $$
create procedure large_salaries4(p_salary int)
begin
   select *
   from employee_salary
   where employee_id = p_salary;
end $$
delimiter ;

call large_salaries4(8)
   
-- Retrieving the smallest salary from the salary table
   
delimiter $$
create procedure small_salary(p_small_salary int)
begin 
    select *
    from employee_salary
    where employee_id = p_small_salary
    ;
end  $$  
delimiter ;

call small_salary(10);

 
 
 
 
 
 
 