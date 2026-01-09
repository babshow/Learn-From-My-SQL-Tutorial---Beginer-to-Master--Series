-- CTE --


select gender, avg(salary), max(salary), min(salary), count(salary)
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender;


With CTE_example as 
(
select gender, avg(salary), max(salary), min(salary), count(salary)
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender
)
select *
from CTE_example;


With CTE_example as 
(
select gender, avg(salary) avg_sal, max(salary) max_sal, min(salary) min_sal, count(salary) count_sal
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender
)
select avg(avg_sal)
from CTE_example;

-- or using the statement below in replace of the statement above --

With CTE_example (gender, avg_sal, max_sal, min_sal, count_sal)
 as 
(
select gender, avg(salary) avg_sal, max(salary) max_sal, min(salary) min_sal, count(salary) count_sal
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender
)
select *
from CTE_example;


With CTE_Example as
(
select employee_id, gender, birth_date
from employee_demographics
where birth_date > '1985-01-01'
),

CTE_Example2 as
(
select employee_id, salary
from employee_salary
where salary > 50000
)

select *
from CTE_Example
join CTE_example2
	on CTE_Example.employee_id = CTE_example2.employee_id;