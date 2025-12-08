if(alarm_count == 0) image_angle = point_direction(x,y,player.x,player.y) - 90
else if (alarm_count > 10)
{
	instance_create_layer(x,y,"Effect",Boss_SKill_2_Attack, {image_angle : self.image_angle}) 
	instance_create_layer(x,y,"Back",Boss_Skill_2_Clone, {image_angle : self.image_angle}) 
	instance_destroy(self)
}