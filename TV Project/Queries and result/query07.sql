--7. A spin-off is a show that was created from another “parent" show. List all spin-offs that, at some point, ran concurrently with their "parent" show. 
--(Give the name of the parent show, its playdates, the name of the spin-off and 
--its playdates.)

SELECT rts_parent.show_name parent_show,(rts_parent.start_month || '/' || rts_parent.start_year) parent_start_date, (rts_parent.end_month || '/' || rts_parent.end_year) parent_end_date,
rts_spinoff.show_name spinoff_show, (rts_spinoff.start_month || '/' || rts_spinoff.start_year) spinoff_start_date, (rts_spinoff.end_month || '/' || rts_spinoff.end_year) spinoff_end_date
FROM rtvshow rts_parent,rtvshow rts_spinoff, rspinoff rs
WHERE rs.parent_num=rts_parent.show_num
AND rs.spinoff_num=rts_spinoff.show_num
AND (to_date(rts_parent.end_month || '/' || rts_parent.end_year,'mm/yyyy')) > (to_date( rts_spinoff.start_month || '/' || rts_spinoff.start_year,'mm/yyyy'));








