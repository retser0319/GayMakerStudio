
function ChMove(){

mask_index =spr_ch_idle;

if place_meeting(x,y-2,obj_collision)
	jump=2

//좌, 우 움직임 + Idie

if(__hsp>0){
	sprite_index=spr_ch_run;
	image_xscale=1;
	dir=1;
}
else if(__hsp<0){
	sprite_index=spr_ch_run;
	image_xscale=-1;
	dir=2;
}
else if(vsp==0){
	sprite_index=spr_ch_idle;
}

//점프, 최대 점프
if keyboard_check_pressed(ord("C")){
	if(jump<maxJump){
	vsp=-10;
	
	jump++;
	}
}


if(vsp>0){
	if(wall_dir=-1){
		sprite_index=spr_ch_wall;
		image_xscale=-1;
	}
	else if(wall_dir=1){
		sprite_index=spr_ch_wall;
		image_xscale=1;
	}
	else sprite_index= spr_ch_jump;
	}
else if(vsp<-0.1){
	sprite_index=spr_ch_jump;
	}


//정프 바닥 인지, 움직임 벽 감지

if !place_meeting(x+__hsp*6,y,obj_collision)
{
x+=__hsp*6;
}

if(vsp<10){vsp+=grav;}


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
if(global.stam>=10)
	{
	if(keyAttack)
		{
		global.stam-=10;
		global.state=PLAYERSTA.ATTACK;
		}
	}
if(global.stam>=15)
	{
	if(keyDash)
		{
		global.state=PLAYERSTA.DASH;
		global.stam-=15;
		audio_play_sound(snd_dash,1,false)
		}
	}
if(wall_dir!=0)jump=1;	
}



