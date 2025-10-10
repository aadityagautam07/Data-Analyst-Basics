SELECT * 
FROM employee_salary
WHERE first_name = "leslie"
;

SELECT * 
FROM employee_salary
WHERE salary >= 60000
;

SELECT * 
FROM employee_salary
WHERE employee_id = dept_id
;

select *
from employee_demographics
where gender != 'male'
;

select *
from employee_demographics
where birth_date > '1980-01-10'
; 

-- Logical Operator (AND , OR , NOT)

select *
from employee_demographics
where birth_date > '1980-01-10'
AND gender = 'male'
;

select *
from employee_demographics
where birth_date > '1980-01-10'
or not gender = 'male'
; 

select *
from employee_demographics
where (first_name = 'ben' And age < 38 ) or gender = 'male'
;

-- Like Statement (%,_)
-- % means anything, _ means specific value

select *
from employee_demographics
where first_name like 'a%'
;

select *
from employee_demographics
where first_name like 'a___%'
; 