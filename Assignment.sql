select * from well_pollution where
description like 'Clean_%' and biological > 0.01;

SELECT * FROM md_water_services.well_pollution;

UPDATE
well_pollution
SET
description = 'Bacteria: E. coli'
WHERE
description = 'Clean Bacteria: E. coli';


UPDATE well_pollution 
SET 
    description = 'Bacteria: Girardia Lamblia'
WHERE
    description = 'Clean Bacteria: Giardia Lamblia';
    
    
    
UPDATE
well_pollution
SET
results = 'Contaminated: Biological'

WHERE
biological > 0.01 AND results = 'Clean';


select * from well_pollution where
description like 'Clean_%' and biological > 0.01;


select * from employee
where 
position= 'Field Surveyor' and
(phone_number like('%86') or phone_number like ('%11%')) and 
(employee_name like('%_A%') OR employee_name LIKE('%_M%'));

SELECT 
    *
FROM
    well_pollution
WHERE
    description IN ('Parasite: Cryptosporidium' , 'biological contaminated'); 


SELECT * FROM water_quality WHERE visit_count >=2 AND subjective_quality_score = 10;