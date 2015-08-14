--8. List all characters that appeared on a "parent" show and its spin-off. (Give the name of the
--character.)

SELECT DISTINCT rp_first.char_name
FROM rspinoff rs,rplay rp_first,rplay rp_second
WHERE rs.parent_num=rp_first.show_num
AND rs.spinoff_num=rp_second.show_num
AND rp_first.char_name=rp_second.char_name;