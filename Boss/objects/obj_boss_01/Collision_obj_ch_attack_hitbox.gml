
//just_ one_ hit point (destroy-> obj_attack_hitbox)
instance_destroy(other)

//BossHp controll
global.BossHp-=10;
//image_ angel_ change
image_angle-=10;

//imgae_blend 
image_blend = c_red
alarm[0] = 5

//pattun

if(global.BossHp<=100&&global.BossHp>0)
	{
	Pt_01_break=0;
	Pt_01=1;	
	}
else{ Pt_01_break=1; 
	Pt_01=0;}

if(global.BossHp<=80&&global.BossHp>0)
	{
	Pt_02_break=0;	
	Pt_02=1;
	}
else{ Pt_02_break=1;
	Pt_02=0;}

if(global.BossHp<=65&&global.BossHp>0)
	{
	Pt_03_break=0;
	Pt_03=1;
	}
else{ Pt_03_break=1;
	Pt_03=0}
	


	