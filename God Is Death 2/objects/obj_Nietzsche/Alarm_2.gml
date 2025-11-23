
if (attackNum == 4)
	instance_create_layer(x+image_xscale * 50,y,"Effect",obj_Attack_Range, {image_xscale : 4, image_yscale : 1});
else if (attackNum == 3)
	instance_create_layer(x+image_xscale * 60,y-20,"Effect",obj_Attack_Range, {image_xscale : 6, image_yscale : 4});
else
	instance_create_layer(x+image_xscale * 50,y,"Effect",obj_Attack_Range, {image_xscale : 5, image_yscale : 2});