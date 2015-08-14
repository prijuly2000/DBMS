SELECT ra.actor_name
FROM ractor ra
WHERE ra.actor_num NOT IN
  (SELECT raa.actor_num FROM ractoraward raa  );
