--1-b. List the characters on shows sponsored by ____(User input)___ . (Give the character name and show name.)

SELECT DISTINCT rp.char_name, rts.show_name
FROM rplay rp,rsponsorby rsb,rtvshow rts
WHERE rp.show_num=rsb.show_num
AND rts.show_num=rp.show_num
AND rsb.sponsor_name='&Enter_Sponsor_Name';