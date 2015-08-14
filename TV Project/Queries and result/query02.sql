--2. Name all actors who have played teenaged characters. (Give the actor's name, character's name, and character's age.)

SELECT DISTINCT ra.actor_name, rp.char_name,rc.char_age
FROM ractor ra,rplay rp,rcharacter rc
WHERE ra.actor_num=rp.actor_num
AND rp.char_name=rc.char_name
AND rc.char_age>=13
AND rc.char_age<=19;
