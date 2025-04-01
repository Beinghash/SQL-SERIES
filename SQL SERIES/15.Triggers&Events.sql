-- Triggers and Events

-- Trigger
select*
from employee_demographics;

select *
from employee_salary;

delimiter $$                                                   -- CAN BE READ AS THE FOLLOWING
create trigger employee_insert                                 -- create a trigger 'employee_insert'
      after insert on employee_salary                          -- after a row is inserted ON the 'employee_salary' table
      for each row                                             -- for each row we are performing the following
 begin 
     insert into employee_demographics (employee_id, first_name,last_name)              -- we are inserting into the employee_demographics table the (employee_id,first_name,last_name)
     values(new.employee_id, new.first_name,new.last_name);
end $$     
delimiter ;

insert into employee_salary(employee_id, first_name, last_name, occupation,salary, dept_id)
values (13,"hashir","khan","engineer",50000,null);

-- Events

select *
from employee_demographics;


delimiter $$
create event delete_retirees                                      -- creating event
on schedule every 30 second                                       -- scheduling for specific period of time to be triggered 
do                                                                -- here what needs to happen after every 30 second (say)
begin
     delete                                                       -- delete the employee row when his age is 60 and above
     from employee_demographics
     where age >= 60;
end $$
delimiter ;





