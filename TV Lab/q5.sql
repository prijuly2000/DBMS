SELECT rts_first.show_name
FROM rspinoff rso,rtvshow rts_first,rtvshow rts_second
WHERE rso.spinoff_num=rts_first.show_num
AND rso.parent_num=rts_second.show_num
AND rts_second.network_id<>rts_first.network_id;