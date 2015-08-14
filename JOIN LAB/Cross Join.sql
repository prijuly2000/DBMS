-- List all the combinations of networks & the distributors.

CREATE OR REPLACE VIEW networkdistributorjoincross
As
Select rn.*,rd.distr_name,rd.distr_loc
FROM  rnetwork rn  CROSS JOIN rdistributor rd;

SELECT * FROM networkdistributorjoincross;