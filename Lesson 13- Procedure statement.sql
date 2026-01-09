-- Stored Procedures --

Select *
from employee_salary
where salary >= 50000;

Create Procedure large_salary()
Select *
from employee_salary
where salary >= 50000;

call large_salary();

Create Procedure large_salary2()
Select *
from employee_salary
where salary >= 50000;
Select *
from employee_salary
where salary >= 10000;

-- To join both statement --
Delimiter $$
Create Procedure large_salary3()
Begin
Select *
from employee_salary
where salary >= 50000;
Select *
from employee_salary
where salary >= 10000;
end $$
Delimiter ;

Call large_salary3() ;

## Call a particalar Employee ##

Delimiter $$
Create Procedure large_salary4(salary_id INT)
Begin
Select salary
from employee_salary
where employee_id = salary_id;
END $$
Delimiter ;

Call large_salary4(1);