use github;

show tables;

SELECT * from student_details;

ALTER TABLE student_details
drop COLUMN student_LastName;

SELECT * from student_details;

INSERT INTO student_details 
VALUES ('879586458956258','MIHIR','1111111111',20);

SELECT * from student_details;