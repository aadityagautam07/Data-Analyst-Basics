-- Window Function

select gender, avg(salary) as avg_salary
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender
;

-- partition
select dem.first_name,dem.last_name, gender, avg(salary) over(partition by gender)
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
;

