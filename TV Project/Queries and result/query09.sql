--9. Name all actors who have either won no awards or have appeared on a show that won no
--awards. (Give the actor's name and his/her tvq.)

SELECT DISTINCT ra.actor_name,ra.tvq
FROM ractor ra
WHERE ra.actor_num NOT IN
  (SELECT raa.actor_num 
  FROM ractoraward raa)
OR ra.actor_num NOT IN
  (SELECT rp.actor_num
  FROM rplay rp,rshowaward rsa
  WHERE rp.show_num=rsa.show_num);