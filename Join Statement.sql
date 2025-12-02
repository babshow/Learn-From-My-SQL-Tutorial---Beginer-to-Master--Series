# Joins Statement #

select *
from employee_demographics
join employee_salary;

select *
from employee_demographics
inner join employee_salary
    on employee_demographics.employee_id = employee_salary.employee_id;
    
    # Using Alias #
    
select *
from employee_demographics as dem
inner join employee_salary as sal
    on dem.employee_id = sal.employee_id;
    
    -- Selecting actual column --

select dem.employee_id, age, occupation
from employee_demographics as dem
inner join employee_salary as sal
    on dem.employee_id = sal.employee_id;
    
    -- outer join [left/right]--
    
select *
from employee_demographics as dem
left join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
    select *
from employee_demographics as dem
right join employee_salary as sal
	on dem.employee_id = sal.employee_id;
    
    -- self join --
    # A join you tie its table to it's self #
    
select *
from employee_salary emp1
join employee_salary emp2
	on emp1.employee_id = emp2.employee_id;

-- Assign to next employee id --

select *
from employee_salary emp1
join employee_salary emp2
	on emp1.employee_id + 1 = emp2.employee_id;

-- Lets Assign 3 colunm from table --

select *
from employee_salary emp1
join employee_salary emp2
	on emp1.employee_id = emp2.employee_id;
    
-- Lets specify column in output --
-- column specifying secret santa to an employee --
    
select emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as name_emp,
emp2.first_name as first_name_emp,
emp2.last_name as last_name_emp
from employee_salary emp1
join employee_salary emp2
	on emp1.employee_id = emp2.employee_id;
    
    -- Joining Multiples Tablr together --
    
select *
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
inner join parks_departments as pd
	on sal.dept_id = pd.department_id;
    
    -- keep practticing --
