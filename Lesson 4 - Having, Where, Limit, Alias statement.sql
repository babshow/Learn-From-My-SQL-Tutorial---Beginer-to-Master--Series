-- Having and where statement--


Select gender, AVG(age)
From employee_demographics
GROUP by gender
HAVING AVG(age) > 40;


Select occupation, AVG(Salary)
From employee_salary
WHERE occupation LIKE '%manager%'
GROUP by occupation
HAVING AVG(Salary) > 75;

-- Limit and Aliason--

Select *
From employee_demographics
limit 3;

Select first_name, AVG(AGE)
From employee_demographics
GROUP by First_name
limit 3;

-- Alias statement--

Select first_name, AVG(AGE) as AA
From employee_demographics
GROUP by First_name
HAVING AA > 40;

Select first_name, AVG(AGE) as AA
From employee_demographics
GROUP by First_name
HAVING AA > 40
LIMIT 2,2
