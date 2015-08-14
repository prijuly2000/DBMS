SELECT DISTINCT ra.actor_name
FROM ractor ra,
  ractoraward raa_first,
  ractoraward raa_second
WHERE ra.actor_num =raa_first.actor_num
AND raa_second.actor_num = raa_first.actor_num
AND raa_second.award_year<>raa_first.award_year;