
function ChAttack(){
if(sprite_index!=spr_ch_attack)
{
	//mask_index =spr_attack_hitbox
	instance_create_depth(x,y,-1,obj_ch_attack_hitbox)
	image_speed=1.2;
	sprite_index=spr_ch_attack;
	image_index=0;
	audio_play_sound(snd_swing,1,false)
}




// air moveing
if !place_meeting(x+__hsp*4,y,obj_collision)
{
x+=__hsp*4;
}

if(vsp<8){vsp+=grav;}


if !place_meeting(x,y+vsp,obj_collision)
{
y+=vsp;
}
else{
	while(!place_meeting(x,y+sign(vsp),obj_collision))
	do
	{
	y+=sign(vsp);
	}
	vsp=0;
	
	jump=0;
}



}