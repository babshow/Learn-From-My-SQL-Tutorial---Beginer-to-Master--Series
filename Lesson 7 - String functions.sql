-- Stting Function --

## length of character 

select length('skyfall');

select first_name, LENGTH(first_name)
from employee_demographics;

select first_name, LENGTH(first_name)
from employee_demographics
order by 2;

## Selecting upper or lower case character ##

select first_name, upper(first_name)
from employee_demographics;

select upper(first_name)
from employee_demographics;

select lower(first_name)
from employee_demographics;

## Trim functions
select ('       sky       ');

select Trim('       sky       ');

## left or right trim

select rtrim('       sky       ');
select ltrim('       sky       ');

## character count from the left of right / substrings ##

Select first_name, left(first_name, 4)
from employee_demographics;

Select first_name, right(first_name, 4)
from employee_demographics;

Select first_name
from employee_demographics
where length(first_name) = 4;

Select first_name,
left(first_name, 4),
right(first_name, 4),
substring(first_name, 3,2),
birth_date,
substring(birth_date, 6,2)
from employee_demographics;

## Replace character

select first_name, replace(first_name, 'a', 'z')
from employee_demographics;

select first_name, replace(first_name, 'Jerry', 'Jurry')
from employee_demographics;

## Locate character

select locate('x', 'alexander');

Select first_name, locate('an', first_name)
from employee_demographics;

##combine / concat command

Select first_name, last_name,
concat(first_name,last_name),
concat(first_name,'  ',last_name) as full_name
from employee_demographics;






