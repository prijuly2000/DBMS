--Give the details of all the actors who have won any awards with the award details.
--(Dont use Natural Join but remove duplicate columns)

CREATE OR REPLACE VIEW awardwiningactorsjoinusing
AS
SELECT *
FROM ractor ra INNER JOIN ractoraward raa
USING (actor_num);

SELECT * FROM awardwiningactorsjoinusing;