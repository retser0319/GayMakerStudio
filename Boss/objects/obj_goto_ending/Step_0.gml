if(global.Boss3Hp=0)
{room_goto(ending)
	audio_play_sound(snd_ending,1,true)
	audio_stop_sound(snd_boss3)
	}