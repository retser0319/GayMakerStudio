attackNum++
if (attackNum > 3) attackNum = 1

if (status == "dash" and augment_bladestorm)
	instance_create_layer((dashX + x) /2,y,"Effect",obj_Attack_Range, {image_xscale : (x - dashX)/32, image_yscale : 1});
image_speed = 1
status = "idle"