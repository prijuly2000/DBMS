-- List  the details of all the networks along with the distributor if the distributor has the same parent as the network. 
-- Every network may not have a distributor with the matching parent. 

CREATE OR REPLACE VIEW networkdistributorjoinleft
AS
SELECT rn.*,rd.distr_name,rd.distr_loc
FROM  rnetwork rn  LEFT JOIN rdistributor rd
on rn.parent_name=rd.parent_name;


SELECT * FROM networkdistributorjoinleft;