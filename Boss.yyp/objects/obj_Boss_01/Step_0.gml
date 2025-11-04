vspd+=0.03;
speed=sin(vspd)

mask_index=spr_Boss_01_hitbox;
//BossHp

if(global.BossHp>0){

//effect
if(image_angle<0)
image_angle+=10;




//patturn
if(Pt_01!=0)
	Pt_01_Num+=1;
if(Pt_02!=0)
	Pt_02_Num+=1;
if(Pt_03!=0)
	Pt_03_Num+=1;
	
if(Pt_01_Num==1)
{
	alarm[1]=60;
}
else if(Pt_02_Num==1)
{
	alarm[2]=90;
	Max_range=360;
}
else if(Pt_03_Num==1)
{
	alarm[3]=60;
	Max_range=520
}	

if(y>500)
	speed=5


}
else
	count++;
if(count==1){
	alarm[8]=10
	global.KillBossPage01=1;	
	instance_destroy(obj_draw_Boss01)
	audio_play_sound(snd_pazerd,1,true)
}