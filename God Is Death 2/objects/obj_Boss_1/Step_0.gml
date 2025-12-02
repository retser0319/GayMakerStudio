if (global.BossHP <= 0) instance_destroy(self)

if (global.BossHP < 500 and global.BossPaze == 1) 
{
	instance_create_layer(x,y,"Instances",Boss_Skill_1_3)
	global.BossPaze = 2
	with(Boss_Skill_1_1) instance_destroy(self)
	with(Boss_Skill_1_2) instance_destroy(self)
	with(Boss_Skill_1_4) instance_destroy(self)
	with(Boss_Skill_1_5) instance_destroy(self)
	
	alarm[0] = 60
}