if(!place_meeting(x,y,obj_ch)){
	obj_bookshelf.count=0
	audio_play_sound(snd_scroll,1,false)

	instance_destroy(self)}

if(y>-130)
	y-=9
	
if(image_alpha<1)
	image_alpha+=0.01