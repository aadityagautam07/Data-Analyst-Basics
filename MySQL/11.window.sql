-- Window Function

select gender, sum(salary) as avg_salary
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender
;
		-- Both will give same output but by using window we can get for every individual
		-- unless like in normal Group by
        

-- partition
select dem.first_name, dem.last_name, gender,
sum(salary) over(partition by gender)
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
;
 
select dem.first_name, dem.last_name, gender, salary,
sum(salary) over(partition by gender order by dem.employee_id) as Rolling_total
from employee_demographics as dem
	join employee_salary as sal
on dem.employee_id = sal.employee_id
;


select dem.employee_id, dem.first_name, dem.last_name, gender, salary,
row_number() over(partition by gender order by salary desc) as row_num,
rank() over(partition by gender order by salary desc) as row_num,
dense_rank() over(partition by gender order by salary desc) as dense_row_num
from employee_demographics as dem
	join employee_salary as sal
on dem.employee_id = sal.employee_id
;