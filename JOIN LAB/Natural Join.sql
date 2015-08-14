--Give the details of all the actor's who have won any awards. (Duplicate columns should not be displayed)


CREATE OR REPLACE VIEW awardwiningactorsjoinnatural 
AS
SELECT * 
FROM ractor ra NATURAL JOIN ractoraward raa;

SELECT * FROM awardwiningactorsjoinnatural;