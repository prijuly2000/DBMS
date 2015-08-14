SET FEEDBACK OFF
PROMPT FILE CREATED BY Pritesh Gandhi
PROMPT CREATING JOB TABLE
PROMPT
SET TERMOUT OFF
DROP TABLE Job CASCADE CONSTRAINTS PURGE;
CREATE TABLE Job(
J# NVARCHAR2(4),
JNAME NVARCHAR2(20),
CITY NVARCHAR2(25),
CONSTRAINT pk_job PRIMARY KEY(J#)
);

INSERT INTO Job(J#,JNAME,CITY)
VALUES('J1','Sorter','Paris');

INSERT INTO Job(J#,JNAME,CITY)
VALUES('J2','Display','Rome');

INSERT INTO Job(J#,JNAME,CITY)
VALUES('J3','OCR','Athens');

INSERT INTO Job(J#,JNAME,CITY)
VALUES('J4','Console','Athens');

INSERT INTO Job(J#,JNAME,CITY)
VALUES('J5','RAID','London');

INSERT INTO Job(J#,JNAME,CITY)
VALUES('J6','EDS','Oslo');

INSERT INTO Job(J#,JNAME,CITY)
VALUES('J7','Tape','London');

COMMIT;
SET TERMOUT ON
PROMPT JOB TABLE CREATED AND POPULATED
SELECT Count(*) FROM Job;
SET FEEDBACK ON