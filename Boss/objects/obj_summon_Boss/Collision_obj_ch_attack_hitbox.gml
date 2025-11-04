instance_create_depth(1000,1500,0,obj_Boss_01)//summonBoss
instance_create_depth(0,0,0,obj_Boss_appear)//effect
instance_create_depth(0,0,0,obj_Boss_01_flat)//platform
instance_create_depth(0,0,0,obj_draw_Boss01)//hp....etc
instance_create_depth(0,0,0,obj_camera_shake_Boss)//camera_shake_Boss
audio_play_sound(snd_doll,1,false)	
audio_stop_sound(snd_pazerd)
audio_play_sound(snd_boss1,1,false)	



instance_destroy(self)