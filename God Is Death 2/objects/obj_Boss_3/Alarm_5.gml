if (skill_5_dir == 1)
	instance_create_layer(50 + skill_5 * 40 + (random_range(-20, 20)), room_height, "Effect", Boss_Skill_3_5)
else 
	instance_create_layer(4050 - skill_5 * 40 + (random_range(-20, 20)), room_height, "Effect", Boss_Skill_3_5)
skill_5++

if (skill_5_delay == skill_5)
	alarm[5] = 30
else if (skill_5 < 100)
	alarm[5] = 2
else
	skill_5 = 0