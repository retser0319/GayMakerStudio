if (alarm_count > 20)
{
	instance_create_layer(x,y,"Effect",Boss_SKill_3_2_Attack, {image_angle : self.image_angle})  
	instance_destroy(self)
}