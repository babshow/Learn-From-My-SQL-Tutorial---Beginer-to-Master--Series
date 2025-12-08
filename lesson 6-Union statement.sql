-- Union statement --

Select *
from employee_demographics
union distinct
select *
from employee_salary;

Select first_name, last_name
from employee_demographics
union
Select first_name, last_name
from employee_salary;

Select first_name, last_name
from employee_demographics
union all
Select first_name, last_name
from employee_salary;

Select age, gender
from employee_demographics
union
Select first_name, last_name
from employee_salary;


Select first_name, last_name, 'old' as Label
from employee_demographics
where age > 40
Union
Select first_name, last_name, 'Highly paid employee' as Label
from employee_salary
where salary > 70000
order by first_name, last_name;


Select first_name, last_name, 'oldman' as Label
from employee_demographics
where age > 40 and gender = 'male'
Union
Select first_name, last_name, 'oldlady' as Label
from employee_demographics
where age > 40 and gender = 'female'
union
Select first_name, last_name, 'Highly paid employee' as Label
from employee_salary
where salary > 70000
order by first_name, last_name;

