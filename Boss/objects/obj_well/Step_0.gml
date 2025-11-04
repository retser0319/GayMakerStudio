 
if(global.KillBossPage01==1)
{
if place_meeting(x,y-5,obj_ch)
	instance_create_depth(obj_ch.x-20,obj_ch.y-80,-999,obj_direction_point)
	if(keyboard_check_pressed(vk_down)){
global.ChPoseX=1000
global.ChPoseY=50
room_goto(Map_Boss_01to02)
audio_stop_sound(snd_pazerd)
audio_play_sound(snd_room1to2,1,false)


	}
if(count==0)
{
	image_speed=0.2;;
	count++;
}
 }
