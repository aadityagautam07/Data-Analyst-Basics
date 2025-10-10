-- Case Statements

select first_name,
last_name,
age,
case
	when age <= 30 then "Young"
    when age between 31 and 40 then "little old"
    when age >= 40 then "old"
end as age_check
from employee_demographics;

-- Pay increase  and bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% bonus
 
select first_name,last_name,salary,
case
	when salary < 50000 then salary + salary*.05
    when salary > 50000 then salary + salary*.07
end as hike,
case
	when dept_id = 6 then salary*.10
end as bonus
from employee_salary;

select *
from employee_salary;

select *
from parks_departments;