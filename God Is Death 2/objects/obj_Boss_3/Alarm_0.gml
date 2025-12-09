if (global.BossPaze == 2) return
var skill_num = choose(1,2)

if (skill_num == 1) 
{
	alarm[0] = 480
	alarm[1] = 1
}
if (skill_num == 2) 
{
	var X = random_range(100,room_width - 100)
	var Y = random_range(1400,room_height - 100)
	instance_create_layer(X,Y, "UI", Boss_Skill_3_2_Circle)
	alarm[0] = 480
}
/*
if (skill_num == 5) 
{
	target = instance_nearest(x,y, obj_Nietzsche)
	if (target.x < room_width / 2)
		skill_5_dir = -1
	else 
		skill_5_dir = 1
		
	skill_5_delay = irandom_range(35,65)
	alarm[0] = 480
	alarm[5] = 1
}
