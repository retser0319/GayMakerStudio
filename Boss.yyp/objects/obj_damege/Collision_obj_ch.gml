other.image_blend=c_red

instance_create_depth(0,0,0,obj_camera_shake)
//instance_create_depth(0,0,0,obj_camera_shake);
if(!place_meeting(obj_ch.x-40,obj_ch.y,obj_collision)&&!place_meeting(obj_ch.x+40,obj_ch.y,obj_collision))
{
if place_meeting(x-10,y,obj_ch)
	obj_ch.x-=30
else if place_meeting(x+10,y,obj_ch)
	obj_ch.x+=30
}
//count_=1;
global.ChHp-=1;
mask_index=spr_emty_hitbox
//instance_destroy(self)


