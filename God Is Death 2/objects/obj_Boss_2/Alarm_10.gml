var pattern = 1 // choose(1)
if(pattern == 1){
	
	rands = 2//choose(1,2)
	
	if(rands == 1){
		instance_create_layer(choose(0,1000,2000,3000,4098),-100,"Instances", Boss_SKill_2_1)
	}
	if(rands == 2){
		instance_create_layer(choose(0,1000,2000,3000,4200),choose(-100,500,1000),"Instances", Boss_SKill_2_1)
	}
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