global.BossHP -= 0.5

if(global.BossHP <= 0){
	instance_destroy(self)
}