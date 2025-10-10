select *
from employee_demographics;

select *
from employee_salary;

-- Inner join
select *
from employee_demographics
inner join employee_salary
	on employee_demographics.employee_id = employee_salary.employee_id
;

-- using alias
select dem.employee_id, age, occupation
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
;


-- left join
select *
from employee_demographics as dem
left join employee_salary as sal
	on dem.employee_id = sal.employee_id
;

-- Right join
select *
from employee_demographics as dem
right join employee_salary as sal
	on dem.employee_id = sal.employee_id
;

-- self join
select *
from employee_salary sal1
join employee_salary sal2
	on sal1.employee_id = sal2.employee_id
;

-- Q. Assign secret santa to each employee and for each employee their secret santa.
--  is next employee and get the separate table for that.
 
select sal1.employee_id as secret_emp_id,
sal1.first_name as secret_first_name,
sal1.last_name as secret_last_name,
sal2.employee_id as santa_emp_id,
sal2.first_name as santa_first_name,
sal2.last_name as santa_last_name
from employee_salary sal1
join employee_salary sal2
	on sal1.employee_id +1 = sal2.employee_id
;
 
-- Joining Multiple tables together

select *
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
inner join parks_departments as pd
	on sal.dept_id = pd.department_id
;

select *
from parks_departments
;