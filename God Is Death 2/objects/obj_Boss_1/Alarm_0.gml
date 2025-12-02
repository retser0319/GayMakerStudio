var skill_num = choose(0,1,2,5)

if (skill_num == 0) 
{
	if (pos == "left" or pos == "right") pos = "center"
	else if (pos == "center") pos = choose("left","right")
	spd = 15
	alarm[5] = 30
}
if (skill_num == 1) 
{
	instance_create_layer(x,2040, "Effect", Boss_Skill_1_1)
	alarm[0] = 480
	alarm[1] = 1
}
if (skill_num == 2) 
{
	if (global.BossPaze == 2) {
		instance_create_layer(x-400,1200, "Effect", Boss_Skill_1_2)
		instance_create_layer(x+400,1200, "Effect", Boss_Skill_1_2)
	}
	else {
		instance_create_layer(x,1200, "Effect", Boss_Skill_1_2)
	}
	alarm[0] = 480
}
if (skill_num == 5) 
{
	target = instance_nearest(x,y, obj_Nietzsche)
	for (var i = 0; i < global.BossPaze; i++) 
	{
		instance_create_layer(target.x + random_range(-1500, 1500), room_height, "Effect", Boss_Skill_1_5)
		instance_create_layer(target.x + random_range(-1500, 1500), room_height, "Effect", Boss_Skill_1_5)
		instance_create_layer(target.x + random_range(-1500, 1500), room_height, "Effect", Boss_Skill_1_5)
		instance_create_layer(target.x + random_range(-1500, 1500), room_height, "Effect", Boss_Skill_1_5)
	}
	
	alarm[0] = 240
}
