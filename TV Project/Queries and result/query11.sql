--11. Name all shows that are somehow associated with Disney. This means that if Disney is a
--parent company for anything related to the show (sponsor, network, etc.), then you should list
--that show. (Give the show name and network.)

SELECT rts.show_name,rts.network_id
FROM rtvshow rts,rnetwork rn,rdistributor rd
WHERE rts.network_id=rn.network_id
AND rts.distr_name=rd.distr_name
AND (rd.parent_name='Disney'
OR rn.parent_name='Disney')
UNION
SELECT rts.show_name,rts.network_id
FROM rtvshow rts,rsponsor rs,rsponsorby rsb
WHERE rsb.show_num=rts.show_num
AND rs.sponsor_name=rsb.sponsor_name
AND rs.parent_name='Disney';