if (instance_exists(player)) {
	x = player.x
	y = player.y
}

count++
if (count < 120 / global.BossPaze)
	alarm[0] = 1
else{
	alarm[1] = 15 / global.BossPaze
	audio_play_sound(snd_bite4, 1, false);}