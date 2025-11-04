depth=-9999
fsp=0;

	alarm[0]=10
	
direction=obj_Boss_03_Awakening_spear_surrmon.dir_point*180

if(direction==0)
{
	y=1670
	x=1
}
else
{
	image_angle=direction
	y=1670
	x=room_width-1

}
audio_play_sound(snd_sward,1,false)