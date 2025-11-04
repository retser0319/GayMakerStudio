mask_index=spr_Boss_02_hitbox





//effect
if(image_angle<0)
image_angle+=10;

//image_alpha(appear)
if(image_alpha<=1)
	image_alpha+=0.02
	
	
	
//Boss_Pat
if(global.Boss2Hp>0 )
{

//Move
stampPosY=obj_ch.y

PosY+=0.1


	if(y-50>stampPosY)
		moveY+=0.02
	else if(y+50<stampPosY)
		moveY+=0.02
	else
		moveY=2*sin(PosY)		

	if(y-50>stampPosY)
		speed=moveY
	else if(y+50<stampPosY)
		speed=-moveY

	





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
	alarm[2]=600;
}
else if(Pt_03_Num==1)
{
	alarm[3]=60;
}	
}

if(global.Boss2Hp==0)
	{
	if(last==0)
		{
		alarm[5]=60
		speed=0
		last++
		}
	else if(last==1)
	{
	alarm[6]=120
	last++;
	}
		
	}
	
	
	
	
	//camera
xStart = camera_get_view_x( view_camera[0] );
yStart = camera_get_view_y( view_camera[0] );