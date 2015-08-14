SELECT ra.actor_name,  raa.award_name,  raa.award_type,  raa.award_year
FROM ractor ra,  ractoraward raa
WHERE ra.actor_num=raa.actor_num;