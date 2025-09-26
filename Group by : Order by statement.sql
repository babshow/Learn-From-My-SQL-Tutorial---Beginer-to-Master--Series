-- Group by--

Select gender, AVG(AGE)
From employee_demographics
group by gender;

Select gender, AVG(AGE), min(age), max(age), count(age)
From employee_demographics
group by gender;

Select occupation
From employee_salary
group by occupation;

Select occupation, salary
From employee_salary
group by occupation, salary;

-- ORDER BY --

Select *
From employee_demographics
ORDER by gender ASC;

Select GENDER
From employee_demographics
ORDER by gender ASC;

Select first_name, age
From employee_demographics
ORDER by first_name ASC
;

Select *
From employee_demographics
ORDER by 5, 4;

