if instance_number(obj_Boss_03_lazer)==15
{
	image_speed=1

}
if(image_index==image_number-1)
{
	if(count==0)
	{
		image_index=image_number-1
		image_speed=0
		mask_index=spr_Boss_03_lazer
		alarm[0]=10
		count++
}

}




