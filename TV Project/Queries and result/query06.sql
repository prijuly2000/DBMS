--6. Sometimes, a single character on a TV show is played by more than one actor. List these characters and the actors who played them. 
--(Give the character’s name and the actor’s name.)

SELECT DISTINCT rp_first.char_name ,ra.actor_name
FROM ractor ra,rplay rp_first,rplay rp_second
WHERE ra.actor_num=rp_first.actor_num
AND rp_second.char_name=rp_first.char_name
AND rp_second.actor_num!=rp_first.actor_num
ORDER BY rp_first.char_name;
