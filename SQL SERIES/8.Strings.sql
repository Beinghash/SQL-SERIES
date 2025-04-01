-- STRINGS

select length("football")                              -- Returns the length of the string
;

select first_name, length(first_name)
from employee_demographics
;

select first_name, upper(first_name)                       -- Returns the all capital letters 
from employee_demographics
;

select lower("FOOTBALL")                                        -- Returns all small letter string
;

select trim("            messi        ")                         -- Trims the spaces 
;

select rtrim("messi              ")                             -- Trims the right spaces 
;

select ltrim("              messi")                             -- Trims the left spaces 
;

-- SUBSTRINGS

select first_name, left(first_name, 4), right(first_name, 4),                    -- return the first 4 characters of the string
substring(first_name,2,4) 
from employee_demographics
;
 -- Here we are trying to return the birth year in 1900 along with the birth month

select birth_date, substring(birth_date, 3,2) as birth_year_in_1900, 
substring(birth_date, 6,2) as birth_month
from employee_demographics
;

-- Replace and locate 

select first_name, replace(first_name, "a", "z")                     -- it replaces 'a' with 'z'
from employee_demographics
;

select locate("x", "alaxander")                                    -- it locates the specific character/s in a string
;

select first_name, locate("an", first_name)
from employee_demographics
;

-- CONCAT
 select first_name, last_name,
 concat(first_name," ",last_name) as full_name                                       -- it combines both the coloumns
 from employee_demographics
 ;










