select*
from employee_demographics;

select gender , avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender
;

select occupation, salary
from emplo++yee_salary
group by occupation, salary
;

-- Order by

select *
from employee_demographics
order by first_name desc
;

select *
from employee_demographics
order by gender , age
;

-- Having VS Where

select gender ,  avg(age)
from employee_demographics
group by gender
having avg(age) >40
;

select occupation , avg(salary)
from employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary) > 60000
;