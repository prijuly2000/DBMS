--3. List all shows which were on the air at some point during the 1980s. (Give the name, start
--date, and end date of each show.)

SELECT DISTINCT rts.show_name,(rts.start_month||'/' ||rts.start_year) start_date,(rts.end_month|| '/' || rts.end_year) end_date
FROM rtvshow rts
WHERE (rts.start_year>=1980
AND rts.start_year<=1989)
or (rts.end_year>=1980
AND rts.end_year<=1989);