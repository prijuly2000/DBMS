--Give the details of all the actors who have won any awards with the award details.

CREATE OR REPLACE VIEW awardwiningactorsjoinon
AS
SELECT ra.*,raa.award_name,raa.award_type,raa.award_year
FROM ractor ra INNER JOIN ractoraward raa
ON ra.actor_num=raa.actor_num;

SELECT * FROM awardwiningactorsjoinon;
