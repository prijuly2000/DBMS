--10. List all awards that, according to the current data in the database, were not awarded. (Give
--the award name, award type, and award year.)

SELECT ra.award_name,ra.award_type,ra.award_year
FROM raward ra
WHERE (ra.award_name,ra.award_type,ra.award_year) NOT IN
  (SELECT rpa.award_name,rpa.award_type,rpa.award_year 
  FROM rprodaward rpa
  UNION
  SELECT rsa.award_name,rsa.award_type,rsa.award_year 
  FROM rshowaward rsa
  UNION
  SELECT raa.award_name,raa.award_type,raa.award_year 
  FROM ractoraward raa);