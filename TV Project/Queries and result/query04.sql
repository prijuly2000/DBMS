--4. List the actors who have appeared on at least one award-winning show. (Give each actor's
--name.)

SELECT DISTINCT ra.actor_name
FROM ractor ra,rshowaward rsa,rplay rp
WHERE ra.actor_num=rp.actor_num
and rsa.show_num=rp.show_num;
