-- Temporary Tables --

CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
last_name varchar(50),
favourite_movie varchar(100)
);

select *
from temp_table;

INSERT INTO temp_table
VALUES('Babs','Ayos','Home Alone');

select *
from temp_table;

Select *
from employee_salary;

create temporary table salary_over_50k
select *
from employee_salary
where salary >= 50000;

Select *
from employee_salary;



