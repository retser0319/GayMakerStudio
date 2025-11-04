//ch_state
image_speed=1
//ChPose



//damege_value
count_=0
count__=0




global.state=PLAYERSTA.MOVE
dir=1
enum PLAYERSTA
{
	MOVE,
	DASH,
	ATTACK,
	MUTE
	
}

//value
jump=0;
maxJump=2;
vsp=0

depth=-99999

alarm[0]=10	//staminer heal

dashValue=0;//dash value
grav=0.5;
xSpeed=0;
ySpeed=0;
mvtLocked=0;
dashSpd=15;
dashDuration=0;


//wall_dir_jump
wall_dir = place_meeting(x-8, y, obj_collision) - place_meeting(x+8, y, obj_collision);



