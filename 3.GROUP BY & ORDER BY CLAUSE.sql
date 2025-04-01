select *
FROM employee_demographics
;
-- GROUP BY CLAUSE

SELECT first_name                             -- SELECT should contain same coloumn name as GROUP BY to access it 
from employee_demographics
group by gender ;

SELECT gender, avg(age), MAX(age), MIN(age), COUNT(age)                         -- Performing aggregate functions 
FROM employee_demographics
GROUP BY gender
; 

-- ORDER BY CLAUSE
SELECT *
FROM employee_demographics
order by first_name desc                    -- Returns a specific order (by using ASC or DESC we can arrange in ascending or decending order)
;

SELECT *
FROM employee_demographics
order by  age , gender                     -- Arranges the age coloumn in ascending order and arranges gender too   
;
