-- Unions  by default it shows distinct values
-- to show all value use(all)

select first_name, last_name
from employee_demographics
union all
select first_name, last_name
from employee_salary
;

select first_name, last_name, 'old man' as label
from employee_demographics
where age > 40 and gender = 'male'
union
select first_name, last_name, 'old women' as label
from employee_demographics
where age > 40 and gender = 'female'
union 
select first_name, last_name, 'highly paid' as label
from employee_salary
where salary > 72000
order by first_name, last_name
;
