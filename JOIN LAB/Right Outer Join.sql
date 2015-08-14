-- List  the details of all the distributors along with the network if the network has the same parent as the distributor. 
-- Every distributor may not have a network with matching parent.

CREATE OR REPLACE VIEW networkdistributorjoinright
AS
SELECT rn.*,rd.distr_name,rd.distr_loc
FROM  rnetwork rn  RIGHT JOIN rdistributor rd
on rn.parent_name=rd.parent_name;


SELECT * FROM networkdistributorjoinright;