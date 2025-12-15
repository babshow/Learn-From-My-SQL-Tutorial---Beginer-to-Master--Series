-- Case statement --

select first_name, last_name, age,
case
	when age < 30 then 'young'
end
from employee_demographics;

select first_name, last_name, age,
case
	when age < 30 then 'young'
    when age between 31 and 50 then 'old'
    when age > 50 then 'on death door'
end as Age_Bracket
from employee_demographics;


-- For this section, we are to populate the pay increase and bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- work in finance = 10%

Select first_name, last_name, salary
from employee_salary;

Select *
from parks_departments;

Select *
from employee_salary;

Select first_name, last_name, salary,
case
	when salary < 50000 then salary + (salary * 0.05)
    when salary > 50000 then salary + (salary * 0.05)
end as New_salary,
Case
	when dept_id = 6 then salary + (salary * 0.10)
end as Bonus
from employee_salary;


