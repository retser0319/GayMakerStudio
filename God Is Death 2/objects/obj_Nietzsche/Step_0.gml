var on_ground = place_meeting(x, y+1, obj_solid)
var on_dir = keyboard_check(vk_right) - keyboard_check(vk_left)

if (lastHP > HP) {
	lastHP = HP
	unDamage = true
	blend = c_red
	alarm[0] = 5
}

if (status != "attack")
	hspd += on_dir * 2
	
if (status != "dash" and status != "wall")
	vspd += gravity_
else
	vspd = 0

if (on_dir > 0 and status != "attack") image_xscale = 1
else if (on_dir < 0 and status != "attack") image_xscale = -1

// 땅에서 점프 초기화
if (on_ground and status != "attack" and status != "dash") 
{
	status = "idle"
	jump_count = 0
	current_jump_wall = noone
}
else if (!on_ground and status != "attack" and status != "dash") 
{
	status = "jump"	
}

if (status != "jump" and status != "attack" and status != "dash") {
	if (on_dir == 0) status = "idle"
	else status = "run"
}

if (keyboard_check_pressed(ord("Z")) and status != "attack")
{
	status = "dash"
	hspd = image_xscale * 60
	alarm[1] = 5
}

if (keyboard_check_pressed(ord("C")) and status != "attack")
{
	if (current_jump_wall != last_jump_wall)
	{
		status = "jump"
		vspd = jump_strength
		last_jump_wall = current_jump_wall
	}
	else if (jump_count < jump_max)
	{
		status = "jump"
		jump_count += 1
		vspd = jump_strength	
	}
}

if (keyboard_check_pressed(ord("X")) and status != "attack" and status != "dash")
{
	if (status == "jump") 
	{
		status = "attack"
		image_index = 0
		vspd = -10
		attackNum = 4
		alarm[1] = 15
		alarm[2] = 5
	}
	else
	{
		status = "attack"
		image_index = 0
		if (attackNum != 3) {
			alarm[1] = 30
			alarm[2] = 5
		}
		else {
			alarm[1] = 45
			alarm[2] = 5
		}
	}
}

if (place_meeting(x+hspd, y-1, obj_solid))
{
	if (y < instance_place(x+hspd, y-1, obj_solid).y) {
		status = "wall"
		current_jump_wall = instance_place(x+hspd, y-1, obj_solid)
	}
	while(!place_meeting(x+sign(hspd),y-1,obj_solid))
	{
		x = x+sign(hspd)
	}
	hspd = 0
}
x += hspd
hspd *= 0.8

if (place_meeting(x, y+vspd, obj_solid))
{
	while(!place_meeting(x+sign(vspd),y,obj_solid))
	{
		y = y+sign(vspd)
	}
	vspd = 0
}

if (status != "dash" and status != "wall") {
	if (vspd > vspd_max) vspd = vspd_max
	y += vspd
}

