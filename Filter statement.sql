Select *
from Parks_and_Recreation.employee_salary;

Select first_name
from Parks_and_Recreation.employee_salary
where salary >= 50000;

Select *
from Parks_and_Recreation.employee_salary
where first_name = 'leslie'
;

Select *
From Parks_and_Recreation.employee_salary
where salary < 50000;

Select *
From Parks_and_Recreation.employee_salary
where salary > 50000;

Select *
From Parks_and_Recreation.employee_salary
where salary <= 50000;

Select *
From Parks_and_Recreation.employee_demographics
where gender = 'female';

# where gender not equal to female !
Select *
From Parks_and_Recreation.employee_demographics
where gender != 'female';

Select *
From Parks_and_Recreation.employee_demographics
where birth_date != '1985-01-01';

Select *
From Parks_and_Recreation.employee_demographics
where gender >= '1985-01-01';

# -- AND OR NOT --- Logical operators

Select *
From Parks_and_Recreation.employee_demographics
where gender >= '1985-01-01'
AND gender = 'female';

Select *
From Parks_and_Recreation.employee_demographics
where birth_date = '1985-01-01'
OR age > '36'
AND gender = 'male';

-- Like Statement--
-- % --

Select *
From Parks_and_Recreation.employee_demographics
where birth_date like '1985';

Select *
From Parks_and_Recreation.employee_demographics
where birth_date like '1985'
OR '1979';

Select *
From Parks_and_Recreation.employee_demographics
where first_name like 'er';

Select *
From Parks_and_Recreation.employee_demographics
where first_name like '%er%';

Select *
From Parks_and_Recreation.employee_demographics
where first_name like 'a__';

