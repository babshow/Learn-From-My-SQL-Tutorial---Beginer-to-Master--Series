
-- Triggers and Event --

select *
from employee_demographics;

select *
from employee_salary;

Delimiter $$
Create Trigger employee_insert
	After Insert on employee_salary
    FOR EACH ROW
Begin
	Insert Into employee_demographics (employee_id, first_name, last_name)
    Value (New.employee_id, New.first_name, New.Last_name);
End $$
Delimiter ;

Insert Into employee_salary (employee_id, first_name, last_name, occupation,
salary, dept_id)
Values(13, 'Jean ralphio', 'Saperstein', 'Entertainment 720 CEO', 1000000, null);

-- Events --

Select *
From employee_demographics; 

Delimiter $$
Create Event delete_retirees
On schedule every 30 second
Do
Begin
	Delete
	from employee_demographics
	where age >= 60 ;
End $$
Delimiter ;
	 ## If creating events does not work, use comand below to check if prefrences is ON or OFF ##
Show Variables like 'event%' ;