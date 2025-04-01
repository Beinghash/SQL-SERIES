SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT first_name,
last_name,
age,
age + 20,
(age + 10) * 8
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT first_name,gender
FROM parks_and_recreation.employee_demographics;
