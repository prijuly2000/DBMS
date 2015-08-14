-- List  the details of all the networks & all the distributors if 
-- the distributor has the same parent as the network.
-- Every distributor may not have a network with matching parent and
-- every network may not have a distributor with the matching parent.

CREATE OR REPLACE VIEW networkdistributorjoinfull
AS
SELECT rn.*,rd.distr_name,rd.distr_loc,rd.parent_name dist_parent
FROM  rnetwork rn  FULL JOIN rdistributor rd
on rn.parent_name=rd.parent_name;


SELECT * FROM networkdistributorjoinfull;