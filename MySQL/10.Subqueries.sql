-- Subqueries

select *
from employee_demographics
where employee_id in
				(select employee_id
					from employee_salary
                    where dept_id = 1)
;


select first_name, last_name, avg(salary),
(select avg(salary)
from employee_salary) as average
from employee_salary
group by first_name, last_name
;
 
select gender, avg(age), min(age), max(age), count(age)
from employee_demographics
group by gender
;

select avg(`max(age)`)
from
(select gender, avg(age), min(age), max(age), count(age)
from employee_demographics
group by gender) as aggregate
;

-- using alias to make it easy
select avg(max_age)
from
(select gender, avg(age) as avg_age,
min(age) as min_age,
max(age) as max_age,
count(age) as count_age
from employee_demographics
group by gender) as aggregate
;