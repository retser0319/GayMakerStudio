if(global.Darkness == false){ //무궁화꽃이피엇습니다 패턴 동안 안나오게
var skill_num = choose(1,5)

if (skill_num == 5) 
{
	target = instance_nearest(x,y, obj_Nietzsche)
	if (target.x < room_width / 2)
		skill_5_dir = -1
	else 
		skill_5_dir = 1
		
	skill_5_delay = irandom_range(35,65)
	alarm[1] = 480
	alarm[7] = 1
}

if(skill_num == 1){
	var type = choose("x","y")
	var rand = random_range(0.0, 1.0)
	
	if (type == "x")
		instance_create_layer(rand * room_width, 0,"Effect", Boss_SKill_2_Range)
	if (type == "y")
		instance_create_layer(0, rand * (room_height / 2),"Effect", Boss_SKill_2_Range)
	alarm[1] = 240
}

}
else alarm[1] = 10