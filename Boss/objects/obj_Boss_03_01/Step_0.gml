/// @description 여기에 설명 삽입
if(image_alpha!=1)
	image_alpha+=0.01

if(Pt_count==0)
{
	if(global.Boss3Hitted_01+global.Boss3Hitted_02<=180)
	{
	alarm[0]=10
	Pt_count++
	}
}
else if(Pt_count==1)
{
	if(global.Boss3Hitted_01+global.Boss3Hitted_02<=150)
	{
	Pt_number++
	Pt_count++
	}
}
else if(Pt_count==2)
{
	if(global.Boss3Hitted_01+global.Boss3Hitted_02<=0)
	{
	Pt_count++
	instance_destroy(obj_Boss_03_tooth_surrmon)
	instance_destroy(obj_draw_Boss03_hitted)
	alarm[5]=120
	}
}


//////////////////////////////

if(Pt_count_02==1)
{
	instance_create_depth(0,0,0,obj_Boss_03_Awakening_Pt01_surrmon)
	alarm[6]=10
	instance_create_depth(0,0,0,obj_draw_Boss03)
	instance_destroy(obj_Boss_03_01_01)
	Pt_count_02++;
}
else if(Pt_count_02==2)
{
	if(global.Boss3Hp<=70)
	{
	instance_create_depth(0,0,0,obj_Boss_03_Awakening_spear_surrmon)
	Pt_count_02++
	}
}
else if(Pt_count_02==3)
{
	if(global.Boss3Hp<=40)
	{
	instance_create_depth(0,0,0,obj_Boss_03_Awake_tooth_surrmon)
	Pt_count_02++
	}
}









