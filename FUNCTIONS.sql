                                              #SQL FUNCTIONS. 
#Scalar Functions:- These are functions that are applied to a range of values giving results for each value. 
#THESE FUNCTION IS USED FOR INDIVIDUAL VALUES. 
#HOW TO CONVERT NEGATIVE NUMBERS TO POSITIVE NUMBERS
select abs(-10);


#HOW TO ROUND UP MULTIPLE DECIMAL NUMBERS TO TWO DECIMAL PLACE
select round(10.266675,2);

#HOW TO ROUND UP A DECIMAL NUMBER TO A WHOLE NUMBER
select ceil(10.2);


#HOW TO ROUND DOWN A DECIMAL NUMBER TO A WHOLE NUMBER
select floor(29.9);


#HOW TO GET THE REMAINDER OF A NUMBER
select MOD (13,4);


#HOW TO UST THE RAISE TO POWER FUNCTION
select power(4,3);


#HOW TO GET THE SQUARE ROOT OF A NUMBER
select sqrt(256);

#HOW TO GENERATE ROUNDOM NUMBERS BETWEEN 0 & 1
select rand();

#ADD UP ALL THE POPULATION OF 2015 IN GLOBAL WATER ACCESS AND ROUND UP THE ANSWER TO A WHOLE NUMBER.  
select sum(pop_n) from global_water_access
group by year;

select ceil(7406873.232540727);
                                       
                                       #SQL FUNCTIONS.  
#AGGREGATE FUNCTIONS:- These are functions that are applied to a range of cells either across a row(Accross multiple colomns). 
#THESE FUNCTION IS USED FOR MULTIPLE VALUES.
#or a column(Across multiple rows). 
select avg(time_in_queue) as Average_time_in_queue from visits;


									#MISCELLEANOUS FUNCTIONS. 
#HOW TO CONVERT FROM ONE DATATYPE TO ANOTHER. YOU CAN EITHER UDE 'CAST' OR 'CONVERT'
#'CAST' CAN CONVERT TO MULTIPLE DATATYPES UNLIKE 'CONVERT'
SELECT CAST(biological AS DECIMAL) as biological_rounded
FROM well_pollution;


#HOW TO CONVERT INT DATATYPE TO FLOAT DATATYPE. 
SELECT CONVERT(number_of_people_served, decimal(6,2)) as convert_served
FROM water_source;


#HOW TO CONVERT PHONE_NUMBER IN STRINGS TO INT. 
SELECT convert(phone_number, double) as converted FROM employee;



select employee_name, ifnull(email,'@') as nullvalues from employee;


#HOW TO CHANGE NULL TO INT VALUE. 
select name, ifnull(wat_bas_r,0) from global_water_access;


#HOW TO CHANGE INT VALUE TO NULL.  
select name, nullif(pop_u, 100) from global_water_access;

#HOW TO CHANGE DECIMAL VALUES TO ZERO. 
select isnull(wat_bas_n) from global_water_access;


                                               #DATE-TIME FUNCTIONS. 
#HOW TO GET TODAY'S DATE. 
select current_date();

#HOW TO GET TODAY'S DATE AND TIME. 
select now();

#DATE & TIME. 
select current_timestamp();


#HOW TO GET THE BIRTH DAY, MONTH AND YEAR OF PERSON IN A DATABASE. 
select first_name, emp_no, day(), month(), year(birth_date) from employee