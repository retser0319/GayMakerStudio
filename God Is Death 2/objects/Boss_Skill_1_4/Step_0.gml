if (image_index == 8) {
	if (place_meeting(x, y, obj_Nietzsche)) 
	{
		target = instance_place(x, y, obj_Nietzsche)
		target.HP -= 30
	}
	instance_destroy(self)
}