if (mode != "ready" and mode != "move") {
	image_xscale *= 1.25
	image_yscale *= 1.25
	image_alpha += 0.01
}

if (mode == "move") {
	y -= 2	
	if (y < room_height / 2) mode = "attack"
}


if (image_alpha == 1) {
	instance_create_layer(0,0,"Back", Back_Static, {image_xscale:3,image_yscale:2})
	alarm[1] = 60
}