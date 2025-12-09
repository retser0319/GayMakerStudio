if (is_dead) return
var skill_num = choose(2,3,4)

if (skill_num == 2) 
{
	instance_create_layer(x,y,"Effect",obj_black)
}
else if (skill_num == 3)
{
	var target = instance_nearest(x,y, obj_Nietzsche)
	if (target.x < room_width / 2)
		skill_5_dir = -1
	else 
		skill_5_dir = 1
		
	skill_5_delay = irandom_range(35,65)
	alarm[0] = 480
	alarm[3] = 1
}
else if (skill_num == 4)
{
	var X = random_range(100,room_width - 100)
	var Y = random_range(1400,room_height - 100)
	instance_create_layer(X,Y, "UI", Boss_Skill_4_2_Circle)
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
	alarm[7] = 1
}

if(skill_num == 1){
	var type = choose("x","y")
	var rand = random_range(0.0, 1.0)
	
	if (type == "x")
		instance_create_layer(rand * room_width, 0,"Effect", Boss_SKill_2_Range)
	if (type == "y")
		instance_create_layer(0, rand * (room_height / 2),"Effect", Boss_SKill_2_Range)
	alarm[0] = 240
}
else alarm[0] = 10