#HOW TO SUMMARIZE THE HIGHEST NUMBER OF PEOPLE USING GROUP BY. 
#Group BY. 

SELECT 
      province_name, COUNT(province_name)
FROM
    employee
GROUP BY province_name;

#HOW TO CHECK FOR THE AVERAGE OF NUMBER OF PEOPLE SERVED IN WATER_SOURCE. 
SELECT
     avg(number_of_people_served)
FROM
    water_source;
    
#HOW TO CHECK FOR THE AVERAGE TYPE OF WATER SOURCE AND AVERAGE NUMBER OF PEOPLE SERVED IN WATER SOURCE THAT ARE > 696.     
SELECT 
     type_of_water_source, avg(number_of_people_served)
FROM
	water_source
GROUP BY type_of_water_source
HAVING avg(number_of_people_served) > 696;

#HOW TO SUM UP DIFFERENT CATEGORIES WITH GROUP BY
SELECT
      region, year, sum(pop_n)
FROM
    global_water_access
GROUP BY region, year;

#HOW TO SUMMARIZE EMPLOYEES HAVING SAME FIRST NAME LETTER(L). 
SELECT employee_name FROM employee
group by employee_name
having employee_name like('L%');


#HOW TO COUNT THE TOWN_NAME IN EMPLOYEE USING GROUP BY. 
SELECT COUNT(town_name)
FROM employee
group by town_name;


#HOW TO SUM UP THE AMOUNT OF INDIVIDUAL VISIT. 
SELECT 
assigned_employee_id, sum(visit_count) AS Sum_visit
FROM visits
GROUP BY assigned_employee_id
ORDER BY Sum_visit DESC;


#HOW TO FIND THE AVERAGE NUMBER OF POPULATION(POP_N) ABOVE 500000. 
SELECT name, avg(pop_n)
FROM global_water_access
GROUP BY name
HAVING  avg(pop_n) > 500000;
