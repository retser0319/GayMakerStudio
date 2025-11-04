
if place_meeting(x,y-10,obj_ch)&&(image_index!=17)
 image_speed=1;

if(image_alpha!=1)
		image_alpha+=0.01;

if(image_index==17)
	mask_index=spr_emty_hitbox
else
	mask_index=spr_disapper_flat;