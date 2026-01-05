
-- windows functions --

select *
from employee_demographics
join employee_salary
order by gender;

select gender, AVG(salary)
from employee_demographics
join employee_salary
group by gender;

select gender, AVG(salary) as Avg_Salary
from employee_demographics as Dem
join employee_salary as Sal
	on dem.employee_id = sal.employee_id
group by gender;

## Avg salary over everything ##

select gender, AVG(salary) Over()
from employee_demographics as Dem
join employee_salary as Sal
	on dem.employee_id = sal.employee_id;
    
select gender, AVG(salary) Over(partition by Gender)
from employee_demographics as Dem
join employee_salary as Sal
	on dem.employee_id = sal.employee_id;
    
select Dem.first_name, Dem.last_name, gender, AVG(salary) Over(partition by Gender)
from employee_demographics as Dem
join employee_salary as Sal
	on dem.employee_id = sal.employee_id;
    
select Dem.first_name, Dem.last_name, gender, AVG(salary) as Avg_Salary
from employee_demographics as Dem
join employee_salary as Sal
	on dem.employee_id = sal.employee_id
group by Dem.first_name, Dem.last_name, gender;

select Dem.first_name, Dem.last_name, gender, 
SUM(salary) as Avg_Salary
from employee_demographics as Dem
join employee_salary as Sal
	on dem.employee_id = sal.employee_id
group by Dem.first_name, Dem.last_name, gender;


select Dem.first_name, Dem.last_name, gender, 
sum(salary) Over(partition by Gender)
from employee_demographics as Dem
join employee_salary as Sal
	on dem.employee_id = sal.employee_id;
    
## Rollin Total ##

select Dem.first_name, Dem.last_name, gender, salary,
sum(salary) Over(partition by Gender order by dem.employee_id) as Rolling_Total
from employee_demographics as Dem
join employee_salary as Sal
	on dem.employee_id = sal.employee_id;
    
    ## Row number ##
select dem.employee_id, Dem.first_name, Dem.last_name, gender, salary,
row_number() over()
from employee_demographics as Dem
join employee_salary as Sal
	on dem.employee_id = sal.employee_id;
    
select dem.employee_id, Dem.first_name, Dem.last_name, gender, salary,
row_number() over()
from employee_demographics as Dem
join employee_salary as Sal
	on dem.employee_id = sal.employee_id;
    
select dem.employee_id, Dem.first_name, Dem.last_name, gender, salary,
row_number() over(partition by gender order by salary DESC)
from employee_demographics as Dem
join employee_salary as Sal
	on dem.employee_id = sal.employee_id;
    
select dem.employee_id, Dem.first_name, Dem.last_name, gender, salary,
row_number() over(partition by gender order by salary DESC) as Row_num,
RANK() over(partition by gender order by salary DESC) as Rank_num,
Dense_RANK() over(partition by gender order by salary DESC) as Dense_Rank_num
from employee_demographics as Dem
join employee_salary as Sal
	on dem.employee_id = sal.employee_id;