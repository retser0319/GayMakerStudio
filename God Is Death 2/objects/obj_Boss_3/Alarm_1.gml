
skill_1++

if (skill_1 < 9) {
	instance_create_layer(random_range(200, room_width - 200),2040, "Effect", Boss_Skill_3_1, {image_xscale : 0.3, image_yscale : 0.3})
	alarm[1] = 24
}
else if (skill_1 < 10){
	instance_create_layer(random_range(200, room_width - 200),2040, "Effect", Boss_Skill_3_1, {image_xscale : 0.3, image_yscale : 0.3})
	alarm[1] = 60
}
else {
	var player = instance_nearest(x,y,obj_Nietzsche)
	instance_create_layer(player.x, 2040, "Effect", Boss_Skill_3_1)
	skill_1 = 0
}