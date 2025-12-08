/// @description 
var pattern = choose(1,2,3)

if(pattern == 1){
	var type = choose("x","y")
	var rand = random_range(0, room_width)
	
	instance_create_layer(rand,room_height/2,"Effect", obj_black_hole)
	
	//alarm[10] = global.attack_timer
}


else if(pattern == 2){
	// 1. 오브젝트 생성 후 변수에 저장
	alarm[2] = 1
}
else if(pattern == 3){
	instance_create_layer(obj_Nietzsche.x, obj_Nietzsche.y,"Effect",Boss_Skill_4_3)
	//alarm[10] = 120
}

