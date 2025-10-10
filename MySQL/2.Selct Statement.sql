select * 
from employee_demographics;

select first_name , last_name , employee_id , (employee_id * 10)+10
from parks_and_recreation.employee_demographics;

select distinct gender , first_name
from parks_and_recreation.employee_demographics; 