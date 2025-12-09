if (alarm_count > 20)
{
	instance_create_layer(x,y,"Effect",Boss_SKill_2_Attack, {image_angle : self.image_angle, image_blend : c_black})
	instance_destroy(self)
}