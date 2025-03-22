SELECT * from employee; # This displays the values in the employee
SELECT 
	employee_name, address, position
FROM 
    employee
LIMIT 10;

SELECT * FROM employee
where position = 'Field Surveyor';