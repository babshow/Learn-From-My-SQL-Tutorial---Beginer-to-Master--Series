-- Subqueries statement --
select *
from parks_departments;

## Where dept_id = 1

select *
from employee_demographics
where employee_id in
			(select employee_id
            from employee_salary
            where dept_id =1);
            
select first_name, salary, AVG(salary)
from employee_salary
group by first_name, salary ;

select first_name, salary,
  (select AVG(salary)
  from employee_salary) as Avg_Salary
from employee_salary;

Select gender, AVG(age), Max(age), Min(age), Count(age)
from employee_demographics
group by gender;


Select gender, AVG(age), Max(age), Min(age), Count(age),
		(select AVG(age)
		from employee_demographics) as Avg_age
FROM employee_demographics
group by gender;

Select gender, AVG(age), Min(age), Max(age), Count(age),
		(select Min(age)
		from employee_demographics) as Min_Age
FROM employee_demographics
group by gender;
        
Select gender, AVG(age), Min(age), Max(age), Count(age),
		(select Count(age)
		from employee_demographics) as Total_count
FROM employee_demographics
group by gender;

## Aggregate Function ##
Select *
from 
(Select gender, AVG(age), Min(age), Max(age), Count(age)
FROM employee_demographics
group by gender)as Agg_table;


Select avg(`Max(age)`)
from 
(Select gender, AVG(age), Min(age), Max(age), Count(age)
FROM employee_demographics
group by gender)as Agg_table;

## OR use the fomula funtions below to perfomr same result ##

Select avg(Max_age)
from 
(Select gender, 
AVG(age) as Avg_age, 
Min(age) as Min_age, 
Max(age) as Max_age,
Count(age) as Count_age
FROM employee_demographics
group by gender)as Agg_table