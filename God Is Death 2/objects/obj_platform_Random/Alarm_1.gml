repeat(50){
	var X = random_range(200, room_width - 200)
	var Y = random_range(800, room_height - 200)
	if (!place_meeting(X,Y, obj_platform_Random))
	{
		x = X
		y = Y
		break;
	}
}
image_index = 0
destroy = false