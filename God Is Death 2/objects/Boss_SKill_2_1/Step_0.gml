if(alarm_count == 5) image_angle = point_direction(x,y,player.x,player.y) - 90

if(alarm_count == 0) {
	instance_create_layer(x,y,"Instances",Boss_SKill_2_attack, {image_angle :  image_angle}) 
	instance_triger = false
	instance_destroy(self)
}