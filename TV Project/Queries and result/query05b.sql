--5-b. Name all agents who represent a producer of a show on one of the Big Three Networks (user input) . 
--(Give the agent's name and the producer's name.)

SELECT DISTINCT rp.agent_name,rpb.prod_name
FROM rprodby rpb,rproducer rp,rtvshow rts
WHERE rpb.prod_name=rp.prod_name
AND rts.show_num=rpb.show_num
AND rts.network_id  IN (&Enter_the_network_id);
