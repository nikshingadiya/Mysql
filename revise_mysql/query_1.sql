
-- alter Table person
-- Add email varchar(255);

UPDATE person 
SET 
    email = 'shingadiyanikhill1634@gmail.com'
WHERE
    person_id = 1;
    
UPDATE person 
SET 
    email = (CASE
        WHEN person_id = 2 THEN 'hell123@gmail.com'
        WHEN person_id = 3 THEN 'tio123@gmail.com'
    END)
WHERE
    person_id IN (2 , 3);

	
Describe person;

SELECT 
    *
FROM
    person;