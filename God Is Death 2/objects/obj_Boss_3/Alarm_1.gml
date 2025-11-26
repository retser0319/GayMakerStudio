
skill_1++

if (skill_1 < 9) {
	instance_create_layer(random_range(200, room_width - 200),2040, "Effect", Boss_Skill_3_1)
	alarm[1] = 24
}
else {
	var player = instance_nearest(x, y, obj_Nietzsche)
	show_debug_message(player.x)
	instance_create_layer(player.x, 2040, "Effect", Boss_Skill_3_1_Big)
	skill_1 = 0
}