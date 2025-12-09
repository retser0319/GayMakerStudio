if (image_index > 7) {
	if (place_meeting(x, y, obj_Nietzsche)) 
	{
		global.PlayerHP -= 20
	}
	Boss_5.alarm[10] = 60
	instance_destroy(self)
}