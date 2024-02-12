use github;

SELECT* FROM student_details;

INSERT INTO student_details VALUES
('589655896585965','MONTY','2222222222',20),
('569856565895685','NARUTO','7777777777',21),
('859685748596235','OBITO','0000000000',31),
('859685748596234','RIN','0000000000',13);

SHOW COLUMNS FROM student_details;        -- give all information of the table
DESCRIBE student_details;                 -- same as above give all info about table

CREATE TABLE example(
name_s VARCHAR(20),
age_s INT);

INSERT into example VALUES                -- insert the values in table
('luffy',15),
('zoro',15),
('sanji',15),
('sanji',16),
('chopper',5);

SELECT* FROM example;


UPDATE example               -- UPDATE and SET : use for update data at specific location
SET name_s='robin', age_s=14
WHERE age_s=16;

DELETE FROM example                -- Delete: use for delete whole row at specific condition
WHERE name_s='sanji';

ALTER TABLE example
ADD city VARCHAR(20);

ALTER TABLE example  
DROP COLUMN city;

ALTER TABLE example
MODIFY name_s VARCHAR(50);

DESCRIBE example;

ALTER TABLE example
RENAME COLUMN name_s to name_of_charecters;   -- for rename the column

DROP TABLE example;                -- Drop is use for delete whole table with columns

TRUNCATE TABLE example;            -- truncate : use for delete all information in table

select* from example;



