if(global.BossHP <= 500){
randomize()
rd = random_range(0,2)

if(rb == 0){
	instance_create_layer(100,1945,"Instances",stone_statue)
}
else if(rb == 1){
	instance_create_layer(4000,1945,"Instances",stone_statue)
}

alarm[1] = 500
alarm[0] = 600
}
else alarm[0] = 10