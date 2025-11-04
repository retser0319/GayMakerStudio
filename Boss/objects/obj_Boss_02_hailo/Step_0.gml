y=obj_Boss_02.y-350





if count==1{
	if(image_alpha!=0)
		image_alpha-=0.01
	else
	{
		HailoPos=irandom_range(1,2)
		count++
	}
	

}
else if(count==2)
	{
		if(HailoPos==1)
			x=300
		else if(HailoPos==2)
			x=1700
		if(image_alpha!=1)
			image_alpha+=0.01
		else
		{
			count++
			alarm[0]=1
		}
		

}	
else if(count==4){
		
	if(image_alpha!=0)
		image_alpha-=0.01
	else
		count++

		
}
else if(count==5){
	x=obj_Boss_02.x
		

		if(image_alpha!=1)
			image_alpha+=0.01
		else
			count=0
}
	
