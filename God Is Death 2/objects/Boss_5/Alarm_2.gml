repeat(15)
{
	instance_create_layer(x,y,"Effect",Gasi,{ image_angle : random_range(0,359) })
}
repeat(3)
{
	instance_create_layer(x,y,"Effect",Chain,{ image_angle : random_range(0,359) })
}

alarm[2] = (240 * global.BossHP / 1000) + 60