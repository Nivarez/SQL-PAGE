use md_water_services;
#EXERCISE
#1. HOW MANY TOWNS ARE IN MAJI NOGO

SELECT distinct town_name from employee;
#ANSWER = 9.

#2. HOW MANY HOUSEHOLD ARE IN AKATSI PROVINCE?
SELECT 
    *
FROM
    location
WHERE
    province_name = 'Akatsi';
#ANSWER = 8940

#3. WHAT IS THE HIGHEST VISIT COUNT FOR ANY HOUSEHOLD IN MAJI NOGO?
SELECT DISTINCT
    visit_count
FROM
    visits;
#ANSWER = 8
    
#4. PREVIEW THE EMPLOYEE NAME, PHONE NUMBER AND ADDRESS OF THE FIRST DATA ANALYST EMPLOYEE. 
SELECT 
    employee_name, phone_number, address
FROM
    employee
WHERE
    position = 'Data Analyst'
LIMIT 1;
#ANSWER Chidi Kunto

#5. HOW MANY WATER SOURCES HAD A SUBJECTIVE QUALITY SCORE OF 10?
SELECT 
    *
FROM
    water_quality
WHERE
    subjective_quality_score = 10;
#ANSWER = 10942

#THE USE OF 'IN & NOT IN' 
#HOW TO SELECT MULTIPLE VALUES FROM A DATABASE USING 'IN & NOT IN'. 
           #'IN'.
#IN BRINGS OUT THE EXACT VALUE YOU INPUT FROM A TABLE OR DATABASE. 
SELECT * from employee
where position 
in ('Civil Engineer','Financial Analyst','Data Analyst');

SELECT * from employee
where employee_name
in ('Enitan Zuri','Chidi Kunto','Bello Azibo','Farai Nai');

SELECT phone_number, address, town_name 
from employee 
where employee_name
in ('Enitan Zuri','Chidi Kunto','Bello Azibo','Farai Nai');

SELECT 
    year, region, name, pop_n
FROM
    global_water_access
WHERE
    year IN (2016 , 2018, 2019); 
    

SELECT 
    employee_name, town_name
FROM
    employee
WHERE
    (province_name , town_name) IN (('Sokoto' , 'Rural') , ('Hawassa' , 'Zanzibar'),
        ('Akatsi' , 'Harare'));
        
        
         #'NOT IN'. 
#NOT IN BRINGS OUT VALUES IN THE TABLE OR DATABASE EXCEPT FROM THE VALUE YOU INPUT. 
SELECT * FROM employee
WHERE position NOT IN('Field Surveyor');


SELECT province_name from location
where province_name not in ('Akatsi');

SELECT * from visits
where visit_count between 5 and 7;

select location_id, time_in_queue from visits
where time_in_queue not between 60 and 200;


#HOW TO ARRANGE A DATABASE IN ASCENDING & DESCENDING ORDER. 
#SORTING ORDER BY
#ASCENDING
select * from employee
order by employee_name asc;


#DESCENDING
select * from employee
order by employee_name desc;