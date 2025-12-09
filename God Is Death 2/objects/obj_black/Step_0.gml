if (image_alpha >= 1) {
	if (keyboard_check(vk_left) 
	or keyboard_check(vk_right) 
	or keyboard_check(ord("Z"))
	or keyboard_check(ord("X"))
	or keyboard_check(ord("C"))) {
		global.PlayerHP -= 1
	}
}

var boss = instance_find(obj_Boss_4, 0);
boss.image_index = boss.image_alpha * 4;