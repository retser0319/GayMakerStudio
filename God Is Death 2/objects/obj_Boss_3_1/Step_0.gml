//if (global.BossHP <= 500) image_alpha--
//if (image_alpha ==0) instance_destroy(self)

idle_posV += 0.1; 
y = base_y + sin(idle_posV) * 4;

if (global.BossHP < 500 and global.BossPaze == 1) 
{
	mask_index = spr_empty
	global.BossPaze = 2
	instance_create_layer(x,y,"Effect", Boss_Skill_3_6_Shockwave)
}

if (global.BossPaze == 2) image_alpha -= 0.002
if (image_alpha == 0) instance_destroy(self)