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
