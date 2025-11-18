var skill_num = 3 //random_range(0,4)

if (skill_num == 1) 
{
	instance_create_layer(x,room_height, "Effect", Boss_Skill_1_1)
	alarm[0] = 120
}
if (skill_num == 2) 
{
	instance_create_layer(x,850, "Effect", Boss_Skill_1_2)
	alarm[0] = 360
}
if (skill_num == 3) 
{
	instance_create_layer(x,850, "Effect", Boss_Skill_1_4)
	alarm[0] = 300
}
if (skill_num == 4) 
{
	
}
