if(attack != true){
	//x = obj_Nietzsche.x
}

if(instance_triger == true and alarm_count >= 6){
	instance_create_layer(x,0,"Effect",Boss_SKill_2_4)
	instance_destroy(self)
}