dir=point_direction(x,y,obj_ch.x,obj_ch.y);

if(image_alpha>=1)
	stay++;

__x+=0.007
/*
if(stay<=28)
	mask_index=spr_emty_hitbox;
else
	mask_index=spr_Boss_01_Pt02;
*/
image_alpha=__x*__x;



if(stay==0){
if(dir<90)image_angle+=0.9;
else{
if(image_angle != dir) {
	if(dir > image_angle) image_angle += 0.9;
	else if(dir <= image_angle) image_angle -= 0.9;
	else image_angle+=0;
}}}

x = obj_Boss_01.x;
y = obj_Boss_01.y - 200;

if(stay==30){
	global.Pt2Pos=self.image_angle
	instance_create_depth(x,y,0,obj_Boss_01_Pt02_damge)
	instance_destroy(self)}

