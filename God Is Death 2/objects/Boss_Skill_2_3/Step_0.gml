if (image_index > 7) {
	if (place_meeting(x, y, obj_Nietzsche)) 
	{
		global.PlayerHP -= 20
	}
	obj_Boss_2.alarm[10] = 120
	instance_destroy(self)
}