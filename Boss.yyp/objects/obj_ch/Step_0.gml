//check key
keyAttack = keyboard_check_pressed(ord("X"));
keyDash =keyboard_check_pressed(ord("Z"));
__hsp = keyboard_check(vk_right) - keyboard_check(vk_left);



//STATE
switch(global.state)
{
	case PLAYERSTA.MOVE: ChMove()break;
	case PLAYERSTA.ATTACK:
	{
		ChAttack();	

		if(image_index>=image_number-1){
			global.state=PLAYERSTA.MOVE;
			image_speed=1;
			}
		break;
	}
	case PLAYERSTA.DASH:
	{
		ChDash();


		
		break;}
	case PLAYERSTA.MUTE: ChMute()break;
}


//Dash distance
if(global.state==PLAYERSTA.DASH)
	dashValue++;
if(dashValue>15){
 global.state=PLAYERSTA.MOVE
dashValue=0
}



//wall_dir_jump
wall_dir = place_meeting(x-10, y, obj_collision) - place_meeting(x+10, y, obj_collision);




if(global.ChHp<=0)
	{
		room_goto(gameover)
	audio_play_sound(snd_dead,1,true)
	}
	
	
	
	
//can't out room
if(x<32)
x=32
if(x>room_width-32)
x=room_width-32

if(y>room_height)
{
	y=0
	x=room_width/2
	image_blend=c_red
	alarm[1]=5
	global.ChHp--
	}
	
	//stuck problem
	if place_meeting(x,y,obj_collision)&&(wall_dir>0)
		x+=3;
	else if place_meeting(x,y,obj_collision)&&(wall_dir<0)
		x-=3;
	if place_meeting(x,y,obj_collision)&&(image_index==spr_ch_idle)&&x<room_width/2
		x+=3;
	else if place_meeting(x,y,obj_collision)&&(image_index==spr_ch_idle)&&x>room_width/2
		x-=3;
	if place_meeting(x,y,obj_only_up)
		y-=3;