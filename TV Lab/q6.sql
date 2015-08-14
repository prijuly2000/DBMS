SELECT DISTINCT ra.actor_name
FROM ractor ra,rplay rp
WHERE ra.actor_num=rp.actor_num
GROUP BY ra.actor_name
HAVING COUNT(rp.actor_num)>1;