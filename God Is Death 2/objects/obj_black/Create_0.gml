image_alpha = 0.1
alarm[0]= 1
global.Darkness = true
blackgound = false
counts = 5
damages = false
image_yscale *= 2
image_xscale *= 2


alarm[10] = 1

audio_play_sound(snd_room1to2,1,false)

if (instance_exists(Boss_Skill_3_5)) {
    with (Boss_Skill_3_5) instance_destroy();
}