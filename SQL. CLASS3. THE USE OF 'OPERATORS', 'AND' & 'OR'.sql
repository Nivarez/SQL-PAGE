#OPERATORS
#comparison operators

SELECT 
    *
FROM
    visits
WHERE
    visit_count >= 5;
    
    
    SELECT 
    *
FROM
    water_quality
WHERE
    subjective_quality_score < 5;
    
    
SELECT 
    *
FROM
    employee
WHERE
    position != 'field Surveyor'; 
    
    
    
    #LOGICAL OPERATOR. 
#HOW TO FIND 'FIELD SURVEYORS' THAT LIVES IN 'SOKOTO'
SELECT 
    *
FROM
    employee
WHERE
    position = 'field Surveyor'
        AND province_name = 'Sokoto'; 
        
        
select * from visits where
visit_count > 6 and time_in_queue > 100;


SELECT 
    employee_name, phone_number, address
FROM
    employee
WHERE
    province_name = 'Akatsi'
        AND town_name = 'Harare';
        
        
SELECT 
    *
FROM
    employee
WHERE
    position = 'Data Analyst'
        OR position = 'Data Scientist';
        
SELECT 
    *
FROM
    visits
WHERE
    visit_count > 5 OR time_in_queue > 100;
    
    
                #ORDER OF PRESIDENCE. 
#WHEN USING THE 'AND' & 'OR' OPERATORS, THERE IS AN ORDER SQL TAKES TO RUN THE CODE. 
#THE CODE INSIDE THE PARANTHESIS IS USUALLY RUN FIRST, FOLLOWED BY THE 'AND' OPERATOR. 
#THE 'OR' OPERATOR RUNS LASTLY. 

#HOW TO CHECK A CIVIL ENGINEER THAT LIVED IN BOTH SOKOTO AND DAHABU
select * from employee
where position = 'Civil Engineer' and (town_name = 'Dahabu' or  'province_name' = 'sokoto');

#HOW TO CHECK THE AMOUNT OF WELL SOURCES THAT HAD A BACTERIAL E.COLI DESCRIPTION OR 
#BACTERIA VIBRO CHLORAE DESCRIPTION WHICH THEIR CONTAMINATION LEVEL IS HIGHER THAN 50. 

#Soln
SELECT 
    *
FROM
    well_pollution
WHERE
    biological > 50
        AND (description = 'Bacteria: E. coli'
        OR description = 'Bacteria: Vibro chlorae');