-- Temporary tables

create temporary table temp_table
(
first_name varchar(50),
last_name varchar (50),
favourite_movie varchar(100)
);

insert into temp_table 
values 
( 'hashir', 'khan', 'perks of being a wallflower');

select *
from temp_table;


create temporary table salary_over_50k
select *
from employee_salary
where salary >= 50000
;

select *
from salary_over_50k;




CREATE TEMPORARY TABLE temp_table2 (
    id INT,
    name VARCHAR(50)
);

INSERT INTO temp_table2 (id, name) VALUES (1, 'Alice');
INSERT INTO temp_table2 (id, name) VALUES (2, 'Bob');
INSERT INTO temp_table2 (id, name) VALUES (3, 'Charlie');

select *
from temp_table2;

