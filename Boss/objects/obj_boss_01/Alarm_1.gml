//PT_01
if(Pt_01_break!=1)
{
	instance_create_depth(obj_Boss_01.x,obj_Boss_01.y-150,-9999,obj_Boss_01_Pt01);
	audio_play_sound(snd_throwball,1,false)

	alarm[1]=irandom_range(60,Max_range);
}