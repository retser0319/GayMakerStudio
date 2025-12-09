var player = instance_find(obj_Nietzsche, 0)

if (instance_exists(obj_black)) return

if (x > player.x -36 and x < player.x+36 and y < player.y and skill_1_can)
{
	hspd = 0
	skill_1_can = false
	instance_create_layer(x,y,"Effect", Boss_Skill_4_1,{image_xscale:5, image_yscale:5, direction:90})
	alarm[1] = 240
}
else if (skill_1_can)
{
	if (x < player.x) hspd += 0.2
	else if (x > player.x) hspd -= 0.2
	clamp(hspd, -1, 1)

	x += hspd * 0.1
}
if (global.BossHP <= 0) is_dead = true

if (is_dead) image_alpha -= 0.03
if (image_alpha <= 0) {
	instance_create_layer(room_width/2,room_height/2,"Instances",Boss_5)
	instance_destroy(instance_find(stone_statue, 0))
	instance_destroy(self)
}