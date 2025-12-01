/// @description 
var pattern = 1 // choose(1)
if(pattern == 1){
	var type = choose("x","y")
	var rand = random_range(0.0, 1.0)
	
	if (type == "x")
		instance_create_layer(rand * room_width, 0,"Effect", Boss_SKill_2_Range)
	if (type == "y")
		instance_create_layer(0, rand * (room_height / 2),"Effect", Boss_SKill_2_Range)
	alarm[10] = 120
}
else if(pattern == 2){
	//instance_create_layer(x, 320,"Instances",obj_Danger)
	//alarm[10] = 120
}
else if(pattern == 3){
	//instance_create_layer(obj_Nietzsche.x, obj_Nietzsche.y,"Instances",obj_pattern_3)
	//alarm[10] = 120
}

else if(pattren == 5){
	target = instance_nearest(x,y, obj_Nietzsche)
	
	var xPos = random_range(-500, room_width + 500)
	var yPos = random_range(-500, room_height + 500)
	
	if(xPos < 0 and xPos > room_width and yPos < 0 and yPos > room_height ){ instance_create_layer(xPos,yPos,"Effect", Boss_Skill_2_5)} 
	for (var i = 0; i < global.BossPaze; i++) 
	{
		instance_create_layer(choose(-100, 3940), choose(-100,2200), "Effect", Boss_Skill_1_5)
		instance_create_layer(choose(-100, 3940), choose(-100,2200), "Effect", Boss_Skill_1_5)
		instance_create_layer(choose(-100, 3940), choose(-100,2200), "Effect", Boss_Skill_1_5)
	}
}