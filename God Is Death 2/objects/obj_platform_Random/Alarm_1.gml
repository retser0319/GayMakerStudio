x = random_range(200, room_width - 200)
y = random_range(800, room_height - 200)
	
if (instance_place(x,y,obj_Nietzsche) or place_meeting(x,y, obj_platform_Random))
{
	alarm[1] = 1	
}
else {
	image_index = 0
	destroy = false
}