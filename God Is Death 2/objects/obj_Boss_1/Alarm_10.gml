var pattern = choose(3,3)

show_debug_message(pattern)
if(pattern == 1){
	
	rands = choose(1,2,3,4,5,6,7,8)
	if(rands == 1) obj_Danger_1.image_alpha = 0.7
	if(rands == 2) obj_Danger_2.image_alpha = 0.7
	if(rands == 3) obj_Danger_3.image_alpha = 0.7
	if(rands == 4) obj_Danger_4.image_alpha = 0.7
	if(rands == 5) obj_Danger_5.image_alpha = 0.7
	if(rands == 6) obj_Danger_6.image_alpha = 0.7
	if(rands == 7) obj_Danger_7.image_alpha = 0.7
	if(rands == 8) obj_Danger_8.image_alpha = 0.7
	
	//alarm[10] = 120
}
else if(pattern == 2){
	instance_create_layer(x, 320,"Instances",obj_Danger)
	//alarm[10] = 120
}
else if(pattern == 3){
	instance_create_layer(obj_Nietzsche.x, obj_Nietzsche.y,"Instances",obj_pattern_3)
	//alarm[10] = 120
}